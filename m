Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FF10E00932; Fri, 27 Jan 2017 07:27:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (romain.perier[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F560E0052B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:27:49 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id d140so59219975wmd.2
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qHTYSW2+jth7wY6UoX+wIy3799kyYgFFAsGSN1BMTFQ=;
	b=lyEhI7ROsTnI2gG0+z+nwfKF2WwerN4uATPX7zBBqc7Q1T0GXDRmVi2K0Q6+vnQtqC
	RZ7Y6TaIWYNmr/QgkvAPvLKaDY1gUW395WKcmeWjmU/SmI9k+3i/eNOr5YvGFxHuCefQ
	R+AeR/MZ9zRgwTb2oyzpCja9HAaIQJu6k7ad/XLi+H33hDgnVeJvCTXC+5U4bWvaAlQ9
	8Q1t8Bec3nv5IwjxoeMIWtwm9a4xynXBhJSAh6Qvq6Js3G6Swru4NtUK5ausqZFgYEXM
	ZCWqDKTori75oWcQrV0pnCip0xbxZyc2WRrcQlmynYYtrUxjstZ1nQzi8maujSs5HmyH
	iNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qHTYSW2+jth7wY6UoX+wIy3799kyYgFFAsGSN1BMTFQ=;
	b=XHXheSpizv0EeRT4R0l6anFuTH+JovBKuOxpaHOiYDRnFca6HkKg1KGIGiLU1T/DZr
	AaT0tvk5V0vfBIYXEdYvPdAqYH6K9lZTozIh/lb2JfMu3QPWhj40jeAFH6E83WowCZFe
	KQDVAJG5Gqd9x4a1yEusLyrDuXoZFbOrrpWD6C5vtT43NC8plqJK9Ddo/JQi/xQ2DtlX
	tZ/E+HQsi/ODKbrTlCGOjSYOvrgEp/V0Zty1e2kO87N6j+4ksMr1sD/MHxxDD1xXVb00
	XtgaZPBm52ZtQVThLUflojOMLAZrVwxhHPRVSC4dD8RjvW8nw7n2/++6tDuxZE/WAC/N
	uGfg==
X-Gm-Message-State: AIkVDXJI9NvRb894qbhzGQYOLJd/pcSHeceLQxX/m0BTRFF5dXrqplFjMiUPaar8eAi8tYxUkAG75aT7ZSEBEQ==
X-Received: by 10.28.166.215 with SMTP id p206mr3839423wme.87.1485530868536;
	Fri, 27 Jan 2017 07:27:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Fri, 27 Jan 2017 07:27:48 -0800 (PST)
In-Reply-To: <CAJrj+DP7XGadbn-03EuAy4WAKgV=Pq67AjKghfuzR5gMbSpxLA@mail.gmail.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-4-git-send-email-jacob-chen@iotwrt.com>
	<CAJrj+DP7XGadbn-03EuAy4WAKgV=Pq67AjKghfuzR5gMbSpxLA@mail.gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Fri, 27 Jan 2017 16:27:48 +0100
Message-ID: <CABgxDo+jYOL2tq9A71kSJgNiuYkCzzHnBES1z-mR1xO0E8G-XQ@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [PATCH 3/7] machine: firefly: use linux-rockchip by default
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
X-List-Received-Date: Fri, 27 Jan 2017 15:27:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c12943eb8e0840547151b31

--94eb2c12943eb8e0840547151b31
Content-Type: text/plain; charset=UTF-8

Hi all,

1. Add more details to your commits
2. As I said in a previous patch, I don't like this... rk-linux.inc , the
name of the file is not clear at all... and I don't like its content for
now.
3. There is really a small differences between a kernel mainline and your
kernel rk3288 nowadays... Do you have a working VPU in your kernel ?
perhaps that it might be interesting for this... (if I remember, it's not
supported in upstream)


Thanks,
Romain

2017-01-19 15:40 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com>:

> Hi
>
> 2017-01-19 18:09 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com>:
> > This is the kernel vendor that supports all hw components for this board,
> > so we use it by default.
> The title and commit message didn't match the your content. Linux
> rockchip should refer to http://github.com/linux-rockchip.
> firefly-rk3288.conf already using http://github.com/linux-rockchip
> >
> > Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> > ---
> >  conf/machine/firefly-rk3288.conf | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/conf/machine/firefly-rk3288.conf
> b/conf/machine/firefly-rk3288.conf
> > index 8fa005d..47e63e1 100644
> > --- a/conf/machine/firefly-rk3288.conf
> > +++ b/conf/machine/firefly-rk3288.conf
> > @@ -7,4 +7,8 @@
> >  #http://www.t-firefly.com/en/
> >
> >  include conf/machine/include/rk3288.inc
> > +include conf/machine/include/rk-linux.inc
> > +
> >  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
> > +
> > +UBOOT_MACHINE = "firefly-rk3288_defconfig"
> > --
> > 2.7.4
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c12943eb8e0840547151b31
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi all,<br><br></div>1. Add more =
details to your commits<br></div>2. As I said in a previous patch, I don&#3=
9;t like this... rk-linux.inc , the name of the file is not clear at all...=
 and I don&#39;t like its content for now.<br></div>3. There is really a sm=
all differences between a kernel mainline and your kernel rk3288 nowadays..=
. Do you have a working VPU in your kernel ? perhaps that it might be inter=
esting for this... (if I remember, it&#39;s not supported in upstream)<br><=
br><br></div>Thanks,<br></div>Romain<br></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">2017-01-19 15:40 GMT+01:00 Eddie Cai <span dir=
=3D"ltr">&lt;<a href=3D"mailto:eddie.cai.linux@gmail.com" target=3D"_blank"=
>eddie.cai.linux@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hi<br>
<span class=3D""><br>
2017-01-19 18:09 GMT+08:00 Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotw=
rt.com">jacob-chen@iotwrt.com</a>&gt;:<br>
&gt; This is the kernel vendor that supports all hw components for this boa=
rd,<br>
&gt; so we use it by default.<br>
</span>The title and commit message didn&#39;t match the your content. Linu=
x<br>
rockchip should refer to <a href=3D"http://github.com/linux-rockchip" rel=
=3D"noreferrer" target=3D"_blank">http://github.com/linux-<wbr>rockchip</a>=
.<br>
firefly-rk3288.conf already using <a href=3D"http://github.com/linux-rockch=
ip" rel=3D"noreferrer" target=3D"_blank">http://github.com/linux-<wbr>rockc=
hip</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com"=
>jacob-chen@iotwrt.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/machine/firefly-rk3288.<wbr>conf | 4 ++++<br>
&gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/conf/machine/firefly-rk3288.<wbr>conf b/conf/machine/fire=
fly-rk3288.<wbr>conf<br>
&gt; index 8fa005d..47e63e1 100644<br>
&gt; --- a/conf/machine/firefly-rk3288.<wbr>conf<br>
&gt; +++ b/conf/machine/firefly-rk3288.<wbr>conf<br>
&gt; @@ -7,4 +7,8 @@<br>
&gt;=C2=A0 #<a href=3D"http://www.t-firefly.com/en/" rel=3D"noreferrer" tar=
get=3D"_blank">http://www.t-firefly.com/en/</a><br>
&gt;<br>
&gt;=C2=A0 include conf/machine/include/rk3288.<wbr>inc<br>
&gt; +include conf/machine/include/rk-linux.<wbr>inc<br>
&gt; +<br>
&gt;=C2=A0 KERNEL_DEVICETREE =3D &quot;rk3288-firefly.dtb&quot;<br>
&gt; +<br>
&gt; +UBOOT_MACHINE =3D &quot;firefly-rk3288_defconfig&quot;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c12943eb8e0840547151b31--
