Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3FA3E014DB
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 09:45:26 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id hf12so668539vcb.5
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 09:45:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=KEwD1tERdIc0hgJRlniEr1rm0Nx7SS1lAPU9+Vf12tQ=;
	b=UBMnApbtgUm3PGCyRtzXsoNbnsPItA9Arlnc63QXiBaSPEfZiwShBDjSzOISMzptuX
	fZTlp5hUlrGOt5WPPbxUJhPtkZ0rf2FuMahGMZero2JWS/1fUy/Oh9ilQLUGN1u++86H
	5MRG9wdNmYRgQrDsiKw4zMYQ9EQKpB/90dcw4KF8NLTzF5Ae2Bo7mau98j1mnxZ9FsVI
	vrJs0Yd+vMYjr3gFUE4Dcw9eMR7r685FaRWcTmQW6ddcnwcUrh8P9xSC1Y+BWbeLr3ca
	XVlIUDvz2ZZmmMQuEBPvGZU1QlSmoYZaZh1RTWxyrYoRK2EHqD0vvOsvla1CnNJ2l8nV
	jGFA==
X-Received: by 10.58.50.7 with SMTP id y7mr2473878ven.24.1367513125981; Thu,
	02 May 2013 09:45:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Thu, 2 May 2013 09:45:05 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <518292E5.9030101@mlbassoc.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
	<518292E5.9030101@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 2 May 2013 18:45:05 +0200
Message-ID: <CAK18fxH+vfma5BuDfcLB7AdoJX+GjppYs83NSDC4=zh3O_OY4w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQn3+CihW+wmhrDG/o82+tQ0NknVtB4awcLoUfx8CqqxHotNzuRUm7MO+FShFrfyWVNUqTA1
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 16:45:27 -0000
Content-Type: multipart/alternative; boundary=089e0112c63a19d6f204dbbef64e

--089e0112c63a19d6f204dbbef64e
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 6:23 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-05-02 09:52, Paul Barker wrote:
>
>> On 2 May 2013 16:12, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>>> - a separate tool (which will probably need to be run as root) is used
>>> to actually format/create the SD device (using, say, sfdisk for
>>> automation) this way the last partition can be specified as "use the
>>> rest of the disk"
>>> - this tool unpacks the requested/required {tar|rpm|deb|ipk}s onto the
>>> SD device (some of which can come from outside the Yocto build system,
>>> e.g. from using the SDK); this device already has its
>>> formatting/partitions ready
>>> - this tool could also handle setting up serial numbers, IP addresses,
>>> etc
>>> - this tools also sets up the bootloader (if required)
>>>
>>
>>
It always makes sense to create images and deploy it to different file
types. I don't know why you don't think this is a feature the build system
should handle. And the sdcard image is just a particular case of that. Now,
what we are talking about is to make things easier for the user. If he
needs to install alternative rpms (or whatever) he can do it with yum +
repos (even custom from deploy dir), he can use custom images /
packagegroups. IMAGE_INSTALL_append etc. There are so many ways to do it so
after all the user has the possibility to custom things around.

Now, the sdcard is generated or not ... again that is optional. You can
have a tar + kernel + boot things and use a custom script to do whatever -
directly on sd or so. Exactly what you said. But for a general user that
would be additional work / time. And btw the sdcard image is as little as
the actual files are (plus some default free space) and you can have more
free space with EXTRA_IMAGE_FREE_SPACE (?! need to check if that it correct
but anyway there is something similar).

So that script was just a helper to make things easier for the user.

On the other hand i'm pretty sure nobody uses it. Probably because is
outdated and seems to come from other project - which is true :). So if we
decide to keep it we need to refactor it. And raspi-config would be my
choice.




>  Sounds great though it may take a long time to copy files to an SD
>> card (I noticed a similar opinion at
>> http://www.raspbian.org/**RaspbianInstaller<http://www.raspbian.org/RaspbianInstaller>).
>> May be quicker to generate
>> an image file with the correct size first then dd that to the card.
>>
>
> The problem with this approach is that the generated image will typically
> be many gigabytes in size (typical SD cards are 4GB on up).  The time to
> copy such an image to the physical card can be very large indeed.
>

Correct.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e0112c63a19d6f204dbbef64e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, May 2, 2013 at 6:23 PM, Gary Thomas <span dir=3D"l=
tr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbasso=
c.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gma=
il_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 2013-05-02 09:52, Paul Barker wrote:<=
br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
On 2 May 2013 16:12, Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.co=
m" target=3D"_blank">twoerner@gmail.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
- a separate tool (which will probably need to be run as root) is used<br>
to actually format/create the SD device (using, say, sfdisk for<br>
automation) this way the last partition can be specified as &quot;use the<b=
r>
rest of the disk&quot;<br>
- this tool unpacks the requested/required {tar|rpm|deb|ipk}s onto the<br>
SD device (some of which can come from outside the Yocto build system,<br>
e.g. from using the SDK); this device already has its<br>
formatting/partitions ready<br>
- this tool could also handle setting up serial numbers, IP addresses, etc<=
br>
- this tools also sets up the bootloader (if required)<br>
</blockquote>
<br></blockquote></div></blockquote><div><br></div><div style>It always mak=
es sense to create images and deploy it to different file types. I don&#39;=
t know why you don&#39;t think this is a feature the build system should ha=
ndle. And the sdcard image is just a particular case of that. Now, what we =
are talking about is to make things easier for the user. If he needs to ins=
tall alternative rpms (or whatever) he can do it with yum + repos (even cus=
tom from deploy dir), he can use custom images / packagegroups. IMAGE_INSTA=
LL_append etc. There are so many ways to do it so after all the user has th=
e=A0possibility=A0to custom=A0things=A0around.=A0</div>

<div style><br></div><div style>Now, the sdcard is generated or not ... aga=
in that is optional. You can have a tar + kernel + boot things and use a cu=
stom script to do whatever - directly on sd or so. Exactly what you said. B=
ut for a general user that would be additional work / time. And btw the sdc=
ard image is as little as the actual files are (plus some default free spac=
e) and you can have more free space with EXTRA_IMAGE_FREE_SPACE (?! need to=
 check if that it correct but anyway there is something similar).=A0</div>

<div style><br></div><div style>So that script was just a helper to make th=
ings easier for the user.</div><div style><br></div><div style>On the other=
 hand i&#39;m pretty sure nobody uses it. Probably because is outdated and =
seems to come from other project - which is true :). So if we decide to kee=
p it we need to refactor it. And=A0raspi-config would be my choice.</div>

<div style><br></div><div><br></div><div>=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div cla=
ss=3D"im">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Sounds great though it may take a long time to copy files to an SD<br>
card (I noticed a similar opinion at<br>
<a href=3D"http://www.raspbian.org/RaspbianInstaller" target=3D"_blank">htt=
p://www.raspbian.org/<u></u>RaspbianInstaller</a>). May be quicker to gener=
ate<br>
an image file with the correct size first then dd that to the card.<br>
</blockquote>
<br></div>
The problem with this approach is that the generated image will typically<b=
r>
be many gigabytes in size (typical SD cards are 4GB on up). =A0The time to<=
br>
copy such an image to the physical card can be very large indeed.<span clas=
s=3D""><font color=3D"#888888"><br></font></span></blockquote></div><br cle=
ar=3D"all"><div style>Correct.</div><div><br></div>-- <br><div dir=3D"ltr">=
<div style=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--089e0112c63a19d6f204dbbef64e--
