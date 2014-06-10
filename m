Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB82BE00BAE; Tue, 10 Jun 2014 13:31:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A73CE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:31:44 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id x13so5134798wgg.3
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=5AFhF9o86uXVbFjoZPbjQrSOy/BpPCoJ5BKH39IH0+w=;
	b=OeqPQ7fV2I67ZyaQayyO4yC/EHSo1/A3ljFTVgqyKtj47DD78N2+pQenlFJBOyjaS4
	KKlNZomPEjtcyyXPZpO/l6GdtNPP0R5yHffL95N5hy2wBGsbF4Ck9megpGx9yZXfWovh
	1RowkJbYOnC5hzeOrllBGmSlkbiedNGDdDG2ULhGrmziamwO+KqOV7UozyU3GsTHPH0/
	D+9zvhPONc8nBb4d7DYYYldndbGY3+wfek90vNcO6uz8jHNW3KRFMth6lPHIIVbikiEX
	CEb2wY3NC+xphiUcmCBHN3Ivx0CtGeB6lKu7equs9bO8ssYlSaDwAcA6XKlskigrnCKd
	tlAQ==
X-Gm-Message-State: ALoCoQnwIg2QVWRzCwyAOx7elQ8b5jskr7stZmmh7QoaCKn0/fzv/odiNEfUEB1uVRu6uAz+Dw/p
X-Received: by 10.180.81.1 with SMTP id v1mr4037719wix.10.1402432303511; Tue,
	10 Jun 2014 13:31:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 13:31:23 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAK18fxEjk5934KybvYCZ_akKL4iwFTdwFU+X+ZcD7pFGn6FO1w@mail.gmail.com>
References: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
	<5343A81F.2040907@reliableembeddedsystems.com>
	<CAK18fxEjk5934KybvYCZ_akKL4iwFTdwFU+X+ZcD7pFGn6FO1w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 23:31:23 +0300
Message-ID: <CAK18fxG3zOP+V9VQDapfZEFOxd-cGC8=RgO3_aQJFdtMyNqw4A@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Problem building core-image-sato-sdk
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
X-List-Received-Date: Tue, 10 Jun 2014 20:31:53 -0000
Content-Type: multipart/alternative; boundary=f46d044306a045e30804fb81374d

--f46d044306a045e30804fb81374d
Content-Type: text/plain; charset=UTF-8

Hello Robert,


On Tue, Apr 8, 2014 at 11:02 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
>
> On Tue, Apr 8, 2014 at 10:41 AM, Robert Berger <
> gmane@reliableembeddedsystems.com> wrote:
>
>> On 03/09/2014 02:08 PM, Federico Vitali wrote:
>> > Hi everyone,
>> >
>> > I've succesfully build core-image-sato for raspberry pi, but when I try
>> > to build the sdk version I obtain the following error:
>> >
>>
>> BTW I get the error also with core-image-sato:
>>
>> builder@ubuntu-srvr-lv:~/rpi/poky/raspberrypi/conf$ bitbake
>> core-image-sato
>> Loading cache: 100%
>>
>> |#####################################################################################################################################|
>> ETA:  00:00:00
>> Loaded 1215 entries from dependency cache.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION        = "1.20.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "Ubuntu-12.04"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "raspberrypi"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.5.1"
>> TUNE_FEATURES     = "armv6 vfp"
>> TARGET_FPU        = "vfp"
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "dora:98bd952a5b72c584fc1094e4a61eb9e2a24cc97b"
>> meta-raspberrypi  = "master:fbc0947e96e8989d46b1570619554cb916e24049"
>>
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: Recipe mesa-gl is trying to create package libegl-mesa which was
>> already written by recipe mesa. This will cause corruption, please
>> resolve this and only provide the package from one recipe or the other
>> or only build one of the recipes.
>> ERROR: Function failed: read_subpackage_metadata
>> ERROR: Logfile of failure stored in:
>>
>> /home/builder/rpi/poky/raspberrypi/tmp/work/armv6-vfp-poky-linux-gnueabi/mesa-gl/2_9.1.6-r0/temp/log.do_package_write_ipk.9838
>> ERROR: Task 2436
>> (/home/builder/rpi/poky/meta/recipes-graphics/mesa/mesa-gl_9.1.6.bb,
>> do_package_write_ipk) failed with exit code '1'
>>
>>
> Will try to take a look on this this weekend. If anybody finds the root of
> the problem please submit a patch.
> Thanks,
>

