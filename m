Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B27F7E00B01; Thu,  1 Jun 2017 06:32:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83778E00992
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 06:32:09 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id w1so8920761qtg.2
	for <yocto@yoctoproject.org>; Thu, 01 Jun 2017 06:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1GJYrTfc6bKkE6YkfD6rIwrzBO7P5iR1+rU6vkL/g10=;
	b=q5l+SOlhefX6PzST/BrEdWL0++bsQkp3PmF7yyEY4E9MGfOHCkQPa736ecjheBZwKT
	nyG7LQV8yDNpzqaTqv5ANieV2fdK8l/Vuxw3krViHFPmFROO/v8HGIw6covJx/3SF4Pf
	Xe6/Wl8mgOaTy3ywZm9A/4DFBeIvPvHqDe960Nw4Nz88syK/zI53isTvfeaE9Kd0tWGf
	ghr3ZPM383MhZT5XIF697PuRPA6cSF2F5dkW0sTPgzxP+iH88twKYfT4ozhefbUGjRWT
	hbZR1IDaQq+DMqwlarlJZrNK/7r99S6P9CCA3d3CMX5+LY1LcekK4CKPxcrcWHTvxe0s
	lWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1GJYrTfc6bKkE6YkfD6rIwrzBO7P5iR1+rU6vkL/g10=;
	b=kGseBg2lm3ySvqYvBsOxb8U/T3C9xwb0xszW1u2el1y2u2xoNAyBzBtznGMAOwY4kk
	WouJO4TtYtjtdQh5ATLfqfYHmO09ATv/VIcmGinmOTM1jgEqdzX1uITONnT8Wi3iXju8
	AwRxoXK3z8k8ccm0hZS/YD8foAGxHeHB21jEBJ2TZqzbZxYDCen47U96ZaIpneTMa+a9
	+0W7T6ekX1Mx1qXqkynOmAsRS3j1TcIpP6Q6iJzHRsQ+X8zsHm9dFW0FcoXepvUklN5K
	DypL5I62Y4VkKxUzDsnMq/HvxhjnF6uHanBr1GB+FprwarDDjXk6N6qhL1K9C9AtHtDv
	c8NA==
X-Gm-Message-State: AODbwcCmVCo238IgYCPIUm5DvYVGAJhbagPl9TVA6UygMS5G8VaQss0a
	m3eyGMMRpi7nDmOEpdowgCBDWoQuTYnMETI=
X-Received: by 10.237.59.137 with SMTP id r9mr1717250qte.47.1496323929071;
	Thu, 01 Jun 2017 06:32:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.115 with HTTP; Thu, 1 Jun 2017 06:31:48 -0700 (PDT)
In-Reply-To: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
References: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Jun 2017 14:31:48 +0100
Message-ID: <CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why can't I install eudev-hwdb
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
X-List-Received-Date: Thu, 01 Jun 2017 13:32:13 -0000
Content-Type: multipart/alternative; boundary="94eb2c0e767e42f97e0550e6101e"

--94eb2c0e767e42f97e0550e6101e
Content-Type: text/plain; charset="UTF-8"

On 1 June 2017 at 08:43, Gary Thomas <gary@mlbassoc.com> wrote:

> In my local.conf, I have this (to save space in my embedded image):
>   BAD_RECOMMENDATIONS = "udev-rules-imx eudev-hwdb"
>

Try installing just udev-hwdb, my RPROVIDES patch in oe-core dea267 may be
been wrong.

Ross

--94eb2c0e767e42f97e0550e6101e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 June 2017 at 08:43, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204=
,204);padding-left:1ex"><div id=3D"gmail-:1vg" class=3D"gmail-a3s gmail-aXj=
CH gmail-m15c629d030905358">In my local.conf, I have this (to save space in=
 my embedded image):<br>
=C2=A0 BAD_RECOMMENDATIONS =3D &quot;udev-rules-imx eudev-hwdb&quot;<br></d=
iv></blockquote></div><br>Try installing just udev-hwdb, my RPROVIDES patch=
 in oe-core dea267 may be been wrong.</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0e767e42f97e0550e6101e--
