Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54DDAE0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 12:19:28 -0700 (PDT)
Received: by yenm14 with SMTP id m14so6032545yen.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 12:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=z6xhAu4GBF8d9m0GMRxJrP1FZy2/nG6LuiP5Qvsy8oE=;
	b=QkPzvq4oU+ko/Q2OyYkiklt3ebUn+f3iDh3sorZXk6+e8zIKazSAsoCTqnzQIlLLx/
	B6ewhTQOG0KK+f11EjMtnghjJxNQ2Ju2Y58A8KSbu+iKjMxm51Lr7j/aCHiuLJp/tp+0
	aLiSB5w/CQ8pjj4p3VYggnRw2p6se7f6SEFyD9GWBFj1ol9+i+iqquOsLWf4dTKhjfFs
	3jk0I8ab4zfuvYE7lYDSwzJdES6wbQC8RPt7CyrFZdnj+mIovfYLoazmtm3AJ8lQrAod
	Sz7UPTpLDfCfCmbXmXM5qDlBgLiEQCh1baI8jfmurFsLf52HkjoyXJ59OYLnxeWSIVtX
	bVfA==
MIME-Version: 1.0
Received: by 10.50.140.5 with SMTP id rc5mr7717177igb.40.1337627968043; Mon,
	21 May 2012 12:19:28 -0700 (PDT)
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 12:19:28 -0700 (PDT)
X-Originating-IP: [109.166.128.220]
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 12:19:28 -0700 (PDT)
In-Reply-To: <4FBA8FC4.8070400@mlbassoc.com>
References: <4FBA8091.1040509@mlbassoc.com>
	<CAK18fxFmxGnEvwvutufoRjhfTfrZhi8qJ5JvJey0n3RS3sABSQ@mail.gmail.com>
	<4FBA8FC4.8070400@mlbassoc.com>
Date: Mon, 21 May 2012 22:19:28 +0300
Message-ID: <CAK18fxGg-_qgCCPxpaTmThWY1hNVCcP0CtrcT8mg-yFLg7CXZw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQl1Xq6/mzNif1tyl3Omm7E6xhtuGMSnmWtPY3uVpNVBR5XWborpWHAlruyzervLs8kLukns
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Trouble building RasberryPi with Yocto/Poky
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
X-List-Received-Date: Mon, 21 May 2012 19:19:29 -0000
Content-Type: multipart/alternative; boundary=e89a8f83a34be07ab104c090c76b

--e89a8f83a34be07ab104c090c76b
Content-Type: text/plain; charset=ISO-8859-1

Strange. I just built the kernel and worked ok for me. I will give it a try
tonight.
On May 21, 2012 9:56 PM, "Gary Thomas" <gary@mlbassoc.com> wrote:

> On 2012-05-21 12:47, Andrei Gherzan wrote:
>
>> Give some more output please.
>>
>
> That's about all there is - you can see the layer versions, it's breaking
> during the
> kernel install.  Looks like there may be some package dependency that's
> missing - where
> does the 'lib/__firmware/ti_3410.fw' file get created?
>
> The full (install) log for the kernel has no other useful info.
>
> Maybe some guidance on how this was built, e.g. how does one build a
> bootable
> image using OE & meta-raspberrypi?  what image to build?
>
>
>> On May 21, 2012 8:51 PM, "Gary Thomas" <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>    I tried to build a simple image using just Poky+meta-raspberrypi
>>    Build Configuration:
>>    BB_VERSION        = "1.15.2"
>>    TARGET_ARCH       = "arm"
>>    TARGET_OS         = "linux-gnueabi"
>>    MACHINE           = "raspberrypi"
>>    DISTRO            = "poky"
>>    DISTRO_VERSION    = "1.2+snapshot-20120521"
>>    TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
>>    TARGET_FPU        = "vfp"
>>    meta
>>    meta-yocto        = "master:__**f24d8df3af52e2a2911233746ad69f**
>> __8899bbdf93"
>>    meta-raspberrypi  = "master:__**d1e802561ab5c70680fd6ee70a4779**
>> __1fe78aa977"
>>
>>    When I ran 'bitbake core-image-sato', I got this error:
>>
>>    | make[1]: *** No rule to make target
>>    `/local/rpi_poky/tmp/work/__**raspberrypi-poky-linux-__**
>> gnueabi/linux-raspberrypi-3.1.**__9-rpi+r1+__**
>> git0ec4154d64ebba48ca2446cde60**__a90546311defc-r1/image/lib/_**
>> _firmware/./',
>>    needed by
>>    `/local/rpi_poky/tmp/work/__**raspberrypi-poky-linux-__**
>> gnueabi/linux-raspberrypi-3.1.**__9-rpi+r1+__**
>> git0ec4154d64ebba48ca2446cde60**__a90546311defc-r1/image/lib/_**
>> _firmware/ti_3410.fw'.
>>      Stop.
>>
>>    Any ideas how to move forward?
>>
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
>

