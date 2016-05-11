Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8914AE00D9E; Wed, 11 May 2016 07:43:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FDD0E00CA1
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 07:43:23 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id o133so59720587vka.0
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 07:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=AGHllDjoGkjBq/C31JpaJ0nLIIEhPmub0E7Qt0XdkDE=;
	b=091OpnDgCXR1RycAX9/fGhc98VFtmpTtVwSiPreuPuq+UZiUB6VzFR0FY4EKRsE4MZ
	pF5yTFK3VCoHpLBbWjWmt9otwQ85gvB1aPZvEOS9d91CZWvnDT8p6U5USLNcQADYA0Ef
	aygnXLGNDpE+gf6hlu+NBCtzVY7GhLGQjK9SPPjT9kQJaED8+Eclky+aYX6Nwd7299Os
	inrR2pEaAZg8PxaSMHneLd7h/YWxJO6jGBU/oHsOUxLus9X+bdYqKOOGK+AQby6oAD2U
	oz2bhYfbKPuXw26uTzOYv3COu2HBKxyECKBRl7AMvaGp/isQPp4u/SOVi7QQDIjBa+YI
	JBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=AGHllDjoGkjBq/C31JpaJ0nLIIEhPmub0E7Qt0XdkDE=;
	b=AwokxxVy2RegZgWRWZlcgBZd9460yE8i9Gem/rLqknxkoUEPxN5DHE7oZvyGjY+5dW
	ARwf6AWAwcTNvDZUa93sc7CsNsqCku6PdnmCbW8I9+JOT2hwu+CTLW9BRdxUZGUYRdOs
	BVCEYEWzqFiqGBdMm7XGlbC52yErDHROnKyU41DLOL7g2lXnpuL0LdkUHz+HdsHkOusn
	slv6Iluwt3HIbSY2baj29UI55cVupEVnKBK1Vo9TVTgdlNeTgYJ8FQt2ZxzxkwcNiSxi
	wiKbrZdHxcySNDUj4eT8HdlVrQthO0fcUeZeKqNg2eO8uV4rRs2U8ZI4Wk86Eb4M7U+S
	gnWg==
X-Gm-Message-State: AOPr4FUVEn0eGnBdGrqxgQ5D7cHtX1OkiEa5acK6Wvqa0QTGYsvEuz5wOPDtfGHO8G/gP+QuxhyE1PUbibebYw==
MIME-Version: 1.0
X-Received: by 10.176.3.172 with SMTP id 41mr1912687uau.108.1462977802160;
	Wed, 11 May 2016 07:43:22 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Wed, 11 May 2016 07:43:22 -0700 (PDT)
Date: Wed, 11 May 2016 10:43:22 -0400
Message-ID: <CABfz71d-VJ+x5g6b0hW2zfROCVooNqcHnvYSZARj1mz5x_aA6Q@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: yocto@yoctoproject.org
Subject: meta-fsl-bsp-release on krogoth
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
X-List-Received-Date: Wed, 11 May 2016 14:43:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c000bd836dd230532921064

--94eb2c000bd836dd230532921064
Content-Type: text/plain; charset=UTF-8

When will meta-fsl-bsp-release add support for krogoth?
http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/refs/

