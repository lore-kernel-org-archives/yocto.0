Return-Path: <raj.khem@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8385E0150A
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 07:33:31 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id s14so4181215qeb.22
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 07:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AiHVypX8kNN5hH0Nrm+0ipsOzuS2o00DEHR9QOnioOs=;
	b=eqPwQdYDu0AXXL9IN0jiaSUtG3qTCOpBWxPNBzdt4jCsRgTiiESuagajBkdiimePMU
	XrQrYlFSUu1eQFEzGClIT4DDgQ1eGwnCNfjmdI2sVxNnInnSgxASOswTGtQg60ehov2B
	JZ6deOsWQJok2HbMX7klmXTqvGTuvKQob0kY8VmjmA7gfj1l8MMMHKymEyYCxZ9bcRwm
	Yc4Wbx7uRJQTqmI082Ks7+RU2FeVEtwdUYQbb22o/ON2aPRQ/4tY1Hb+Y5mqK9Vq+gBt
	sK6HV8fINMeS42jHgINoMtRlHpKNsoFIQISX+MBS8s+0EZQEPADObtLrTfLtCDYF9SsX
	bbHA==
MIME-Version: 1.0
X-Received: by 10.49.25.102 with SMTP id b6mr2465057qeg.91.1380119610466; Wed,
	25 Sep 2013 07:33:30 -0700 (PDT)
Received: by 10.224.10.201 with HTTP; Wed, 25 Sep 2013 07:33:30 -0700 (PDT)
In-Reply-To: <1380092894836405500@horus.es>
References: <1379579265426525500@horus.es>
	<1380092894836405500@horus.es>
Date: Wed, 25 Sep 2013 07:33:30 -0700
Message-ID: <CAMKF1soiJ6Hmh-wrNHAOj=JW=jfNXfO55pMkRSwpv9i=e_cTtw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Diego Gonzalez <diego.gonzalez@horus.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem with sft in fsl-image-gui
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
X-List-Received-Date: Wed, 25 Sep 2013 14:33:32 -0000
Content-Type: multipart/alternative; boundary=047d7b621ac821278404e73623b8

--047d7b621ac821278404e73623b8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wednesday, September 25, 2013, Diego Gonzalez wrote:

> Hello,
>
>
>  we discovered how to add *sftp* function in our customizable image.
> There's a package called eclipse-debug
> (~/poky/meta/recipes-core/packagegroup), which you can find a RDPENDS to =
o
> *penssh-sftp-server.*
>
> So you have at least 4 possibilities to add it in your image (select just
> one) :
>
>    1.
>
>    In a customizable image or in the local.conf : IMAGE_FEATURES +=3D " =
=E2=80=A6
>    eclipse-debug"
>
>

Pulls in lot more than sftp

>
>    1.
>    2.
>
>    In a customizable image : IMAGE_INSTALL +=3D " \
>
>                               =E2=80=A6. \
>
>                               openssh-sftp-server \
>
>                               "
>
>
If you build multiple images this make it go into one specific image



>
>    1.
>       2.
>
>    In the local.conf : IMAGE_INSTALL_append =3D " openssh-sftp-server"
>
>
Adds it to all images

>
>    1.
>    2.
>
>    In the local.conf : CORE_IMAGE_EXTRA_INSTALL +=3D " openssh-sftp-serve=
r"
>
>

If you inherit core-image you can use this, all layers which define image
recipes do not use core-image class


>
>    1.
>
>
>  I'm asking my self : why ?
>
> Thank you,
>
>
> Cheers
>
>
>
> Diego Gonz=C3=A1lez Gonz=C3=A1lez
> Dpto. de Control Industrial
>
> HORUS HARDWARE S.A.
> Pol Ind Europolis C/Berna n=C2=BA4
> 28232 Las Rozas de Madrid
> diego.gonzalez@horus.es <javascript:_e({}, 'cvml',
> 'enrique.fernandez@horus.es');>
>
> On Thu, 09/19/2013 10:27 AM, Diego Gonzalez <diego.gonzalez@horus.es<java=
script:_e({}, 'cvml', 'diego.gonzalez@horus.es');>>
> wrote:
>
> Hello everybody,
>
> we have an issue with sftp server in our fsl-image-gui. When we try to
> connect using sftp, then we get an error saying connection closed.
> After a closer look inside  the fsl-image-gui , we saw that
> /usr/bin/sftp-server directory  is not installed in this image. Also, we
> vericated that ssh connection works good.
>
> We already now that this work fine in fsl-core-image-sato-sdk. In fact yo=
u
> can find out that /usr/bin/sftp-server directory exists.
> Trying to fix it we put several commands inside the local.conf . However
> we didn't fix it.
>
> How can I solve it?.
>
> Cheers
>
>
> Diego Gonz=C3=A1lez Gonz=C3=A1lez
> Dpto. de Control Industrial
>
> HORUS HARDWARE S.A.
> Pol Ind Europolis C/Berna n=C2=BA4
> 28232 Las Rozas de Madrid
> diego.gonzalez@horus.es <javascript:_e({}, 'cvml',
> 'enrique.fernandez@horus.es');>
>
>

--047d7b621ac821278404e73623b8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Wednesday, September 25, 2013, Diego Gonzalez  wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div style=3D"font-size:10pt;font-family:Arial;back=
ground-image:none;background-repeat:repeat">



=09
=09
=09
=09


<p style=3D"margin-bottom:0in">Hello,</p>
<p style=3D"margin-bottom:0in"><br>
</p>
<p style=3D"margin-bottom:0in">we  discovered how to add <b>sftp</b> functi=
on
in our customizable image. There&#39;s a package called eclipse-debug
(~/poky/meta/recipes-core/packagegroup), which you can find a RDPENDS
to o<b>penssh-sftp-server.</b></p>