I investigated a little the issue. The problem comes from mesa-demos which
needs libgles1 provided only by mesa right now.  Userland does not include
libgles v1 implementation so this is why this fails. I'm not sure right now
how to fix this now.
vc-graphics installs gles1. So probably we need some patches here. First of
all vg-graphics should provide libgles1. And then, if user wants to use
gles1, vc-graphics(-hardfp) should be used as libgles1. gles2, gl, egl
provider. Or we can have a custom recipe which provides only opengles1.
What do you think?

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d044306a045e30804fb81374d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Robert,<br><div class=3D"gmail_extra"><br><br><div c=
lass=3D"gmail_quote">On Tue, Apr 8, 2014 at 11:02 AM, Andrei Gherzan <span =
dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andr=
ei@gherzan.ro</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">



<div><div>On Tue, Apr 8, 2014 at 10:41 AM, Robert Berger <span dir=3D"ltr">=
&lt;<a href=3D"mailto:gmane@reliableembeddedsystems.com" target=3D"_blank">=
gmane@reliableembeddedsystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>On 03/09/2014 02:08 PM, Federico Vitali wrote:<br>
</div><div>&gt; Hi everyone,<br>
&gt;<br>
&gt; I&#39;ve succesfully build core-image-sato for raspberry pi, but when =
I try<br>
&gt; to build the sdk version I obtain the following error:<br>
&gt;<br>
<br>
</div>BTW I get the error also with core-image-sato:<br>
<br>
builder@ubuntu-srvr-lv:~/rpi/poky/raspberrypi/conf$ bitbake core-image-sato=
<br>
Loading cache: 100%<br>
|##########################################################################=
###########################################################|<br>
ETA: =C2=A000:00:00<br>
Loaded 1215 entries from dependency cache.<br>
NOTE: Resolving any missing task queue dependencies<br>
<br>
Build Configuration:<br>
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.20.0&quot;<br>
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING =C2=A0 =3D &quot;Ubuntu-12.04&quot;<br>
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi&quot;<br>
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5.1&quot;<br>
TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;armv6 vfp&quot;<br>
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;dora:98bd952a5b72c584fc1094e4a61eb9e2=
a24cc97b&quot;<br>
meta-raspberrypi =C2=A0=3D &quot;master:fbc0947e96e8989d46b1570619554cb916e=
24049&quot;<br>
<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: Recipe mesa-gl is trying to create package libegl-mesa which was<br>
already written by recipe mesa. This will cause corruption, please<br>
resolve this and only provide the package from one recipe or the other<br>
or only build one of the recipes.<br>
ERROR: Function failed: read_subpackage_metadata<br>
ERROR: Logfile of failure stored in:<br>
/home/builder/rpi/poky/raspberrypi/tmp/work/armv6-vfp-poky-linux-gnueabi/me=
sa-gl/2_9.1.6-r0/temp/log.do_package_write_ipk.9838<br>
ERROR: Task 2436<br>
(/home/builder/rpi/poky/meta/recipes-graphics/mesa/<a href=3D"http://mesa-g=
l_9.1.6.bb" target=3D"_blank">mesa-gl_9.1.6.bb</a>,<br>
do_package_write_ipk) failed with exit code &#39;1&#39;<br>
<br></blockquote><div><br></div></div></div><div>Will try to take a look on=
 this this weekend. If anybody finds the root of the problem please submit =
a patch.=C2=A0</div><div>Thanks,</div></div></div></div></blockquote><div><=
br>



</div><div>I investigated a little the issue. The problem comes from mesa-d=
emos which needs libgles1 provided only by mesa right now. =C2=A0Userland d=
oes not include libgles v1 implementation so this is why this fails. I&#39;=
m not sure right now how to fix this now.=C2=A0</div>



<div>vc-graphics installs gles1. So probably we need some patches here. Fir=
st of all vg-graphics should provide libgles1. And then, if user wants to u=
se gles1, vc-graphics(-hardfp) should be used as libgles1. gles2, gl, egl p=
rovider. Or we can have a custom recipe which provides only opengles1. What=
 do you think?<br>



</div><div><br></div></div>-- <br><div dir=3D"ltr"><div style=3D"text-align=
:center"></div><div style=3D"text-align:center"><div align=3D"left" style=
=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"col=
or:rgb(51,51,51);font-family:Arial;font-size:small;text-align:center">Andre=
i Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>



</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a href=3D"tel=
:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.744.478.41=
4</a> | =C2=A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162812" =
target=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</div></div>

--f46d044306a045e30804fb81374d--
