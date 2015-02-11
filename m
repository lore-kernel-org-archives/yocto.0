Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DB5E00546; Wed, 11 Feb 2015 12:37:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF7BE00815
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:36:41 -0800 (PST)
Received: by mail-wg0-f52.google.com with SMTP id z12so5901117wgg.11
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:36:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=uDabbLU2QPB3CPzF52G6VcGfPkzpohfIbrJ13HZHIQw=;
	b=WdoHgIjT6l5KiBPOj2wu3KlcewbMfy01CnN8qYXwTIdHKn03bimXkDl/B0ycAhqOVB
	U/ujk01OpuN9bfC7qNY42sWDrU1gwgfJWNyaPSRbdSeZrxwPFnQF88SVDo0jU/P9P32p
	O0onSba+ZeWIAMfkg73HWpj7nuWZuyVEWGzji9IlVlh+lbI/pzgEV5ZCaJBlwOZHpEot
	N5E2svI9VCnK3HI58hCDbTXUCtsZq+AEnLx/Me7OmptOfo9SesZjRgXf1+5gzN7fsdRv
	8g1uXv5e1bp9axO3RPu4ORQvD7S+GcL/0YWnsv2hJuqJWT4ni+oV3Lbcs4Vbk7Xr6mPH
	yHNA==
X-Gm-Message-State: ALoCoQn6o/PBNj/bixpQJn1gSnvccnyJGj6s+PF7gmZa7JoqedfAA3bj1cCwRxH8fB1CbOiOWIPL
X-Received: by 10.194.177.195 with SMTP id cs3mr452006wjc.141.1423687000604;
	Wed, 11 Feb 2015 12:36:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.162.2 with HTTP; Wed, 11 Feb 2015 12:36:19 -0800 (PST)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Feb 2015 21:36:19 +0100
Message-ID: <CAK18fxFgOFz3OM6=smDb=a+p-7MYPZHaKs0vu5w-qHDoDHYP4g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/8] raspberrypi.conf: Split in specific and common conf. files
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
X-List-Received-Date: Wed, 11 Feb 2015 20:37:04 -0000
Content-Type: multipart/alternative; boundary=089e013d0a3cf15a25050ed5f581

--089e013d0a3cf15a25050ed5f581
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 8, 2015 at 12:56 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> *.conf files should hold board specific stuff while rpi-base.inc should
> include configuration that is common for all Raspberry Pi boards.
>
> Remove MACHINE_KERNEL_PR as we don't use it anymore.
>
> Minor tweaks.
>
> Change-Id: I5e1b12c1d224ac003d2890544beb036f1d5d8643
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---


All 8 patches merged to master. Thanks.



-- 
*Andrei Gherzan*

--089e013d0a3cf15a25050ed5f581
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 8, 2015 at 12:56 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<=
a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">*.conf files should ho=
ld board specific stuff while rpi-base.inc should<br>
include configuration that is common for all Raspberry Pi boards.<br>
<br>
Remove MACHINE_KERNEL_PR as we don&#39;t use it anymore.<br>
<br>
Minor tweaks.<br>
<br>
Change-Id: I5e1b12c1d224ac003d2890544beb036f1d5d8643<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---</blockquote><div><br></div><div>All 8 patches merged to master. Thanks.=
=C2=A0</div></div><br><br clear=3D"all"><div><br></div>-- <br><div class=3D=
"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:center"></div><=
div style=3D"text-align:center"><div align=3D"left"><b style=3D"font-family=
:Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei Gherza=
n</b><br></div></div></div></div>
</div></div>

--089e013d0a3cf15a25050ed5f581--
