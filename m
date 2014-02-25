Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C86E008F2
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:55:38 -0800 (PST)
Received: by mail-we0-f173.google.com with SMTP id x48so648019wes.32
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:55:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=M0LZJhf0At0CY/R0ccWA2/WsunsbptzNzxPGu2RgD3s=;
	b=CgMlbMKa4rIfqTJYUqy5GD+Za5+/4FtE/QN7YBGY7G87YcOPE20yU8k8AqwTaCyo8b
	vRRFissIN6ycHb/GlGykPG6OvSaH/6UNubjAWCXzHLMiacxSt1nJ4Fznm2fF8GBY8ywS
	mlQN5gsRh5InPHQoNvX1PPsZJnPrSFphkApL3U97Tk0tFJ0fcQjN91JXeHfiyIGBfdkl
	XST3toelMf+XZmtf3leByPsGH1la0FbE4gbFy2HaJW/W4MikrHS51L1BMbV3zjMx9Pod
	FIzAfl2RtzD5V//P91LZ0g8KgElEvILd27j7FKAtLsQrLhr9zQSYutGzjNkddbP4i8uP
	92yg==
X-Gm-Message-State: ALoCoQlDYJ8BeHTNXTKUAtZzFJ+MrJKTcWd9xK9uZIlkzeBywWd/QjhLjGCPSdvuKLrVsrh2A3tN
X-Received: by 10.180.149.206 with SMTP id uc14mr4122652wib.10.1393347337174; 
	Tue, 25 Feb 2014 08:55:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 25 Feb 2014 08:55:17 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAJTo0Lb4-cT1ZoLh3pRKCVj=0Pj=S7sja_OcubxzRgS14KjVYw@mail.gmail.com>
References: <1393347061-26621-1-git-send-email-andrei@gherzan.ro>
	<CAJTo0Lb4-cT1ZoLh3pRKCVj=0Pj=S7sja_OcubxzRgS14KjVYw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 25 Feb 2014 18:55:17 +0200
Message-ID: <CAK18fxGUOZC+bf8+H7vm=N5tkdOYWtp8qLd3g4N8efw3gTzaNQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] mesa: Replace ugly fix for gles/egl
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
X-List-Received-Date: Tue, 25 Feb 2014 16:55:38 -0000
Content-Type: multipart/alternative; boundary=001a11c3800814d4ab04f33df5b5

--001a11c3800814d4ab04f33df5b5
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 25, 2014 at 6:54 PM, Burton, Ross <ross.burton@intel.com> wrote:

> That's better! :)
>
>
Thanks again
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c3800814d4ab04f33df5b5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Feb 25, 2014 at 6:54 PM, Burton, Ross <span dir=3D"ltr">&lt=
;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@int=
el.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">That&#39;s better! :)<br>
<br></blockquote><div><br></div><div>Thanks again</div></div>-- <br><div di=
r=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:c=
enter"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;f=
ont-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--001a11c3800814d4ab04f33df5b5--
