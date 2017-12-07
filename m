Return-Path: <gunasekaran@solitontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0088E00D6A; Wed,  6 Dec 2017 21:59:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54454E00D68
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 21:59:08 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id z34so6161828wrz.10
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 21:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=solitontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=uPPXSu0vEwXEdP0HOMug9hq/KXAfohKvnODcBD2sJKc=;
	b=Y8XB4sh7dfTKZ/OH5LrJnEQ9/x6x8nx/yWQhBTQe+GlZbnN4uOQfhnbemCaIcgvO5I
	WI1GOIsLOstF2ePVz4qVuc0GKG65PNo0025NR2ll4TFhvtwBk9eWQZYtWQZJRWqsuTzJ
	2DhcjciG8EvmRVxbvACKzZra2W2qylZPLhyW35vazmKiekW9NhzN7PjZ8SHxNeQuPOIZ
	rHdYis0kVHrgHy6c2n0VjzIxEWtEWqFC0kYw6GDcG1A46KE6Z36K4dpHNigcG9wi4E7Q
	KV3GM4dr1SXcWuCiZ+oYemT+mr4WtorPdbVxD7TxYwontOyRtITsOhtYjm0AzBVb8lyn
	Davw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uPPXSu0vEwXEdP0HOMug9hq/KXAfohKvnODcBD2sJKc=;
	b=ocHfBOo92uVX4sgv18i6GOl+396jFQgn9mNEdaC/4lWk9w9avm4/wYieHbQJoYM9cJ
	65+T4qMBVYcXl/y6HCW6PnE8mWuNrnzfUx5320IcKdFzssgiZxs9hNb9b2y3uCVlVsQq
	5Ow+OEX8/Ar7foGgZqVp3HvWe9eRmmjMymbz9doRU24BZTP4gBzEVk3aTH65f7+1cLJY
	JBMqSEyCNuJIeblG4Mf+mUjOTxOXTAHqJUGGLBADmLx1pMPmpRrqCc+pb4ZAP9vk1NEy
	4XLZ5yBBDSL37Y74iGMz2tt6j89c2NO1XuL1FLAp7zEplvEzNlAYEmob6cJ8xjg89HGe
	OFTw==
X-Gm-Message-State: AJaThX6cHP7WF+1535iWHG7cW0y4MqSYWoomZVy03iUcpNokT3YtRilp
	2Ch5EFXVZvTrp+qcio41Q2UvrhrcgoI7LbsjQsX3dUVx
X-Google-Smtp-Source: AGs4zMZyPl2mmk79diTLAIzoz4InrxV9SGRj8Sp2cf0fSZEgSEm92qxRsNlld4MyBQczXS/1dbxs/pDkNv5+EMwMz7E=
X-Received: by 10.223.171.29 with SMTP id q29mr21389392wrc.141.1512626347586; 
	Wed, 06 Dec 2017 21:59:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.46.141 with HTTP; Wed, 6 Dec 2017 21:59:07 -0800 (PST)
From: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Date: Thu, 7 Dec 2017 11:29:07 +0530
Message-ID: <CAPVQe-B3hOi-SvOKyR0FjYDr2eyoU74rF3z8e6ju_Vvn-4MT7Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:02:15 -0800
Subject: Morty Branch: Error in building core-image-sato | matchbox-panel recipe
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
X-List-Received-Date: Thu, 07 Dec 2017 05:59:35 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b4d9c204c7f055fb9c47a"

--94eb2c1b4d9c204c7f055fb9c47a
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to build core-image-sato image with poky 2.2.2. I am getting
following error in matchbox-panel recipe

..................................................................................................................
 checking what language compliance flags to pass to the C compiler...
| checking for arm-poky-linux-gnueabi-pkg-config... no
| checking for pkg-config...
</path/>fsl-community-bsp/matchbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
| checking pkg-config is at least version 0.9.0... yes
| checking for MATCHBOX_PANEL... no
| configure: error: Package requirements (glib-2.0
|                   gmodule-export-2.0
|                   x11
|                   gdk-x11-3.0
|                   gtk+-3.0) were not met:
|
| No package 'gdk-x11-3.0' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
<path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.27179)
ERROR: Task
(<path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

<path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:
do_configure

Is there a recipe for gdk-x11 in yocto?


Thanks,
Guna

--94eb2c1b4d9c204c7f055fb9c47a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi all,<br><br></div>I am trying to build core-i=
mage-sato image with poky 2.2.2. I am getting following error in matchbox-p=
anel recipe<br><br>........................................................=
..........................................................<br>=C2=A0checkin=
g what language compliance flags to pass to the C compiler...<br>| checking=
 for arm-poky-linux-gnueabi-pkg-config... no<br>| checking for pkg-config..=
. &lt;/path/&gt;fsl-community-bsp/matchbox/tmp/sysroots/x86_64-linux/usr/bi=
n/pkg-config<br>| checking pkg-config is at least version 0.9.0... yes<br>|=
 checking for MATCHBOX_PANEL... no<br>| configure: error: Package requireme=
nts (glib-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gmodule-export-2.0<br>|=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x11<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gtk+-3.0) were not met:=
<br>| <br>| No package &#39;gdk-x11-3.0&#39; found<br>| <br>| Consider adju=
sting the PKG_CONFIG_PATH environment variable if you<br>| installed softwa=
re in a non-standard prefix.<br>| <br>| Alternatively, you may set the envi=
ronment variables MATCHBOX_PANEL_CFLAGS<br>| and MATCHBOX_PANEL_LIBS to avo=
id the need to call pkg-config.<br>| See the pkg-config man page for more d=
etails.<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Functio=
n failed: do_configure (log file is located at &lt;path&gt;/fsl-community-b=
sp/matchbox/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.=
11-r0/temp/log.do_configure.27179)<br>ERROR: Task (&lt;path&gt;/fsl-communi=
ty-bsp/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.1=
1.bb:do_configure) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary=
: Attempted 2607 tasks of which 0 didn&#39;t need to be rerun and 1 failed.=
<br><br>Summary: 1 task failed:<br>=C2=A0 &lt;path&gt;/fsl-community-bsp/so=
urces/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_c=
onfigure<br></div><div><br></div><div>Is there a recipe for gdk-x11 in yoct=
o?<br></div><div><div><div><div><br></div><div><br clear=3D"all"><div><div =
class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></div></div></di=
v></div></div></div>
</div></div></div></div></div>

--94eb2c1b4d9c204c7f055fb9c47a--
