Return-Path: <kenny@understoryweather.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57520E00B65; Tue, 27 Jun 2017 09:54:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE640E00B1B
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 09:54:26 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id 191so19332032vko.2
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 09:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=understoryweather-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CuXak++kcqbZUvwBly6wXwsAh5I56DLBV7qHZeiHp6I=;
	b=X+B0b/+RJuoUfDSnhWg3JDO+a6Dldj8xrJaa8mygVAM7fAtP9jH9dpORrQYTPH293u
	YJ+yGGkMcdeBVIiEXSPJlJo/8V3EesInprNXRXSSEhSIfr2beV2WVc3B6Nw4FFiMD4GO
	z5GJJMB2uMouI7silvSq1Gq0j6vjjnf9puh9ygaREW2MXBOSmZd8TpANsfPLq0fRMMy0
	fjlbeJdmFi8iuhVkTKxDi9aPK8CF0fSCq+NNnEc5owWWRR1Bka+dOtR9qMd7fXvpQ/1/
	yQpT+df/yKOqYfOk+dm4Z2sOzWxMzmxPpk5nOuHhAkqljNgPXUjQdZUDzk+vsRBeBlPG
	eqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CuXak++kcqbZUvwBly6wXwsAh5I56DLBV7qHZeiHp6I=;
	b=mAyLBldCwDX4Admg7lpZtFZB7hcq4snAd1WmgcUOwyprWNGhVx2JoIN9zIaASL09G1
	12tW/Pg62QvKuusQ4NiIExRizoz3utj06HeiACGocZPTbkenAoYghbBM6Ov6gmyHTj3d
	UeRufyhD2T8cl2m0cnAlmEvstonicv4b/7IxYwXobLPbw+o7mBZtqymDOgBZsBLYndQ3
	t0I3C6lbNS2+/DwETCW5R9/f709ScpOxxkQswmOKh7y43GRUTZxQeNxplW/Qsf+QVMWt
	CB1etpBkXPQ1fn24kxZdSv1hc0BkMqmf1iFfHcM3uPgg+SE18FXoh0fi+vuclrXA/7Qz
	pRog==
X-Gm-Message-State: AKS2vOzaJLMys1cCbNtZGgPtiMPjbFD7Geryj0Iqmr0mQFPPPqnaTgu9
	yejnAfFbu8z0v1zYqSUixUfnXUAqjPBh
X-Received: by 10.31.110.71 with SMTP id j68mr3187918vkc.72.1498582466061;
	Tue, 27 Jun 2017 09:54:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.120.11 with HTTP; Tue, 27 Jun 2017 09:54:25 -0700 (PDT)
In-Reply-To: <CAPZBU9b-_zaOFUs6ejaPELG0r4C25V6GjxLUTbp19-JNdseghA@mail.gmail.com>
References: <CAPtqgUzbiQXyvU7qVy95ibN_xpYU7=NyxvjnRUHqRSPOo3Eo4Q@mail.gmail.com>
	<CAMKF1spCGQ_caUvCM8BBXhbdqqZ_WPzc45QpJWohAKkYDDa-aQ@mail.gmail.com>
	<CAPtqgUz4WxWWut8ZHd8t-FfRp=y5hXk8j4yGsMGP9FngsLKdeQ@mail.gmail.com>
	<CAPZBU9b-_zaOFUs6ejaPELG0r4C25V6GjxLUTbp19-JNdseghA@mail.gmail.com>
From: Kenny Koller <kenny@understoryweather.com>
Date: Tue, 27 Jun 2017 09:54:25 -0700
Message-ID: <CAPtqgUxK52Kg8sJs+dMsjqXnti7rCMHFVGUBXfGA4SBTYo9iaA@mail.gmail.com>
To: Miguel Aveiro <ma@telensa.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Determining the correct layers for a Beaglebone build.
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
X-List-Received-Date: Tue, 27 Jun 2017 16:54:30 -0000
Content-Type: multipart/alternative; boundary="94eb2c1437fe8efef50552f3eb80"

