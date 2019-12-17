Received: from w1.tutanota.de (w1.tutanota.de [81.3.6.162])
 by mx.groups.io with SMTP id smtpd.web11.2751.1576585152825377578
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 04:19:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tutanota.com header.s=s1 header.b=LyDBFyml;
 spf=pass (domain: tutanota.com, ip: 81.3.6.162, mailfrom: wojciech.st@tutanota.com)
Received: from w2.tutanota.de (unknown [192.168.1.163])
	by w1.tutanota.de (Postfix) with ESMTP id 4B362FA7CD9;
	Tue, 17 Dec 2019 12:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1576585151;
	s=s1; d=tutanota.com;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type;
	bh=UOOBtIR1/l/0edosJlmttZYmZDRWYawUCfCEOdhFMw4=;
	b=LyDBFymlX0zf5K+ebb5XL+qc0oG1PPgNkb1mEBfb9Qaomp8reqbvPImHf7ob+VKk
	hM602tKdLkjD6CMRQCuCxuCFpfvu6U6cA9nULiqzmheQzFHH5iscrnF1Icg/kpu57dR
	CymXu71R58dGBBSyBbVPVXQcgjZtgbbVlFPKNJA5G9DuLK1j4Kh0cmtV2pJAGMmhfJ1
	MtzP04/SFMJHdIti1hte+tlU39PGAMNBumMSUxsvxhA7Tca2L+g8mOd71XHMw2AVc0g
	e+j+dpmFCqGW1HcrAIcBCLwSYrIHQcY70ya9vWcfqmcUf1IQ4dxYfR2vMy/29gtP8aY
	fwsFlMbkgg==
Date: Tue, 17 Dec 2019 13:19:11 +0100 (CET)
From: wojciech.st@tutanota.com
To: Khem Raj <raj.khem@gmail.com>
Cc: <yocto@lists.yoctoproject.org>
Message-ID: <LwIn2xV--g-1@tutanota.com>
In-Reply-To: <CAMKF1sqYnuJ_QY6uyw1jTrVwni=oeOECrtx7LJVvVFnEq3xsFA@mail.gmail.com-LwHB5UB----1>
References: <W5UD.1576533409237003637.6umO@lists.yoctoproject.org> <CAMKF1sqYnuJ_QY6uyw1jTrVwni=oeOECrtx7LJVvVFnEq3xsFA@mail.gmail.com-LwHB5UB----1>
Subject: Re: [yocto] #raspberrypi
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_7706_2068806378.1576585151298"

------=_Part_7706_2068806378.1576585151298
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Khem

Replacing=C2=A0
IMAGE_INSTALL +=3D "i2c-tools vim"
withIMAGE_INSTALL_append =3D " i2c-tools vim"

in my local.conf solve the problem.

More than half of the sources were rebuild.

Thanks a lot.

Now I found also the info in the manual "Using IMAGE_INSTALL with the +=3D =
operator from the /conf/local.conf file or from within                    a=
n image recipe is not recommended as it can cause ordering                 =
   issues."

Regards,

Wojciech=C2=A0
--=20
 Securely sent with Tutanota. Get your own encrypted, ad-free mailbox:=20
 https://tutanota.com


Dec 17, 2019, 05:48 by raj.khem@gmail.com:

> On Mon, Dec 16, 2019 at 1:56 PM <wojciech.st@tutanota.com> wrote:
>
>>
>> Problem with rootfs boot on my raspberrypi.
>>
>> Hi
>> I am building simple image for my raspbery pi 3 A+ and connect to the pi=
 via USB-UART converter and see the following in the console
>> ...
>> [ 2.071459] Run /bin/init as init process
>> [ 2.076507] Run /bin/sh as init process
>> sh: cannot set terminal process group (-1): Inappropriate ioctl for devi=
ce
>> sh: no job control in this shell
>> sh-4.4#
>>
>>
>>
>> I build with the "bitbake core-image-base" and tried to run it on rpi 3A=
+, 3B, 3B+ and the problem is always the same it cannot switch to the rootf=
s on the sd card it seem like it stack at initramfs or some middle ground.
>>
>> I burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.04 host=
 machine.
>> I tried with two branches thud and warrior and the problem is exactly th=
e same.
>> The strange thing is that in this initramfs there are no tools like find=
 grep modprobe etc. but I see my extra tools "i2c-tools vim"
>>
>> Here is my local.conf adjustments:
>> MACHINE ?=3D "raspberrypi3"
>> ENABLE_I2C =3D "1"
>> ENABLE_UART =3D "1"
>> IMAGE_INSTALL +=3D "i2c-tools vim"
>>
>
> Can you turn this into
> IMAGE_INSTALL_append =3D " i2c-tools vim"
>
>>
>> and the bblayer.conf
>> BBLAYERS ?=3D " \
>>  /media/dave/Develop/yoctopi/warrior/sources/poky/meta \
>>  /media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \
>>  /media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \
>>  /media/dave/Develop/yoctopi/warrior/sources/meta-openembedded/meta-oe \
>>  /media/dave/Develop/yoctopi/warrior/sources/meta-raspberrypi \
>>  "
>>
>> I tried also to build with the deprecated image "bitbake rpi-basic-image=
" but then I did not get my extra tools "i2c-tools vim".
>>
>> Anyone have any idea what can be wrong with my approach ?
>>
>> Regards,
>>
>> Wojciech
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47702): https://lists.yoctoproject.org/g/yocto/messa=
ge/47702
>> Mute This Topic: https://lists.yoctoproject.org/mt/68744766/1997914
>> Mute #raspberrypi: https://lists.yoctoproject.org/mk?hashtag=3Draspberry=
pi&subid=3D6692173
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gma=
il.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


