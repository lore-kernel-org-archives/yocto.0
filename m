Return-Path: <flix.yocto@benfm.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74CD7C25B76
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 12:48:56 +0000 (UTC)
Received: from mail.benfm.de (mail.benfm.de [85.215.152.190])
 by mx.groups.io with SMTP id smtpd.web10.8643.1718110133260986910
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jun 2024 05:48:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@benfm.de header.s=2020 header.b=Uh95fgz5;
 spf=pass (domain: benfm.de, ip: 85.215.152.190, mailfrom: flix.yocto@benfm.de)
Content-Type: multipart/alternative;
 boundary="------------Jzlq0414DDmTj55N0pHP8QQF"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benfm.de; s=2020;
	t=1718110131;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K7nSeV6PGUiQBp0A5y3F2dV/6dASbXv+SQ2bwBWoJEE=;
	b=Uh95fgz5n/UV4TYKdHtJcE0zDaYeUkDaTvI2AmtjGEStqqNDSsELAl4RzOpJ1Lb11GJNov
	tto5JSTYzs7p9s8fzJw3vlAZQ6HYLzyA2uHcxzZmT+NMe9jWpEYJzxcPuV16qVVY86Tv0D
	SXp6+SCEgkUi6pEadqS/pirbGW55TRzaBOhuDXV/SE6DgG+DGwLlHBEcLKNSo1zpt4PO14
	V40xSNceOQPGotXcjn5JFRgG6e8KafJ1RJ8wq1FAUmZxRw2N7hYHlIgK95/YqNJO79xZm9
	BC762Gc2R9kaXCYbztINtitmxfCM41MLlrM0hGyYOiQXARiQv17IO822Qn1dLA==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=flix@benfm.de smtp.mailfrom=flix.yocto@benfm.de
Message-ID: <d4ec6433-3d4e-433c-8180-bed95f2888ab@benfm.de>
Date: Tue, 11 Jun 2024 14:48:51 +0200
MIME-Version: 1.0
From: Felix Mellmann <flix.yocto@benfm.de>
Subject: Re: [yocto] generic name for overlayfs-etc device
To: yocto@lists.yoctoproject.org, sancelot@numalliance.com
References: <UHIh.1718089752060710812.NpM9@lists.yoctoproject.org>
Content-Language: en-US
In-Reply-To: <UHIh.1718089752060710812.NpM9@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 12:48:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63319

This is a multi-part message in MIME format.
--------------Jzlq0414DDmTj55N0pHP8QQF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

is udev ready when you access the device? In this case check if you have 
suitable options available below /dev/disk/by-* .

In general I use GPT partition names to distinguish partitions and their 
devices. Those partitions will show up below /dev/disk/by-partlabel

Best regards,

Felix

On 6/11/24 09:09, sancelot wrote:
> overlayfs-etc
>
> Hi, I would like to use overlayfs-etc on my usb device that serves as 
> test and next in the deployed image on hdd image on a /dev/sdx
>
> is there another way to set etc_device as "third partition" instead of 
> /dev/sda3 or /dev/sdb3 to enable easy porting ?
>
> here it is hardcoded , I understand it is ok on a mobile device with 
> nand devices , but not on a PC computer
> OVERLAYFS_ETC_DEVICE = "/dev/mmcblk0p2"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63314):https://lists.yoctoproject.org/g/yocto/message/63314
> Mute This Topic:https://lists.yoctoproject.org/mt/106609162/8090339
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [flix.yocto@benfm.de]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------Jzlq0414DDmTj55N0pHP8QQF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>is udev ready when you access the device? In this case check if
      you have suitable options available below /dev/disk/by-* .</p>
    <p>In general I use GPT partition names to distinguish partitions
      and their devices. Those partitions will show up below
      /dev/disk/by-partlabel</p>
    <p>Best regards,</p>
    <p>Felix<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/11/24 09:09, sancelot wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:UHIh.1718089752060710812.NpM9@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      overlayfs-etc=C2=A0<br>
      <br>
      Hi, I would like to use overlayfs-etc on my usb device that serves
      as test and next in the deployed image on hdd image on a /dev/sdx<b=
r>
      <br>
      is there another way to set etc_device as "third partition"
      instead of /dev/sda3 or /dev/sdb3 to enable easy porting ?<br>
      =C2=A0<br>
      here it is hardcoded , I understand it is ok on a mobile device
      with nand devices , but not on a PC computer<br>
      <pre
style=3D"box-sizing: border-box; line-height: 1.4; font-family: SFMono-Re=
gular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier=
, monospace; font-size: 12px; white-space: pre; margin: 0px; padding: 12p=
x; display: block; overflow: auto; color: #333333; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration-thickness: initial; text-decoration-style: i=
nitial; text-decoration-color: initial;">OVERLAYFS_ETC_DEVICE =3D "/dev/m=
mcblk0p2"</pre>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#63314): <a class=3D"moz-txt-link-freetext"
      href=3D"https://lists.yoctoproject.org/g/yocto/message/63314">https=
://lists.yoctoproject.org/g/yocto/message/63314</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext"
      href=3D"https://lists.yoctoproject.org/mt/106609162/8090339">https:=
//lists.yoctoproject.org/mt/106609162/8090339</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
      href=3D"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@list=
s.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext"
      href=3D"https://lists.yoctoproject.org/g/yocto/unsub">https://lists=
.yoctoproject.org/g/yocto/unsub</a> [<a
      class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
      href=3D"mailto:flix.yocto@benfm.de">flix.yocto@benfm.de</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
  </body>
</html>

--------------Jzlq0414DDmTj55N0pHP8QQF--