Current branches are:
daisy_3.10.53-1.1.0_GA
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=daisy_3.10.53-1.1.0_GA>
qt5everywhere:
Update SRCREV and License to fix configure problems
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=daisy_3.10.53-1.1.0_GA>
Lauren
Post 13 months
daisy_3.10.53-1.1.1_patch
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=daisy_3.10.53-1.1.1_patch>
qt5everywhere:
Update SRCREV and License to fix configure problems
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=daisy_3.10.53-1.1.1_patch>
Lauren
Post 13 months
daisy_3.10.53-1.1.2_patch
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=daisy_3.10.53-1.1.2_patch>
qt5everywhere:
Update SRCREV and License to fix configure problems
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=daisy_3.10.53-1.1.2_patch>
Lauren
Post 13 months
dizzy_3.14.28-1.0.0_GA
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dizzy_3.14.28-1.0.0_GA>
qtsystems:
Fix fetch location and change bluez dependency
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dizzy_3.14.28-1.0.0_GA>
Lauren
Post 13 months
dizzy_3.14.28-1.0.1_patch
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dizzy_3.14.28-1.0.1_patch>
imx-gpu-viv:
Upgrade sfp to 5.0.11.p4.5
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dizzy_3.14.28-1.0.1_patch>
Neena
Busireddy 12 months
dora_3.10.17-1.0.0_GA
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.0_GA>
evtest:
Use version in bbappend
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.0_GA>
Lauren
Post 15 months
dora_3.10.17-1.0.1
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.1>
README:
Update with information about 3.10.17-1.0.1
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.1>
Lauren
Post 15 months
dora_3.10.17-1.0.2
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.2>
gpu-viv:
Add 1.0.2 sfp version by commit 96e9db0
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.2>
Jun
Zhu 15 months
dora_3.10.17-1.0.3
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.3>
README:
Update version info
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.3>
Lauren
Post 7 months
fido_3.14.28_7D_alpha
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.28_7D_alpha>
linux-imx:
Update to commit a34e259cc0a4e86ccb993c947991d2823d81eb14
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.28_7D_alpha>
Jun
Zhu 12 months
fido_3.14.38_6QP_beta
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6QP_beta>
EULA:
Add latest EULA bound with proprietary packages
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6QP_beta>
Lauren
Post 10 months
fido_3.14.38_6QP_ga
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6QP_ga>
imx-gpu-viv:
Upgrade sfp package to 5.0.11.p7.1
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6QP_ga>
Neena
Busireddy 8 months
fido_3.14.38_6UL7D_beta
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6UL7D_beta>
simg2img:
Update as adding Apache2.0 license copyright file
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6UL7D_beta>
Jun
Zhu 10 months
fido_3.14.38_6UL_ga
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6UL_ga>
linux-imx:
Add protocol git to KERNEL_SRC
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6UL_ga>
Lauren
Post 8 months
fido_3.14.38_6UL_patch
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6UL_patch>
README:
Update version info
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6UL_patch>
Lauren
Post 7 months
fido_3.14.52_1.1.0_ga
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.52_1.1.0_ga>
linxu-imx-mfgtool:
Update version to 1.1.1
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.52_1.1.0_ga>
Lauren
Post 2 days
jethro_4.1.15-1.0.0_ga
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=jethro_4.1.15-1.0.0_ga>
README:
Update version to 4.1.15-1.1.1
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=jethro_4.1.15-1.0.0_ga>
Lauren
Post 4 weeks
master
<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/>

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--94eb2c000bd836dd230532921064
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>When will meta-fsl-bsp-release add support for krogot=
h?</div><div><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-=
bsp-release.git/refs/">http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-b=
sp-release.git/refs/</a><br></div><div><br></div><div>Current branches are:=
</div><div><table class=3D"" style=3D"padding:0em;margin:0em;border-collaps=
e:collapse;width:1858px;border:none;color:rgb(51,51,51);font-family:sans-se=
rif;font-size:13.3333px"><tbody><tr style=3D"background-image:initial;backg=
round-repeat:initial"><td style=3D"border:none;padding:0.1em 0.5em;white-sp=
ace:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-b=
sp-release.git/log/?h=3Ddaisy_3.10.53-1.1.0_GA" style=3D"color:black;text-d=
ecoration:none">daisy_3.10.53-1.1.0_GA</a></td><td style=3D"border:none;pad=
ding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/gi=
t/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Ddaisy_3.10.53-1.1.0_GA"=
 style=3D"color:black;text-decoration:none">qt5everywhere: Update SRCREV an=
d License to fix configure problems</a></td><td style=3D"border:none;paddin=
g:0.1em 0.5em;white-space:nowrap">Lauren Post</td><td colspan=3D"2" style=
=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><span class=3D"" st=
yle=3D"color:rgb(136,136,136)">13 months</span></td></tr><tr style=3D"backg=
round-image:initial;background-repeat:initial"><td style=3D"border:none;pad=
ding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/gi=
t/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=3Ddaisy_3.10.53-1.1.1_patch"=
 style=3D"color:black;text-decoration:none">daisy_3.10.53-1.1.1_patch</a></=
