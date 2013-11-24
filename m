Return-Path: <tstellanova@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 002A3E0071E
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2013 18:51:15 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id cc10so2718574wib.4
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2013 18:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=l/Qd8EGUxhhbX9sXasFIBz6iQEvyTc4f9E3mILHyQhs=;
	b=wIG4MGfVnhxNmHuNDwcVfUYdTZxzQUGhCMzSccNAhwci2ItA6igTtcwufcYfKpqvrl
	WxNrrSrDvP9WRQaMDUwKLhQ0+dv6Kg+13bvrT+9vXH9LCC7uLRjAUT+PYIPkFovd+3D8
	RaKXBEpFQZEAJpn4SKdh2j893tyFDDhr8V6FjoGpW5Q+r/WhOS+ADasC6lDWMlUFLyTu
	THEmKCfTgJI/zzjhcHYZCTX4WVdYnHScGSNgC7e4pdFJ9yWRQmXuWXe8in9GnkwTZ+FG
	eKspQANa6s79W4IadsMMxjy6UlEbfEYUpeFyfLZ9541jeX0nFNdSg0ckNsoB9h+2Ylo1
	wufg==
MIME-Version: 1.0
X-Received: by 10.180.37.11 with SMTP id u11mr8351954wij.27.1385261474354;
	Sat, 23 Nov 2013 18:51:14 -0800 (PST)
Received: by 10.216.202.4 with HTTP; Sat, 23 Nov 2013 18:51:14 -0800 (PST)
In-Reply-To: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
Date: Sat, 23 Nov 2013 18:51:14 -0800
Message-ID: <CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>
From: Todd Stellanova <tstellanova@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 24 Nov 2013 20:24:16 -0800
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Sun, 24 Nov 2013 02:51:17 -0000
Content-Type: multipart/alternative; boundary=e89a8f646745199bd104ebe3521d

--e89a8f646745199bd104ebe3521d
Content-Type: text/plain; charset=ISO-8859-1

It appears that copying the files to the ext3 / sdcard image is failing in
*populate-extfs.sh*
I see a series of these errors:

*copy_file: Could not allocate block in ext2 filesystem*

Any idea what might cause this?  I've verified that the initial .tar
archive and the bz2 contain the right files.



On Sat, Nov 23, 2013 at 10:22 AM, Todd Stellanova <tstellanova@gmail.com>wrote:

> Hello,
>
> I'm following these directions for building with yocto for the wandboard:
> http://wiki.wandboard.org/index.php/Getting_started_with_Yocto_on_Wandboard
>
> I'm building a bb recipe based on core-image-minimal-dev, to which I've
> added:
> IMAGE_FEATURES += "package-management"
>
> In my conf/local.conf I originally had:
> PACKAGE_CLASSES ?= "package_rpm"
>
> This built fine and I was able to boot with the resulting sdcard image
> fine on the wandboard. However, I'd like to use opkg on the wandboard for
> package management, so I modified local.conf to:
> PACKAGE_CLASSES ?= "package_ipk"
>
> and bitbaked my image again.  The resulting sdcard image doesn't boot on
> the wandboard, and if I look at the sdcard image I can see that, for
> example, /etc is completely missing from the rootfs.
>
> Do I need to do anything else to switch the build to properly using ipks
> with opkg?
>
> Thanks for any help!
>

--e89a8f646745199bd104ebe3521d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It appears that copying the files to the ext3 / sdcard ima=
ge is failing in=A0<strong class=3D"" style=3D"font-size:13px;color:rgb(51,=
51,51);overflow:hidden;text-overflow:ellipsis;width:610px;white-space:nowra=
p;font-family:Helvetica,arial,freesans,clean,sans-serif;line-height:33px;ba=
ckground-color:rgb(250,250,250);display:inline!important">populate-extfs.sh=
</strong><div>
I see a series of these errors:</div><div><br></div><div><div><b>copy_file:=
 Could not allocate block in ext2 filesystem</b></div></div><div><br></div>=
<div>Any idea what might cause this? =A0I&#39;ve verified that the initial =
.tar archive and the bz2 contain the right files.<br>
</div><div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Sat, Nov 23, 2013 at 10:22 AM, Todd Stellanova <span dir=
=3D"ltr">&lt;<a href=3D"mailto:tstellanova@gmail.com" target=3D"_blank">tst=
ellanova@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span style=3D"font-family:=
arial,sans-serif;font-size:13px">Hello,</span><div style=3D"font-family:ari=
al,sans-serif;font-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">I&#39;=
m following these directions for building with yocto for the wandboard:</di=
v>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><a href=3D"http:=
//wiki.wandboard.org/index.php/Getting_started_with_Yocto_on_Wandboard" tar=
get=3D"_blank">http://wiki.wandboard.org/index.php/Getting_started_with_Yoc=
to_on_Wandboard</a><br>

</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div>=
<div style=3D"font-family:arial,sans-serif;font-size:13px">I&#39;m building=
 a bb recipe based on core-image-minimal-dev, to which I&#39;ve added:</div=
>

<div style=3D"font-family:arial,sans-serif;font-size:13px">IMAGE_FEATURES +=
=3D &quot;package-management&quot;</div><div style=3D"font-family:arial,san=
s-serif;font-size:13px"><br></div><div style=3D"font-family:arial,sans-seri=
f;font-size:13px">

In my conf/local.conf I originally had:</div><div style=3D"font-family:aria=
l,sans-serif;font-size:13px">PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;</=
div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><d=
iv style=3D"font-family:arial,sans-serif;font-size:13px">

This built fine and I was able to boot with the resulting sdcard image fine=
 on the wandboard. However, I&#39;d like to use opkg on the wandboard for p=
ackage management, so I modified local.conf to:</div><div style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">

PACKAGE_CLASSES ?=3D &quot;package_ipk&quot;</div><div style=3D"font-family=
:arial,sans-serif;font-size:13px"><br></div><div style=3D"font-family:arial=
,sans-serif;font-size:13px">and bitbaked my image again. =A0The resulting s=
dcard image doesn&#39;t boot on the wandboard, and if I look at the sdcard =
image I can see that, for example, /etc is completely missing from the root=
fs.=A0</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">Do I need to do anythi=
ng else to switch the build to properly using ipks with opkg?</div><div sty=
le=3D"font-family:arial,sans-serif;font-size:13px">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Thanks=
 for any help!</div></div>
</blockquote></div><br></div>

--e89a8f646745199bd104ebe3521d--
