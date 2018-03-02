Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B75DE00E43; Thu,  1 Mar 2018 23:41:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC52E00DC6
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 23:41:05 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id f1so9866843iob.0
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 23:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=haqAHoPCM1sX+HWdMVNsxDvLyhQ1g2dAAEi+yPK9DLU=;
	b=NNSZoAUVXioBzncHk3LnGKlaD6p2xngqOycMzQXgyihVop3UeiW8//io6GNO+hS3pX
	YKrk75bDPYraOIcfgofoxOSkXB0slzQDkCiqLhC0fXxeE15Tvr86kNmGOzmt4v0IpIfW
	R40BcbOQKU/9Bg/2ecUVYFxw9zsPJSxeOlwbI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=haqAHoPCM1sX+HWdMVNsxDvLyhQ1g2dAAEi+yPK9DLU=;
	b=UTMz4yzqibNsdl+NYQmrVFKsnozXBFn7ABqwFgt8yLRKAj7cWRQwBv8IVBI09tVCHr
	F9LWjGY1ZPEl5mh3QT06EFHOvme9GRXb7VwMZy3z7rlKaqA1HvV4LmhtFYZKhiiFFc/h
	cPIXYjiUTZlZTGN6EJIOMDe+OgUpBki+Ey4GskZaGbrOzrZBXVrkVDdHWX3ofZfUKF8v
	+6g0+XiawOnBthhRJh9jkj32DjG+AowafB0vYqai44KRWio2gxoETjLezOYi5a/9UahT
	HyLzgQzvSqXWYW08f4Q0i9l0nsZyVNrbjhIsEazFWR0JMdsFjv4E25pljRPIh1LUyfig
	fyVA==
X-Gm-Message-State: APf1xPD/Xkm4O6xPNdVldzg+qBZ/sqUOJeNqpt60f68Bhs99dFvwIEjv
	6niBppM31kg3PtgangPqd7O03ukhqwiCmEgbdCUkEw==
X-Google-Smtp-Source: AG47ELunp1Bo0LYQCVPJT2HGW/OW2TcZe3gQYpOHJPCv3fLCkPmFQg3oPaJrY8AaYXIgpo4n4OlqZab7d2jxgShc3Aw=
X-Received: by 10.107.173.12 with SMTP id w12mr5087437ioe.282.1519976464914;
	Thu, 01 Mar 2018 23:41:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Thu, 1 Mar 2018 23:41:04 -0800 (PST)
In-Reply-To: <c3c07c48-7729-7f75-21cf-d09ce0c4db33@intel.com>
References: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
	<c3c07c48-7729-7f75-21cf-d09ce0c4db33@intel.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 2 Mar 2018 08:41:04 +0100
Message-ID: <CAALXFYyVio5UzkZUVS1xAPnkgfTt-7rTO+0ApEnKD4F2Gd1OSw@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Fri, 02 Mar 2018 07:41:08 -0000
Content-Type: multipart/alternative; boundary="001a114468f64230130566691948"

--001a114468f64230130566691948
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-03-02 0:41 GMT+01:00 Anuj Mittal <anuj.mittal@intel.com>:

> Hi,
>
> On 03/01/2018 07:20 PM, Iv=C3=A1n Castell wrote:
> >
> > Is this the proper way to install the generated image in the hard disk?
> > Maybe I am doing something wrong?
>
> Does the image boot up if you select 'boot'?


I tested selecting 'boot' option and it happens exactly the same: a black
screen appears when booting with default options, and when adding "noapic",
the screen is flooded of "sleep: command not found" messages.



> Do you eventually get options to select storage media after all these 'no=
t
> found' messages if you select 'install'?


After waiting more than 5 minutes, the "sleep: command not found" message
continues flooding the screen.



> Can you share the logs?
>

If I could, I would do it, but I have no way to get those logs out of the
box without a terminal available.



>
> Thanks,
> Anuj
>
>

--001a114468f64230130566691948
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2018-03-02 0:41 GMT+01:00 Anuj Mittal <span dir=3D"ltr">&lt;<a href=3D"mail=
to:anuj.mittal@intel.com" target=3D"_blank">anuj.mittal@intel.com</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<div><div class=3D"h5"><br>
On 03/01/2018 07:20 PM, Iv=C3=A1n Castell wrote:<br>
&gt; =C2=A0 =C2=A0 =C2=A0<br>
&gt; Is this the proper way to install the generated image in the hard disk=
?<br>
&gt; Maybe I am doing something wrong?<br>
<br>
</div></div>Does the image boot up if you select &#39;boot&#39;? </blockquo=
te><div><br></div><div>I tested selecting &#39;boot&#39; option and it happ=
ens exactly the same: a black screen appears when booting with default opti=
ons, and when adding &quot;noapic&quot;, the screen is flooded of &quot;sle=
ep: command not found&quot; messages.</div><div><br></div><div>=C2=A0<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Do you eventually get=C2=A0options to se=
lect storage media after all these &#39;not found&#39; messages if=C2=A0you=
 select &#39;install&#39;? </blockquote><div><br></div><div>After waiting m=
ore than 5 minutes, the &quot;sleep: command not found&quot; message contin=
ues flooding the screen.</div><div><br></div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Can you share the logs?<br></blockquote><div><br></div><d=
iv>If I could, I would do it, but I have no way to get those logs out of th=
e box without a terminal available.</div><div><br></div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
<br>
Thanks,<br>
Anuj<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote></div>
</div></div>

--001a114468f64230130566691948--
