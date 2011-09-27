Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D103DE00507
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 20:19:24 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Tue, 27 Sep 2011 11:19:19 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Tue, 27 Sep 2011
	11:19:17 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 27 Sep 2011 11:18:42 +0800
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1317093523.6536.58.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: ntpclient compile fail
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
X-List-Received-Date: Tue, 27 Sep 2011 03:19:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello:
I'm adding ntpclient into my distro.

but build fail, reason is the CFLAGS/LDFLAGS in it's Makefile didn't
take effect.

What can I do?

the original makefile is:
CFLAGS += -fno-strict-aliasing
CFLAGS += -std=c89
CFLAGS += -W -Wall
CFLAGS += -O2
CFLAGS += -DENABLE_DEBUG
CFLAGS += -DENABLE_REPLAY

LDFLAGS += -lrt

all: ntpclient

test: ntpclient
	./ntpclient -d -r <test.dat

ntpclient: ntpclient.o phaselock.o

ntpclient.o phaselock.o: ntpclient.h

adjtimex: adjtimex.o

clean:
	rm -f ntpclient adjtimex *.o

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



