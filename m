Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB639E00799; Sat, 13 Sep 2014 02:26:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7759E006DB
	for <yocto@yoctoproject.org>; Sat, 13 Sep 2014 02:26:22 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id r5so1984920qcx.28
	for <yocto@yoctoproject.org>; Sat, 13 Sep 2014 02:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=pe945bIBMOdaj1tAQfcLtTmdOpvUV7fuLL1KuU206+4=;
	b=Zp07fuTQXLHgXSbp5USw2KjyjL3m8XBZO/KkMgMWbKDlFKvuvmtcG43yvqg6j2etvP
	rIwDJdn+/iso2URKdaDzPi4eF65wirWFOHCLRlPnI6rYqoyyDIHzk5p45u5AizVXl5A5
	UHPyNEmUJ5+9eW/ShU1crz4H3A045cqUuj3ojRZWz+Fa8QGWcR7JrrPRVJUh8F1ePZxv
	2tDUTtP/rAN6h5MHrv9jD42l0osNDlXs4ZAluPrTsu2XeMqoqZpv+2abwiW9nkMOSCEO
	2xtWP66y2a5iwbrlc2pelanjYCOT/0KXcoU22+aoOA1x+6+Pq5zmq6Q+nKkaqFo5j6df
	b7Fg==
X-Received: by 10.224.3.5 with SMTP id 5mr20715399qal.1.1410600382140; Sat, 13
	Sep 2014 02:26:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Sat, 13 Sep 2014 02:26:01 -0700 (PDT)
In-Reply-To: <CAKC+oqW74-KjA3gfy+U+8SmDiLRx3Fm9OFZjs-LOB1+ffq=eAg@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
	<CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
	<CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>
	<CAKC+oqW74-KjA3gfy+U+8SmDiLRx3Fm9OFZjs-LOB1+ffq=eAg@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sat, 13 Sep 2014 06:26:01 -0300
Message-ID: <CAMCfZKEA8romBZk+HRP0tUc3eFBHF-tS9=FVcnkMTts5EXGhAA@mail.gmail.com>
To: TakkTakk <tomek82221@gazeta.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Sat, 13 Sep 2014 09:26:35 -0000
Content-Type: multipart/alternative; boundary=001a11c3cfdab296520502eefe45

--001a11c3cfdab296520502eefe45
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Sep 12, 2014 at 6:59 PM, TakkTakk <tomek82221@gazeta.pl> wrote:

> i build core-image-base
> My uEnv.txt content :
>
> kernel_file=uImage
> console=ttyO0,115200n8
> mmcroot=/dev/mmcblk0p2 rw
> mmcrootfstype=ext4 rootwait
>
> loaduimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
> loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} /dtbs/${fdtfile}
>
> mmcargs=setenv bootargs console=${console} root=${mmcroot}
> rootfstype=${mmcrootfstype} ${optargs}
> uenvcmd=run loaduimage; run loadfdt; run mmcargs; bootz ${loadaddr} -
> ${fdtaddr}
>

I think that the problem is the "bootz" command. This command is used to
boot zImage kernel. Change it to "bootm" and don't forget to keep the S2
switch pressed.
But again. With a console serial cable is easier to find what is going
wrong.


>
> optargs=quiet drm.debug=7 capemgr.enable_partno=BB-UART4
> --------------------------------------
>
> files inside the FAT partition:
> uEnv.txt
> uImage
> u-boot.img
> MLO
> dtbs/am335x-boneblack.dtb
>



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c3cfdab296520502eefe45
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Sep 12, 2014 at 6:59 PM, TakkTakk <span dir=3D"ltr">&lt;<a href=3D"=
mailto:tomek82221@gazeta.pl" target=3D"_blank">tomek82221@gazeta.pl</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1d5" class=3D"=
a3s" style=3D"overflow:hidden">i build core-image-base<br>
My uEnv.txt content :<br>
<br>
kernel_file=3DuImage<br>
console=3DttyO0,115200n8<br>
mmcroot=3D/dev/mmcblk0p2 rw<br>
mmcrootfstype=3Dext4 rootwait<br>
<br>
loaduimage=3Dload mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}<br>
loadfdt=3Dload mmc ${mmcdev}:${mmcpart} ${fdtaddr} /dtbs/${fdtfile}<br>
<br>
mmcargs=3Dsetenv bootargs console=3D${console} root=3D${mmcroot}<br>
rootfstype=3D${mmcrootfstype} ${optargs}<br>
uenvcmd=3Drun loaduimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${f=
dtaddr}<br></div></blockquote><div><br></div><div>I think that the problem =
is the &quot;bootz&quot; command. This command is used to boot zImage kerne=
l. Change it to &quot;bootm&quot; and don&#39;t forget to keep the S2 switc=
h pressed.</div><div>But again. With a console serial cable is easier to fi=
nd what is going wrong.</div><div>=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div id=3D":1d5" class=3D"a3s" style=3D"overflow:hidden">
<br>
optargs=3Dquiet drm.debug=3D7 capemgr.enable_partno=3DBB-UART4<br>
--------------------------------------<br>
<br>
files inside the FAT partition:<br>
uEnv.txt<br>
uImage<br>
u-boot.img<br>
MLO<br>
dtbs/am335x-boneblack.dtb</div></blockquote></div><div class=3D"gmail_extra=
"><br></div><br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div>=
<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll=
*/<br></div></div>
</div></div>

--001a11c3cfdab296520502eefe45--
