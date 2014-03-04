Return-Path: <katutxakurra@gmail.com>
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8131AE009A0
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 06:38:43 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id h18so1574434igc.2
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 06:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=diMVtP1fQh0TMZYZOY4nTfh2Af/8n48KAT7Dx2U8bF0=;
	b=AbJyO2pQkU0G/Nh5GW5rppLCvcpl0OhPeMhTzj75J1JmZro0sbI1LwPbCiJDaG58pt
	js3xoDi7zAZLwyspCdQiIY2uCWDdWCMF7Z53oA/STH0fTatcJY+UCWzXSoUCeIzHdtrb
	iW9ir2jX4X1qACHZpg2EwAko5mlFNCjciD574EILZG629MUMKaHjkHWsGa3Lu/Of0OgH
	jel3STL9bMvTzdWOD2oZg7SoYI/OVj3HMEPqW39kpmUMV8G0yf5Z+9UA1k8/M8kk0VT8
	swZsn5VvyNrsQ5ZScwvFBLeqRASJYHCY/3vqehedSUnnWx9WcJh6aQZPiWzceA+JVTs/
	uWfA==
MIME-Version: 1.0
X-Received: by 10.43.49.132 with SMTP id va4mr484993icb.79.1393943922733; Tue,
	04 Mar 2014 06:38:42 -0800 (PST)
Received: by 10.50.44.97 with HTTP; Tue, 4 Mar 2014 06:38:42 -0800 (PST)
In-Reply-To: <CAM1ZcoVHPgerCQnFsP5EpAu=71s-WMHYfrwM3Q5eBFngKPq8XA@mail.gmail.com>
References: <CAM1ZcoVHPgerCQnFsP5EpAu=71s-WMHYfrwM3Q5eBFngKPq8XA@mail.gmail.com>
Date: Tue, 4 Mar 2014 14:38:42 +0000
Message-ID: <CAM1ZcoX8R7CLcrLzXA2B9LqYLkHGPCtqSpsapcBP39-DWKc6tA@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable/disable systemd from image.bb
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
X-List-Received-Date: Tue, 04 Mar 2014 14:38:43 -0000
Content-Type: multipart/alternative; boundary=bcaec5299ff959f76404f3c8dc24

--bcaec5299ff959f76404f3c8dc24
Content-Type: text/plain; charset=ISO-8859-1

Sorry, I sent it uncompleted by mistake.

I've also tried

ROOTFS_POSTPROCESS_COMMAND =+ "\
    rm -rf /etc/systemd/system/multi-user.target.wants/recipeA.service; \
"

but it didn't work either. Anyone knows how to do this?

Thanks,
Katu


2014-03-04 14:37 GMT+00:00 Katu Txakur <katutxakurra@gmail.com>:

> Hi,
>
> I'm using Yocto 1.3 and I've created some recipes. All of them have
> systemd services. Some of them start at boot time and others don't. Let's
> say for example:
> recipeA_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "enable"
> recipeB_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "disable"
>
> I want to create two image.bb files. One of them will start A and the
> other one will start B. I've tried adding
>
> imageB.bb
> .....
> SYSTEMD_AUTO_ENABLE_recipeA-systemd = "disable"
> SYSTEMD_AUTO_ENABLE_recipeB-systemd = "enable"
> .....
>
> I've also tried
>
>
>

--bcaec5299ff959f76404f3c8dc24
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Sorry, I sent it uncompleted by mistak=
e.<br><br></div>I&#39;ve also tried<br><br>ROOTFS_POSTPROCESS_COMMAND =3D+ =
&quot;\<br>=A0=A0=A0 rm -rf /etc/systemd/system/multi-user.target.wants/rec=
ipeA.service; \<br>
&quot;<br><br></div>but it didn&#39;t work either. Anyone knows how to do t=
his?<br><br></div>Thanks,<br></div>Katu<br></div><div class=3D"gmail_extra"=
><br><br><div class=3D"gmail_quote">2014-03-04 14:37 GMT+00:00 Katu Txakur =
<span dir=3D"ltr">&lt;<a href=3D"mailto:katutxakurra@gmail.com" target=3D"_=
blank">katutxakurra@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hi,<br>=
<br></div>I&#39;m using Yocto 1.3 and I&#39;ve created some recipes. All of=
 them have systemd services. Some of them start at boot time and others don=
&#39;t. Let&#39;s say for example:<br>

</div><a href=3D"http://recipeA_1.0.bb" target=3D"_blank">recipeA_1.0.bb</a=
> &gt; SYSTEMD_AUTO_ENABLE_${PN}-systemd =3D &quot;enable&quot;<br><a href=
=3D"http://recipeB_1.0.bb" target=3D"_blank">recipeB_1.0.bb</a> &gt; SYSTEM=
D_AUTO_ENABLE_${PN}-systemd =3D &quot;disable&quot;<br>

<br></div>I want to create two <a href=3D"http://image.bb" target=3D"_blank=
">image.bb</a> files. One of them will start A and the other one will start=
 B. I&#39;ve tried adding<br><br>imageB.bb<br>.....<br>SYSTEMD_AUTO_ENABLE_=
recipeA-systemd =3D &quot;disable&quot;<br>

SYSTEMD_AUTO_ENABLE_recipeB-systemd =3D &quot;enable&quot;<br>.....<br><br>=
</div>I&#39;ve also tried <br><br><div><br></div></div>
</blockquote></div><br></div>

--bcaec5299ff959f76404f3c8dc24--