--e89a8f83a34be07ab104c090c76b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Strange. I just built the kernel and worked ok for me. I will give it a =
try tonight.</p>
<div class=3D"gmail_quote">On May 21, 2012 9:56 PM, &quot;Gary Thomas&quot;=
 &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<=
br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On 2012-05-21 12:47, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Give some more output please.<br>
</blockquote>
<br>
That&#39;s about all there is - you can see the layer versions, it&#39;s br=
eaking during the<br>
kernel install. =A0Looks like there may be some package dependency that&#39=
;s missing - where<br>
does the &#39;lib/__firmware/ti_3410.fw&#39; file get created?<br>
<br>
The full (install) log for the kernel has no other useful info.<br>
<br>
Maybe some guidance on how this was built, e.g. how does one build a bootab=
le<br>
image using OE &amp; meta-raspberrypi? =A0what image to build?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
On May 21, 2012 8:51 PM, &quot;Gary Thomas&quot; &lt;<a href=3D"mailto:gary=
@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&g=
t; wrote:<br>

<br>
 =A0 =A0I tried to build a simple image using just Poky+meta-raspberrypi<br=
>
 =A0 =A0Build Configuration:<br>
 =A0 =A0BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.15.2&quot;<br>
 =A0 =A0TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
 =A0 =A0TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
 =A0 =A0MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspberrypi&quot;<br>
 =A0 =A0DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
 =A0 =A0DISTRO_VERSION =A0 =A0=3D &quot;1.2+snapshot-20120521&quot;<br>
 =A0 =A0TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp arm1176jzfs&quot;<br>
 =A0 =A0TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quot;<br>
 =A0 =A0meta<br>
 =A0 =A0meta-yocto =A0 =A0 =A0 =A0=3D &quot;master:__<u></u>f24d8df3af52e2a=
2911233746ad69f<u></u>__8899bbdf93&quot;<br>
 =A0 =A0meta-raspberrypi =A0=3D &quot;master:__<u></u>d1e802561ab5c70680fd6=
ee70a4779<u></u>__1fe78aa977&quot;<br>
<br>
 =A0 =A0When I ran &#39;bitbake core-image-sato&#39;, I got this error:<br>
<br>
 =A0 =A0| make[1]: *** No rule to make target<br>
 =A0 =A0`/local/rpi_poky/tmp/work/__<u></u>raspberrypi-poky-linux-__<u></u>=
gnueabi/linux-raspberrypi-3.1.<u></u>__9-rpi+r1+__<u></u>git0ec4154d64ebba4=
8ca2446cde60<u></u>__a90546311defc-r1/image/lib/_<u></u>_firmware/./&#39;,<=
br>

 =A0 =A0needed by<br>
 =A0 =A0`/local/rpi_poky/tmp/work/__<u></u>raspberrypi-poky-linux-__<u></u>=
gnueabi/linux-raspberrypi-3.1.<u></u>__9-rpi+r1+__<u></u>git0ec4154d64ebba4=
8ca2446cde60<u></u>__a90546311defc-r1/image/lib/_<u></u>_firmware/ti_3410.f=
w&#39;.<br>

 =A0 =A0 =A0Stop.<br>
<br>
 =A0 =A0Any ideas how to move forward?<br>
</blockquote>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
</blockquote></div>

--e89a8f83a34be07ab104c090c76b--
