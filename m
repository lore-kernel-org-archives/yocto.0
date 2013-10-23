Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFBE6E016E9
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 09:09:07 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id l10so505099eei.23
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 09:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NMl35LTi+Y65Q/gqWLk6qEsOK+9YNiWfm0T2cE55BAg=;
	b=QIKcR6KjSKo/+ypCJp6Et5DIqeqqd2epmOKe9fuRovQmvKlRrtSgUJnVSrERSzAaDB
	Z67TOePSJjMw1Gs2nJYySrZ2sXlBJndns5Qeq+8/4/ap8+q+YikCeYHKn7+ZQWDq87GS
	XwjmyY28T3bEARa3AMgvAHv4ZUqSDrE4bNQOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=NMl35LTi+Y65Q/gqWLk6qEsOK+9YNiWfm0T2cE55BAg=;
	b=HlkWao8o0YntJwzSrtVWPqZXZUEeTfY7VjCHuATWlsfkfrP5FWqu4IzYUhtNqQRuKX
	IF3D653f/jYyvV7Qr1UwsoO/7lBPUgLUeSmLrLir6H7P4fbSVbLIaeUB4MqhtaWBi5t4
	09HuZMEYLZEC3Mu/qj09/szqZxfW83vt7GGVCnnGDRohRm5/D1MTPE1lzpqpFpsJLV+f
	rMgIu3/KMUAauSvB/GzuBe7C8QqqUMPncsuWW9vrVKSlCIrMzyje+AEDUg4MKinencia
	8fp1TWjrMbzKwOFgIrdQDNdxXFohkZcKW/wRaucqccLo35gln7TOVwacgTjkVbl6EmgJ
	Fk3g==
X-Gm-Message-State: ALoCoQm3lAttbdQDP7q8Y8I7FY9SgenZAQtcR6hntufco1wpqrdfNSmphZlPDp5pjO87fYjV8++H
MIME-Version: 1.0
X-Received: by 10.15.100.198 with SMTP id bn46mr2548093eeb.11.1382544545699;
	Wed, 23 Oct 2013 09:09:05 -0700 (PDT)
Received: by 10.223.147.133 with HTTP; Wed, 23 Oct 2013 09:09:05 -0700 (PDT)
In-Reply-To: <CANwz6nyNupYz25HvywgLfqMEU0dM8d3EvWjzZYa5uMqKU0YMCA@mail.gmail.com>
References: <CANwz6nznDfo=40RJ4aZh6BESHbYT3d+CcoTpB+wyaU5qXZ57fA@mail.gmail.com>
	<CA+gsK-oYDGkcCiPxKUP3rVbD2qGRr_8EUNqGO7JNKmZJfU9WEw@mail.gmail.com>
	<CANwz6nyNupYz25HvywgLfqMEU0dM8d3EvWjzZYa5uMqKU0YMCA@mail.gmail.com>
Date: Wed, 23 Oct 2013 17:09:05 +0100
Message-ID: <CA+gsK-p129mvK8414ewJ0P4cYnreVJZsuXNNDp4X6srsP2Otig@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uimage instead of zImage
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
X-List-Received-Date: Wed, 23 Oct 2013 16:09:08 -0000
Content-Type: multipart/alternative; boundary=089e0163549e88661304e96abc49

--089e0163549e88661304e96abc49
Content-Type: text/plain; charset=ISO-8859-1

Hi Edward,


This is what I have in the uEnv.txt file
>
>
> bootcmd=""
> bootfile="zImage"
> ethact=""
> loadaddr=""
> nandboot=""
> nandroot=""
> nandrootfstype=""
> nandargs=""
> loaduimage=""
> loaduimagefat=""
> nandboot=""
> mpurate="auto"
> bootcmd="mmc rescan ; fatload mmc 0:1 0x80300000 zImage; bootz 0x80300000"
>
> Why are you setting all the variables to "". You really only have to
overwrite the ones you need to change.



> dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
> optargs="consoleblank=0"
> console="ttyO2 console=tty0,115200n8"
> vram=16M
> saveenv
> printenv
>
> It appears that some of variable get written with other data ie vram I am
> setting to 16M but sometimes I see it set to 12M see at the end
> I have tried setting the variables manually and executing saveenv
> All the ones I don't want set setenv name and then saveenv
> still see the same values
> when I was using uImage and no
> this is what I used for my uEnv.txt
>
> mpurate=auto
>
> Are you still trying to solve the problem with the rootfs or is that
another problem?



> mmcroot=/dev/mmcblk0p2 rw
> mmcrootfstype=ext3 rootwait
>

According to these settings your kernel is passed information to look for
an ext3 root file system on the second partition of the an SD card on
/dev/mmcblk0. Are you booting from an SD card? However, in your first boot
it seems to look for an ubifs.

I am not sure what you are looking for. Maybe you can attach an new boot
log.

:rjs

--089e0163549e88661304e96abc49
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Edward,<br><div class=3D"gmail_extra"><br><br><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>This=
 is what I have in the uEnv.txt file <br>

</div><br><div><br>bootcmd=3D&quot;&quot;<br>bootfile=3D&quot;zImage&quot;<=
br>ethact=3D&quot;&quot;<br>loadaddr=3D&quot;&quot;<br>nandboot=3D&quot;&qu=
ot;<br>nandroot=3D&quot;&quot;<br>nandrootfstype=3D&quot;&quot;<br>nandargs=
=3D&quot;&quot;<br>

loaduimage=3D&quot;&quot;<br>loaduimagefat=3D&quot;&quot;<br>nandboot=3D&qu=
ot;&quot;<br>mpurate=3D&quot;auto&quot;<br>bootcmd=3D&quot;mmc rescan ; fat=
load mmc 0:1 0x80300000 zImage; bootz 0x80300000&quot;<div class=3D"im"><br=
></div>
</div></div></blockquote><div>Why are you setting all the variables to &quo=
t;&quot;. You really only have to overwrite the ones you need to change.</d=
iv><div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div><div class=3D"im">dvimode=3D&quot;hd720 omapfb.vram=
=3D0:8M,1:4M,2:4M&quot;<br></div><div class=3D"im">
optargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;ttyO2 console=3Dt=
ty0,115200n8&quot;<br></div>vram=3D16M<br>saveenv<br>printenv<br><br>It app=
ears that some of variable get written with other data ie vram I am setting=
 to 16M but sometimes I see it set to 12M see at the end<br>

I have tried setting the variables manually and executing saveenv<br>All th=
e ones I don&#39;t want set setenv name and then saveenv<br>still see the s=
ame values<br>when I was using uImage and no <br>this is what I used for my=
 uEnv.txt<div class=3D"im">
<br>
mpurate=3Dauto<br><br></div></div></div></blockquote><div>Are you still try=
ing to solve the problem with the rootfs or is that another problem?</div><=
div>=A0</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div>mmcroot=3D/dev/mmcblk0p2 rw<br>mmcrootfstype=3Dext3 r=
ootwait<br></div></div></blockquote><div><br></div><div>According to these =
settings your kernel is passed information to look for an ext3 root file sy=
stem on the second partition of the an SD card on /dev/mmcblk0. Are you boo=
ting from an SD card? However, in your first boot it seems to look for an u=
bifs.</div>
<div><br></div><div>I am not sure what you are looking for. Maybe you can a=
ttach an new boot log.</div><div><br></div><div>:rjs=A0</div></div>
</div></div>

--089e0163549e88661304e96abc49--
