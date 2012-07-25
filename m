Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE036E00739
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 07:54:31 -0700 (PDT)
Received: by lagz14 with SMTP id z14so655413lag.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 07:54:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=b2PccnkD3IZWa5WAS0wx3ZNUbRT/ZR624IG5Va/XG+8=;
	b=LrNi4yk8PdVDkzhW2656PIRF0E09rUFnwiuEx9wiZQfEmO6/eU1oAAYrLJn6WT0CNX
	vbfsiqZCzbWxRzf2cUr6PDgVIrmns4TWBDkWE+j36/AM7ECg2B1p5BE8AHItUPuwYs/7
	oPVc6b+R+/thXOf5jKJb/hq0ndH/pe6mTmuSjxGLZbosJHoO6vQiMNVX1ujRy6zDKIK4
	amKiALHJyYPrAOj6PdQEvvBG+ZYMiZWuPsU9K8r0v8eW9hpxW/d6FkPfDj0RoQvmtdVT
	ufyjy+KnAhNCSMVjn/NFrqNDdl1SHZOo+jwky1Gt/gmwfIRTG7EvPbeY5wjljJHELho0
	3qyA==
Received: by 10.112.99.98 with SMTP id ep2mr12215892lbb.45.1343228070761; Wed,
	25 Jul 2012 07:54:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 07:54:10 -0700 (PDT)
In-Reply-To: <CANsUPaNj=kvwC7jYEm5GehHxnQqCRZoTcpOWQZGL1AaD0F7Zkg@mail.gmail.com>
References: <CANsUPaM2Vc4MsrjfXy4sgsM=5i3-UFpg=T3sdG43rP_cKQ-HbQ@mail.gmail.com>
	<CAK18fxEz8R5ighVjaQPAFXMK021Jom8VGshPYqkz2KKjfjXw5A@mail.gmail.com>
	<CANsUPaNJ6=ar+1xxR+tuFv7kM_FytWrU7fah8j9Wy0AHLmduug@mail.gmail.com>
	<CANsUPaNj=kvwC7jYEm5GehHxnQqCRZoTcpOWQZGL1AaD0F7Zkg@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 16:54:10 +0200
Message-ID: <CANsUPaOnQ8-tJrt4N_RqDjzThLXOpaV1cJxCG3C0qyRwBiNxPg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQnObhI9RWVSWflFQ7WC31eBfsFXSmaiXhwCPEnviptJllxNIQOtVdybr9M+jDN+5Ob42cPt
Cc: yocto@yoctoproject.org
Subject: Re: Yocto .sdcard file missing after build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 14:54:32 -0000
Content-Type: multipart/alternative; boundary=f46d0401fde102955404c5a8a867

--f46d0401fde102955404c5a8a867
Content-Type: text/plain; charset=ISO-8859-1

Yocto packed for Freescale provided by
fsl-community-bsp-platform<https://github.com/Freescale/fsl-community-bsp-platform>
uses
an own setup-environment script, I put

IMAGE_FSTYPES = "tar.bz2 ext3 sdcard"
*
*
as the last configuration in this file and now it works and hob can
generate sdcard files.

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Jul 25, 2012 at 2:51 PM, Giovanni Foiani <fnognn@unife.it> wrote:

> I found in *meta-fsl-arm/conf/machine/include/imx-base.inc *the following
> configuration:
>
> *IMAGE_FSTYPES ?= "tar.bz2 ext3 sdcard"*
>
> Hence, according to this configuration, .sdcard file should be created but pparently
> it is overwritten somewhere else...
>
> I also found the configuration to reduce sdcard file size which is into *
> meta-fsl-arm/classes/image_types_fsl.bbclass.*
>
> I reduced SDCARD_SIZE from 3.4GB to 1GB
> # Default to 1.0GiB images
> *SDCARD_SIZE ?= "1000"*
> *
> *
> I'm using Yocto packed for Freescale provided by
> fsl-community-bsp-platform<https://github.com/Freescale/fsl-community-bsp-platform> and I'm
> building the image using Hob but I can't find sdcard as output format in
> the graphic interface....
>
> Where is the right point to place* *IMAGE_FSTYPES configuration?
>
> Thanks
>
> Giovanni
> --
>
> Dott. Ing. Giovanni Foiani
>
> Cell:        +39-349-3577515
> Phone:    +39-0532-97-4106
> mail:        giovanni.foiani@unife.it
> CenTec - Corso Guercino, 47 - 44042 Cento (FE)
>
>
>
> On Wed, Jul 25, 2012 at 11:07 AM, Giovanni Foiani <fnognn@unife.it> wrote:
>
>> Please look at my notes below..
>>
>> Thanks
>>
>> Giovanni
>> --
>>
>> Dott. Ing. Giovanni Foiani
>>
>> Cell:        +39-349-3577515
>> Phone:    +39-0532-97-4106
>> mail:        giovanni.foiani@unife.it
>> CenTec - Corso Guercino, 47 - 44042 Cento (FE)
>>
>>
>>
>> On Wed, Jul 25, 2012 at 10:56 AM, Andrei Gherzan <andrei@gherzan.ro>wrote:
>>
>>> On Wed, Jul 25, 2012 at 11:43 AM, Giovanni Foiani <fnognn@unife.it>wrote:
>>>
>>>> Hi,
>>>>
>>>> I built some images using the latest Yocto release (with Hob) on a
>>>> Ubuntu 10.04 32 bit, but when the process finishes (with success) I can't
>>>> find .sdcard files into "*tmp/deploy/images*" folder.
>>>>
>>>
>>> Not all images create .sdcard files. What image are you talking about?
>>> sd images are used for machines like imx / rpi where rootfs and/or kernel
>>> and/or boot-loader are used from sd. In qemu ext3 images are used for
>>> rootfs and kernel loaded separately.
>>>
>>>
>>
>> I'm building images for iMX53QSB so my situation is where rootfs and/or
>> kernel and/or boot-loader are used from sd card.
>> I'm trying to build a qt4-demo-image, do I have to put any configuration
>> into qt4-demo-image.bb to enable .sdcard creation?
>>
>>
>>> Some time ago I built some other images using a Ubuntu 11.04 32 bit and
>>>> .sdcard files were created properly.
>>>> Could it be a problem of max file size in Ubuntu 10.04?
>>>> Another question...sdcard files that I built using Ubuntu 11.04 (32
>>>> bit) were about 3 GByte, is there a way or configuration to reduce this
>>>> size?
>>>>
>>>> Yes. Use a compression extension. For example sdcard.xz.
>>>
>>
>> Is this also a  qt4-demo-image.bb configuration to set?
>>
>> Thanks
>>
>>>
>>> ag
>>>
>>
>>
>

--f46d0401fde102955404c5a8a867
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
3px;background-color:rgb(255,255,255)">Yocto packed for Freescale provided =
by=A0</span><a href=3D"https://github.com/Freescale/fsl-community-bsp-platf=
orm" target=3D"_blank" style=3D"color:rgb(17,85,204);font-family:arial,sans=
-serif;font-size:13px;background-color:rgb(255,255,255)">fsl-community-bsp-=
platform</a><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:13px;background-color:rgb(255,255,255)">=A0uses an own setup-env=
ironment script, I put</span><div>

<font color=3D"#222222" face=3D"arial, sans-serif"><br></font></div><div><d=
iv style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px=
;background-color:rgb(255,255,255)">IMAGE_FSTYPES =3D &quot;tar.bz2 ext3 sd=
card&quot;</div>

<div><b><br></b></div><div>as the last configuration in this file and now i=
t works and hob can generate sdcard files.</div><div><br></div><div>Giovann=
i</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Wed, Jul 25, 2012 at 2:51 PM, Giovann=
i Foiani <span dir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it" target=3D=
"_blank">fnognn@unife.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

I found in=A0<i>meta-fsl-arm/conf/machine/include/imx-base.inc </i>the foll=
owing configuration:<div><br></div><div><b>IMAGE_FSTYPES ?=3D &quot;tar.bz2=
 ext3 sdcard&quot;</b></div><div><br></div><div>Hence, according to this co=
nfiguration, .sdcard file should be created but=A0<span style=3D"font-size:=
13px;white-space:nowrap;font-family:arial,sans-serif">pparently it is overw=
ritten somewhere else...</span></div>


<div><font face=3D"arial, sans-serif"><span style=3D"white-space:nowrap"><b=
r></span></font></div><div><font face=3D"arial, sans-serif"><span style=3D"=
white-space:nowrap">I also found the configuration to reduce sdcard file si=
ze which is into=A0</span></font><i>meta-fsl-arm/classes/image_types_fsl.bb=
class.</i></div>


