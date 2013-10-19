Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F27E012F0
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2013 12:09:07 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id e53so2744280eek.41
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2013 12:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=c3pDlgrl6XtsrppGf1o807+JbJZQxlTk0k02yZdAlz0=;
	b=ARdyMK5/t6dDqpPRPAbp/WqYpz4p1MoiXdTzifiZX3Ki1/waouiNatPWPe3dMCx6ak
	iSnB0kTlSLeM01qjSySKJvQ2a01FgaKzGdpilMrMsYnKi0UsXZvw9vgPq1zOBsKK3vhC
	GCnkgFwZcet3aNRT1MHEzaWyrAif6RroOhHCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=c3pDlgrl6XtsrppGf1o807+JbJZQxlTk0k02yZdAlz0=;
	b=KiUa1Ty40m3qBsG2n5QERsT9HF4CPljKTgj75OIGkuM9Efd3eNZH08EUhr4vuew22H
	XB4RbX6QOCP6pg0F8sk7dwQwFINGT4b0K2nv2Jv6TdMcoTEXxCah73U2hC4yoFVykEtU
	GFlxezhJuzzb51OPnPD43NI4uGwAGOmkClXuN9z3bUq5mKR8BtFrfOOZEM5LV+bFpEBE
	N0yLhFppxy2yNB7hkhae4VsPhF+g7tHselBNyjPp3FC6ZXUS+ZzmcvRh4Ip0feNGMH49
	jsaVUUCiDvW1eO3GpadkU3+s6UFMmGBJX+9WwiSult/deuzsxWGLgGCX+SundG3Sz8GN
	CSLg==
X-Gm-Message-State: ALoCoQmS0YP9rGMLpdpMjVaUIfGDueSHJFHE8a6uYYFhA9FT5KVuliBz/GE4GXo/uiOJ0IAhypO/
MIME-Version: 1.0
X-Received: by 10.15.32.7 with SMTP id z7mr944038eeu.78.1382209747004; Sat, 19
	Oct 2013 12:09:07 -0700 (PDT)
Received: by 10.223.147.133 with HTTP; Sat, 19 Oct 2013 12:09:06 -0700 (PDT)
In-Reply-To: <CANwz6nznDfo=40RJ4aZh6BESHbYT3d+CcoTpB+wyaU5qXZ57fA@mail.gmail.com>
References: <CANwz6nznDfo=40RJ4aZh6BESHbYT3d+CcoTpB+wyaU5qXZ57fA@mail.gmail.com>
Date: Sat, 19 Oct 2013 12:09:06 -0700
Message-ID: <CA+gsK-oYDGkcCiPxKUP3rVbD2qGRr_8EUNqGO7JNKmZJfU9WEw@mail.gmail.com>
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
X-List-Received-Date: Sat, 19 Oct 2013 19:09:10 -0000
Content-Type: multipart/alternative; boundary=089e0160d0eaf9c06c04e91cc8c9

--089e0160d0eaf9c06c04e91cc8c9
Content-Type: text/plain; charset=ISO-8859-1

Edward,

Your zImage is booting fine. The kernel starts and then tries to mount the
root file system. But it cannot find it. It's looking for a UBIFS but
cannot find it:


.
> VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error -19
> Please append a correct "root=" boot option; here are the available
> partitions:
> VFS: Unable to mount root fs on unknown-block(0,0)
> User configuration error - no valid root filesystem found
> Kernel panic - not syncing: Invalid configuration from end user prevents
> continu
> ing
>

 You may have had additional error messages before the ones above that you
copied into your e-mail such as:

UBIFS error (pid 1): ubifs_check_node: bad CRC: calculated 0xdfca80ed, read
0x7b7c0f6b
UBIFS error (pid 1): ubifs_check_node: bad node at LEB 0:0
UBIFS error (pid 1): ubifs_read_node: expected node type 6

That would be an indicator that the UBIFS root file system was not created
correctly on your flash device. How did you create it?

Rudi

--089e0160d0eaf9c06c04e91cc8c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Edward,<div><br></div><div>Your zImage is booting fine. Th=
e kernel starts and then tries to mount the root file system. But it cannot=
 find it. It&#39;s looking for a UBIFS but cannot find it:</div><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div>=
<div>
.<br>
VFS: Cannot open root device &quot;ubi0:rootfs&quot; or unknown-block(0,0):=
 error -19<br>Please append a correct &quot;root=3D&quot; boot option; here=
 are the available partitions:<br>VFS: Unable to mount root fs on unknown-b=
lock(0,0)<br>

User configuration error - no valid root filesystem found<br>Kernel panic -=
 not syncing: Invalid configuration from end user prevents continu<br>ing<b=
r></div></div></div></blockquote><div><br></div><div>=A0You may have had ad=
ditional error messages before the ones above that you copied into your e-m=
ail such as:</div>
<div><br></div><div><span style=3D"color:rgb(51,51,51);font-family:Arial;fo=
nt-size:12px;line-height:18px">UBIFS error (pid 1): ubifs_check_node: bad C=
RC: calculated 0xdfca80ed, read 0x7b7c0f6b</span><br style=3D"color:rgb(51,=
51,51);font-family:Arial;font-size:12px;line-height:18px">
<span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-he=
ight:18px">UBIFS error (pid 1): ubifs_check_node: bad node at LEB 0:0</span=
><br style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-hei=
ght:18px">
<span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-he=
ight:18px">UBIFS error (pid 1): ubifs_read_node: expected node type 6</span=
><br style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-hei=
ght:18px">
</div><div><span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:1=
2px;line-height:18px"><br></span></div><div><span style=3D"color:rgb(51,51,=
51);font-family:Arial;font-size:12px;line-height:18px">That would be an ind=
icator that the UBIFS root file system was not created correctly on your fl=
ash device. How did you create it?</span></div>
<div><span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;li=
ne-height:18px"><br></span></div><div><span style=3D"color:rgb(51,51,51);fo=
nt-family:Arial;font-size:12px;line-height:18px">Rudi</span></div></div>
</div></div>

--089e0160d0eaf9c06c04e91cc8c9--
