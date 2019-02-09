Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58DD4E00CBC; Sat,  9 Feb 2019 10:43:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DCAEE00C8F
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2019 10:43:49 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Feb 2019 10:43:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,352,1544515200"; d="scan'208";a="142082325"
Received: from jalamego-mobl3.zpn.intel.com ([10.218.170.143])
	by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2019 10:43:48 -0800
Message-ID: <862ac49a0d926ceebe5860a8c0204eec4288dc79.camel@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: Randy MacLeod <randy.macleod@windriver.com>, changqing.li@windriver.com,
	yocto@yoctoproject.org
Date: Sat, 09 Feb 2019 12:43:48 -0600
In-Reply-To: <bdac8902-ca45-e119-6003-738adef6d583@windriver.com>
References: <1546062265-388514-1-git-send-email-changqing.li@windriver.com>
	<1547617036-442612-1-git-send-email-changqing.li@windriver.com>
	<1547617036-442612-2-git-send-email-changqing.li@windriver.com>
	<bdac8902-ca45-e119-6003-738adef6d583@windriver.com>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 12 Feb 2019 08:13:01 -0800
Subject: Re: [PATCH V2] patchwork: Add a dockerfile for deploy patchwork and patchtest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2019 18:43:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Randy,

Sorry for the late response. I'm no longer involved with the Yocto
Project. Last word I heard was that point of contact for Patchwork-
related work was Paul Eggleton.

Hope this helps.

Jose

