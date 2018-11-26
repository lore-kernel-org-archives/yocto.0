Return-Path: <slaterc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A725E009B2; Mon, 26 Nov 2018 11:55:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (slaterc[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C114E0097C
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 11:55:49 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id v23so12415927otk.9
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 11:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ejka7oveKLnQ3Os3etXzlbkF+4bQLZcjCF2kI45OO5o=;
	b=jqvybVngdlkvlvBc2/R+kslTRpnHWNoZ+Y5R56Qv5jYhUexs2R7EGH7I3eD5sq1IOY
	qYW1DR4wtHVGzfcwUmUeqOWqykAopWwJOheiY8O/bQITnXyJfM+DSjQKeINZruL19R22
	qVgZnbfKeUDTkLcQ1MvdNNvi4zU200EsuusWX+drcPSkaIjJO0ML5MN+VnVed0JzbJ7Y
	NcMe8X6BdGbdy3BnGp9ssRe2e180y95Rj2w7NKiEdOJAzAIOWI7wgZQ8Y8f+AI0JMork
	DQ89P8t6WYWFhmLn/LLr0fjFUbMYpGImjF1M+5WOwSa6u2kcXGFCOqmPb75nsxxuL7ex
	nXtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ejka7oveKLnQ3Os3etXzlbkF+4bQLZcjCF2kI45OO5o=;
	b=sKvohVOqS3LhWnmiZYiOUzCk/tqEtfojO/cSEQ4LaXRq6L1yyB8pNBIcSGh6TbQkpU
	QTMpQYbwEFNuLWjFtO+COIHvEsyGjBWXVdZSDQNQElOaSY55HprF+ewAFzTkaSRdpVyQ
	++vtpLTkjG3e+VZFQuwdbOiSSabzHCf2TfIL8vhfnlQmKIRfK5oXLEr4wSwsV9fvJlDI
	tky8FCKNdHFD58NsPrgqZ4RgOgJBN/jaPDuV9KcgqHDhzfCctQx4MHJtE+2oii4wnjzp
	0jwhElZPX0a3ML6CbMqJwOu9EIkX6NO4iNlfyDO04cPLqfb+/pvpXcCED5dnyTTRHDE3
	xhtA==
X-Gm-Message-State: AA+aEWYq70CXtqg2OJ4F6jPV3yoMKGIPLEaJgmsSgBwbGXihyf2tyJz7
	eSH8wlR2UHJByKXCvGxMxvHtL8cZddlzSlbcJm9ZBbSU
X-Google-Smtp-Source: AFSGD/ULitqUqAjDHvzcah3tUOipOA0CUci2MfUq9QoWhNeOyODjQMAgcCM2wDXdXdbFIBMmlOHUnnAiQLKdyGko3nw=
X-Received: by 2002:a9d:7201:: with SMTP id u1mr16986260otj.365.1543262148581; 
	Mon, 26 Nov 2018 11:55:48 -0800 (PST)
MIME-Version: 1.0
From: Conor Slater <slaterc@gmail.com>
Date: Mon, 26 Nov 2018 20:55:36 +0100
Message-ID: <CAH+z4xQBO6WjqopVDYd7ix-eDk8hjwHe4cuWVeWLVd-zY8-RvA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: GLIBC_GENERATE_LOCALES setting not generating locales
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
X-List-Received-Date: Mon, 26 Nov 2018 19:55:50 -0000
Content-Type: multipart/alternative; boundary="000000000000295cf2057b96b843"

--000000000000295cf2057b96b843
Content-Type: text/plain; charset="UTF-8"

Dear All,

I'm having trouble adding locales to my image.

If I make changes to GLIBC_GENERATE_LOCALES in my local.conf glibc-locales
will rebuild but only the default locales are present:
$ locale -a
C
POSIX
en_US

The locales are listed when I run this before building the image:
$ bitbake -e gmpanel-image | grep -e "^GLIBC_GENERATE_LOCALES="
GLIBC_GENERATE_LOCALES="fr_CH.UTF8 en_GB.UTF-8 en_US.UTF-8"

Are there other settings I have to change or any packages I have to add to
the image for this to work?

You can find information on my configuration below:

Best Regards,

Conor.

Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "raspberrypi3"
DISTRO               = "gmpanel"
DISTRO_VERSION       = "1.0"
TUNE_FEATURES        = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU           = "hard"
meta
meta-poky            = "sumo:d240b885f26e9b05c8db0364ab2ace9796709aad"
meta-oe
meta-networking
meta-python
meta-perl
meta-webserver       = "sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-rust            = "sumo:3efa0f069ffe4dfcb3531ea89834e69cd2257157"
meta-browser         = "master:b5fa3f598236a58da6217852340f5f8dd01c9a71"
meta-security        = "sumo:1e4b45ca888188b4eb838cb29b501ee004237552"
meta-raspberrypi     = "sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227b97"
meta-gmpanel         = "sumo-dev:2350072a65ce361548be7a23c78358191b9da555"

--000000000000295cf2057b96b843
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>De=
ar All,</div><div><br></div><div>I&#39;m having trouble adding locales to m=
y image.</div><div><br></div><div>If I make changes to GLIBC_GENERATE_LOCAL=
ES in my local.conf glibc-locales will rebuild but only the default locales=
 are present:</div><div>$ locale -a</div><div>C</div><div>POSIX</div><div>e=
n_US</div><div><br></div><div>The locales are listed when I run this before=
 building the image:=C2=A0</div><div>$=C2=A0bitbake -e gmpanel-image | grep=
 -e &quot;^GLIBC_GENERATE_LOCALES=3D&quot;</div><div>GLIBC_GENERATE_LOCALES=
=3D&quot;fr_CH.UTF8 en_GB.UTF-8 en_US.UTF-8&quot;<br></div><div><br></div><=
div>Are there other settings I have to change or any packages I have to add=
 to the image for this to work?</div><div dir=3D"ltr"><br></div><div>You ca=
n find information on my configuration below:</div><div><br></div><div>Best=
 Regards,</div><div><br></div><div>Conor.</div><div dir=3D"ltr"><br><div><d=
iv>Build Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;1.38.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=
=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</d=
iv><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;r=
aspberrypi3&quot;</div><div>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;gmpanel&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;1.0&quot;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;arm armv7ve vfp thumb neon vfpv4 callconvention-hard c=
ortexa7&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;hard&quot;</div><div>meta</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:d240b885f26e9b05c8db0364ab2ace9796709a=
ad&quot;</div><div>meta-oe</div><div>meta-networking</div><div>meta-python<=
/div><div>meta-perl</div><div>meta-webserver=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D =
&quot;sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966&quot;</div><div>meta-ru=
st=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:3efa0f069ffe4dfc=
b3531ea89834e69cd2257157&quot;</div><div>meta-browser=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;master:b5fa3f598236a58da6217852340f5f8dd01c9a71&quot=
;</div><div>meta-security=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:1e4b45c=
a888188b4eb838cb29b501ee004237552&quot;</div><div>meta-raspberrypi=C2=A0 =
=C2=A0 =C2=A0=3D &quot;sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227b97&quot;<=
/div><div>meta-gmpanel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo-dev:=
2350072a65ce361548be7a23c78358191b9da555&quot;</div></div></div></div></div=
></div></div>

--000000000000295cf2057b96b843--
