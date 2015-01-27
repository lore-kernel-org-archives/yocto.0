Return-Path: <mahdis@nimakco.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58821E008EC; Tue, 27 Jan 2015 04:21:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail82.nedahosting.com (unknown [198.55.48.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC0DE008BC
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:21:23 -0800 (PST)
Received: from UnknownHost [2.190.181.23] by mail.nedahosting.com with SMTP;
	Tue, 27 Jan 2015 07:21:16 -0500
From: "Mahdi Saadat" <MahdiS@nimakco.net>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
	<3420625.Ca7nvJBmSj@peggleto-mobl5.ger.corp.intel.com>
	<009901d03a04$7a2e4fc0$6e8aef40$@nimakco.net>
	<1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 27 Jan 2015 15:51:12 +0330
Message-ID: <00d201d03a2b$c11ad3f0$43507bd0$@nimakco.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQG02yph8e5oUF8QM+FX0mxlqpCeKQJJ8mlKAry/BCQB4rbRJpzTVJYA
Cc: yocto@yoctoproject.org
Subject: Re: dansguardian
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
X-List-Received-Date: Tue, 27 Jan 2015 12:21:37 -0000
X-Groupsio-MsgNum: 23195
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_00D3_01D03A49.174AB520"
Content-Language: fa

------=_NextPart_000_00D3_01D03A49.174AB520
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit


After I add "inherit autotools gettext pkgconfig" on .bb file the error is :
/usr/bin/install: cannot stat 'transparent1x1.gif': No such file or
directory
Attached file is the do install log

---------------
Regards
mahdi
-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com] 
Sent: Tuesday, January 27, 2015 1:11 PM
To: Mahdi Saadat
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] dansguardian

On Tuesday 27 January 2015 11:10:03 Mahdi Saadat wrote:
> Thanks for your response the log file is as below:
> DEBUG: Executing python function rootfs_process_ignore
> DEBUG: Python function rootfs_process_ignore finished
> DEBUG: Executing python function rootfs_runtime_mapping
> DEBUG: Python function rootfs_runtime_mapping finished
> DEBUG: Executing python function do_rootfs
> NOTE: configuring RPM platform settings
> NOTE: configuring RPM system provides
> NOTE: configuring RPM DB settings
> NOTE: configuring Smart settings
> NOTE: Note: adding Smart channel nimak (45)
> NOTE: Note: adding Smart channel core2_32 (40)
> NOTE: Note: adding Smart channel all (35)
> NOTE: adding Smart RPM DB channel
> NOTE: Note: configuring RPM cross-install scriptlet_wrapper
> NOTE: ###### Generate rootfs #######
> NOTE: Executing
> '/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
> --update -q /home/nimak/poky/build/tmp/deploy/rpm/all' ...
> NOTE: Executing
> '/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
> --update -q /home/nimak/poky/build/tmp/deploy/rpm/nimak' ...
> NOTE: Executing
> '/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
> --update -q /home/nimak/poky/build/tmp/deploy/rpm/core2_32' .$
> NOTE: Installing the following packages: iptables run-postinsts 
> dansguardian squid clamav snort packagegroup-core-boot
> ERROR: dansguardian not found in the base feeds (nimak 
> core2-32-intel-common
> core2-32 i586 x86 noarch any all).
> acl-2.2.52-r0@core2_32 acl-dbg-2.2.52-r0@core2_32 
> acl-dev-2.2.52-r0@core2_32
> acl-doc-2.2.52-r0@core2_32 acl-locale-de-2.2.52-r0@core2_32 acl-local$
> DEBUG: Python function do_rootfs finished
> ERROR: Function failed: do_rootfs

This suggests that the main package is empty, which likely means that
do_install didn't install anything to ${D} (or less likely, none of the
files that it did install matched that the value of FILES_${PN} for the
recipe).
See this section of the manual for a bit more detail:

 
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-reci
pe-installing

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