On Mon, 2019-01-28 at 20:30 -0500, Randy MacLeod wrote:
> On 1/16/19 12:37 AM, changqing.li@windriver.com wrote:
> > From: Changqing Li <changqing.li@windriver.com>
> 
> Ping?
> 
> Jose, are you maintaining this repo?
>    http://git.yoctoproject.org/cgit/cgit.cgi/patchwork/about/
> You were the committer for most of the recent work.
> 
> ../Randy
> > Add a dockerfile for easy deploy patchwork and patchtest in
> > docker
> > 
> > Signed-off-by: Changqing Li <changqing.li@windriver.com>
> > ---
> >   Dockerfile.pw                 | 52
> > +++++++++++++++++++++++++++++++++++++++++++
> >   README.pw                     | 32 ++++++++++++++++++++++++++
> >   requirements.txt              | 12 ++++++++++
> >   scripts/pw_createsuperuser.sh |  5 +++++
> >   scripts/pw_getmail.sh         | 11 +++++++++
> >   scripts/pw_migrate.sh         |  5 +++++
> >   scripts/pw_runwebserver.sh    | 12 ++++++++++
> >   7 files changed, 129 insertions(+)
> >   create mode 100644 Dockerfile.pw
> >   create mode 100644 README.pw
> >   create mode 100644 requirements.txt
> >   create mode 100755 scripts/pw_createsuperuser.sh
> >   create mode 100755 scripts/pw_getmail.sh
> >   create mode 100755 scripts/pw_migrate.sh
> >   create mode 100755 scripts/pw_runwebserver.sh
> > 
> > diff --git a/Dockerfile.pw b/Dockerfile.pw
> > new file mode 100644
> > index 0000000..ae3c1ee
> > --- /dev/null
> > +++ b/Dockerfile.pw
> > @@ -0,0 +1,52 @@
> > +FROM ubuntu:latest
> > +MAINTAINER owner <own@mail.com>
> > +
> > +EXPOSE 8080
> > +
> > +ENV PYTHONUNBUFFERED=1 \
> > +    LANG=en_US.UTF-8 \
> > +    LC_ALL=en_US.UTF-8 \
> > +    LC_CTYPE=en_US.UTF-8 \
> > +    PATH="$PATH:/opt/patchwork/git-
> > pw:/opt/patchtest:/opt/patchtest/scripts"
> > +
> > +RUN  apt-get update \
> > +        && apt-get dist-upgrade -y \
> > +        && apt-get install -y --no-install-recommends \
> > +        autoconf \
> > +        gcc \
> > +        g++ \
> > +        make \
> > +        locales \
> > +        wget \
> > +        curl \
> > +        cron \
> > +        python-pip \
> > +        python-dev \
> > +        python-setuptools \
> > +        python3-pip \
> > +        python3-dev \
> > +        libmysqlclient-dev \
> > +        git-core \
> > +        getmail4 \
> > +        && sh -c "echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen" \
> > +        && locale-gen en_US.UTF-8 \
> > +        && update-locale \
> > +        && pip2 install wheel \
> > +        && pip3 install wheel \
> > +        && pip3 install setuptools \
> > +        && apt-get autoremove --purge -y \
> > +        && rm -rf /var/lib/apt/lists/* \
> > +        && apt-get clean
> > +ADD ./patchwork /opt/patchwork
> > +ADD ./patchtest /opt/patchtest
> > +ADD ./patchtest-oe /opt/patchtest-oe
> > +ADD ./getmailrc /opt/getmail/getmailrc
> > +RUN  pip2 install -r /opt/patchwork/requirements.txt \
> > +    && pip3 install -r /opt/patchtest/requirements.txt \
> > +    && pip3 install  -r /opt/patchtest-oe/requirements.txt \
> > +    && mkdir -p /opt/getmail \
> > +    && mkdir -p /opt/pw-logs \
> > +    && git config --global user.email "patchtest@patchtest.com" \
> > +    && git config --global user.name "patchtest" \
> > +    && /opt/patchtest/scripts/create-host-test-folder -t /opt/pw-
> > test \
> > +    && /opt/patchtest/scripts/create-host-crontab -c /opt/pw-test-
> > cron
> > diff --git a/README.pw b/README.pw
> > new file mode 100644
> > index 0000000..ffa7af1
> > --- /dev/null
> > +++ b/README.pw
> > @@ -0,0 +1,32 @@
> > +* Dockerfile.pw deploy patchwork, patchtest, patchtest-oe in
> > docker
> > +
> > +* Dockerfile.pw is just an example, you can adjust according to
> > your
> > +  deploy condition, like not use getmail, but use postfix.
> > +
> > +* requirements.txt,  just for refer, you can also rewrite this
> > +  according to patchwork'doc and accoridng to your deploy
> > condition.
> > +
> > +* scripts folder hold the files will be used during deploy with
> > docker.
> > +
> > +* Deploy steps:
> > +
> > +1. Clone patchwork, patchtest, patchtest-oe first, also put
> > getmailrc used by
> > +   Dockerfile.pw under the same folder.
> > +
> > +2. Build docker image with Dockerfile.pw
> > +$docker build -t pw -f ./patchwork/Dockerfile.pw .
> > +
> > +3. use mariadb as dataserver:
> > +$ docker pull mariadb
> > +$ docker run -d --name pw-db -e MYSQL_ROOT_PASSWORD=123456 -e
> > MYSQL_DATABASE=pwdb -v /pw/pwdb:/var/lib/mysql mariadb
> > +
> > +5. run web server
> > +docker run -d --name pw-web --link pw-db:pw-db -p 8080:8080 pw
> > "/opt/patchwork/scripts/pw_runwebserver.sh"
> > +
> > +6. config pw
> > +docker exec -it pw-web /opt/patchwork/scripts/pw_migrate.sh
> > +docker exec -it pw-web
> > /opt/patchwork/scripts/pw_createsuperuser.sh
> > +
> > +7. run patchwork
> > +docker run -d --name pw-mail --link pw-db:pw-db pw
> > "/opt/patchwork/scripts/pw_getmail.sh"
> > +
> > diff --git a/requirements.txt b/requirements.txt
> > new file mode 100644
> > index 0000000..b8f68f2
> > --- /dev/null
> > +++ b/requirements.txt
> > @@ -0,0 +1,12 @@
> > +django==1.8.0
> > +sqlparse==0.2.4
> > +celery==3.1.20
> > +django_filter==0.11.0
> > +djangorestframework==2.4.8
> > +drf-nested-routers==0.11.1
> > +psycopg2>=2.7,<2.8
> > +mysqlclient
> > +jsonfield
> > +enum34
> > +GitPython
> > +requests
> > diff --git a/scripts/pw_createsuperuser.sh
> > b/scripts/pw_createsuperuser.sh
> > new file mode 100755
> > index 0000000..324ce72
> > --- /dev/null
> > +++ b/scripts/pw_createsuperuser.sh
> > @@ -0,0 +1,5 @@
> > +#!/bin/bash
> > +
> > +pw_dir='/opt/patchwork'
> > +
> > +(cd $pw_dir; ./manage.py createsuperuser)
> > diff --git a/scripts/pw_getmail.sh b/scripts/pw_getmail.sh
> > new file mode 100755
> > index 0000000..fadf7c9
> > --- /dev/null
> > +++ b/scripts/pw_getmail.sh
> > @@ -0,0 +1,11 @@
> > +#!/bin/bash
> > +
> > +sudo /etc/init.d/cron start
> > +echo "*/5 * * * * sudo getmail --getmaildir=/opt/getmail/ --idle
> > INBOX >> /opt/pw-test-cron/getmail.log 2>&1" > /opt/pw-test-
> > cron/cron-getmail
> > +sudo crontab -u wrlbuild  /opt/pw-test-cron/cron-getmail
> > +
> > +while true
> > +do
> > +   :
> > +done
> > +
> > diff --git a/scripts/pw_migrate.sh b/scripts/pw_migrate.sh
> > new file mode 100755
> > index 0000000..e54b2f4
> > --- /dev/null
> > +++ b/scripts/pw_migrate.sh
> > @@ -0,0 +1,5 @@
> > +#!/bin/bash
> > +
> > +pw_dir="/opt/patchwork"
> > +
> > +(cd $pw_dir; ./manage.py migrate; ./manage.py collectstatic;
> > ./manage.py loaddata default_tags default_states default_events)
> > diff --git a/scripts/pw_runwebserver.sh
> > b/scripts/pw_runwebserver.sh
> > new file mode 100755
> > index 0000000..4233b1a
> > --- /dev/null
> > +++ b/scripts/pw_runwebserver.sh
> > @@ -0,0 +1,12 @@
> > +#!/bin/bash
> > +
> > +export LANG="en_US.UTF-8"
> > +export LC_ALL="en_US.UTF-8"
> > +
> > +#open crontab to do test
> > +/etc/init.d/cron start
> > +crontab -u pwtest /opt/pw-test-cron/crontab
> > +
> > +pw_dir="/opt/patchwork"
> > +
> > +(cd $pw_dir; ./manage.py runserver 0.0.0.0:8080)
> > 
> 
> 


