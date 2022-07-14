Return-Path: <arasilinux1086@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A217FC43334
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 05:00:09 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web09.4127.1657774800459830721
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 22:00:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qEoaVCd0;
 spf=pass (domain: gmail.com, ip: 209.85.218.46,
 mailfrom: arasilinux1086@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id sz17so1310045ejc.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 22:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jGIheQpRKPpeJWFxtk+7yVX2bNLDNp3+iNdS7N7E63Q=;
        b=qEoaVCd0o+rX/t8Owx+rKbMJ1nktlMsmJETxd2wlD5zINVLxfCFBWuNUdYtvXoPoYr
         s4sm3Khlhri1k3BBUsDPb+dX0OY8fka+3LpVb6Sjz7SH38m96fIJtGQ9F5wdoBWgtDpB
         Fx7L4QgwDcagtgFuZ+FrNZHHk9/aYl5kGWoGPc30CMG3oIvvoFl0+/hTtQgXWcK8BIJU
         iHf5ZOO2nP+uPJislqkPDs4mnkld/7v90/Jv089bLgnhANJqUBa42xTqFFw2Q1lKodpB
         pmn+8UWX6usvcCDhixzB0XUndMrQPUEsn2DXG19Vbz64EJZ7veDwL4sTHmizi00DZOiK
         EhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jGIheQpRKPpeJWFxtk+7yVX2bNLDNp3+iNdS7N7E63Q=;
        b=ZBNo3FMaNXUEgTGXhUQMisz/sHKjfVLSiBlVSd+tK2etzxuXjHmt7ZPV6TNFQv+lNu
         0MVBJoAMwpFcsYdfQGqsZpjxGqRhkpdYs+wZq0Doom6FRTbNWUwaLym6/KCs4m1/YbbY
         948WcYUwhri+L1AGOlEDWhdkE+EHRKgQooWcPSeyH4Zr4VoPnpJ4iHL4E7Ijrs8WFVPJ
         iHBgCBsfBYQiovJb6MzXZSOu0yWAYRpaDq0i/kyc86nkp0z5+YBZxKbNSk6c6nktTjHF
         U8AUD+M4akEt2oNv9LAqdbRM6FblE6N4AApKMncMOuor1VAAsARY9o8EwF7wkhp1zPk8
         r5Lg==
X-Gm-Message-State: AJIora/y9fq95gzAItlfNjMPSlG5kIrVUMcHY6jwjbmfeIWRWEdy9aqT
	+Yn81iMYlXJK+WUNJa73EwIyYlV1A1QGspCKwbo=
X-Google-Smtp-Source: 
 AGRyM1tuqmCIbFWFmv1gb8V45Wp83zwAAOgl4xDeO+QcBr5E5BGgFzt1lyvOufrLdrYnxvDbBTHhJUYK1Cl4IYunHP0=
X-Received: by 2002:a17:907:c08:b0:72b:87a4:dee6 with SMTP id
 ga8-20020a1709070c0800b0072b87a4dee6mr6956317ejc.283.1657774798602; Wed, 13
 Jul 2022 21:59:58 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
 <YrwISJ1PCeqQzu6I@mail.local>
 <CAFf=Mr3Xa_taxkj5Uvrvctdp19LGEMtW7fU=_PDvO7YdVpCUYQ@mail.gmail.com>
In-Reply-To: 
 <CAFf=Mr3Xa_taxkj5Uvrvctdp19LGEMtW7fU=_PDvO7YdVpCUYQ@mail.gmail.com>
From: Senthamilarasi mathiyan <arasilinux1086@gmail.com>
Date: Thu, 14 Jul 2022 10:29:43 +0530
Message-ID: 
 <CAFf=Mr3dTUVx5ACr6-LQpqx=C3WpJU4+GPjc3f9dTRvMFwbMJA@mail.gmail.com>
Subject: Re: [yocto] yocto support
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fd071705e3bcc5da"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 05:00:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57531

--000000000000fd071705e3bcc5da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,

Good Morning!


I am not introducing any change to kernel.



This is one of my project requirement to enable coverage support to kernel
for specific build for my project.



In my project, Already we have few image recipes.

Ex: core_image_minimal.bb core_image_a.bb core_image_b.bb



These image recipes are using same kernel  with same configuration, Apart
from default kernel configuration, I want to enable few driver support in
kernel to enable coverage support for specific requirement.


To enable coverage support in kernel, I have added coverage.cfg in
meta-layer.

Ex: /recipes-kernel/linux-msm/files/coverage.cfg



cat coverage.cfg

CONFIG_GCOV=3Dy

CONFIG_DEBUG_FS=3Dy

CONFIG_GCOV_KERNEL=3Dy



If I add coverage.cfg in my kernel recipe(snippet below) - It will be taken
for all the image build. Whenever do bitbake of following recipe -
core_image_minimal.bb, core_image_a.bb, core_image_b.bb



The below changes will be added to the build, since this kernel is common
for all the image recipes(core_image_minimal.bb core_image_a.bb
core_image_b.bb).



Recipe content:



+++ b/recipes-kernel/linux-kernel/linux-kernel_5.x.bb

@@ -21,6 +21,7 @@ SRC_URI =3D "\

           file://audio-kpi.cfg \

           file://ptp-virtual.cfg \

           file://xfs.cfg \

+          file://coverage.cfg \

           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '
file://systemd.cfg', '', d)} \

           ${@bb.utils.contains('DISTRO_FEATURES', 'virtualization', '
file://virtualization.cfg', '', d)} \





 Similarly, I have patch for file other recipes.



 In my case, I should not add this change to all the image build.


My requirement:

I want to create separate image recipe. Ex: core_image_myrecipe.bb



In this recipes

- I should include "inherit core-image-minimal" + "My specific
coverage_support changes".

As per project requirement, I should not create a separate meta layer to
maintain this patches.



Can you please help for creating a separate image recipe with specific
changes?


Regards

Senthamilarasi.M



On Thu, Jul 14, 2022 at 10:12 AM Senthamilarasi mathiyan <
arasilinux1086@gmail.com> wrote:

> Hi Alexandre,
>
> I am not pushing any changes to open source kernel. I want to enable few
> driver module in the kernel. That configuration want to have in file/
> folder.
>
> My changes.
> Kern
>
> On Wed, 29 Jun, 2022, 1:37 pm Alexandre Belloni, <
> alexandre.belloni@bootlin.com> wrote:
>
>> On 28/06/2022 17:21:22+0530, Senthamilarasi mathiyan wrote:
>> > Dear All
>> >
>> > Good Morning!
>> >
>> > In my project, I am trying to create one custom image recipe in my yoc=
to
>> > build system.
>> >
>> >  The reason of creating custom image is  -> having few specific
>> > configurations for kernel and some specific driver Makefile changes to
>> > enable coverage.
>> >
>> >  I cannot go with .bbappend file, because we are maintaining a
>> > recipes-append folder in our meta-layer which is common for all the
>> > production build image recipes.
>> >
>> >  My change is very specific it should not come as part of normal build
>> > images because it will affect the production build.
>> >
>> >  My use case:
>> >
>> > 1. I have one .cfg file for kernel - which has kernel specific
>> > configurations.
>> >
>> > 2. I have Makefile changes for driver file.
>> >
>> >  I should bring the above changes to kernel and  driver Makefile durin=
g
>> > build time without using .bbappend file.
>> >
>> >  I want to create a custom image recipe with the specific changes.
>> >
>> >  For example : custom_image.bb =3D( This recipes should have
>> > core_image_minimal.bb + my specific changes)
>> >
>> >  When i build bitbake custom_image.bb,  it should  build  with
>> > core_image_minimal.bb + my specific changes .
>> >
>> > Other images recipes also should not affect by this changes.
>> >
>> > My humble request. Can anyone please support how to proceed?
>> >
>>
>> You can't, a recipe can't affect any other recipe. When building
>> custom_image.bb, it is too late to introduce any kernel change.
>>
>> > Kindly share your suggestions.
>> >
>> >  *Regards*
>> >
>> > *Senthamilarasi. M*
>> >
>> > =E2=80=8B
>>
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#57401):
>> https://lists.yoctoproject.org/g/yocto/message/57401
>> > Mute This Topic: https://lists.yoctoproject.org/mt/92041991/3617179
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> alexandre.belloni@bootlin.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >
>>
>>
>> --
>> Alexandre Belloni, co-owner and COO, Bootlin
>> Embedded Linux and Kernel engineering
>> https://bootlin.com
>>
>

--000000000000fd071705e3bcc5da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal"><font face=3D"Arial, sans-serif"><s=
pan style=3D"font-size:13.3333px">Hi Alexandre,</span></font></p><p class=
=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=
<u></u>Good Morning!=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:10pt;font-family:Arial,sans-serif"><br></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=
I am not introducing any change to kernel.<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=
<u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif">This is one of my project requiremen=
t to enable coverage support to kernel for specific build for my project.<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">In my=
 project, Already we have few image recipes.<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif=
">Ex:=C2=A0<a href=3D"http://core_image_minimal.bb/" target=3D"_blank">core=
_image_minimal.bb</a>=C2=A0<a href=3D"http://core_image_a.bb/" target=3D"_b=
lank">core_image_a.bb</a>=C2=A0<a href=3D"http://core_image_b.bb/" target=
=3D"_blank">core_image_b.bb</a><u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif">These image recipes are using same kernel=C2=
=A0 with same=C2=A0configuration, Apart from default kernel configuration, =
I want to enable few driver support in kernel to enable coverage support fo=
r specific requirement.<u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:10pt;font-family:Arial,sans-serif"><br></span></p><p class=3D=
"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">To =
enable coverage support in kernel, I have added coverage.cfg in meta-layer.=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font=
-family:Arial,sans-serif">Ex: /recipes-kernel/linux-msm/files/coverage.cfg<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"=
MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">cat =
coverage.cfg<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif">CONFIG_GCOV=3Dy<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:=
Arial,sans-serif">CONFIG_DEBUG_FS=3Dy<u></u><u></u></span></p><p class=3D"M=
soNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">CONFI=
G_GCOV_KERNEL=3Dy<u></u><u></u></span></p><p class=3D"MsoNormal"><span styl=
e=3D"font-size:10pt;font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Aria=
l,sans-serif">If I add coverage.cfg in my kernel recipe(snippet below) - It=
 will be taken for all the image build. Whenever do bitbake of following re=
cipe -=C2=A0<a href=3D"http://core_image_minimal.bb/" target=3D"_blank">cor=
e_image_minimal.bb</a>,=C2=A0<a href=3D"http://core_image_a.bb/" target=3D"=
_blank">core_image_a.bb</a>,=C2=A0<a href=3D"http://core_image_b.bb/" targe=
t=3D"_blank">core_image_b.bb</a><u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif">The below changes will be added to the build, =
since this kernel is common for all the image recipes(<a href=3D"http://cor=
e_image_minimal.bb/" target=3D"_blank">core_image_minimal.bb</a>=C2=A0<a hr=
ef=3D"http://core_image_a.bb/" target=3D"_blank">core_image_a.bb</a>=C2=A0<=
a href=3D"http://core_image_b.bb/" target=3D"_blank">core_image_b.bb</a>).<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"=
MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">Reci=
pe content:<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"f=
ont-size:10pt;font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p>=
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">+++ b/recipes-kernel/linux-kernel/<a href=3D"http://linux-kernel_5.=
x.bb/" target=3D"_blank">linux-kernel_5.x.bb</a><u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif">@@ -21,6 +21,7 @@ SRC_URI =3D &quot;\<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<a>file:=
//audio-kpi.cfg</a>=C2=A0\<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<a>file://ptp-virtual.cf=
g</a>=C2=A0\<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<a>file://xfs.cfg</a>=C2=A0\<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif">+=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<a>file://coverage.cfg</a>=C2=A0\<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"mail=
to:$%7b@bb.utils.contains(&#39;DISTRO_FEATURES" target=3D"_blank">${@bb.uti=
ls.contains(&#39;DISTRO_FEATURES</a>&#39;, &#39;systemd&#39;, &#39;=C2=A0<a=
>file://systemd.cfg</a>&#39;, &#39;&#39;, d)} \<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<a h=
ref=3D"mailto:$%7b@bb.utils.contains(&#39;DISTRO_FEATURES" target=3D"_blank=
">${@bb.utils.contains(&#39;DISTRO_FEATURES</a>&#39;, &#39;virtualization&#=
39;, &#39;=C2=A0<a>file://virtualization.cfg</a>&#39;, &#39;&#39;, d)} \<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;=
font-family:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-f=
amily:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><u></u>=C2=
=A0</span><span style=3D"font-family:Arial,sans-serif;font-size:10pt">Simil=
arly, I have </span>patch<span style=3D"font-family:Arial,sans-serif;font-s=
ize:10pt"> for file other recipes.</span></p><p class=3D"MsoNormal"><span s=
tyle=3D"font-size:10pt;font-family:Arial,sans-serif"><u></u>=C2=A0<u></u></=
span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:A=
rial,sans-serif"><u></u>=C2=A0</span><span style=3D"font-family:Arial,sans-=
serif;font-size:10pt">In my case, I should not add this change to all the i=
mage </span>build<span style=3D"font-family:Arial,sans-serif;font-size:10pt=
">.</span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif"><br></span></p><p class=3D"MsoNormal"><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif">My requirement:</span><span st=
yle=3D"font-family:Arial,sans-serif;font-size:10pt">=C2=A0</span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif=
">I want to create separate image recipe. Ex:=C2=A0<a href=3D"http://core_i=
mage_myrecipe.bb/" target=3D"_blank">core_image_myrecipe.bb</a><u></u><u></=
u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-fami=
ly:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal">=
<span style=3D"font-size:10pt;font-family:Arial,sans-serif">In this recipes=
</span><span style=3D"font-family:Arial,sans-serif;font-size:10pt">=C2=A0</=
span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:A=
rial,sans-serif">- I should include &quot;inherit core-image-minimal&quot; =
+ &quot;My specific coverage_support changes&quot;.<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif"><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"fon=
t-size:10pt;font-family:Arial,sans-serif">As per project requirement, I sho=
uld not create a separate meta layer to maintain this patches.<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-famil=
y:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif">Can you please h=
elp for creating a separate=C2=A0image recipe with specific changes?<u></u>=
</span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif"><br></span></p><p class=3D"MsoNormal"><span style=3D"fon=
t-size:10pt;font-family:Arial,sans-serif">Regards</span></p><p class=3D"Mso=
Normal"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">Sentham=
ilarasi.M</span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;fo=
nt-family:Arial,sans-serif"><u></u>=C2=A0</span></p></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 14, 2022 at=
 10:12 AM Senthamilarasi mathiyan &lt;<a href=3D"mailto:arasilinux1086@gmai=
l.com">arasilinux1086@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"auto">Hi Alex=
andre,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I am not pushing =
any changes to open source kernel. I want to enable few driver module in th=
e kernel. That configuration want to have in file/ folder.=C2=A0</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">My changes.=C2=A0</div><div dir=3D=
"auto">Kern</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, 29 Jun, 2022, 1:37 pm Alexandre Belloni, &lt=
;<a href=3D"mailto:alexandre.belloni@bootlin.com" target=3D"_blank">alexand=
re.belloni@bootlin.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On 28/06/2022 17:21:22+0530, Senthamilarasi mathiyan =
wrote:<br>
&gt; Dear All<br>
&gt; <br>
&gt; Good Morning!<br>
&gt; <br>
&gt; In my project, I am trying to create one custom image recipe in my yoc=
to<br>
&gt; build system.<br>
&gt; <br>
&gt;=C2=A0 The reason of creating custom image is=C2=A0 -&gt; having few sp=
ecific<br>
&gt; configurations for kernel and some specific driver Makefile changes to=
<br>
&gt; enable coverage.<br>
&gt; <br>
&gt;=C2=A0 I cannot go with .bbappend file, because we are maintaining a<br=
>
&gt; recipes-append folder in our meta-layer which is common for all the<br=
>
&gt; production build image recipes.<br>
&gt; <br>
&gt;=C2=A0 My change is very specific it should not come as part of normal =
build<br>
&gt; images because it will affect the production build.<br>
&gt; <br>
&gt;=C2=A0 My use case:<br>
&gt; <br>
&gt; 1. I have one .cfg file for kernel - which has kernel specific<br>
&gt; configurations.<br>
&gt; <br>
&gt; 2. I have Makefile changes for driver file.<br>
&gt; <br>
&gt;=C2=A0 I should bring the above changes to kernel and=C2=A0 driver Make=
file during<br>
&gt; build time without using .bbappend file.<br>
&gt; <br>
&gt;=C2=A0 I want to create a custom image recipe with the specific changes=
.<br>
&gt; <br>
&gt;=C2=A0 For example : <a href=3D"http://custom_image.bb" rel=3D"noreferr=
er noreferrer" target=3D"_blank">custom_image.bb</a> =3D( This recipes shou=
ld have<br>
&gt; <a href=3D"http://core_image_minimal.bb" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">core_image_minimal.bb</a> + my specific changes)<br>
&gt; <br>
&gt;=C2=A0 When i build bitbake <a href=3D"http://custom_image.bb" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">custom_image.bb</a>,=C2=A0 it shoul=
d=C2=A0 build=C2=A0 with<br>
&gt; <a href=3D"http://core_image_minimal.bb" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">core_image_minimal.bb</a> + my specific changes .<br>
&gt; <br>
&gt; Other images recipes also should not affect by this changes.<br>
&gt; <br>
&gt; My humble request. Can anyone please support how to proceed?<br>
&gt; <br>
<br>
You can&#39;t, a recipe can&#39;t affect any other recipe. When building<br=
>
<a href=3D"http://custom_image.bb" rel=3D"noreferrer noreferrer" target=3D"=
_blank">custom_image.bb</a>, it is too late to introduce any kernel change.=
<br>
<br>
&gt; Kindly share your suggestions.<br>
&gt; <br>
&gt;=C2=A0 *Regards*<br>
&gt; <br>
&gt; *Senthamilarasi. M*<br>
&gt; <br>
&gt; =E2=80=8B<br>
<br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#57401): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/57401" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/57401</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92041991=
/3617179" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/92041991/3617179</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" r=
el=3D"noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:alexandre.belloni@bootlin.com" rel=
=3D"noreferrer" target=3D"_blank">alexandre.belloni@bootlin.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
<br>
<br>
-- <br>
Alexandre Belloni, co-owner and COO, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://bootlin.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000fd071705e3bcc5da--

