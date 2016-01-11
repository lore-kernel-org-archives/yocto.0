Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DDB1E00B6F; Mon, 11 Jan 2016 02:07:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E32AEE00B66
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:07:01 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id b14so25550566wmb.1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Fv6MGaGBUTlv8EBIzrY7oI50r57/2p8wV+6QdUGeTKA=;
	b=bLu7ME6JvffncK1/XkOYAuaoUMV5UjZr3ADx18jMMAwakXOHhiEh6J+K4gtaljD6Z+
	wF6HYVjGRji/VB2LXJbnSSfMjAltVbozhY9Jbi9t/WAkwWzGxmYECI4wMytyC3r+2MZp
	hSKLLPw029XFc4CUWNADX7iUkBTxJyG3cFYG+QNXbGwvmkz6RUwnWeUiIH38tamKRI/C
	DUvNdBPAm+/BFjuGqQ831aCovomh1Hm357a5Xu+GYgCBz/8BVsV1FLNT4eLcqbur1CAA
	dLU7bgVSXNEJjZ5mQfmDboI1AwXif0t4t6rbfAb89Wla/KZOVSTHrY2d1i/rgGv8Zk0j
	Qwxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Fv6MGaGBUTlv8EBIzrY7oI50r57/2p8wV+6QdUGeTKA=;
	b=GCehXoaXEgl/a7jE3hElYfVrjtFmcYvpC6nRoCjZPqQ/GX5H27LTmxPOWMZUWg0Gqy
	kI7jctN6RBHHfqygjQ7/1cmQok19e3acXGNR5M4uIqubneXzQOHfTswm/8gbI1OcH147
	mKZ3AGY8rK/w5Ebl/Nx18/ZJiIXq08I24W8gGAZcsBAKqTHMOkI+GejS3n0mJKkkXvYy
	/m2OwIQZ/4z79b4qaCqiN7tx+9aI4c3aVuYdcbPjdbZ8NOC7M6Xzb4H76ixR/pXCcxJz
	CqG/wsWqvt0+dn3sKLeSCAz0GDekl0fAzroq/ZZxi6Haeeww/MRkSzAHJnlAdULHTjnb
	qllg==
X-Gm-Message-State: ALoCoQnVEWsNw4CWBYgqpKklP7rXgG7FZoLAtFfHkXM8CtHDsOMYoenWTropYgQ9H4L7IClfLuqIiMK1OzPlDbBa/XF4mf+Q+A==
X-Received: by 10.194.222.135 with SMTP id qm7mr133708342wjc.106.1452506820886;
	Mon, 11 Jan 2016 02:07:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.200 with HTTP; Mon, 11 Jan 2016 02:06:21 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <1450648710-24526-1-git-send-email-leon@anavi.org>
References: <1450648710-24526-1-git-send-email-leon@anavi.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Jan 2016 11:06:21 +0100
Message-ID: <CAK18fxGX0j6rnXDT+Ep_R0zpV1RnUp0zVyofWw_ffY1TYRtXqw@mail.gmail.com>
To: Leon Anavi <leon@anavi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] python-sense-hat: Add recipe to support Raspberry Pi Sense HAT
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
X-List-Received-Date: Mon, 11 Jan 2016 10:07:03 -0000
Content-Type: multipart/alternative; boundary=001a11c3aed617e5c605290c194f

--001a11c3aed617e5c605290c194f
Content-Type: text/plain; charset=UTF-8

Hi,

On Sun, Dec 20, 2015 at 10:58 PM, Leon Anavi <leon@anavi.org> wrote:

> Python module to control the Raspberry Pi Sense HAT used in
> the Astro Pi mission. This recipe provides the officially
> supported library for the Sense HAT with access to all of the
> on-board sensors and the LED matrix.
>
> Signed-off-by: Leon Anavi <leon@anavi.org>
> ---
>  recipes-devtools/python/python-sense-hat_2.1.0.bb | 28
> +++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb


Patch merged to master with a minor tweak (convert tabs to four spaces).
Thank you,
--
Andrei Gherzan

--001a11c3aed617e5c605290c194f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div>Hi,</div></div></div></div>
<br><div class=3D"gmail_quote">On Sun, Dec 20, 2015 at 10:58 PM, Leon Anavi=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:leon@anavi.org" target=3D"_blank">=
leon@anavi.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rg=
b(204,204,204);border-left-style:solid;padding-left:1ex">Python module to c=
ontrol the Raspberry Pi Sense HAT used in<br>
the Astro Pi mission. This recipe provides the officially<br>
supported library for the Sense HAT with access to all of the<br>
on-board sensors and the LED matrix.<br>
<br>
Signed-off-by: Leon Anavi &lt;<a href=3D"mailto:leon@anavi.org">leon@anavi.=
org</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python-sense-hat_2.1.0.bb" =
rel=3D"noreferrer" target=3D"_blank">python-sense-hat_2.1.0.bb</a> | 28 +++=
++++++++++++++++++++<br>
=C2=A01 file changed, 28 insertions(+)<br>
=C2=A0create mode 100644 recipes-devtools/python/<a href=3D"http://python-s=
ense-hat_2.1.0.bb" rel=3D"noreferrer" target=3D"_blank">python-sense-hat_2.=
1.0.bb</a></blockquote><div><br></div><div>Patch merged to master with a mi=
nor tweak (convert tabs to four spaces). Thank you,</div><div><div>--</div>=
Andrei Gherzan<br></div></div><br></div></div>

--001a11c3aed617e5c605290c194f--