------=_NextPart_000_00D3_01D03A49.174AB520
Content-Type: application/octet-stream;
	name="log.do_install.9110"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="log.do_install.9110"

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux'=
, 'common-glibc', 'i586-linux', 'common']
DEBUG: Executing shell function do_install
NOTE: make -j 16 DESTDIR=3D/home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/image install
Making install in doc
make[1]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/doc'
make[2]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/doc'
make[2]: Nothing to be done for `install-exec-am'.
 /bin/mkdir -p '/home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgua=
rdian/2.10.1.1-r0/image/usr/share/doc/dansguardian'
 /bin/mkdir -p '/home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgua=
rdian/2.10.1.1-r0/image/usr/share/man/man8'
 /usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/doc/AuthPlugins /home/n=
imak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.10.1.1-r0/dansg=
uardian-2.10.1.1/doc/ContentScanners /home/nimak/poky/build/tmp/work/core2-=
32-poky-linux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/doc/DownloadMa=
nagers /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/dansguardian-2.10.1.1/doc/FAQ /home/nimak/poky/build/tmp/work/core=
2-32-poky-linux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/doc/FAQ.html=
 /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.10.1.1-=
r0/dansguardian-2.10.1.1/doc/Plugins '/home/nimak/poky/build/tmp/work/core2=
-32-poky-linux/dansguardian/2.10.1.1-r0/image/usr/share/doc/dansguardian'
 /usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/doc/dansguardian.8 '/ho=
me/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.10.1.1-r0/i=
mage/usr/share/man/man8'
make[2]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/doc'
make[1]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/doc'
Making install in .
make[1]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build'
make[2]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build'
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
make[2]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build'
make[1]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build'
Making install in data
make[1]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/data'
Making install in languages
make[2]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/data/languages'
make[3]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/data/languages'
make[3]: Nothing to be done for `install-exec-am'.
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/czech/mes=
sages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.10=
.1.1-r0/image/usr/share/dansguardian/languages/czech
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/czech/tem=
plate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/image/usr/share/dansguardian/languages/czech
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/czech/fan=
cydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansg=
uardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/czech
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/hebrew/me=
ssages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/image/usr/share/dansguardian/languages/hebrew
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/hebrew/te=
mplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/hebrew
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/hebrew/fa=
ncydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/hebrew
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/turkish/m=
essages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.=
10.1.1-r0/image/usr/share/dansguardian/languages/turkish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/turkish/t=
emplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardi=
an/2.10.1.1-r0/image/usr/share/dansguardian/languages/turkish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/turkish/f=
ancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dan=
sguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/turkish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/bulgarian=
/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/=
2.10.1.1-r0/image/usr/share/dansguardian/languages/bulgarian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/bulgarian=
/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguar=
dian/2.10.1.1-r0/image/usr/share/dansguardian/languages/bulgarian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/bulgarian=
/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/d=
ansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/bulgarian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/danish/me=
ssages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/image/usr/share/dansguardian/languages/danish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/danish/te=
mplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/danish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/danish/fa=
ncydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/danish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/indonesia=
n/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/image/usr/share/dansguardian/languages/indonesian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/indonesia=
n/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgua=
rdian/2.10.1.1-r0/image/usr/share/dansguardian/languages/indonesian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/indonesia=
n/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/=
dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/indonesian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/russian-1=
251/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardi=
an/2.10.1.1-r0/image/usr/share/dansguardian/languages/russian-1251
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/russian-1=
251/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansg=
uardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/russian-1251
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/russian-1=
251/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linu=
x/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/russian-1=
251
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/ukenglish=
/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/=
2.10.1.1-r0/image/usr/share/dansguardian/languages/ukenglish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/ukenglish=
/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguar=
dian/2.10.1.1-r0/image/usr/share/dansguardian/languages/ukenglish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/ukenglish=
/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/d=
ansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/ukenglish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/chinesebi=
g5/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/chinesebig5
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/chinesebi=
g5/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgu=
ardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/chinesebig5
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/chinesebi=
g5/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux=
/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/chinesebig=
5
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/dutch/mes=
sages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.10=
.1.1-r0/image/usr/share/dansguardian/languages/dutch
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/dutch/tem=
plate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/image/usr/share/dansguardian/languages/dutch
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/dutch/fan=
cydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansg=
uardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/dutch
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/italian/m=
essages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.=
10.1.1-r0/image/usr/share/dansguardian/languages/italian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/italian/t=
emplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardi=
an/2.10.1.1-r0/image/usr/share/dansguardian/languages/italian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/italian/f=
ancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dan=
sguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/italian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/russian-k=
oi8-r/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguar=
dian/2.10.1.1-r0/image/usr/share/dansguardian/languages/russian-koi8-r
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/russian-k=
oi8-r/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dan=
sguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/russian-koi8-r
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/russian-k=
oi8-r/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/russian=
-koi8-r
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/chinesegb=
2312/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguard=
ian/2.10.1.1-r0/image/usr/share/dansguardian/languages/chinesegb2312
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/chinesegb=
2312/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/chinesegb2312
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/chinesegb=
2312/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-lin=
ux/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/chineseg=
b2312
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/french/me=
ssages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/image/usr/share/dansguardian/languages/french
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/french/te=
mplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/french
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/french/fa=
ncydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/french
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/lithuania=
n/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/image/usr/share/dansguardian/languages/lithuanian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/lithuania=
n/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgua=
rdian/2.10.1.1-r0/image/usr/share/dansguardian/languages/lithuanian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/lithuania=
n/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/=
dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/lithuanian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/polish/me=
ssages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/image/usr/share/dansguardian/languages/polish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/polish/te=
mplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/polish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/polish/fa=
ncydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/polish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/slovak/me=
ssages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/image/usr/share/dansguardian/languages/slovak
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/slovak/te=
mplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/slovak
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/slovak/fa=
ncydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/slovak
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/german/me=
ssages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.1=
0.1.1-r0/image/usr/share/dansguardian/languages/german
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/german/te=
mplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/german
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/german/fa=
ncydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dans=
guardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/german
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/portugues=
e/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/image/usr/share/dansguardian/languages/portuguese
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/portugues=
e/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgua=
rdian/2.10.1.1-r0/image/usr/share/dansguardian/languages/portuguese
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/portugues=
e/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/=
dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/portuguese
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/swedish/m=
essages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.=
10.1.1-r0/image/usr/share/dansguardian/languages/swedish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/swedish/t=
emplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardi=
an/2.10.1.1-r0/image/usr/share/dansguardian/languages/swedish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/swedish/f=
ancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dan=
sguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/swedish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/spanish/m=
essages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.=
10.1.1-r0/image/usr/share/dansguardian/languages/spanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/spanish/t=
emplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardi=
an/2.10.1.1-r0/image/usr/share/dansguardian/languages/spanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/spanish/f=
ancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dan=
sguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/spanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/hungarian=
/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/=
2.10.1.1-r0/image/usr/share/dansguardian/languages/hungarian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/hungarian=
/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguar=
dian/2.10.1.1-r0/image/usr/share/dansguardian/languages/hungarian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/hungarian=
/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/d=
ansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/hungarian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/ptbrazili=
an/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardia=
n/2.10.1.1-r0/image/usr/share/dansguardian/languages/ptbrazilian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/ptbrazili=
an/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansgu=
ardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/ptbrazilian
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/ptbrazili=
an/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux=
/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/ptbrazilia=
n
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/japanese/=
messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2=
.10.1.1-r0/image/usr/share/dansguardian/languages/japanese
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/japanese/=
template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguard=
ian/2.10.1.1-r0/image/usr/share/dansguardian/languages/japanese
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/japanese/=
fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/da=
nsguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/japanese
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/malay/mes=
sages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/2.10=
.1.1-r0/image/usr/share/dansguardian/languages/malay
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/malay/tem=
plate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/image/usr/share/dansguardian/languages/malay
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/malay/fan=
cydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansg=
uardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/malay
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/mxspanish=
/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/=
2.10.1.1-r0/image/usr/share/dansguardian/languages/mxspanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/mxspanish=
/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguar=
dian/2.10.1.1-r0/image/usr/share/dansguardian/languages/mxspanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/mxspanish=
/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/d=
ansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/mxspanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/arspanish=
/messages /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/=
2.10.1.1-r0/image/usr/share/dansguardian/languages/arspanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/arspanish=
/template.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguar=
dian/2.10.1.1-r0/image/usr/share/dansguardian/languages/arspanish
/usr/bin/install -c -m 644 /home/nimak/poky/build/tmp/work/core2-32-poky-li=
nux/dansguardian/2.10.1.1-r0/dansguardian-2.10.1.1/data/languages/arspanish=
/fancydmtemplate.html /home/nimak/poky/build/tmp/work/core2-32-poky-linux/d=
ansguardian/2.10.1.1-r0/image/usr/share/dansguardian/languages/arspanish
make[3]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/data/languages'
make[2]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/data/languages'
Making install in .
make[2]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/data'
make[3]: Entering directory `/home/nimak/poky/build/tmp/work/core2-32-poky-=
linux/dansguardian/2.10.1.1-r0/build/data'
make[3]: Nothing to be done for `install-exec-am'.
/bin/bash /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian/=
2.10.1.1-r0/dansguardian-2.10.1.1/install-sh -d /home/nimak/poky/build/tmp/=
work/core2-32-poky-linux/dansguardian/2.10.1.1-r0/image/usr/share/dansguard=
ian && \
	/bin/bash /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/dansguardian-2.10.1.1/install-sh -d /home/nimak/poky/build/tmp=
