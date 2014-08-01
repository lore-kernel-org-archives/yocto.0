Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 134DEE0056A; Thu, 31 Jul 2014 23:51:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F02D1E004E0
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 23:51:05 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so1025740igd.14
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 23:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=d4B7NvD4I07VbOTk39Xt15eGMQ90fKdulbmcWQ2QwqI=;
	b=hzpl9nHSqyr6I+1KA/4Opq+XF/M2OkwF+A3/zQWkFWhV2lKOB55itCfEH0qRZrbH34
	1+lOrSTxJ0GZlmK1H2UTwzHx3v3oV0nFrhtc51CfyfKbnE8xTLxVpowKKA249ZCdhR+b
	M4cR2LZoYyCtuxgOmpjoRcBVNS1KArsf1RCB4tEdz5pkyH2QZhf0HD1r/Dcu94NgygIL
	8siTFpv6OTdfhLal85nhiSVwQMw14gphiXvabyAV8bzFItHX62baMKO4/Uj3fN7u1YFS
	N9IZvpVqeUXJUwhvdDtLlZazi0OVGsGDRBuLgwmKn9W+28k/vur6BnZp04bl8xcEoh+k
	7c8Q==
MIME-Version: 1.0
X-Received: by 10.43.63.134 with SMTP id xe6mr4147753icb.97.1406875864516;
	Thu, 31 Jul 2014 23:51:04 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Thu, 31 Jul 2014 23:51:04 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Thu, 31 Jul 2014 23:51:04 -0700 (PDT)
In-Reply-To: <1406875687030.25848@kpit.com>
References: <1406875687030.25848@kpit.com>
Date: Fri, 1 Aug 2014 12:21:04 +0530
Message-ID: <CAH21_vFksZwyBzoVfBY+SAfmsfpHBEh_0z56VRTnxVL6TfrChQ@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: elfutils-native0.158 configure failed
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
X-List-Received-Date: Fri, 01 Aug 2014 06:51:07 -0000
Content-Type: multipart/alternative; boundary=bcaec517aefe25ceeb04ff8bd0b5

--bcaec517aefe25ceeb04ff8bd0b5
Content-Type: text/plain; charset=UTF-8

Hi All,

I am trying to build toolchain with target option for bitbake as
meta-toolchain but while building i am getting error.

Please find the below error log for your perusual:

elfutils-native/0.158-r0/elfutils-0.158/configure
--build=i686-linux             --host=i686-linux
--target=i686-linux
--prefix=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr
--exec_prefix=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr
--bindir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/bin
--sbindir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/sbin
--libexecdir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/lib/elfutils
--datadir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/share
--sysconfdir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/etc
--sharedstatedir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/com
--localstatedir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/var
--libdir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/lib
--includedir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/include
--oldincludedir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/include
--infodir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/share/info
--mandir=/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/share/man
--disable-silent-rules
--disable-dependency-tracking                    --program-prefix=eu-
--without-lzma --disable-nls
configure: loading site script
/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/meta/site/native
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /usr/bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether to enable maintainer-specific portions of Makefiles... no
checking build system type... i686-pc-linux-gnu
checking host system type... i686-pc-linux-gnu
checking for i686-linux-gcc... gcc
checking whether the C compiler works... no
configure: error: in
`/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/work/i686-linux/elfutils-native/0.158-r0/build':
configure: error: C compiler cannot create executables
See `config.log' for more details
Configure failed. The contents of all config.log files follows to aid
debugging
ERROR: oe_runconf failed

Please let me know if i am missing something.

Thanks & Regards,
Atul Kumar Singh

--bcaec517aefe25ceeb04ff8bd0b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,<br></p>
<p>I am trying to build toolchain with target option for bitbake as meta-to=
olchain but while building i am getting error.</p>
<p>Please find the below error log for your perusual:<br></p>
<p>elfutils-native/0.158-r0/elfutils-0.158/configure=C2=A0 --build=3Di686-l=
inux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --host=3Di686-linux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --target=3Di686-linux=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --prefix=3D/home/atu=
lk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sy=
sroots/i686-linux/usr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --exec_prefix=3D/home/atulk/poky-a5531a2b8983318b9=
9c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --bindir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78=
a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/bin=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --sbindir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b7=
8a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/sbin=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --libexecdir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf841=
60b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/lib/elfutils=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --datadir=
=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchai=
n-sdk/tmp/sysroots/i686-linux/usr/share=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sysconfdir=3D/home/atulk=
/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysr=
oots/i686-linux/etc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sharedstatedir=3D/home/a=
tulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/=
sysroots/i686-linux/com=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 --localstatedir=3D/home/atulk/poky-a5531a2b8983=
318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/va=
r=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --libdir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf8=
4160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/lib=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --includedir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78a9=
2cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/include=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --oldincludedir=3D/home/atulk/poky-a5531a2b8983318b99c11=
9a87b78a92cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/include=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 --infodir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf841=
60b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/share/info=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 --mandir=3D/home/atulk/poky-a5531a2b8983318b99c119a87b78a92=
cf84160b8/build-toolchain-sdk/tmp/sysroots/i686-linux/usr/share/man=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --disable-sile=
nt-rules=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --disable-dependency-tracking=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --program-prefix=3Deu- --without-lzma --disa=
ble-nls<br>

configure: loading site script /home/atulk/poky-a5531a2b8983318b99c119a87b7=
8a92cf84160b8/meta/site/native<br>
checking for a BSD-compatible install... /usr/bin/install -c<br>
checking whether build environment is sane... yes<br>
checking for a thread-safe mkdir -p... /usr/bin/mkdir -p<br>
checking for gawk... gawk<br>
checking whether make sets $(MAKE)... yes<br>
checking whether make supports nested variables... yes<br>
checking whether to enable maintainer-specific portions of Makefiles... no<=
br>
checking build system type... i686-pc-linux-gnu<br>
checking host system type... i686-pc-linux-gnu<br>
checking for i686-linux-gcc... gcc<br>
checking whether the C compiler works... no<br>
configure: error: in `/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf841=
60b8/build-toolchain-sdk/tmp/work/i686-linux/elfutils-native/0.158-r0/build=
&#39;:<br>
configure: error: C compiler cannot create executables<br>
See `config.log&#39; for more details<br>
Configure failed. The contents of all config.log files follows to aid debug=
ging<br>
ERROR: oe_runconf failed</p>
<p>Please let me know if i am missing something.<br></p>
<p>Thanks &amp; Regards,<br>
Atul Kumar Singh</p>

--bcaec517aefe25ceeb04ff8bd0b5--
