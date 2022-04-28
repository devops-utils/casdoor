```shell
cd docker
sudo docker-compose up
sudo docker-compose up -d
sudo docker-compose down

sudo docker build -f Dockerfile-golang -t yiluxiangbei/casdoor-golang:v1.0 .
sudo docker build -f Dockerfile-node -t yiluxiangbei/casdoor-node:v1.0 .

sudo docker push yiluxiangbei/casdoor-golang:v1.0
sudo docker push yiluxiangbei/casdoor-node:v1.0

sudo docker-compose build
sudo docker-compose build --no-cache

sudo docker-compose up casdoor-mysql
sudo docker-compose up -d casdoor-mysql
sudo docker-compose stop casdoor-mysql

sudo docker-compose up casdoor
sudo docker-compose up -d casdoor
sudo docker-compose stop casdoor

sudo docker-compose logs -f

http://49.232.6.131:8091/
http://172.21.16.11:8091/
admin
123

https://his.7otech.com/prod-api/callback

mysql -h127.0.0.1 -uroot -p -P3313
123456
create database casdoor default character set utf8mb4 collate utf8mb4_unicode_ci;
use casdoor
show tables;

select * from application;
select * from casbin_rule;
select * from cert;
select * from ldap;
select * from organization;
select * from payment;
select * from permission;
select * from product;
select * from provider;
select * from record;
select * from resource;
select * from role;
select * from syncer;
select * from token;
select * from user;
select * from verification_record;
select * from webhook;

update application set display_name='Pelican',logo='https://www.7otech.com/pelican.jpeg',homepage_url='https://pelican.7otech.com';
update organization set favicon='https://www.7otech.com/favicon.ico',default_avatar='https://www.7otech.com/pelican.svg';
update payment set return_url='https://pelican.7otech.com/payments';
update user set avatar='https://www.7otech.com/pelican.svg';

sudo docker tag docker_casdoor yiluxiangbei/casdoor:v1.0
sudo docker push yiluxiangbei/casdoor:v1.0

GOPROXY=https://goproxy.cn,direct
go build

go mod init
go mod vendor

cd web
yarn install

LATEST-RELEASE=curl xxx
sudo docker run -p 8000:8000 casbin/casdoor-all-in-one:$LATEST-RELEASE

sudo docker run -p 8091:8000 casbin/casdoor-all-in-one
sudo docker stop 4c9525794b6a
sudo docker rm 4c9525794b6a
http://49.232.6.131:8091/
http://172.21.16.11:8091/
admin
123

https://his.7otech.com/prod-api/callback

docker rmi `docker images | grep none | awk '{print $3}'`
```

```
openldap entryUUID
entryUUID
objectGUID

https://stackoverflow.com/questions/39221697/retrieve-internal-attributesentryuuid-from-openldap-server
```

```shell
go help
Go is a tool for managing Go source code.

Usage:

	go <command> [arguments]

The commands are:

	bug         start a bug report
	build       compile packages and dependencies
	clean       remove object files and cached files
	doc         show documentation for package or symbol
	env         print Go environment information
	fix         update packages to use new APIs
	fmt         gofmt (reformat) package sources
	generate    generate Go files by processing source
	get         add dependencies to current module and install them
	install     compile and install packages and dependencies
	list        list packages or modules
	mod         module maintenance
	run         compile and run Go program
	test        test packages
	tool        run specified go tool
	version     print Go version
	vet         report likely mistakes in packages

Use "go help <command>" for more information about a command.

Additional help topics:

	buildconstraint build constraints
	buildmode       build modes
	c               calling between Go and C
	cache           build and test caching
	environment     environment variables
	filetype        file types
	go.mod          the go.mod file
	gopath          GOPATH environment variable
	gopath-get      legacy GOPATH go get
	goproxy         module proxy protocol
	importpath      import path syntax
	modules         modules, module versions, and more
	module-get      module-aware go get
	module-auth     module authentication using go.sum
	packages        package lists and patterns
	private         configuration for downloading non-public code
	testflag        testing flags
	testfunc        testing functions
	vcs             controlling version control with GOVCS

Use "go help <topic>" for more information about that topic.


go mod
Go mod provides access to operations on modules.

Note that support for modules is built into all the go commands,
not just 'go mod'. For example, day-to-day adding, removing, upgrading,
and downgrading of dependencies should be done using 'go get'.
See 'go help modules' for an overview of module functionality.

Usage:

	go mod <command> [arguments]

The commands are:

	download    download modules to local cache
	edit        edit go.mod from tools or scripts
	graph       print module requirement graph
	init        initialize new module in current directory
	tidy        add missing and remove unused modules
	vendor      make vendored copy of dependencies
	verify      verify dependencies have expected content
	why         explain why packages or modules are needed

Use "go help mod <command>" for more information about a command.
```