/work/core2-32-poky-linux/dansguardian/2.10.1.1-r0/image/var/log/dansguardi=
an && \
	/bin/bash /home/nimak/poky/build/tmp/work/core2-32-poky-linux/dansguardian=
/2.10.1.1-r0/dansguardian-2.10.1.1/install-sh -d /home/nimak/poky/build/tmp=
/work/core2-32-poky-linux/dansguardian/2.10.1.1-r0/image/var/run && \
	for l in transparent1x1.gif dansguardian.pl ; do \
		echo "/usr/bin/install -c -m 644 $l /home/nimak/poky/build/tmp/work/core2=
-32-poky-linux/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/$l"; \
		/usr/bin/install -c -m 644 $l /home/nimak/poky/build/tmp/work/core2-32-po=
ky-linux/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/$l; \
	done
/usr/bin/install -c -m 644 transparent1x1.gif /home/nimak/poky/build/tmp/wo=
rk/core2-32-poky-linux/dansguardian/2.10.1.1-r0/image/usr/share/dansguardia=
n/transparent1x1.gif
/usr/bin/install: cannot stat 'transparent1x1.gif': No such file or directo=
ry
/usr/bin/install -c -m 644 dansguardian.pl /home/nimak/poky/build/tmp/work/=
core2-32-poky-linux/dansguardian/2.10.1.1-r0/image/usr/share/dansguardian/d=
ansguardian.pl
/usr/bin/install: cannot stat 'dansguardian.pl': No such file or directory
make[3]: *** [install-data-local] Error 1
make[3]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/data'
make[2]: *** [install-am] Error 2
make[2]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/data'
make[1]: *** [install-recursive] Error 1
make[1]: Leaving directory `/home/nimak/poky/build/tmp/work/core2-32-poky-l=
inux/dansguardian/2.10.1.1-r0/build/data'
make: *** [install-recursive] Error 1
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_install (log file is located at /home/nimak/poky=
/build/tmp/work/core2-32-poky-linux/dansguardian/2.10.1.1-r0/temp/log.do_in=
stall.9110)

------=_NextPart_000_00D3_01D03A49.174AB520--