--94eb2c1437fe8efef50552f3eb80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E2=80=8B
>
>>
>> Regarding the tags: If I check out the pyro branch of poky am I getting
>> something that is stable and has been tested? I thought perhaps the tags
>> with `pyro-17.0.0` would point to stable tested commit.
>>
>> The reason I'm trying to sort all of this out is that when I ran a
>> `bitbake core-image-minimal` with Poky Pyro it failed. It was missing
>> u-image. All I did was clone Poky/Pyro and set the MACHINE to beaglebone=
.
>> It got pretty far though. It seems to have built the kernel and the devi=
ce
>> tree binaries. No signs of the root filesystem or the bootloader (u-imag=
e):
>>
>
>
> =E2=80=8BThat's because you've got zImage, which is perfectly fine. You m=
ight want
> to Google a bit to understand what is uImage, zImage, etc.=E2=80=8B
>

Yes. You are right--I was thinking u-image (not sure why it's not uImage)
was the uboot image and had forgotten about the difference between uImage
and zImage. I don't think this is OK however as it is a failed task. I
would also expect the bootloaders to be in this directory. This is why I
was asking how one determines the correct layers.


>
>
>
>>
>> core-image-base-beaglebone-20170621162619.testdata.json
>> core-image-base-beaglebone.testdata.json
>> core-image-minimal-beaglebone-20170624014756.testdata.json
>> core-image-minimal-beaglebone.testdata.json
>> modules--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-
>> 20170621162619.tgz
>> modules-beaglebone.tgz
>> zImage
>> zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-bone-
>> 20170621162619.dtb
>> zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-
>> boneblack-20170621162619.dtb
>> zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-
>> 20170621162619.bin
>> zImage-am335x-boneblack.dtb
>> zImage-am335x-bone.dtb
>> zImage-beaglebone.bin
>>
>>
>> On Mon, Jun 26, 2017 at 5:18 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Mon, Jun 26, 2017 at 4:35 PM, Kenny Koller
>>> <kenny@understoryweather.com> wrote:
>>> > I'm trying to figure out which set of meta layers I need to build a
>>> distro
>>> > and images for a Beaglebone Black.
>>> >
>>> > I cloned poky and within I see meta-yocto and meta-yocto-bsp. The
>>> latter has
>>> > recipes for the Beaglebone.
>>> >
>>> > I also found this page which suggests cloning meta-yocto:
>>> >
>>> > https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone
>>> >
>>> > Then there is meta-ti. Where does this fit in?
>>>
>>> yocto project used beaglebone black as one of its reference boards
>>> so you can find a default reference yocto BSP for it.
>>>
>>> Secondly, meta-ti is TI BSP layer which also supports beaglebone black
>>> since the board is from TI
>>>
>>>
>>> >
>>> > Also when I clone say poky should I checkout the branch or a specific
>>> tag?
>>> >
>>>
>>> you can use git clone git://git.yoctoproject.org/poky -b pyro
>>> for getting latest stable release.
>>>
>>> > It's not clear to me the best way start with a piece of hardware then
>>> > determine the correct layers.
>>>
>>> I would suggest to do a bit more investigation as to what you need.
>>> meanwhile you can build yocto reference BSP and play with it. There
>>> are many packages that meta-ti would have that you might need depending
>>> upon what you plan to do.
>>>
>>> >
>>> > Thanks.
>>> >
>>> >
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--94eb2c1437fe8efef50552f3eb80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_ext=
ra"><div class=3D"gmail_quote"><span class=3D""><div style=3D"font-size:sma=
ll">=E2=80=8B</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br=
></div><div>Regarding the tags: If I check out the pyro branch of poky am I=
 getting something that is stable and has been tested? I thought perhaps th=
e tags with `pyro-17.0.0` would point to stable tested commit.</div><div><b=
r></div><div>The reason I&#39;m trying to sort all of this out is that when=
 I ran a `bitbake core-image-minimal` with Poky Pyro it failed. It was miss=
ing u-image. All I did was clone Poky/Pyro and set the MACHINE to beaglebon=
e. It got pretty far though. It seems to have built the kernel and the devi=
ce tree binaries. No signs of the root filesystem or the bootloader (u-imag=
e):</div></div></blockquote><div><br></div><div><br></div></span><div><div =
style=3D"font-size:small">=E2=80=8BThat&#39;s because you&#39;ve got zImage=
, which is perfectly fine. You might want to Google a bit to understand wha=
t is uImage, zImage, etc.=E2=80=8B</div></div></div></div></div></blockquot=
e><div><br></div><div>Yes. You are right--I was thinking u-image (not sure =
why it&#39;s not uImage) was the uboot image and had forgotten about the di=
fference between uImage and zImage. I don&#39;t think this is OK however as=
 it is a failed task. I would also expect the bootloaders to be in this dir=
ectory. This is why I was asking how one determines the correct layers.</di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></div><div><div clas=
s=3D"h5"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div><br></div><div><div><font face=3D"monospace">core-image-base-beaglebone=
-201<wbr>70621162619.testdata.json</font></div><div><font face=3D"monospace=
">core-image-base-beaglebone.tes<wbr>tdata.json</font></div><div><font face=
=3D"monospace">core-image-minimal-beaglebone-<wbr>20170624014756.testdata.j=
son</font></div><div><font face=3D"monospace">core-image-minimal-beaglebone=
.<wbr>testdata.json</font></div><div><font face=3D"monospace">modules--4.10=
.9+git0+ad2e88501<wbr>5_fe0fb8da3d-r0-beaglebone-<wbr>20170621162619.tgz</f=
ont></div><div><font face=3D"monospace">modules-beaglebone.tgz</font></div>=
<div><font face=3D"monospace">zImage</font></div><div><font face=3D"monospa=
ce">zImage--4.10.9+git0+ad2e885015<wbr>_fe0fb8da3d-r0-am335x-bone-<wbr>2017=
0621162619.dtb</font></div><div><font face=3D"monospace">zImage--4.10.9+git=
0+ad2e885015<wbr>_fe0fb8da3d-r0-am335x-<wbr>boneblack-20170621162619.dtb</f=
ont></div><div><font face=3D"monospace">zImage--4.10.9+git0+ad2e885015<wbr>=
_fe0fb8da3d-r0-beaglebone-<wbr>20170621162619.bin</font></div><div><font fa=
ce=3D"monospace">zImage-am335x-boneblack.dtb</font></div><div><font face=3D=
"monospace">zImage-am335x-bone.dtb</font></div><div><font face=3D"monospace=
">zImage-beaglebone.bin</font></div></div><div><br></div></div><div class=
=3D"m_7856008622310687443HOEnZb"><div class=3D"m_7856008622310687443h5"><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jun 26, 2017 at 5:18 P=
M Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mo=
n, Jun 26, 2017 at 4:35 PM, Kenny Koller<br>
&lt;<a href=3D"mailto:kenny@understoryweather.com" target=3D"_blank">kenny@=
understoryweather.com</a>&gt; wrote:<br>
&gt; I&#39;m trying to figure out which set of meta layers I need to build =
a distro<br>
&gt; and images for a Beaglebone Black.<br>
&gt;<br>
&gt; I cloned poky and within I see meta-yocto and meta-yocto-bsp. The latt=
er has<br>
&gt; recipes for the Beaglebone.<br>
&gt;<br>
&gt; I also found this page which suggests cloning meta-yocto:<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebo=
ne" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/d<wbr=
>ownloads/bsps/pyro23/beaglebon<wbr>e</a><br>
&gt;<br>
&gt; Then there is meta-ti. Where does this fit in?<br>
<br>
yocto project used beaglebone black as one of its reference boards<br>
so you can find a default reference yocto BSP for it.<br>
<br>
Secondly, meta-ti is TI BSP layer which also supports beaglebone black<br>
since the board is from TI<br>
<br>
<br>
&gt;<br>
&gt; Also when I clone say poky should I checkout the branch or a specific =
tag?<br>
&gt;<br>
<br>
you can use git clone git://<a href=3D"http://git.yoctoproject.org/poky" re=
l=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pok<wbr>y</a> -b py=
ro<br>
for getting latest stable release.<br>
<br>
&gt; It&#39;s not clear to me the best way start with a piece of hardware t=
hen<br>
&gt; determine the correct layers.<br>
<br>
I would suggest to do a bit more investigation as to what you need.<br>
meanwhile you can build yocto reference BSP and play with it. There<br>
are many packages that meta-ti would have that you might need depending<br>
upon what you plan to do.<br>
<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</blockquote></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div></div></div><br></div></div>
</blockquote></div><br></div></div>

--94eb2c1437fe8efef50552f3eb80--
