Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72BFFE00BE6; Tue, 10 Jun 2014 12:26:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A800EE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:26:28 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id t60so2787065wes.14
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:26:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SsG9avMrUg4P23tljWp+VJZlANscqydbQe97p/NAAtE=;
	b=G9yE/M2xAq47PteZpPFikhOUaWhQaEKiGO0IWvSftcfSyOTDtoipzQL+wf590emxlh
	4HPzwkvKz65GhdpAQSr8R3w6OaVvT8CaKy1/VhRrt9I4joZKCOplbjVBngLw68M9CjdW
	anU8ceaOqjRFNRlYMdIfJNSsalgMoWpMWzK7UoBOTNcTxV/sr5ziNE6knSQhUVgTb3tA
	+/4hzhNgsoneJVdBaXq9n4tEIwir9gQSDFh7umaeE2yDibEJTLrX3i/dN3QvkreydStQ
	9pzXYKqJ+q3GciXs7R8Ku/byhwvmWYo7N4TaR5ZffVYR8Um0iNHkbpGCgIMJubk5vKuK
	+Lkg==
X-Gm-Message-State: ALoCoQnVBkmiWaVpOe5LpEkOAsz216GgH/X7Y1BbGGAmGPkmyEE/1PsNgc+aZw4nTXIMIcGdr+mr
X-Received: by 10.194.222.197 with SMTP id qo5mr17977076wjc.78.1402428387646; 
	Tue, 10 Jun 2014 12:26:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 12:26:07 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <538DDE1F.9060709@dynamicdevices.co.uk>
References: <OFCEE12F28.34E41662-ONC1257CEC.004E5863-C1257CEC.004FD096@retarus.de>
	<538DDE1F.9060709@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 22:26:07 +0300
Message-ID: <CAK18fxEHHULPQUTYqXXaMa4wpX1HHy0x2k7NfXM3+juYykF4tg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Purpose of vc-graphics-hardfp.bb & vc-graphics.bb unclear
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
X-List-Received-Date: Tue, 10 Jun 2014 19:26:40 -0000
Content-Type: multipart/alternative; boundary=001a11c3a99ade796a04fb804dc4

--001a11c3a99ade796a04fb804dc4
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 3, 2014 at 5:39 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

>
> On 03/06/2014 15:31, Felix01 Fischer wrote:
>
> Hello all,
>
> my ongoing struggle to get qt5 working on the raspberrypi led me to a
> question unrelated to qt5.
>
> why do vc-graphics-hardfp.bb & vc-graphics.bb exist? [1]
> There is no recipe which uses on of this files.
> If I add one of them to my image via IMAGE_INSTALL_append I get errors
> that userland.git and vc-grapics-hardfp both provide virtual/egl and
> virtual/libgles2.
> (Which they obviously do.) [2]
>
> My question is: What is the reason for having userland_git.bb &
> vc-graphics.bb/vc-graphics-hardfp ?
>
>
> Hi Felix,
>
> I'm not sure, but I've been looking at userland vs vc-graphics recently
> and I believe it is historical.
>
> Originally the intermediate layer between userspace and the videocore was
> distributed as binaries
> which is what vc-graphics pulls down
>
> ref: https://github.com/raspberrypi/firmware/tree/master/opt/vc
>
> More recently Broadcom opened up the source and provided it under a more
> relaxed license, and this
> is what userland provides:
>
> ref: http://www.raspberrypi.org/open-source-arm-userspace/
> ref: https://github.com/raspberrypi/userland
>
> Somebody will no doubt correct me if my guess is wrong :)
>
> I have been using userland + gstreamer reasonably sucessfully here
> although my patch is needed for some
> of the userspace apps (e.g. raspivid), and there are some configuration
> issues that need patching still
> relating to gstreamer1.0-omx
>
> ref: https://github.com/raspberrypi/userland/pull/179
>
> Cheers,
>
> Alex
>
>
Exactly. We used to have binaries in the first place and we keep them so
people can test / use the binaries in their configurations.
If for whatever reason somebody wants to use the binaries (we still update
the repos for binaries too) the only thing needed is to redefine
 PREFERRED_PROVIDER_*.
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c3a99ade796a04fb804dc4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Jun 3, 2014 at 5:39 PM, Alex J Lennon <span dir=3D"ltr">&lt=
;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenno=
n@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"">
    <br>
    <div>On 03/06/2014 15:31, Felix01 Fischer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"><font face=3D"sans-serif">Hello all,</font>
      <br>
      <br>
      <font face=3D"sans-serif">my ongoing struggle to get qt5
        working
        on the raspberrypi led me to a question unrelated to qt5.<br>
        <br>
        why do <a href=3D"http://vc-graphics-hardfp.bb" target=3D"_blank">v=
