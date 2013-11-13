Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74043E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:38:12 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id k14so584722wgh.23
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:38:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bUG9XSpKJWoHZpnFvUD9U4vNT49+Q9tMcq2+DToszME=;
	b=Pxzt+sSg/rANt0crQXPMf2YtINUmV9xPs9lEToOuXbNobX2KAXkKW5AAM5Lvc4c9yr
	0ymDZVESGiSZxb3QmCkDbaDTDBBtbIXVLrP0z4/o+7Wolt0iJAYi7nvluXSAJH6urHlq
	O/3vgFVzrRs4NAkTLWuv/1cvGMQzoU9ottrrry7Swtz5gD+hvhIh7LwB3wTrgZoXQl8W
	IfzZCzfH/qJoGRmG1RsXD7e6ADysdBsgTI9zVQvpiHBkww4K2Dx1AMSfVc5VbjcdpPF2
	nRi0Ak+7++srUrvT7LWAMpIP7frzq53DHKGgpCr/6GmJsj1ZQEsEHDabrQXUnbKDj1rG
	k/HA==
X-Gm-Message-State: ALoCoQm5121Jz4aLau7qeKUFTbe4Sj1Viehrxuz99hMwcAbz3atuXiLJZQyZ00RA1iRkKh6eqc+Q
X-Received: by 10.180.188.49 with SMTP id fx17mr21066856wic.33.1384357091382; 
	Wed, 13 Nov 2013 07:38:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 07:37:51 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384274577-16770-1-git-send-email-andrei@gherzan.ro>
References: <1384274577-16770-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 17:37:51 +0200
Message-ID: <CAK18fxH7URWXxM-m8RwZm+9HqzLo5AF8Ffq08ab+oq_pD5yZ3w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Dan McGregor <dan.mcgregor@usask.ca>
Subject: Re: [meta-raspberrypi][PATCH 1/1] raspberrypi.conf: is not a usb gadget
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
X-List-Received-Date: Wed, 13 Nov 2013 15:38:13 -0000
Content-Type: multipart/alternative; boundary=001a11c25bdaac9ece04eb10c095

--001a11c25bdaac9ece04eb10c095
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 12, 2013 at 6:42 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> From: Dan McGregor <dan.mcgregor@usask.ca>
>
> Change-Id: I93ed1832905e4fdfc5f5d387c37933b60a50f4c5
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
> index e25b59a..1e619a7 100644
> --- a/conf/machine/raspberrypi.conf
> +++ b/conf/machine/raspberrypi.conf
> @@ -24,7 +24,7 @@ XSERVER = " \
>
>  KERNEL_IMAGETYPE = "Image"
>
> -MACHINE_FEATURES = "kernel26 apm usbgadget usbhost keyboard vfat ext2
> screen touchscreen alsa bluetooth wifi sdio"
> +MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen
> touchscreen alsa bluetooth wifi sdio"
>
>  #RaspberryPi has no hardware clock
>  MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
> --
> 1.8.1.4
>
>
Merged.

ag

--001a11c25bdaac9ece04eb10c095
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Tue, Nov 12, 2013 at 6:42 PM=
, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro"=
 target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><div class=3D=
"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">From: Dan McGregor &lt;<a href=3D"mailto:dan.mcgregor@usas=
k.ca">dan.mcgregor@usask.ca</a>&gt;<br>


<br>
Change-Id: I93ed1832905e4fdfc5f5d387c37933b60a50f4c5<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0conf/machine/raspberrypi.conf | 2 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf<=
br>
index e25b59a..1e619a7 100644<br>
--- a/conf/machine/raspberrypi.conf<br>
+++ b/conf/machine/raspberrypi.conf<br>
@@ -24,7 +24,7 @@ XSERVER =3D &quot; \<br>
<br>
=A0KERNEL_IMAGETYPE =3D &quot;Image&quot;<br>
<br>
-MACHINE_FEATURES =3D &quot;kernel26 apm usbgadget usbhost keyboard vfat ex=
t2 screen touchscreen alsa bluetooth wifi sdio&quot;<br>
+MACHINE_FEATURES =3D &quot;kernel26 apm usbhost keyboard vfat ext2 screen =
touchscreen alsa bluetooth wifi sdio&quot;<br>
<br>
=A0#RaspberryPi has no hardware clock<br>
=A0MACHINE_FEATURES_BACKFILL_CONSIDERED =3D &quot;rtc&quot;<br>
<span class=3D""><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br>Merged.<br>
</div><div><br></div><div>ag</div></div>

--001a11c25bdaac9ece04eb10c095--
