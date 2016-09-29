Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D5EFE00D44; Thu, 29 Sep 2016 07:52:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA326E00C72
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 07:52:20 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id j69so86938151itb.0
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 07:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fhWyzh+/jQZbXUicMYDBTueCX7Q/gKxaNNFhPcG5WnI=;
	b=B7i/JnNVe8byKZCscs0TqaQyB7AI6ARA/AUu45dfeB9Yip6oBjWcK7JqgS9ZPfCdMy
	HvB/TcntbYKfLnXDvcKfH7qTDiI2YNqBh1QCsecC1/sB5VAYcW9ogG9RsoL2x7lypoLR
	V5017xtCnFe+egJVdnfM/xtOWdEXozMChZCHdZhS951zxOHw1cUYGZ8W+bj2+SOoHiG2
	7llAt/fzsW8GLJPuPPXpGqFR14OxH6WqhijpuTK3H1xFU8wzblXEgA5tLEyzSHU7KY1u
	19xJn7v8qYhwFGyj7CCzoGtN05YJeNO7HUDDNVXC6WsncWHi3ONGf6XhTqsgVYcZX3LV
	4yrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fhWyzh+/jQZbXUicMYDBTueCX7Q/gKxaNNFhPcG5WnI=;
	b=mzaWuveSVNGewwe7uZPjQCFIsxN//jK+VABPyG58GbVaTo7yHIouprrvSDDjaGVaOW
	1qVGRSHabBVQCbC0zOE+u+WOWdBckbCUq0A2OCGXhPQpn2Vb6+GgZDK7cJN2aWAkxU92
	0yuqtcdB9ena96+xJQj//VGdz922kYerGyuCXwA55CSkyCqcpjRMPp+p/wsm3h5/CDVp
	GbsX53T7SfK7MafTUD2FCd7p3e0xRg6PGZaFzJXo8DvMA3GFDEp1pj2WyEpsm5DfXXh2
	eM3BqK4y8UmqPALvtwrhEFBhynwgO6DXXXgc/fIHJmM4RDTzY5DNY94pTF3q9i7iT7d2
	y9aw==
X-Gm-Message-State: AA6/9RlLlSBeqg1kNIZZwEqhQrG3x3sE2zE4efwzISTFcC2BqkWXWdSUf9fztOsdQXXwH/CV8qounbWkVZpGSX3V
X-Received: by 10.36.144.68 with SMTP id x65mr2954980itd.70.1475160739750;
	Thu, 29 Sep 2016 07:52:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Thu, 29 Sep 2016 07:51:59 -0700 (PDT)
In-Reply-To: <HE1PR01MB1883AED0E22901685B47CA5A92CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883AED0E22901685B47CA5A92CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 29 Sep 2016 15:51:59 +0100
Message-ID: <CAJTo0LYJErFxjBRtQKmxxVwnbXP5Ck90F7VWS=Pox6dq2qr=Uw@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: missing glxext.h header file in core-image-x11 // toolchain SDK
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
X-List-Received-Date: Thu, 29 Sep 2016 14:52:21 -0000
Content-Type: multipart/alternative; boundary=94eb2c07e806e13b12053da69fb1

--94eb2c07e806e13b12053da69fb1
Content-Type: text/plain; charset=UTF-8

On 29 September 2016 at 15:46, Karim ATIKI <karim_atiki@hotmail.com> wrote:

> I have generated a core-image-x11 image for a Toradex Colibri T20 board.
> I aim to compile and execute our application that normally runs under X11
> + OpenGL.
>

What sort of GPU does this board have, and what GL drivers are you using?
Mesa ships a glxext.h but the choice of GL stack is generally BSP-specific
so this is entirely down to what your BSP's GL stack is doing.

Ross

--94eb2c07e806e13b12053da69fb1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 September 2016 at 15:46, Karim ATIKI <span dir=3D"ltr">&lt;<a href=3D=
"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I have generat=
ed a core-image-x11 image for a Toradex Colibri T20 board.</div>
<div>I aim to compile and execute our application that normally runs under =
X11 + OpenGL.</div>
<div></div></blockquote></div><br>What sort of GPU does this board have, an=
d what GL drivers are you using?=C2=A0 Mesa ships a glxext.h but the choice=
 of GL stack is generally BSP-specific so this is entirely down to what you=
r BSP&#39;s GL stack is doing.</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></div>

--94eb2c07e806e13b12053da69fb1--
