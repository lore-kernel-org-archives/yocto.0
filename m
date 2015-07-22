Return-Path: <lukas.weiss@janitza.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E53BAE009DF; Wed, 22 Jul 2015 00:00:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B81E0097F
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 00:00:03 -0700 (PDT)
Received: by wicmv11 with SMTP id mv11so67924439wic.0
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 00:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=PtVdK8jRBQKGYr3PqVJZO46J+RToi9QyC3nNQ3+8sMc=;
	b=SKlAQGmr3GuP6+tptGMxWKmFAoM1byRvrImhbwl8GT9RCWSayBV7Ua6IcW7imdpUBh
	jdbnlF2Ckb3SBB9Ldd5ByR/X2JkzGgW4nffLh8yiy2P71EOSNKKqZ160DZb73pF9g17O
	jXtUzytEW4Q7tS/IspkXOB1G7jmcfK2LsCloibqphOcHERkR9pe0LB2cCiADiPteWQLO
	0ORwpReacXxrA/48AZlPWi2YdbkhWX3IuPTikndR0T8VBsNMPen7j2Bq792h/32WP1lo
	32QdlBb6wWxbZQg2UPcvmutGvZ4Q0PsZAT7XRLa9Yf7TompcXmDv9SjJZ969eqTJuDUa
	t4VQ==
X-Gm-Message-State: ALoCoQn2loqZIvhZK05q8dsfP59IPJDEedZM+Rh8dnI0JVxWWujCOx8OflHXPe6dGLlLTYhc+Me3
MIME-Version: 1.0
X-Received: by 10.180.206.41 with SMTP id ll9mr28784781wic.88.1437548402391;
	Wed, 22 Jul 2015 00:00:02 -0700 (PDT)
Received: by 10.27.174.208 with HTTP; Wed, 22 Jul 2015 00:00:02 -0700 (PDT)
Date: Wed, 22 Jul 2015 09:00:02 +0200
Message-ID: <CAM8P1k8HtFW8OniXY_dprAz+DdJWREpHQEe8nVtNALnWqYUwNA@mail.gmail.com>
From: Lukas Weiss <lukas.weiss@janitza.de>
To: yocto@yoctoproject.org
Subject: Add custom tools to yocto build environment
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
X-List-Received-Date: Wed, 22 Jul 2015 07:00:09 -0000
Content-Type: multipart/alternative; boundary=001a11c38882df5a69051b7151e9

--001a11c38882df5a69051b7151e9
Content-Type: text/plain; charset=UTF-8

Hello yocto friends,

I have a problem with yocto you could help me with. The Background:
Iam working on a yocto-linux for a TI OMAP-L138, which is a ARM9+DSP in one
package. The Linux on ARM is running fine, and does everything I want. I
have implemented a kernel driver to start the DSP-Core from the Linux on
the ARM9-Core, but now I need to generate the Firmware for the DSP with the
Yocto buid system. Main problem is, that I need a compiler/toolchain from
TI to compile the Code for the DSP in the yocto build environment.

At this point I did not understand how to add tools to the yocto build
environment at all. I think there must be a way to add software to my host
(build) system for generating code for my target. But I have no idea how to
do it. When I write a BB-recipe, the architecture of the resulting files is
checked to be from targets type (arm in my case), but host tools are of
type x86... (which is totally correct!)

I think I need a recipe, which downloads the compiler/toolchain for the
DSP, extracts and installs it to my yocto build environment, so that I can
use it in another recipe that compiles my code to a loadable firmware-image
(which is placed to my targets rootfs).

Do you have any suggestions for me how to do that?

Thanks,

Lukas

--001a11c38882df5a69051b7151e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello yocto friends,<br><br></div>I have a problem wi=
th yocto you could help me with. The Background:<br><span>Iam working on a =
yocto-linux for a TI OMAP-L138, which is a=20
ARM9+DSP in one package. The Linux on ARM is running fine, and does everyth=
ing I
 want. I have implemented a kernel driver to start the DSP-Core from the
 Linux on the ARM9-Core, but now I need to generate the Firmware for the
 DSP with the Yocto buid system. Main problem is, that I need a compiler/to=
olchain
 from TI to compile the Code for the DSP in the yocto build environment.</s=
pan><br clear=3D"all"><div><div><br></div><div>At this point I did not unde=
rstand how to add tools to the yocto build environment at all. I think ther=
e must be a way to add software to my host (build) system for generating co=
de for my target. But I have no idea how to do it. When I write a BB-recipe=
, the architecture of the resulting files is checked to be from targets typ=
e (arm in my case), but host tools are of type x86... (which is totally cor=
rect!) <br></div><div><br>I think I need a recipe, which downloads the comp=
iler/toolchain for the DSP, extracts and installs it to my yocto build envi=
ronment, so that I can use it in another recipe that compiles my code to a =
loadable firmware-image (which is placed to my targets rootfs).<br><br></di=
v><div>Do you have any suggestions for me how to do that?<br></div><div><br=
></div><div>Thanks,<br><br></div><div>Lukas<br></div></div></div>

--001a11c38882df5a69051b7151e9--
