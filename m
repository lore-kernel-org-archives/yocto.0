Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE72C433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Mar 2022 06:50:30 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web08.4798.1646203829195814454
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 22:50:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=b3dmFt8l;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.167.46, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f46.google.com with SMTP id d23so1056922lfv.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 22:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/uljoijhyYbu/reWBuzapJBXdLDRuMGis6qF4nzWpIw=;
        b=b3dmFt8l9mrA2LxMgHVgYry+0rjNjkCfZMwhmZ4egw187Ti81xUm2sYjo/yLL70+4z
         6pM4bFx7uh/N9yks64Sw4jt1Xt4kbTWXow3F6VBTmlSlvqSZCmnyQ/MqTZhM0krVe6zr
         iofSA85sdJHZOBQC0vUnjJPQIyZMciFiEuJqAWYOOqkQ7AGRATrGYF6gf/Z/0GfEUUCQ
         1a4pvoTBPiMdjLTk+JNU+q6qIT5deN3Jxg1hCIHhYQDCLbH6tzRtiOWOxoXZMugqkhSf
         hESFGtjzf2cEVbcFNEbjYsdtQBNvZ6IqjU63A/ZXgnL3V0WzAfN6Hm87noGjAY/U7QwN
         KO/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/uljoijhyYbu/reWBuzapJBXdLDRuMGis6qF4nzWpIw=;
        b=f/KLKwmM9p6VdGnxWrE2FUFvbLFx6F4VJ+ZwJza2dNNlZZ8WdONsxfsTQ+AO0QYySl
         jvd4XZFDrSOMcNNUx+YAcvw75pdvqxMZuz+O1Oz5zshzHmiSaqEZaYGbyzMH0AqSCdfb
         Uh0XJsg6GOFwGKHOkQj31uHQFnlvAeUgy4rXOHHYRbjShru81BOcr8MZittc8qRKJ3jF
         iloxWE3551uIQkyKFtj4rrFgR0X7mLzQ7x0AM9N5V76s4gVbgf6Vame68Vf4DNIHmeZ9
         wp3GeJQF/RmCCxQZkumVlfeinIUQeoTvmHrWm5FOjCMdH6wJOCjKctob7sJFOk/U4sfE
         9ySg==
X-Gm-Message-State: AOAM532hIzwDgtqgTSk6a7GzCxbbENW1O2MN6ok/FdypWJ2Tcpjd6ifq
	Oyhhr5xWOVcjLoYQK0IfmRBFBKiXQZ1mKYZ6U/4IWg==
X-Google-Smtp-Source: 
 ABdhPJySFRIJ+M5X1FQf/66PGrugBY53eo1ruEzlyx777qFprtv3o0e6iSa+1mZaz5Z6L9HJkOSn4Rsp2Yq3r/UZRGg=
X-Received: by 2002:a05:6512:c09:b0:442:d4fa:9bce with SMTP id
 z9-20020a0565120c0900b00442d4fa9bcemr18106909lfu.483.1646203827045; Tue, 01
 Mar 2022 22:50:27 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
 <19024.1646126763231751613@lists.yoctoproject.org>
 <CAFP0Ok9==XqQNWoZs2xcF-fUu6Tc1zT-zTDKyE4OXGAA63heKg@mail.gmail.com>
In-Reply-To: 
 <CAFP0Ok9==XqQNWoZs2xcF-fUu6Tc1zT-zTDKyE4OXGAA63heKg@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 2 Mar 2022 07:50:16 +0100
Message-ID: 
 <CAEt6NwrHXX_-F2o2_HLm-Gd_EBoxmd5CYKqi=D+zMFEvHy0=OA@mail.gmail.com>
Subject: Re: [yocto] On managing debug and production builds
To: Karthik Poduval <karthik.poduval@gmail.com>
Cc: tomzy <tomasz.zyjewski@3mdeb.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000056d9ea05d936b24a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Mar 2022 06:50:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56348

--00000000000056d9ea05d936b24a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Karthik Poduval <karthik.poduval@gmail.com> schrieb am Mi. 2. M=C3=A4rz 202=
2 um
04:23:

> This concept of user vs debug builds is there in Android and any
> Android developer who gets introduced to yocto may look for these
> options. There seem to be many implementation choices here, trying to
> summarize some of the options here.
>
> 1. use different image recipes example-image-user.bb vs
> example-image-debug.bb but this still poses a problem for kernel
> recipes as kernel needs to have different config fragments or
> different defconfig for debug vs user variants. One possible option is
> to use KTYPE to select tiny vs standard or define own for custom BSP
> layers. What about other recipes like u-boot or firmware for other
> remote processors, how to percolate the debug vs user options to those
> recipes via just an image recipe ?


As a recipe cannot affect another recipe, and image recipes are obviously
recipes too, this is usually not useful.


> 2. use different configs using multiconfig. Base config (which is
> debug) also selects the user config hence always building both build
> variants in different tmp directories. Kernel, remote firmware and
> image recipes use variables from the multiconfig cof files to decide
> whether to build debug or user variants.


