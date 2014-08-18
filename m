Return-Path: <nsz@port70.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC4CEE00563; Mon, 18 Aug 2014 13:27:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 590 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Aug 2014 13:27:09 PDT
Received: from port70.net (port70.net [81.7.13.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5980EE004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 13:27:09 -0700 (PDT)
Received: by port70.net (Postfix, from userid 1002)
	id 608A6ABEC006; Mon, 18 Aug 2014 22:17:17 +0200 (CEST)
Date: Mon, 18 Aug 2014 22:17:17 +0200
From: Szabolcs Nagy <nsz@port70.net>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20140818201716.GS22308@port70.net>
Mail-Followup-To: Khem Raj <raj.khem@gmail.com>,
	Paul Barker <paul@paulbarker.me.uk>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	musl@lists.openwall.com
References: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
	<20140818181424.GG12992@gmail.com>
	<CAMKF1srjVfmfAWZ0mx+AfE_nR4erYtAEYt2OVhEsU+q++XKVrg@mail.gmail.com>
	<20140818185009.GA7174@gmail.com>
	<CAMKF1spkQkfbZMkL2Gg41hF9bm=+HS8sU8LME3pV6yMzDLLs-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spkQkfbZMkL2Gg41hF9bm=+HS8sU8LME3pV6yMzDLLs-Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Tue, 19 Aug 2014 08:23:01 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, musl@lists.openwall.com,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [musl] Re: [OE-core] Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Mon, 18 Aug 2014 20:27:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Khem Raj <raj.khem@gmail.com> [2014-08-18 12:04:54 -0700]:
> On Mon, Aug 18, 2014 at 11:50 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> >> >
> > I've put the failing "log.do_compile" files into one directory which is 1.3MB
> > uncompressed or just 41kB compressed. I've posted them to:
> >   http://www.paulbarker.me.uk/musl-error-logs_2014-08-18/
> >   http://www.paulbarker.me.uk/musl-error-logs_2014-08-18/musl-error-logs_2014-08-18.tar.xz
> >

i looked at the logs

i think most of the issues already have fixes in alpinelinux or
sabotage, they should be pushed upstream if they are not there yet

common errors and recommended fixes:

findutils
gzip
	old gnulib with broken freadahead, newer gnulib works with musl

libtirpc
pax
	sys/cdefs.h, application should be fixed not to use it

logrotate
	sys/queue.h, missing from musl, ship queue.h with app source

e2fsprogs
ethtool:
	use of __uint64_t, __uint32_t (non-conforming, use standard types)
libnfsidmap
	use of u_int32_t (without including sys/types.h)

procps
psmisc
	undefined PATH_MAX (missing limits.h include)

mc:
	undefined CTRL(x) (missing sys/ttydefaults.h include)
	glibc includes sys/ttydefaults.h into termios.h, musl doesnt

cronie
	undefined MAXNAMLEN, musl has it in sys/param.h

at
	undefied __isleap
	glibc time.h has # define __isleap(year) \
	((year) % 4 == 0 && ((year) % 100 != 0 || (year) % 400 == 0))

elfutils
	error.h, musl does not have this

sysklogd
iptables
	include incompatible linux headers (+ various other issues)
	probably harder to fix

sudo:
	the build command helpfully redirected the compiler output to /dev/null

