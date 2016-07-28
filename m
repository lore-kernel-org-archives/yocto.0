Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D57DCE00F89; Thu, 28 Jul 2016 09:54:53 -0700 (PDT)
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
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D655E00CF2
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 09:54:50 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id 15so2792294uai.1
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 09:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nfTFA08v19d3ByGTCBZzvRjb4LH6TqCEnGG3qVec5Q4=;
	b=ThBK8uHsAj90jYY4fHawZiR7oqEOXumdsGfaxmZ+JlnpX4PUYFRqO5n1Yro7OBxO39
	PC5USYK0s2B/mbRcTBW4wM/hqYMF8b0PELi2wGMvpcqdzUnGc8FZ4exQMnFQ9gttqm8F
	+EO+cgp2QkrX+vbO16hufr53agBJ0TQfxw93nMVa+5+7lQagGpWa0ZiYtmxvhAMmWDrF
	SO3QInfPUHVVTlgzZX0tM8TnLMo4jRRpVaWDDB6yDiZPRrKM+rr8ka0FsZjuApi5nfUl
	itWi5u8VYJDTKLXYw98CiaRvuF0ZjoTt+o/69bDBBAYPzIceGvn3a31jPkAoRpPKSqID
	mVaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nfTFA08v19d3ByGTCBZzvRjb4LH6TqCEnGG3qVec5Q4=;
	b=X3kMszI7NqxJ5ADwGjEbxubkGvPCS3cMRhgHzqlK3GbUnx80b450aT6xWvMOsX1Lmm
	HeAQq+jToQYzD/EV5Woss72CGOgOTgeLmlgIPdS71XPIzlkZH9mX+EFVWlMCMckswhw8
	7ttmF/yK6dIhCW759tOn2/zEXAsoSp7S/l8VRslFCIHdvVKbHHdw7Lqu9NCjsM1wG/i9
	PaLNXK9POos7XnMK8qbElnmTr22MX/f2e2NUOWcczcvKTgYP3tiFO7W3xPlTP4iFF+9B
	dmoZ/k5M1rnZTuF2KzRhaluHAX9aXUOoHlO6LKlMrz/YhjH+6Q9JJIWubQOscpYI78U0
	hOZw==
X-Gm-Message-State: AEkoousQVVwenmIXeCi325oodbo0a3IH7pRLk1hW7CiImP4jJ/UZGXDF2vmuy2WiT74x5Ubqp2adBHodOrdZSg==
X-Received: by 10.176.6.137 with SMTP id g9mr16032759uag.91.1469724889524;
	Thu, 28 Jul 2016 09:54:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Thu, 28 Jul 2016 09:54:30 -0700 (PDT)
In-Reply-To: <CAJTo0Lbu71UvxpfT+5i71nZ3unTVMX7BogP9xk3pgq2Qsbc4Ow@mail.gmail.com>
References: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
	<CAJ58UNnqwa6VDch0BDihS7uYguTMTZmnwkgUabJG-i_ff--L5w@mail.gmail.com>
	<CAJ58UNno9BmFXRE82_8oZAVG=P+m9C4eD4M6x9J4ZBm7ZAG=Tw@mail.gmail.com>
	<CAJTo0Lbu71UvxpfT+5i71nZ3unTVMX7BogP9xk3pgq2Qsbc4Ow@mail.gmail.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Thu, 28 Jul 2016 09:54:30 -0700
Message-ID: <CAJ58UNmbNu3RpyPyh3OiEK=zWigVsednEydqegnuXqw7H=LyyA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 28 Jul 2016 16:54:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c048124f531560538b4fdc7

--94eb2c048124f531560538b4fdc7
Content-Type: text/plain; charset=UTF-8

Hello Ross,

I am using my own kernel [3.18] + oe-core's perf recipe to build the perf
utility. Thanks.

Cheers
Vijay


On Thu, Jul 28, 2016 at 2:17 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 27 July 2016 at 22:53, Vijayakumar Badiger <vijayakumarmb@gmail.com>
> wrote:
>
>> We have a requirement here to set up the perf tool through our Yocto
>> frame work.
>> As Perf source comes with linux kernel under tools/perf ,so I added this
>> perf tool to be installed
>> as part of my rootfs image.
>>
>> But when I build the image I am getting error related to headerfile
>> missing.
>>
>> *fatal error: asm/preempt.h: No such file or directory*
>>
>
> Perf builds for me fine using oe-core's perf recipe and meta-intel's
> kernel, so are you using your own recipe for perf or the kernel?
>
> Ross
>

--94eb2c048124f531560538b4fdc7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ross,<div><br></div><div>I am using my own kernel [3=
.18] + oe-core&#39;s perf recipe to build the perf utility. Thanks.</div><d=
iv><br></div><div>Cheers</div><div>Vijay</div><div><br></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 28, 2016 at 2=
:17 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@in=
tel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><=
span class=3D""><br><div class=3D"gmail_quote">On 27 July 2016 at 22:53, Vi=
jayakumar Badiger <span dir=3D"ltr">&lt;<a href=3D"mailto:vijayakumarmb@gma=
il.com" target=3D"_blank">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>We have a requirement here to set up th=
e perf tool through our Yocto frame work.</div><div>As Perf source comes wi=
th linux kernel under tools/perf ,so I added this perf tool to be installed=
</div><div>as part of my rootfs image.</div><div><br></div><div>But when I =
build the image I am getting error related to headerfile missing.</div><spa=
n><div><b><br></b></div><div><b>fatal error: asm/preempt.h: No such file or=
 directory</b></div></span></blockquote></div><br></span>Perf builds for me=
 fine using oe-core&#39;s perf recipe and meta-intel&#39;s kernel, so are y=
ou using your own recipe for perf or the kernel?</div><span class=3D"HOEnZb=
"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--94eb2c048124f531560538b4fdc7--