The whole point of multiconfig is builds depending on each other. I don=E2=
=80=99t
think it applies here.


> 3. use different distros. DSITRO=3Duser bitbake example-image,
> DISTRO=3Ddebug example-image. Kernel and remote firmware recipes use
> variables from the distro to decide whether to build debug or user
> variants.


This is clearly the standard way.


>
> Which is the best method ?
> All these options seem very BSP layer specific, is there something
> more generic and better than the above options ?
> If not, should this be a feature request to the Yocto project ?
>
> NOTE: debug variants may include the following.
> - more debug related kernel configs and security loosened and UART
> ports disabled
> - image recipe debug variant may include debug utilities absent from
> the user variant


Easily archived with 3.


>
> There could be more than just debug and user variants. Android has
> engineering, tests, user, tiny and user-debug.


See 3. You can have an arbitrary number of distros, interrelated however
you wish.

Greetz


> --
> Regards,
> Karthik Poduval
>
> On Tue, Mar 1, 2022 at 1:26 AM tomzy <tomasz.zyjewski@3mdeb.com> wrote:
> >
> > Thanks Tomasz. I will check kas.
> >
> > No problem
> >
> > Yes, for selecting some of the packages I have created prod and debug
> image
> > recipes.But this did not work for the kernel as the kernel recipe is
> picked
> > as part of PROVIDERin machine conf.
> >
> > What are the difference there? You want to use different config on prod
> and debug images?
> > Maybe add it as config fragments? Then you would need to add some globa=
l
> variable to
> > distinguish when use given .cfg file.
> >
> > [1]
> https://docs.yoctoproject.org/singleindex.html#creating-configuration-fra=
gments
> >
> > SoI had to use 2 conf to have the
> > IMAGE_FEATURES (orany other var)set differently for prod and debug. Thi=
s
> is for
> > building the kernelrecipie differently for prodand debug. Setting the
> > IMAGE_FEATURES in the image recipe (and not inconf) causes2 problems.
> One is
> > that kernel and other bootloaders recipes arepicked early via PROVIDER
> in conf
> > and not as packages included in image recipe.
> >
> > Is that a problem?
> >
> > Secondly,setting the var in the
> > image recipe breaks this command for e.g.
> > "bitbake base-image-prod.bbbase-image-debug.bb".
> >
> > Didn't you want to distinguish this to builds to be able to run `bitbak=
e
> base-image-prod` or
> > `bitbake base-image-debug`?
> >
> > Since the command parses the recipes only once for both image creation.
> >
> >
> > Nevertheless I would greatly recommend you to use kas. In simple .yml
> file you
> > could prepare different `local.conf` per configuration prod/debug.
> >
> > [2]
> https://kas.readthedocs.io/en/latest/userguide.html#project-configuration
> >
> > Regards,
> > Tomasz =C5=BByjewski
> > Embedded Systems Engineer
> > GPG: 5C495EA3EBEECA59
> > https://3mdeb.com | @3mdeb_com
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56346):
> https://lists.yoctoproject.org/g/yocto/message/56346
> Mute This Topic: https://lists.yoctoproject.org/mt/89469781/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000056d9ea05d936b24a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Howdy!</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Karthik Poduval &lt;<a href=3D"mailto:karthik=
.poduval@gmail.com">karthik.poduval@gmail.com</a>&gt; schrieb am Mi. 2. M=
=C3=A4rz 2022 um 04:23:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;pad=
ding-left:1ex;border-left-color:rgb(204,204,204)">This concept of user vs d=
ebug builds is there in Android and any<br>
Android developer who gets introduced to yocto may look for these<br>
options. There seem to be many implementation choices here, trying to<br>
summarize some of the options here.<br>
<br>
1. use different image recipes <a href=3D"http://example-image-user.bb" rel=
=3D"noreferrer" target=3D"_blank">example-image-user.bb</a> vs<br>
<a href=3D"http://example-image-debug.bb" rel=3D"noreferrer" target=3D"_bla=
nk">example-image-debug.bb</a> but this still poses a problem for kernel<br=
>
recipes as kernel needs to have different config fragments or<br>
different defconfig for debug vs user variants. One possible option is<br>
to use KTYPE to select tiny vs standard or define own for custom BSP<br>
layers. What about other recipes like u-boot or firmware for other<br>
remote processors, how to percolate the debug vs user options to those<br>
recipes via just an image recipe ?</blockquote><div dir=3D"auto"><br></div>=
<div dir=3D"auto">As a recipe cannot affect another recipe, and image recip=
es are obviously recipes too, this is usually not useful.</div><div dir=3D"=
auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bor=
der-left-color:rgb(204,204,204)" dir=3D"auto"></blockquote><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;b=
order-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"=
 dir=3D"auto"><br>
2. use different configs using multiconfig. Base config (which is<br>
debug) also selects the user config hence always building both build<br>
variants in different tmp directories. Kernel, remote firmware and<br>
image recipes use variables from the multiconfig cof files to decide<br>
whether to build debug or user variants.</blockquote><div dir=3D"auto"><br>=
</div><div dir=3D"auto">The whole point of multiconfig is builds depending =
on each other. I don=E2=80=99t think it applies here.</div><div dir=3D"auto=
"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)" dir=3D"auto"><br>
3. use different distros. DSITRO=3Duser bitbake example-image,<br>
DISTRO=3Ddebug example-image. Kernel and remote firmware recipes use<br>
variables from the distro to decide whether to build debug or user<br>
variants.</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1=
ex;border-left-color:rgb(204,204,204)" dir=3D"auto"></blockquote><div dir=
=3D"auto"><br></div><div dir=3D"auto">This is clearly the standard way.</di=
v><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;paddin=
g-left:1ex;border-left-color:rgb(204,204,204)" dir=3D"auto"><br>
<br>
Which is the best method ?<br>
All these options seem very BSP layer specific, is there something<br>
more generic and better than the above options ?<br>
If not, should this be a feature request to the Yocto project ?<br>
<br>
NOTE: debug variants may include the following.<br>
- more debug related kernel configs and security loosened and UART<br>
ports disabled<br>
- image recipe debug variant may include debug utilities absent from<br>
the user variant</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">=
Easily archived with 3.</div><div dir=3D"auto"><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)" =
dir=3D"auto"><br>
<br>
There could be more than just debug and user variants. Android has<br>
engineering, tests, user, tiny and user-debug.</blockquote><div dir=3D"auto=
"><br></div><div dir=3D"auto">See 3. You can have an arbitrary number of di=
stros, interrelated however you wish.</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Greetz</div><div dir=3D"auto"><br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)" dir=
=3D"auto"></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:=
1ex;border-left-color:rgb(204,204,204)" dir=3D"auto"><br>
--<br>
Regards,<br>
Karthik Poduval<br>
<br>
On Tue, Mar 1, 2022 at 1:26 AM tomzy &lt;<a href=3D"mailto:tomasz.zyjewski@=
3mdeb.com" target=3D"_blank">tomasz.zyjewski@3mdeb.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks Tomasz. I will check kas.<br>
&gt;<br>
&gt; No problem<br>
&gt;<br>
&gt; Yes, for selecting some of the packages I have created prod and debug =
image<br>
&gt; recipes.But this did not work for the kernel as the kernel recipe is p=
icked<br>
&gt; as part of PROVIDERin machine conf.<br>
&gt;<br>
&gt; What are the difference there? You want to use different config on pro=
d and debug images?<br>
&gt; Maybe add it as config fragments? Then you would need to add some glob=
al variable to<br>
&gt; distinguish when use given .cfg file.<br>
&gt;<br>
&gt; [1] <a href=3D"https://docs.yoctoproject.org/singleindex.html#creating=
-configuration-fragments" rel=3D"noreferrer" target=3D"_blank">https://docs=
.yoctoproject.org/singleindex.html#creating-configuration-fragments</a><br>
&gt;<br>
&gt; SoI had to use 2 conf to have the<br>
&gt; IMAGE_FEATURES (orany other var)set differently for prod and debug. Th=
is is for<br>
&gt; building the kernelrecipie differently for prodand debug. Setting the<=
br>
&gt; IMAGE_FEATURES in the image recipe (and not inconf) causes2 problems. =
One is<br>
&gt; that kernel and other bootloaders recipes arepicked early via PROVIDER=
 in conf<br>
&gt; and not as packages included in image recipe.<br>
&gt;<br>
&gt; Is that a problem?<br>
&gt;<br>
&gt; Secondly,setting the var in the<br>
&gt; image recipe breaks this command for e.g.<br>
&gt; &quot;bitbake <a href=3D"http://base-image-prod.bbbase-image-debug.bb"=
 rel=3D"noreferrer" target=3D"_blank">base-image-prod.bbbase-image-debug.bb=
</a>&quot;.<br>
&gt;<br>
&gt; Didn&#39;t you want to distinguish this to builds to be able to run `b=
itbake base-image-prod` or<br>
&gt; `bitbake base-image-debug`?<br>
&gt;<br>
&gt; Since the command parses the recipes only once for both image creation=
.<br>
&gt;<br>
&gt;<br>
&gt; Nevertheless I would greatly recommend you to use kas. In simple .yml =
file you<br>
&gt; could prepare different `local.conf` per configuration prod/debug.<br>
&gt;<br>
&gt; [2] <a href=3D"https://kas.readthedocs.io/en/latest/userguide.html#pro=
ject-configuration" rel=3D"noreferrer" target=3D"_blank">https://kas.readth=
edocs.io/en/latest/userguide.html#project-configuration</a><br>
&gt;<br>
&gt; Regards,<br>
&gt; Tomasz =C5=BByjewski<br>
&gt; Embedded Systems Engineer<br>
&gt; GPG: 5C495EA3EBEECA59<br>
&gt; <a href=3D"https://3mdeb.com" rel=3D"noreferrer" target=3D"_blank">htt=
ps://3mdeb.com</a> | @3mdeb_com<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#56346): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56346" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56346</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89469781/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89469781/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000056d9ea05d936b24a--