<p style=3D"margin-bottom:0in;font-weight:normal">So you have at
least 4 possibilities to add it in your image (select just one) :</p>

<ol><li><p style=3D"margin-bottom:0in;font-weight:normal">In a
	customizable image or in the local.conf : IMAGE_FEATURES +=3D &quot; =E2=
=80=A6
	eclipse-debug&quot;</p></li></ol></div></blockquote><div><br></div><div><b=
r></div><div>Pulls in lot more than sftp=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
<div style=3D"font-size:10pt;font-family:Arial;background-image:none;backgr=
ound-repeat:repeat"><ol><li>
	</li><li><p style=3D"margin-bottom:0in;font-weight:normal">In a
	customizable image : IMAGE_INSTALL +=3D &quot; \</p>
	<ol><ol><ol><ol><ol><ol><ol><ol><ol><p style=3D"margin-bottom:0in;font-wei=
ght:normal">=E2=80=A6. \</p><p style=3D"margin-bottom:0in;font-weight:norma=
l">openssh-sftp-server
										\</p><p style=3D"margin-bottom:0in;font-weight:normal">&quot;</p>=
</ol></ol></ol></ol></ol></ol></ol></ol></ol></li></ol></div></blockquote><=
div><br></div><div>If you build multiple images this make it go into one sp=
ecific image</div>
<div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=
=3D"font-size:10pt;font-family:Arial;background-image:none;background-repea=
t:repeat">
<ol><li><ol><ol><ol><ol><ol><ol><ol><ol><ol></ol></ol></ol></ol></ol></ol><=
/ol></ol></ol>
	</li><li><p style=3D"margin-bottom:0in;font-weight:normal">In the
	local.conf : IMAGE_INSTALL_append =3D &quot; openssh-sftp-server&quot;</p>=
</li></ol></div></blockquote><div><br></div><div>Adds it to all images=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<div style=3D"font-size:10pt;font-family:Arial;background-image:none;backgr=
ound-repeat:repeat"><ol><li>
	</li><li><p style=3D"margin-bottom:0in;font-weight:normal">In the
	local.conf : CORE_IMAGE_EXTRA_INSTALL +=3D &quot; openssh-sftp-server&quot=
;</p></li></ol></div></blockquote><div><br></div><br><div>If you inherit co=
re-image you can use this, all layers which define image recipes do not use=
 core-image class</div>
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"font-size:10p=
t;font-family:Arial;background-image:none;background-repeat:repeat"><ol><li=
>
</li></ol>
<p style=3D"margin-bottom:0in;font-weight:normal"><br>
</p>
<p style=3D"margin-bottom:0in;font-weight:normal">I&#39;m asking my self : =
why ?</p>
<p style=3D"margin-bottom:0in;font-weight:normal">Thank you,
</p><p style=3D"margin-bottom:0in;font-weight:normal"><br>
</p>Cheers
<p style=3D"margin-bottom:0in;font-weight:normal"><br>
</p><div><div style=3D"font-size:10pt;font-family:Arial"><br>Diego Gonz=C3=
=A1lez Gonz=C3=A1lez<br><div style=3D"text-align:left">Dpto. de Control Ind=
ustrial</div><div style=3D"text-align:left">=C2=A0</div><div style=3D"text-=
align:left">HORUS HARDWARE S.A.<br>
Pol Ind Europolis C/Berna n=C2=BA4<br>28232 Las Rozas de Madrid<br><a href=
=3D"javascript:_e({}, &#39;cvml&#39;, &#39;enrique.fernandez@horus.es&#39;)=
;" target=3D"_blank">diego.gonzalez@horus.es</a></div></div></div><br>On Th=
u, 09/19/2013 10:27 AM, Diego=C2=A0Gonzalez=C2=A0&lt;<a href=3D"javascript:=
_e({}, &#39;cvml&#39;, &#39;diego.gonzalez@horus.es&#39;);" target=3D"_blan=
k">diego.gonzalez@horus.es</a>&gt; wrote:<br>
<blockquote style=3D"border-left:2px solid rgb(00,00,204);padding-left:4px;=
margin-left:16px"><div style=3D"font-family:Arial;font-size:10pt">Hello eve=
rybody,<br><br>we have an issue with sftp server in our fsl-image-gui. When=
 we try to connect using sftp, then we get an error saying connection close=
d.<br>
After a closer look inside=C2=A0 the fsl-image-gui , we saw that /usr/bin/s=
ftp-server directory=C2=A0 is not installed in this image. Also, we vericat=
ed that ssh connection works good. <br><br>We already now that this work fi=
ne in fsl-core-image-sato-sdk. In fact you can find out that /usr/bin/sftp-=
server directory exists. <br>
Trying to fix it we put several commands inside the local.conf . However we=
 didn&#39;t fix it.<br><br><pre><font face=3D"arial">How can I solve it?. <=
br><br>Cheers</font><br></pre><div><div style=3D"font-size:10pt;font-family=
:Arial">
<br>Diego Gonz=C3=A1lez Gonz=C3=A1lez<br><div style=3D"text-align:left">Dpt=
o. de Control Industrial</div><div style=3D"text-align:left">=C2=A0</div><d=
iv style=3D"text-align:left">HORUS HARDWARE S.A.<br>Pol Ind Europolis C/Ber=
na n=C2=BA4<br>28232 Las Rozas de Madrid<br>
<a href=3D"javascript:_e({}, &#39;cvml&#39;, &#39;enrique.fernandez@horus.e=
s&#39;);" target=3D"_blank">diego.gonzalez@horus.es</a></div></div></div></=
div></blockquote></div></blockquote>

--047d7b621ac821278404e73623b8--