td><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><a href=
=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/comm=
it/?h=3Ddaisy_3.10.53-1.1.1_patch" style=3D"color:black;text-decoration:non=
e">qt5everywhere: Update SRCREV and License to fix configure problems</a></=
td><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap">Lauren =
Post</td><td colspan=3D"2" style=3D"border:none;padding:0.1em 0.5em;white-s=
pace:nowrap"><span class=3D"" style=3D"color:rgb(136,136,136)">13 months</s=
pan></td></tr><tr style=3D"background-image:initial;background-repeat:initi=
al"><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><a hre=
f=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log=
/?h=3Ddaisy_3.10.53-1.1.2_patch" style=3D"color:black;text-decoration:none"=
>daisy_3.10.53-1.1.2_patch</a></td><td style=3D"border:none;padding:0.1em 0=
.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/i=
mx/meta-fsl-bsp-release.git/commit/?h=3Ddaisy_3.10.53-1.1.2_patch" style=3D=
"color:black;text-decoration:none">qt5everywhere: Update SRCREV and License=
 to fix configure problems</a></td><td style=3D"border:none;padding:0.1em 0=
.5em;white-space:nowrap">Lauren Post</td><td colspan=3D"2" style=3D"border:=
none;padding:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"colo=
r:rgb(136,136,136)">13 months</span></td></tr><tr style=3D"background-image=
:initial;background-repeat:initial"><td style=3D"border:none;padding:0.1em =
0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/=
imx/meta-fsl-bsp-release.git/log/?h=3Ddizzy_3.14.28-1.0.0_GA" style=3D"colo=
r:black;text-decoration:none">dizzy_3.14.28-1.0.0_GA</a></td><td style=3D"b=
order:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.fr=
eescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Ddizzy_3.1=
4.28-1.0.0_GA" style=3D"color:black;text-decoration:none">qtsystems: Fix fe=
tch location and change bluez dependency</a></td><td style=3D"border:none;p=
adding:0.1em 0.5em;white-space:nowrap">Lauren Post</td><td colspan=3D"2" st=
yle=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><span class=3D""=
 style=3D"color:rgb(136,136,136)">13 months</span></td></tr><tr style=3D"ba=
