Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1485E00949; Sat, 17 Jan 2015 16:24:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E36E0076F
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 16:24:25 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id y19so26172444wgg.3
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 16:24:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AKmMkYCzUfYytALvD34A4FSOjbr7ub69cJCb5t0RpgA=;
	b=FGk94TAf2rCIv1wbDKK+y6ytNuV0Sn7SsGnXbFfN2p1D1C5yQxAOm5cuTI8XjwA37y
	OLLTGFQCmkSsn3a8jamlOTTlkx0kUuWUGCfpSpRrUx4wIa3cwMv7VekLinOi2bIu4O3b
	2lG9dg1S7OOh+3qvcrNxt7z5zy7+ersoC64hG9YQJKm3rpWR8F0JU9XHp/GpA65v6R6r
	fRLmwvAVd1bXzO5+6PqQkzL/o4hvH4PZPbGDgxYhSEleB5X6lcqq3DofJ43dTgUhbvWw
	xm8gZNbMeOHCaiitYuJ6Ez0fGCOSQ0eRGx5/cDuPxB35z5GWU9NiWHTpdWS8h2YN+6wq
	bGcw==
X-Gm-Message-State: ALoCoQlQEUFUXPAC6TDOkkj/61ItAbnZFlHdDcJGsaGyh17FRLJrA1b7B10tYBaG1hhYaGTlQG4k
X-Received: by 10.180.95.4 with SMTP id dg4mr20035144wib.61.1421540663960;
	Sat, 17 Jan 2015 16:24:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sat, 17 Jan 2015 16:24:03 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <54BAABF4.8000300@jenslucius.de>
References: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>
	<54BAABF4.8000300@jenslucius.de>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 18 Jan 2015 01:24:03 +0100
Message-ID: <CAK18fxEN7pVqNTTrbvybTdcOUhvRknxMwj1ge0R5wWnxJkQv3A@mail.gmail.com>
To: Jens Lucius <incnews@jenslucius.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: armhf support for meta-raspberrypi
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
X-List-Received-Date: Sun, 18 Jan 2015 00:24:35 -0000
Content-Type: multipart/alternative; boundary=f46d0444028e4f3c82050ce23a5c

--f46d0444028e4f3c82050ce23a5c
Content-Type: text/plain; charset=UTF-8

Let's keep this discussion in one thread but thanks Jens for this extensive
explanation. Indeed, DEFAILTTUNE is the way to switch to hf.

On Sat, Jan 17, 2015 at 7:37 PM, Jens Lucius <incnews@jenslucius.de> wrote:

>
> Am 17.01.2015 um 16:55 schrieb Andrea Benini:
>
>>
>> Is there someone using armhf on it ?
>>
>>
> Hello,
>
> This option can be set by using the variable "DEFAULTTUNE", which is
> normally set within the machine configuration.
>
> In case of the raspberrypi layer this is located in ./conf/machine.
>
> The DEFAULTTUNE is set in the subdirectory "include" in the file
> tune-arm1176jzf-s.inc and is set to "armv6" by default. There is a
> discussion going on at the moment if this should be set to "armv6hf" by
> default, maybe you could read the mail archive of the last few days.
>
> There are also special tune options available for the raspberrypi in this
> file which fits the processor architecture. I am using "arm1176jzfshf" so
> far without any problems but I did not do any speed tests.
>
> Regards,
>
> Jens
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Andrei Gherzan*

--f46d0444028e4f3c82050ce23a5c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Let&#39;s keep this discussion in one thread but thanks Je=
ns for this extensive explanation. Indeed, DEFAILTTUNE is the way to switch=
 to hf.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On S=
at, Jan 17, 2015 at 7:37 PM, Jens Lucius <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:incnews@jenslucius.de" target=3D"_blank">incnews@jenslucius.de</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Am 17.01.2015 um 16:55 schrieb Andrea Benini:<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Is there someone using armhf on it ?<br>
<br>
</blockquote>
<br></span>
Hello,<br>
<br>
This option can be set by using the variable &quot;DEFAULTTUNE&quot;, which=
 is normally set within the machine configuration.<br>
<br>
In case of the raspberrypi layer this is located in ./conf/machine.<br>
<br>
The DEFAULTTUNE is set in the subdirectory &quot;include&quot; in the file =
tune-arm1176jzf-s.inc and is set to &quot;armv6&quot; by default. There is =
a discussion going on at the moment if this should be set to &quot;armv6hf&=
quot; by default, maybe you could read the mail archive of the last few day=
s.<br>
<br>
There are also special tune options available for the raspberrypi in this f=
ile which fits the processor architecture. I am using &quot;arm1176jzfshf&q=
uot; so far without any problems but I did not do any speed tests.<br>
<br>
Regards,<br>
<br>
Jens<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:=
center"></div><div style=3D"text-align:center"><div align=3D"left"><b style=
=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center=
">Andrei Gherzan</b><br></div></div></div></div>
</div>

--f46d0444028e4f3c82050ce23a5c--
