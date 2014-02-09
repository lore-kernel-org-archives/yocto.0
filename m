Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 805CFE00524
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2014 17:10:15 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id ks9so3854660vcb.11
	for <yocto@yoctoproject.org>; Sat, 08 Feb 2014 17:10:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=H6ViWS3hKut7rZlc2lGwRalcnDjmZ8s7UzBgmEFkQvg=;
	b=dp/70lzEBNHo68ipYWlPZJQsyFAR7lUabywFs2zcwSbr98kj/3tA7AxX+7dZygKeY+
	b4m9hejFzooI9KFAJj/Kdpb3SJak3PeLxweVHkygecZMWw1HNoKBWoKpr991fy7v4cl+
	4/Wsx/H1SnMw+ZZOQVYfIXRseazwlOiRFnyQYL5xBOhDHKKEJj6yiI4ZFuFxGnhcxaM+
	/NlxIJFveIqc1GoVkBM5zqmhwSHIV4jUgAE0FYJAo0JExPnOavVeKHdJi2934dvHi/P6
	GLy4uImBIT3lh809rRL1okhF8BCPG0cGQ+1Fmr42gx+aSGajWhF5P2UUb0B5kaq+nif4
	0xlA==
X-Gm-Message-State: ALoCoQkjXYRQN2AY9WT17fBlTzxxyd4Q1Vd+YtuSFyKJzGpeC8zk7V2kS9c4tTZ7u03MDH1o8QJQ
X-Received: by 10.220.159.4 with SMTP id h4mr17520564vcx.1.1391908215002; Sat,
	08 Feb 2014 17:10:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Sat, 8 Feb 2014 17:09:54 -0800 (PST)
X-Originating-IP: [5.13.130.218]
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 9 Feb 2014 03:09:54 +0200
Message-ID: <CAK18fxFiD5s4P6mOABDDwH1Yop9=OJMLhmBEzgXddMRMp8aSmQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/9] U-boot integration - first stage
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
X-List-Received-Date: Sun, 09 Feb 2014 01:10:16 -0000
Content-Type: multipart/alternative; boundary=001a11c2ca0cb72eb904f1eee232

--001a11c2ca0cb72eb904f1eee232
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Jan 25, 2014 at 12:56 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> At this stage uboot is not usable as somehow - don't know why yet - I can't
> read uImage from sdcard. Seems to be something related to the uboot sdhci
> driver. If anybody knows/suspects where the issue might be, please hit me a
> reply.
>
> Andrei Gherzan (9):
>   bcm2835-bootfiles: Use deploy as it should be used
>   rpi-config: Use deploy as it should be used
>   rpi-default-providers: Use u-boot-rpi as u-boot provider
>   rpi-default-providers: Move PREFERRED_VERSIONs to
>     rpi-default-versions.inc
>   raspberrypi.conf: Let KERNEL_IMAGETYPE be modified
>   sdcard_image-rpi: Add support for u-boot and uImage
>   README: Add info about U-Boot support
>   u-boot-rpi: Integrate package
>   rpi-mkimage: Integrate package
>

All these merged.



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c2ca0cb72eb904f1eee232
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Jan 25, 2014 at 12:56 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt=
;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">At this stage uboot is not usable as somehow=
 - don&#39;t know why yet - I can&#39;t<br>
read uImage from sdcard. Seems to be something related to the uboot sdhci<b=
r>
driver. If anybody knows/suspects where the issue might be, please hit me a=
<br>
reply.<br>
<br>
Andrei Gherzan (9):<br>
=A0 bcm2835-bootfiles: Use deploy as it should be used<br>
=A0 rpi-config: Use deploy as it should be used<br>
=A0 rpi-default-providers: Use u-boot-rpi as u-boot provider<br>
=A0 rpi-default-providers: Move PREFERRED_VERSIONs to<br>
=A0 =A0 rpi-default-versions.inc<br>
=A0 raspberrypi.conf: Let KERNEL_IMAGETYPE be modified<br>
=A0 sdcard_image-rpi: Add support for u-boot and uImage<br>
=A0 README: Add info about U-Boot support<br>
=A0 u-boot-rpi: Integrate package<br>
=A0 rpi-mkimage: Integrate package<br></blockquote><div><br></div><div>All =
these merged.=A0</div></div><br><br clear=3D"all"><div><br></div>-- <br><di=
v dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-ali=
gn:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a11c2ca0cb72eb904f1eee232--
