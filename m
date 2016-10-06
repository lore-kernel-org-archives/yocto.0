Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA675E0050B; Thu,  6 Oct 2016 11:19:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049ABE0050B
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 11:19:20 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id 10so1013316ual.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 11:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AOMExtpUNLZBSzG1kGAFmwv9RSyabMoy9zf3qqB/ggk=;
	b=YeTVQTLj08kzHYvfZpT1nDGR6nZnuPvxvMxCzx3UPt+zuMzzdL2/16k3WWCxkQTB5Z
	XrErZhvJgS+jXhY+hLKOMIFGq64QkT1S/ORNHjuL2cOHq75chmSzNwUYs9pXD1phkqHG
	T9+1HNVwpZUlDGC4MQiJvQhpKcpTCWIWscJC6QM1ETnRc7YPz0EJFvRtD7OJin9y4H3A
	usw6SbCuY9q4JzJxp3PoEAFkZ17sfE/slmHTBDYFkx1h0Uor3XFUiY80XWtfPzxbX4qD
	ed5SpTVsMCdAYlcPoSkWZU1+RfIzSb1sHJXX7ANoAOfJEWakN1MQ2k16hSNpC6bGRX8c
	DL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AOMExtpUNLZBSzG1kGAFmwv9RSyabMoy9zf3qqB/ggk=;
	b=hOYeBQpwuEbPI1vQPPQ2CMY+QG8JnmWMa67ZvHkApcSPD1MRNGJhweuXqRjc2xb6Xg
	MZRFLN3F8m2P1fHv+dFq9UFu5h8Sjod5vF0U4YmHUO/z4o3GBaiVY6g2B8pdBnl1J+zt
	xoC3KCTLSJe2bNJ4Gcd8EVygmKwkJA8vMFZFqJKJ3mswLNV4LXj/4jxz28UtkA6UnyKR
	jPywqxho5CAOjeqRGICHiRG4pTVuafPb6O1RCQ0W4S2Ibi/d0bkiyWLBgiHg0L5vC4vu
	QtDCwIPMN3Mm8M1kfKZpkf1ld0Wpo9Rdu7SOY76w8ez8lbP7aeDwi3x17BIa7I8+OVZB
	XTMA==
X-Gm-Message-State: AA6/9Rlx2q3ZCAvKYGTP6NEMsyuXcwB676cxZxQz0EwxlvVW04a9HPjhZnumwV15FQb+fl2IR1c4+ROpIT6+Rg==
X-Received: by 10.176.64.229 with SMTP id i92mr11806738uad.32.1475777959610;
	Thu, 06 Oct 2016 11:19:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Thu, 6 Oct 2016 11:19:18 -0700 (PDT)
Received: by 10.176.86.206 with HTTP; Thu, 6 Oct 2016 11:19:18 -0700 (PDT)
In-Reply-To: <098d3839-cbc0-d22b-67c0-48f15179e453@fridu.net>
References: <098d3839-cbc0-d22b-67c0-48f15179e453@fridu.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Oct 2016 11:19:18 -0700
Message-ID: <CAMKF1soaF3FowAOv7hRPiU+H3u_4SjYRtUhz0w+cZ89WSxhU7w@mail.gmail.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Cc: yocto@yoctoproject.org
Subject: Re: which meta-intel woudl build a kernel 4.8
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
X-List-Received-Date: Thu, 06 Oct 2016 18:19:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c12298a0ccff0053e3655e1

--94eb2c12298a0ccff0053e3655e1
Content-Type: text/plain; charset=UTF-8

Use poky or oe-core master with master of meta-intel is best shot

On Oct 6, 2016 11:16 AM, "Dominig ar Foll (Intel Open Source)" <
dominig.arfoll@fridu.net> wrote:

> Hello,
>
> I was happily under 'jethro' until now but I need to build a kernel 4.8
> fir Intel HW to get access to some new features.
>
> I can see that the 'master' branch bump to 4.8 but unfortunately come
> with the following errors :
>
> ERROR: No recipes available for:
>
> /home/dominig/AGL/meta-intel/common/recipes-kernel/linux/
> linux-yocto-tiny_4.8.bbappend
>
> /home/dominig/AGL/meta-intel/common/recipes-kernel/linux/
> linux-yocto_4.8.bbappend
>
> Would someone have an idea how I could get a 4.8 working meta-intel ?
>
> Thanks in advance
>
> --
>
> Dominig ar Foll
> Senior Software Architect
> Intel Open Source Technology Centre
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c12298a0ccff0053e3655e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Use poky or oe-core master with master of meta-intel is best=
 shot</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Oct 6, 2016 11=
:16 AM, &quot;Dominig ar Foll (Intel Open Source)&quot; &lt;<a href=3D"mail=
to:dominig.arfoll@fridu.net">dominig.arfoll@fridu.net</a>&gt; wrote:<br typ=
e=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
<br>
I was happily under &#39;jethro&#39; until now but I need to build a kernel=
 4.8<br>
fir Intel HW to get access to some new features.<br>
<br>
I can see that the &#39;master&#39; branch bump to 4.8 but unfortunately co=
me<br>
with the following errors :<br>
<br>
ERROR: No recipes available for:<br>
<br>
/home/dominig/AGL/meta-intel/<wbr>common/recipes-kernel/linux/<wbr>linux-yo=
cto-tiny_4.8.bbappend<br>
<br>
/home/dominig/AGL/meta-intel/<wbr>common/recipes-kernel/linux/<wbr>linux-yo=
cto_4.8.bbappend<br>
<br>
Would someone have an idea how I could get a 4.8 working meta-intel ?<br>
<br>
Thanks in advance<br>
<br>
--<br>
<br>
Dominig ar Foll<br>
Senior Software Architect<br>
Intel Open Source Technology Centre<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</blockquote></div></div>

--94eb2c12298a0ccff0053e3655e1--