ckground-image:initial;background-repeat:initial"><td style=3D"border:none;=
padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com=
/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=3Ddizzy_3.14.28-1.0.1_pat=
ch" style=3D"color:black;text-decoration:none">dizzy_3.14.28-1.0.1_patch</a=
></td><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><a h=
ref=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/c=
ommit/?h=3Ddizzy_3.14.28-1.0.1_patch" style=3D"color:black;text-decoration:=
none">imx-gpu-viv: Upgrade sfp to 5.0.11.p4.5</a></td><td style=3D"border:n=
one;padding:0.1em 0.5em;white-space:nowrap">Neena Busireddy</td><td colspan=
=3D"2" style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><span c=
lass=3D"" style=3D"color:rgb(136,136,136)">12 months</span></td></tr><tr st=
yle=3D"background-image:initial;background-repeat:initial"><td style=3D"bor=
der:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.free=
scale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=3Ddora_3.10.17-1=
.0.0_GA" style=3D"color:black;text-decoration:none">dora_3.10.17-1.0.0_GA</=
a></td><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><a =
href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/=
commit/?h=3Ddora_3.10.17-1.0.0_GA" style=3D"color:black;text-decoration:non=
e">evtest: Use version in bbappend</a></td><td style=3D"border:none;padding=
:0.1em 0.5em;white-space:nowrap">Lauren Post</td><td colspan=3D"2" style=3D=
"border:none;padding:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=
=3D"color:rgb(136,136,136)">15 months</span></td></tr><tr style=3D"backgrou=
nd-image:initial;background-repeat:initial"><td style=3D"border:none;paddin=
g:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/c=
git.cgi/imx/meta-fsl-bsp-release.git/log/?h=3Ddora_3.10.17-1.0.1" style=3D"=
color:black;text-decoration:none">dora_3.10.17-1.0.1</a></td><td style=3D"b=
order:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.fr=
eescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Ddora_3.10=
.17-1.0.1" style=3D"color:black;text-decoration:none">README: Update with i=
nformation about 3.10.17-1.0.1</a></td><td style=3D"border:none;padding:0.1=
em 0.5em;white-space:nowrap">Lauren Post</td><td colspan=3D"2" style=3D"bor=
der:none;padding:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"=
color:rgb(136,136,136)">15 months</span></td></tr><tr style=3D"background-i=
mage:initial;background-repeat:initial"><td style=3D"border:none;padding:0.=
1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.=
cgi/imx/meta-fsl-bsp-release.git/log/?h=3Ddora_3.10.17-1.0.2" style=3D"colo=
r:black;text-decoration:none">dora_3.10.17-1.0.2</a></td><td style=3D"borde=
r:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freesc=
ale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Ddora_3.10.17-=
1.0.2" style=3D"color:black;text-decoration:none">gpu-viv: Add 1.0.2 sfp ve=
rsion by commit 96e9db0</a></td><td style=3D"border:none;padding:0.1em 0.5e=
m;white-space:nowrap">Jun Zhu</td><td colspan=3D"2" style=3D"border:none;pa=
dding:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"color:rgb(1=
36,136,136)">15 months</span></td></tr><tr style=3D"background-image:initia=
l;background-repeat:initial"><td style=3D"border:none;padding:0.1em 0.5em;w=
hite-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/met=
a-fsl-bsp-release.git/log/?h=3Ddora_3.10.17-1.0.3" style=3D"color:black;tex=
t-decoration:none">dora_3.10.17-1.0.3</a></td><td style=3D"border:none;padd=
ing:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git=
/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Ddora_3.10.17-1.0.3" styl=
e=3D"color:black;text-decoration:none">README: Update version info</a></td>=
<td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap">Lauren Pos=
t</td><td colspan=3D"2" style=3D"border:none;padding:0.1em 0.5em;white-spac=
e:nowrap"><span class=3D"" style=3D"color:rgb(136,136,136)">7 months</span>=
</td></tr><tr style=3D"background-image:initial;background-repeat:initial">=
<td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D=
"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=
=3Dfido_3.14.28_7D_alpha" style=3D"color:black;text-decoration:none">fido_3=
.14.28_7D_alpha</a></td><td style=3D"border:none;padding:0.1em 0.5em;white-=
space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl=
-bsp-release.git/commit/?h=3Dfido_3.14.28_7D_alpha" style=3D"color:black;te=
xt-decoration:none">linux-imx: Update to commit a34e259cc0a4e86ccb993c94799=
1d2823d81eb14</a></td><td style=3D"border:none;padding:0.1em 0.5em;white-sp=
ace:nowrap">Jun Zhu</td><td colspan=3D"2" style=3D"border:none;padding:0.1e=
m 0.5em;white-space:nowrap"><span class=3D"" style=3D"color:rgb(136,136,136=
)">12 months</span></td></tr><tr style=3D"background-image:initial;backgrou=
nd-repeat:initial"><td style=3D"border:none;padding:0.1em 0.5em;white-space=
:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-=
release.git/log/?h=3Dfido_3.14.38_6QP_beta" style=3D"color:black;text-decor=
ation:none">fido_3.14.38_6QP_beta</a></td><td style=3D"border:none;padding:=
0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/cgi=
t.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Dfido_3.14.38_6QP_beta" style=
=3D"color:black;text-decoration:none">EULA: Add latest EULA bound with prop=
rietary packages</a></td><td style=3D"border:none;padding:0.1em 0.5em;white=
-space:nowrap">Lauren Post</td><td colspan=3D"2" style=3D"border:none;paddi=
ng:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"color:rgb(136,=
136,136)">10 months</span></td></tr><tr style=3D"background-image:initial;b=
ackground-repeat:initial"><td style=3D"border:none;padding:0.1em 0.5em;whit=
e-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-f=
sl-bsp-release.git/log/?h=3Dfido_3.14.38_6QP_ga" style=3D"color:black;text-=
decoration:none">fido_3.14.38_6QP_ga</a></td><td style=3D"border:none;paddi=
ng:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/=
cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Dfido_3.14.38_6QP_ga" styl=
e=3D"color:black;text-decoration:none">imx-gpu-viv: Upgrade sfp package to =
5.0.11.p7.1</a></td><td style=3D"border:none;padding:0.1em 0.5em;white-spac=
e:nowrap">Neena Busireddy</td><td colspan=3D"2" style=3D"border:none;paddin=
g:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"color:rgb(136,1=
36,136)">8 months</span></td></tr><tr style=3D"background-image:initial;bac=
kground-repeat:initial"><td style=3D"border:none;padding:0.1em 0.5em;white-=
space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl=
-bsp-release.git/log/?h=3Dfido_3.14.38_6UL7D_beta" style=3D"color:black;tex=
t-decoration:none">fido_3.14.38_6UL7D_beta</a></td><td style=3D"border:none=
;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.co=
m/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Dfido_3.14.38_6UL7D_=
beta" style=3D"color:black;text-decoration:none">simg2img: Update as adding=
 Apache2.0 license copyright file</a></td><td style=3D"border:none;padding:=