------=_Part_7706_2068806378.1576585151298
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
<div>Hi Khem<br></div><div><br></div><div>Replacing&nbsp;<br></div><div>IMA=
GE_INSTALL +=3D "i2c-tools vim"<br></div><div>with</div><div><span class=3D=
"highlight" style=3D"background-color:rgb(255, 255, 255)"><span class=3D"co=
lour" style=3D"color:rgb(48, 48, 48)"><span class=3D"font" style=3D"font-fa=
mily:-apple-system, BlinkMacSystemFont, Helvetica, Arial, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol=
&quot;"><span class=3D"size" style=3D"font-size:16px">IMAGE_INSTALL_append =
=3D " i2c-tools vim"</span></span></span></span><br></div><div><br></div><d=
iv>in my local.conf solve the problem.<br></div><div><br></div><div>More th=
an half of the sources were rebuild.<br></div><div><br></div><div>Thanks a =
lot.<br></div><div><br></div><div>Now I found also the info in the manual "=
Using <code class=3D"">IMAGE_INSTALL</code> with the <code class=3D"">+=3D<=
/code> operator from the <code class=3D"">/conf/local.conf</code> file or f=
rom within
                    an image recipe is not recommended as it can cause orde=
ring
                    issues."<br></div><div><br></div><div>Regards,<br></div=
><div><br></div><div>Wojciech&nbsp;</div><div><br></div><div>-- <br></div><=
div> Securely sent with Tutanota. Get your own encrypted, ad-free mailbox: =
<br></div><div> https://tutanota.com<br></div><div><br></div><div><br></div=
><div>Dec 17, 2019, 05:48 by raj.khem@gmail.com:<br></div><blockquote class=
=3D"tutanota_quote" style=3D"border-left: 1px solid #93A3B8; padding-left: =
10px; margin-left: 5px;"><div>On Mon, Dec 16, 2019 at 1:56 PM &lt;wojciech.=
st@tutanota.com&gt; wrote:<br></div><blockquote><div><br></div><div>Problem=
 with rootfs boot on my raspberrypi.<br></div><div><br></div><div>Hi<br></d=
iv><div>I am building simple image for my raspbery pi 3 A+ and connect to t=
he pi via USB-UART converter and see the following in the console<br></div>=
<div>...<br></div><div>[ 2.071459] Run /bin/init as init process<br></div><=
div>[ 2.076507] Run /bin/sh as init process<br></div><div>sh: cannot set te=
rminal process group (-1): Inappropriate ioctl for device<br></div><div>sh:=
 no job control in this shell<br></div><div>sh-4.4#<br></div><div><br></div=
><div><br></div><div><br></div><div>I build with the "bitbake core-image-ba=
se" and tried to run it on rpi 3A+, 3B, 3B+ and the problem is always the s=
ame it cannot switch to the rootfs on the sd card it seem like it stack at =
initramfs or some middle ground.<br></div><div><br></div><div>I burn the *.=
rpi-sdimg image to SD card with dd from my Ubuntu16.04 host machine.<br></d=
iv><div>I tried with two branches thud and warrior and the problem is exact=
ly the same.<br></div><div>The strange thing is that in this initramfs ther=
e are no tools like find grep modprobe etc. but I see my extra tools "i2c-t=
ools vim"<br></div><div><br></div><div>Here is my local.conf adjustments:<b=
r></div><div>MACHINE ?=3D "raspberrypi3"<br></div><div>ENABLE_I2C =3D "1"<b=
r></div><div>ENABLE_UART =3D "1"<br></div><div>IMAGE_INSTALL +=3D "i2c-tool=
s vim"<br></div></blockquote><div><br></div><div>Can you turn this into<br>=
</div><div>IMAGE_INSTALL_append =3D " i2c-tools vim"<br></div><blockquote><=
div><br></div><div>and the bblayer.conf<br></div><div>BBLAYERS ?=3D " \<br>=
</div><div> /media/dave/Develop/yoctopi/warrior/sources/poky/meta \<br></di=
v><div> /media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \<br></d=
iv><div> /media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \<=
br></div><div> /media/dave/Develop/yoctopi/warrior/sources/meta-openembedde=
d/meta-oe \<br></div><div> /media/dave/Develop/yoctopi/warrior/sources/meta=
-raspberrypi \<br></div><div> "<br></div><div><br></div><div>I tried also t=
o build with the deprecated image "bitbake rpi-basic-image" but then I did =
not get my extra tools "i2c-tools vim".<br></div><div><br></div><div>Anyone=
 have any idea what can be wrong with my approach ?<br></div><div><br></div=
><div>Regards,<br></div><div><br></div><div>Wojciech<br></div><div><br></di=
v><div><br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></di=
v><div>Links: You receive all messages sent to this group.<br></div><div><b=
r></div><div>View/Reply Online (#47702): https://lists.yoctoproject.org/g/y=
octo/message/47702<br></div><div>Mute This Topic: https://lists.yoctoprojec=
t.org/mt/68744766/1997914<br></div><div>Mute #raspberrypi: https://lists.yo=
ctoproject.org/mk?hashtag=3Draspberrypi&amp;subid=3D6692173<br></div><div>G=
roup Owner: yocto+owner@lists.yoctoproject.org<br></div><div>Unsubscribe: h=
ttps://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]<br></div>=
<div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div></blockquote></=
blockquote><div><br></div>  </body>
</html>

------=_Part_7706_2068806378.1576585151298--
