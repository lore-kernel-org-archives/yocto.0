Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BABEE0096A; Thu, 23 Jul 2015 04:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46D65E008EC
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 04:01:41 -0700 (PDT)
Received: by wicmv11 with SMTP id mv11so18624229wic.0
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 04:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+choI/9Q35p6ZDuD+SuYS0fqAxJDnrZFL0ePOEd1598=;
	b=mcClVc+C9aNfyoKhDavhG9xGZh3va15ji6IlBfurfddTj2q8hB5MJQaC9Bx/AmD6Al
	5+VH50QlGGjwLnkJGMnUUe9+a8GwVztcufTg+/EWgA54p9eV7aBNIWMt1tQt3T87Pdv6
	6rzfOfkBYRqQOhy+NaslJcr6Cf6n97p+5habXQiF9NIZXGQ+bywHr9YhUxGh6hdPH1Uv
	LK3zpJSCY9c/mAjiHpbmYaM02ROKlsESP0/AITMdRRbztG0ekiKyPP4aCVeiicdCrvpK
	QBDoK34l6MsDCxLu20DcAEtu/FI/2pQeabE/yywAgkBBOwb0q2goGMsU7Cg4q+EyCwQy
	vWcA==
MIME-Version: 1.0
X-Received: by 10.194.60.226 with SMTP id k2mr14090855wjr.10.1437649300652;
	Thu, 23 Jul 2015 04:01:40 -0700 (PDT)
Received: by 10.194.120.132 with HTTP; Thu, 23 Jul 2015 04:01:40 -0700 (PDT)
Date: Thu, 23 Jul 2015 14:01:40 +0300
Message-ID: <CAAHuHfxtDAi4xF8tJqiiswWGMEC-=jsryjbvuKu1Fg311J+Jyw@mail.gmail.com>
From: Life Life <sadlife1990@gmail.com>
To: yocto@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org
X-Mailman-Approved-At: Sun, 26 Jul 2015 09:17:14 -0700
Subject: qt5 webkit Nothing RPROVIDES 'liborc-0.4'
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
X-List-Received-Date: Thu, 23 Jul 2015 11:01:44 -0000
Content-Type: multipart/alternative; boundary=047d7bacbed6e088f7051b88cf0f

--047d7bacbed6e088f7051b88cf0f
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to build qt5 webkit. I seen this error message

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "phyboard-wega-am335x-2"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):9aff3a4ec058a1a1149d026ebedcc6251089fffb"
meta-phytec       = "(nobranch):ccf1c78f312f84933b90926e9bf4f72de59e8e94"
meta-phyam335x    = "(nobranch):a6c488b268d0c2e506f293221703dafcc05b9610"
meta-oe
meta-networking
meta-python
meta-multimedia   = "(nobranch):9efaed99125b1c4324663d9a1b2d3319c74e7278"
meta-qt5          = "master:6d9e2a6dfc21f7d9a3a11b4bcb426b5dfe6feaeb"
meta-ruby         = "(nobranch):9efaed99125b1c4324663d9a1b2d3319c74e7278"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 3367 tasks of which 3367 didn't need to be
rerun and all succeeded.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'liborc-0.4' (but
/home/xy/yocto/build/recipes/images/
core-image-base-edited-20150723-135844.bb RDEPENDS on or otherwise requires
it)

--047d7bacbed6e088f7051b88cf0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br></div>I&#39;m trying to build qt5 webki=
t. I seen this error message<br><br>Build Configuration:<br>BB_VERSION=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.24.0&quot;<br>BUILD_SYS=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quo=
t;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SY=
S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueab=
i&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;phyboard-wega-am335x-2&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTR=
O_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.7&quot;<br>TUNE_FEATURES=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;arm armv7a vfp thumb neon callconvention-hard cor=
texa8&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;vfp-neon&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;(nobranch):9aff3a4ec058a1a1149d026ebedcc6251089fffb&=
quot;<br>meta-phytec=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranc=
h):ccf1c78f312f84933b90926e9bf4f72de59e8e94&quot;<br>meta-phyam335x=C2=A0=
=C2=A0=C2=A0 =3D &quot;(nobranch):a6c488b268d0c2e506f293221703dafcc05b9610&=
quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 <br>meta-networking=C2=A0=C2=A0 <br>meta-python=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>meta-multimedia=C2=A0=C2=A0 =3D &quot;(nobranch):9efaed991=
25b1c4324663d9a1b2d3319c74e7278&quot;<br>meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:6d9e2a6dfc21f7d9a3a11b4bcb4=
26b5dfe6feaeb&quot;<br>meta-ruby=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;(nobranch):9efaed99125b1c4324663d9a1b2d3319c74e7278&quot;<=
br><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: =
Executing RunQueue Tasks<br>NOTE: Tasks Summary: Attempted 3367 tasks of wh=
ich 3367 didn&#39;t need to be rerun and all succeeded.<br>NOTE: Resolving =
any missing task queue dependencies<br>ERROR: Nothing RPROVIDES &#39;liborc=
-0.4&#39; (but /home/xy/yocto/build/recipes/images/<a href=3D"http://core-i=
mage-base-edited-20150723-135844.bb">core-image-base-edited-20150723-135844=
.bb</a> RDEPENDS on or otherwise requires it)<br></div>

--047d7bacbed6e088f7051b88cf0f--
