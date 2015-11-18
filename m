Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 429D9E00B20; Wed, 18 Nov 2015 05:20:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 149A0E00B04
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 05:20:18 -0800 (PST)
Received: by ykba77 with SMTP id a77so61934914ykb.2
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 05:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=G7KusQQazqs8ePptprTzAH7+7aCQFFYrrftglsBpzn8=;
	b=tJ3PwQJmFJolC2/jeAdYnkDYmVKo2OeAjGFMiv2lD+8aoZxKjD0Xbns/ibCAoKvG3s
	5Rk8KaI+1KVlFrkVJMomKvfIkwFLz0k9MeVtXJWO4v9twxnuiY3Bbnue5sg7sFABrroC
	jyF5q6fK86YXptsr4kDIFFKFeLEJtbus8FGTbyrGu5Z472RGzKFGSH5m3WFbpxQPMqDl
	gF1VYmotpOI08HrSD4ch8fn1HWUDY/MLegcwvKwQ1xW1QwCt2LhnmYM4P4vsm86rpj93
	aV+rqHTQbfMWDwkil0HnPVhngyYdPzs6EGRiR85zF5tHAUVuSzd9yBjP+L1W6ornnyBX
	/RCg==
MIME-Version: 1.0
X-Received: by 10.129.70.132 with SMTP id t126mr1730124ywa.120.1447852818195; 
	Wed, 18 Nov 2015 05:20:18 -0800 (PST)
Received: by 10.31.153.1 with HTTP; Wed, 18 Nov 2015 05:20:18 -0800 (PST)
Date: Wed, 18 Nov 2015 14:20:18 +0100
Message-ID: <CABc_YGDdnOuMuJChr8K32PZsfpDtMhGW5XQ7T2BCoqng0CLsFQ@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: gcc cross canadian i n yocto 2.0 QA warning
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
X-List-Received-Date: Wed, 18 Nov 2015 13:20:22 -0000
Content-Type: multipart/alternative; boundary=001a11484e9eea6cf40524d080cc

--001a11484e9eea6cf40524d080cc
Content-Type: text/plain; charset=UTF-8

Hello,

I have just switched to yocto 2.0 from 1.8 and got this warning when I try
to build SDK for 32-bit machine on x64 host.

export SDKMACHINE="i686"
bitbake meta-toolchain


WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so
gcc-cross-canadian-arm-dbg: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1.so.0.0.0
gcc-cross-canadian-arm-dbg: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.0.0.0
gcc-cross-canadian-arm-dbg: found library in wrong location:
/opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0
[libdir]

I am using my custom layer, but I haven't seen this in 1.8. My question is
that the problem is releated with my layer or something changed in yocto?

Regards,
Marcin

--001a11484e9eea6cf40524d080cc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have just switched to yocto 2.=
0 from 1.8 and got this warning when I try to build SDK for 32-bit machine =
on x64 host.</div><div><br></div><div>export SDKMACHINE=3D&quot;i686&quot;<=
br></div><div>bitbake meta-toolchain<br></div><div><br></div><div><br></div=
><div><div>WARNING: QA Issue: gcc-cross-canadian-arm: found library in wron=
g location: /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-=
linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so</div><div>g=
cc-cross-canadian-arm: found library in wrong location: /opt/poky/2.0/sysro=
ots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linu=
x-gnueabi/5.2.0/libcc1plugin.so</div><div>gcc-cross-canadian-arm: found lib=
rary in wrong location: /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libex=
ec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0<=
/div><div>gcc-cross-canadian-arm: found library in wrong location: /opt/pok=
y/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/ar=
m-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0</div><div>gcc-cross-canad=
ian-arm: found library in wrong location: /opt/poky/2.0/sysroots/i686-pokys=
dk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.=
0/libcc1plugin.so.0</div><div>gcc-cross-canadian-arm: found library in wron=
g location: /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-=
linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0</div><=
div>gcc-cross-canadian-arm: found library in wrong location: /opt/poky/2.0/=
sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky=
-linux-gnueabi/5.2.0/libcc1.so.0</div><div>gcc-cross-canadian-arm: found li=
brary in wrong location: /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libe=
xec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.s=
o.0</div><div>gcc-cross-canadian-arm: found library in wrong location: /opt=
/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gc=
c/arm-poky-linux-gnueabi/5.2.0/libcc1.so</div><div>gcc-cross-canadian-arm-d=
bg: found library in wrong location: /opt/poky/2.0/sysroots/i686-pokysdk-li=
nux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.de=
bug/libcc1.so.0.0.0</div><div>gcc-cross-canadian-arm-dbg: found library in =
wrong location: /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.=
0.0.0</div><div>gcc-cross-canadian-arm-dbg: found library in wrong location=
: /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0 [libdir]<=
/div></div><div><br></div><div>I am using my custom layer, but I haven&#39;=
t seen this in 1.8. My question is that the problem is releated with my lay=
er or something changed in yocto?</div><div><br></div><div>Regards,</div><d=
iv>Marcin</div></div>

--001a11484e9eea6cf40524d080cc--
