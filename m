Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44C96E00EB5; Wed, 27 Jul 2016 11:50:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A48E00EAC
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 11:49:40 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id w127so15857886vkh.2
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 11:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=uUqdYO1RxUXQyuX4px2BKJSyf7apt1EbWxl+TiIve68=;
	b=Gag3/9KdyMNNl/H/dgDEUsLCMdIqNZd/SWPkZzTn8Qzy2+zFe3lwG34q7l+L38GOqh
	qCl5xpH1t4XN15+XjeebO2HeupPpgbcm25JZPLr1YZlFrOHzErmQhav2VX+SK7JviMwC
	e9Q12XaONwdxSj5e7o9VGw3CF/yrwufY4RAl0j2Ppo8UAtZYUOutKI6Vz+rM2kXYejKM
	TlX5ygnS2WAfl9a5bEocEtdt8EuUu+sWUHMlSECK6RsmG5NauJWXxelkkoliyQ4yrxRv
	9v0jkiP/pjpArIpZedmPfawMeAETlGgMIKoR8pYRIVLUtq+wwoqopBcPCOYMfvpWtEQ+
	hPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=uUqdYO1RxUXQyuX4px2BKJSyf7apt1EbWxl+TiIve68=;
	b=lQY09CW/vtJCmpd41j1x+U40efELZZFrtzbnZe97fvLAnCB37bnoRgspVTFTPYtrT0
	vtEX0yVeOIXaxiMZF7c1H1GJUm5LZfC5YPcTUjc1CKXzjj3bYucrBZoG2CjDC52EES3K
	bzCQJlNrwVgG/ArNAlG7fJp3LpKIUtBiAAGOChS2X025UvhM3wJVq4yUobdYYnx8i9MH
	qEYBaWyxCOculCho0ApDTguUstSiM88ZMltk1YLRn3xrGwKiCkGiDHDPnUW8FTVh8U90
	ubB/6RA/SXg1TSXIA/mmFKv3apCLrIotL9G9MPu4gb1mC6BTy9+U1pJ9LIj3d74tgw5N
	LbSw==
X-Gm-Message-State: AEkoouvbrOcmtPE1G0GDRc8Bji1DtA+0h1tEN/dkOLkDUNrWnhw0igx1gu9X5UNril4QwuWfKS+INz7T/40Qsw==
X-Received: by 10.31.73.67 with SMTP id w64mr13779157vka.156.1469645379591;
	Wed, 27 Jul 2016 11:49:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Wed, 27 Jul 2016 11:49:20 -0700 (PDT)
In-Reply-To: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
References: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Wed, 27 Jul 2016 11:49:20 -0700
Message-ID: <CAJ58UNnqwa6VDch0BDihS7uYguTMTZmnwkgUabJG-i_ff--L5w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Compilation error while adding perf tool to the rootfs
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
X-List-Received-Date: Wed, 27 Jul 2016 18:50:25 -0000
Content-Type: multipart/alternative; boundary=001a11481362cbe3220538a27af3

--001a11481362cbe3220538a27af3
Content-Type: text/plain; charset=UTF-8

Hello All

We have a requirement here to set up the perf tool through our Yocto frame
work.
As Perf source comes with linux kernel under tools/perf ,so I added this
perf tool to be installed
as part of my rootfs image.

But when I build the image I am getting error related to headerfile missing.

*fatal error: asm/preempt.h: No such file or directory*

I checked for this header file I dont have this header file in my kernel
arch/arm64/include/asm/
Please can you let me know how to fix this issue. Thanks.

Cheers,
Vijay


On Tue, Jul 26, 2016 at 7:17 PM, Vijayakumar Badiger <
vijayakumarmb@gmail.com> wrote:

> Hello All,
>
> I am trying to integrate perf tool to my custom rootfs image, while
> bitbaking the perf I am getting below error.
>
>  *fatal error: asm/preempt.h: No such file or directory*
>
>
> Can you pls let me know how to fix this issue. Thanks.
>
> Cheers,
> Vijay
>
>

--001a11481362cbe3220538a27af3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All</div><div><br></div><div>We have a requirem=
ent here to set up the perf tool through our Yocto frame work.</div><div>As=
 Perf source comes with linux kernel under tools/perf ,so I added this perf=
 tool to be installed</div><div>as part of my rootfs image.</div><div><br><=
/div><div>But when I build the image I am getting error related to headerfi=
le missing.</div><div><b><br></b></div><div><b>fatal error: asm/preempt.h: =
No such file or directory</b></div><div><br></div><div>I checked for this h=
eader file I dont have this header file in my kernel arch/arm64/include/asm=
/</div><div>Please can you let me know how to fix this issue. Thanks.</div>=
<div><br></div><div>Cheers,</div><div>Vijay</div><div><br></div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jul 26, 2016 a=
t 7:17 PM, Vijayakumar Badiger <span dir=3D"ltr">&lt;<a href=3D"mailto:vija=
yakumarmb@gmail.com" target=3D"_blank">vijayakumarmb@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello All,<div=
><br></div><div>I am trying to integrate perf tool to my custom rootfs imag=
e, while bitbaking the perf I am getting below error.</div><div><br></div><=
div><div>=C2=A0<b>fatal error: asm/preempt.h: No such file or directory</b>=
</div></div><div><br></div><div><br></div><div>Can you pls let me know how =
to fix this issue. Thanks.</div><div><br></div><div>Cheers,</div><div>Vijay=
</div><div><br></div></div>
</blockquote></div><br></div>

--001a11481362cbe3220538a27af3--