<div><div><br></div><div>I reduced=A0SDCARD_SIZE from 3.4GB to 1GB</div><di=
v><div># Default to 1.0GiB images</div><div><b>SDCARD_SIZE ?=3D &quot;1000&=
quot;</b></div></div><div><b><br></b></div><div>I&#39;m using Yocto packed =
for Freescale provided by=A0<a href=3D"https://github.com/Freescale/fsl-com=
munity-bsp-platform" target=3D"_blank">fsl-community-bsp-platform</a>=A0and=
=A0I&#39;m building the image using Hob but I can&#39;t find sdcard as outp=
ut format in the graphic interface....</div>


<div><br></div><div>Where is the right point to place<b>=A0</b>IMAGE_FSTYPE=
S configuration?</div><div class=3D"im"><div><br></div><div>Thanks</div><di=
v><br></div><div>Giovanni</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577515" value=3D"+393493577515=
" target=3D"_blank">+39-349-3577515</a><br>

Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>mail:=A0 =A0 =A0 =A0 <a href=3D"mai=
lto:giovanni.foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a=
></div>
<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br></div><div><div class=3D"h5"><div class=3D"gmail_quote">On Wed, Jul=
 25, 2012 at 11:07 AM, Giovanni Foiani <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:fnognn@unife.it" target=3D"_blank">fnognn@unife.it</a>&gt;</span> wrote=
:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>Please look at my notes below..</div><div><div><br></div><div>Thanks=
=A0</div><div><br></div><div>Giovanni</div><div>--<br><br>Dott. Ing. Giovan=
ni Foiani<br><font face=3D"arial, sans-serif"><span style=3D"border-collaps=
e:collapse"><br>



</span></font></div><div>Cell:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577=
515" value=3D"+393493577515" target=3D"_blank">+39-349-3577515</a><br>Phone=
: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" target=
=3D"_blank">+39-0532-97-4106</a><br>


mail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"=
_blank">giovanni.foiani@unife.it</a></div><div><span style=3D"font-family:a=
rial,helvetica,sans-serif;font-size:13px;line-height:13px">CenTec - Corso G=
uercino, 47 - 44042 Cento (FE)</span></div>



<br>
<br><br></div><div class=3D"gmail_quote"><div>On Wed, Jul 25, 2012 at 10:56=
 AM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.=
ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">



<div class=3D"gmail_quote"><div>On Wed, Jul 25, 2012 at 11:43 AM, Giovanni =
Foiani <span dir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it" target=3D"_=
blank">fnognn@unife.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">





Hi,<div><br></div><div>I built some images using the latest Yocto release (=
with Hob) on a Ubuntu 10.04 32 bit, but when the process finishes (with suc=
cess) I can&#39;t find .sdcard files into &quot;<i>tmp/deploy/images</i>&qu=
ot; folder.</div>





</blockquote><div><br></div></div><div>Not all images create .sdcard files.=
 What image are you talking about? sd images are used for machines like imx=
 / rpi where rootfs and/or kernel and/or=A0boot-loader=A0are used from sd. =
In qemu ext3 images are used for rootfs and kernel loaded separately.=A0</d=
iv>



<div>

<div>=A0</div></div></div></blockquote><div><br></div></div><div>I&#39;m bu=
ilding images for iMX53QSB so my situation is where=A0rootfs and/or kernel =
and/or=A0boot-loader=A0are used from sd card.</div><div>I&#39;m trying to b=
uild a qt4-demo-image, do I have to put any configuration into <a href=3D"h=
ttp://qt4-demo-image.bb" target=3D"_blank">qt4-demo-image.bb</a> to enable =
.sdcard creation?</div>


<div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">





<div>Some time ago I built some other images using=A0a Ubuntu 11.04 32 bit =
and .sdcard files were created properly.</div><div>Could it be a problem of=
 max file size in Ubuntu 10.04?</div><div>Another question...sdcard files t=
hat I built using=A0Ubuntu 11.04 (32 bit) were about 3 GByte, is there a wa=
y or configuration to reduce this size?</div>







<div><br></div></blockquote></div><div>Yes. Use a compression extension. Fo=
r example sdcard.xz.</div></div></blockquote><div><br></div></div><div>Is t=
his also a =A0<a href=3D"http://qt4-demo-image.bb" target=3D"_blank">qt4-de=
mo-image.bb</a> configuration to set?</div>



<div><br></div><div>Thanks</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"gmail_quote"><span><font color=3D"#888888"><div>=A0</div><div>ag</div>
</font></span></div>
</blockquote></div><br>
</blockquote></div><br></div></div></div>
</blockquote></div><br></div>

--f46d0401fde102955404c5a8a867--
