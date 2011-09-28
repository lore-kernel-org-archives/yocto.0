Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F5A6E004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 18:01:15 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Wed, 28 Sep 2011 09:01:06 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Wed, 28 Sep 2011
	09:01:05 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Wed, 28 Sep 2011 09:00:32 +0800
In-Reply-To: <CAEsOVNc84ON5Oxri1=eAHG74NGT9B14QYUDs8JXa9KhrG0XaSw@mail.gmail.com>
References: <1317093523.6536.58.camel@localhost.localdomain>
	<CAEsOVNc84ON5Oxri1=eAHG74NGT9B14QYUDs8JXa9KhrG0XaSw@mail.gmail.com>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1317171633.6536.86.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ntpclient compile fail
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Sep 2011 01:01:18 -0000
X-Groupsio-MsgNum: 2891
Content-Type: multipart/mixed; boundary="=-mKd0vzT0fet+thYIAqDn"

--=-mKd0vzT0fet+thYIAqDn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Thanks!

the attachement is the bb file and Makefile(modified),

after 'override' CFLAGS/LDFLAGS in Makefile, I have added
override LDFLAGS += -Wl,--no-as-needed
in the Makefile to neutralize the '-Wl,--as-needed' in the original
LDFLAGS.

and then the world clear.

On Tue, 2011-09-27 at 23:46 +0800, McClintock Matthew-B29882 wrote:
> On Mon, Sep 26, 2011 at 10:18 PM, Ni Qingliang
> <niqingliang@insigma.com.cn> wrote:
> > Hello:
> > I'm adding ntpclient into my distro.
> >
> > but build fail, reason is the CFLAGS/LDFLAGS in it's Makefile didn't
> > take effect.
> 
> If the CFLAGS are not taking effect from the Makefile are you over
> ridding the value in the recipe? Can you point us at a copy of the
> recipe you are using?
> 
> -M

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com


--=-mKd0vzT0fet+thYIAqDn
Content-Disposition: attachment; filename="ntpclient.bb"
Content-Type: text/plain; name="ntpclient.bb"; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Content-Description: ntpclient.bb

DESCRIPTION = "ntpclient"
SECTION = "iotproduct"
LICENSE = "Google"
LIC_FILES_CHKSUM = "file://README;md5=098a6a289094e42f974b11e2151f5644"
PR = "r0"
PV = "2010_365"


SRC_URI = "http://doolittle.icarus.com/ntpclient/ntpclient_${PV}.tar.gz \
           file://Makefile"

S = "${WORKDIR}/${PN}-2010"

do_patch () {
	cp -f ${WORKDIR}/Makefile ${S}/
}

do_compile () {
	oe_runmake
}

do_install () {
	install -d ${D}/bin/
	install -m 0755 ${S}/ntpclient ${D}/bin/
}


--=-mKd0vzT0fet+thYIAqDn
Content-Disposition: attachment; filename="Makefile"
Content-Type: text/x-makefile; name="Makefile"; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Content-Description: Makefile

# A long time ago, far, far away, under Solaris, you needed to
#    CFLAGS += -xO2 -Xc
#    LDLIBS += -lnsl -lsocket
# To cross-compile
#    CC = arm-linux-gcc
# To check for lint
#    CFLAGS += -Wpointer-arith -Wcast-align -Wcast-qual -Wshadow -Wundef \
#     -Waggregate-return -Wnested-externs -Winline -Wwrite-strings -Wstrict-prototypes

# This is old-school networking code, making the traditional cast between
# struct sockaddr* and struct sockaddr_in*.  Thus a modern gcc needs:
override CFLAGS += -fno-strict-aliasing

override CFLAGS += -std=c89
override CFLAGS += -W -Wall
override CFLAGS += -O2
# CFLAGS += -DPRECISION_SIOCGSTAMP
override CFLAGS += -DENABLE_DEBUG
override CFLAGS += -DENABLE_REPLAY
# CFLAGS += -DUSE_OBSOLETE_GETTIMEOFDAY

override LDFLAGS += -Wl,--no-as-needed
override LDFLAGS += -Wl,-lrt

all: ntpclient

test: ntpclient
	./ntpclient -d -r <test.dat

ntpclient: ntpclient.o phaselock.o

ntpclient.o phaselock.o: ntpclient.h

adjtimex: adjtimex.o

clean:
	rm -f ntpclient adjtimex *.o

--=-mKd0vzT0fet+thYIAqDn--
