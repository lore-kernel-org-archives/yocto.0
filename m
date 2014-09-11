Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8317E00842; Thu, 11 Sep 2014 02:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5363CE00837
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 02:19:57 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id e89so6713966qgf.24
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 02:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LK6wJLqNx7+mhkdKVpcUjMfwrpJoDD3f5dbhevLs2OQ=;
	b=aUrnZp+j924DYZPVQGYgftY6R8BnECQo73ouF9fWp9oTYbwphc4NnrlFu3yvWcgSXF
	273aWJa1HCCQ84RtzE2zus4BQ1/rf7VwTihNDmbwCBy2enOZymIPku8wCbHbSy4TFmJJ
	Wsuc1HNnTNSYra2rxCeuTFeMIHxmJ5ESTnmAmN+6FeFPZfU1C+5gMmsxL1mFy9d7MnCS
	yg6spwNdIkGIpAIMCrsiciturtdp9NJNvS9fKo9tTsq94vqWInCJW+jBnz/zkqWBgyar
	4C8wtkeX0f6/zD9wXBYHpYBWVeDeuSDAIKGKWLaAzEb5T1edbxvFpFCCOk5/dEcAFbhS
	qfYw==
X-Received: by 10.224.115.79 with SMTP id h15mr53407377qaq.21.1410427196534;
	Thu, 11 Sep 2014 02:19:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Thu, 11 Sep 2014 02:19:36 -0700 (PDT)
In-Reply-To: <CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 11 Sep 2014 06:19:36 -0300
Message-ID: <CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
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
X-List-Received-Date: Thu, 11 Sep 2014 09:20:06 -0000
Content-Type: multipart/alternative; boundary=047d7bdc78de084a120502c6ac7c

--047d7bdc78de084a120502c6ac7c
Content-Type: text/plain; charset=ISO-8859-1

TakTak,

On Wed, Sep 10, 2014 at 1:39 PM, TakkTakk <tomek82221@gazeta.pl> wrote:

> yocto buit with INSANE_SKIP_${PN} += "installed-vs-shipped" with no error.
> then i copied:
> cp MLO /media/boot/MLO
> cp u-boot-beaglebone.img /media/boot/u-boot.img
> sudo tar -xvf core-image-base-beaglebone.tar.gz -C /media/root/
>
> then, inserted microSD card to Beaglebone Black and bbb not boot. 4
> led lit steadily and nothing happens. I have cable hdmi connected to
> monitor.
>
> then i did
> $ cp uImage /media/boot
> $ mkdir /media/boot/dtbs
> $ cp uImage-am335x-boneblack.dtb /media/boot/dtbs/am335x-boneblack.dtb
>
> $ cp uEnv.txt /media/boot
>
> uEnv.txt from here
> http://www.embarcados.com.br/beaglebone-black-yocto/ but i changed
> zImage to uImage and still I can not boot the SD Card on the Beagle.
> All four LEDs stay lit steadily.
> What am i doing wrong?
>

Do you have another image installed on eMMC? If yes try to power up the
board with sdcard inserted and the switch S2 pressed (near sdcard slot).


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--047d7bdc78de084a120502c6ac7c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">TakTak,</div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Wed, Sep 10, 2014 at 1:39 PM, Ta=
kkTakk <span dir=3D"ltr">&lt;<a href=3D"mailto:tomek82221@gazeta.pl" target=
=3D"_blank">tomek82221@gazeta.pl</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div id=3D":3iz" class=3D"a3s" style=3D"overflow:hidden">yoct=
o buit with INSANE_SKIP_${PN} +=3D &quot;installed-vs-shipped&quot; with no=
 error.<br>
then i copied:<br>
cp MLO /media/boot/MLO<br>
cp u-boot-beaglebone.img /media/boot/u-boot.img<br>
sudo tar -xvf core-image-base-beaglebone.tar.gz -C /media/root/<br>
<br>
then, inserted microSD card to Beaglebone Black and bbb not boot. 4<br>
led lit steadily and nothing happens. I have cable hdmi connected to<br>
monitor.<br>
<br>
then i did<br>
$ cp uImage /media/boot<br>
$ mkdir /media/boot/dtbs<br>
$ cp uImage-am335x-boneblack.dtb /media/boot/dtbs/am335x-boneblack.dtb<br>
<br>
$ cp uEnv.txt /media/boot<br>
<br>
uEnv.txt from here<br>
<a href=3D"http://www.embarcados.com.br/beaglebone-black-yocto/" target=3D"=
_blank">http://www.embarcados.com.br/beaglebone-black-yocto/</a> but i chan=
ged<br>
zImage to uImage and still I can not boot the SD Card on the Beagle.<br>
All four LEDs stay lit steadily.<br>
What am i doing wrong?</div></blockquote></div><div class=3D"gmail_extra"><=
br></div>Do you have another image installed on eMMC? If yes try to power u=
p the board with sdcard inserted and the switch S2 pressed (near sdcard slo=
t).<br><br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div>=
<br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><=
a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;u=
tm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D=
"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/<br=
></div></div>
</div></div>

--047d7bdc78de084a120502c6ac7c--