0.1em 0.5em;white-space:nowrap">Jun Zhu</td><td colspan=3D"2" style=3D"bord=
er:none;padding:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"c=
olor:rgb(136,136,136)">10 months</span></td></tr><tr style=3D"background-im=
age:initial;background-repeat:initial"><td style=3D"border:none;padding:0.1=
em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.c=
gi/imx/meta-fsl-bsp-release.git/log/?h=3Dfido_3.14.38_6UL_ga" style=3D"colo=
r:black;text-decoration:none">fido_3.14.38_6UL_ga</a></td><td style=3D"bord=
er:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.frees=
cale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Dfido_3.14.38=
_6UL_ga" style=3D"color:black;text-decoration:none">linux-imx: Add protocol=
 git to KERNEL_SRC</a></td><td style=3D"border:none;padding:0.1em 0.5em;whi=
te-space:nowrap">Lauren Post</td><td colspan=3D"2" style=3D"border:none;pad=
ding:0.1em 0.5em;white-space:nowrap"><span class=3D"" style=3D"color:rgb(13=
6,136,136)">8 months</span></td></tr><tr style=3D"background-image:initial;=
background-repeat:initial"><td style=3D"border:none;padding:0.1em 0.5em;whi=
te-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-=
fsl-bsp-release.git/log/?h=3Dfido_3.14.38_6UL_patch" style=3D"color:black;t=
ext-decoration:none">fido_3.14.38_6UL_patch</a></td><td style=3D"border:non=
e;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.freescale.c=
om/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=3Dfido_3.14.38_6UL_p=
atch" style=3D"color:black;text-decoration:none">README: Update version inf=
o</a></td><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap">=
Lauren Post</td><td colspan=3D"2" style=3D"border:none;padding:0.1em 0.5em;=
white-space:nowrap"><span class=3D"" style=3D"color:rgb(136,136,136)">7 mon=
ths</span></td></tr><tr style=3D"background-image:initial;background-repeat=
:initial"><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap">=
<a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.g=
it/log/?h=3Dfido_3.14.52_1.1.0_ga" style=3D"color:black;text-decoration:non=
e">fido_3.14.52_1.1.0_ga</a></td><td style=3D"border:none;padding:0.1em 0.5=
em;white-space:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx=
/meta-fsl-bsp-release.git/commit/?h=3Dfido_3.14.52_1.1.0_ga" style=3D"color=
:black;text-decoration:none">linxu-imx-mfgtool: Update version to 1.1.1</a>=
</td><td style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap">Laure=
n Post</td><td colspan=3D"2" style=3D"border:none;padding:0.1em 0.5em;white=
-space:nowrap"><span class=3D"" style=3D"color:rgb(0,68,0)">2 days</span></=
td></tr><tr style=3D"background-image:initial;background-repeat:initial"><t=
d style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"h=
ttp://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=3D=
jethro_4.1.15-1.0.0_ga" style=3D"color:black;text-decoration:none">jethro_4=
.1.15-1.0.0_ga</a></td><td style=3D"border:none;padding:0.1em 0.5em;white-s=
pace:nowrap"><a href=3D"http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-=
bsp-release.git/commit/?h=3Djethro_4.1.15-1.0.0_ga" style=3D"color:black;te=
xt-decoration:none">README: Update version to 4.1.15-1.1.1</a></td><td styl=
e=3D"border:none;padding:0.1em 0.5em;white-space:nowrap">Lauren Post</td><t=
d colspan=3D"2" style=3D"border:none;padding:0.1em 0.5em;white-space:nowrap=
"><span class=3D"" style=3D"color:rgb(68,68,68)">4 weeks</span></td></tr><t=
r style=3D"background-image:initial;background-repeat:initial"><td style=3D=
"border:none;padding:0.1em 0.5em;white-space:nowrap"><a href=3D"http://git.=
freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/" style=3D"colo=
r:black;text-decoration:none">master</a></td></tr></tbody></table></div><br=
 clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div>Th=
anks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Chan=
ge, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank=
">pknopf@medxchange.com</a></div></div></div></div>
</div>

--94eb2c000bd836dd230532921064--