c-graphics-hardfp.bb</a> &amp; <a href=3D"http://vc-graphics.bb" target=3D"=
_blank">vc-graphics.bb</a> exist? [1]<br>
        There is no recipe which uses on of this files.<br>
        If I add one of them to my image via IMAGE_INSTALL_append I get
        errors
        that userland.git and vc-grapics-hardfp both provide virtual/egl
        and virtual/libgles2.<br>
        (Which they obviously do.) [2]<br>
        <br>
        My question is: What is the reason for having <a href=3D"http://use=
rland_git.bb" target=3D"_blank">userland_git.bb</a>
        &amp; <a href=3D"http://vc-graphics.bb/vc-graphics-hardfp" target=
=3D"_blank">vc-graphics.bb/vc-graphics-hardfp</a>
        ?</font>
      <br>
      <br>
    </blockquote>
    <br></div>
    Hi Felix,<br>
    <br>
    I&#39;m not sure, but I&#39;ve been looking at userland vs vc-graphics
    recently and I believe it is historical.<br>
    <br>
    Originally the intermediate layer between userspace and the
    videocore was distributed as binaries<br>
    which is what vc-graphics pulls down <br>
    <br>
    ref: <a href=3D"https://github.com/raspberrypi/firmware/tree/master/opt=
/vc" target=3D"_blank">https://github.com/raspberrypi/firmware/tree/master/=
opt/vc</a><br>
    <br>
    More recently Broadcom opened up the source and provided it under a
    more relaxed license, and this<br>
    is what userland provides: <br>
    <br>
    ref: <a href=3D"http://www.raspberrypi.org/open-source-arm-userspace/" =
target=3D"_blank">http://www.raspberrypi.org/open-source-arm-userspace/</a>=
<br>
    ref: <a href=3D"https://github.com/raspberrypi/userland" target=3D"_bla=
nk">https://github.com/raspberrypi/userland</a><br>
    <br>
    Somebody will no doubt correct me if my guess is wrong :)<br>
    <br>
    I have been using userland + gstreamer reasonably sucessfully here
    although my patch is needed for some<br>
    of the userspace apps (e.g. raspivid), and there are some
    configuration issues that need patching still <br>
    relating to gstreamer1.0-omx<br>
    <br>
    ref: <a href=3D"https://github.com/raspberrypi/userland/pull/179" targe=
t=3D"_blank">https://github.com/raspberrypi/userland/pull/179</a><br>
    <br>
    Cheers,<br>
    <br>
    Alex<div><div class=3D"h5"><br></div></div></div></blockquote><div><br>=
</div><div>Exactly. We used to have binaries in the first place and we keep=
 them so people can test / use the binaries in their configurations.=C2=A0<=
/div>

</div><div>If for whatever reason somebody wants to use the binaries (we st=
ill update the repos for binaries too) the only thing needed is to redefine=
 =C2=A0PREFERRED_PROVIDER_*. =C2=A0</div>-- <br><div dir=3D"ltr"><div style=
=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a11c3a99ade796a04fb804dc4--
