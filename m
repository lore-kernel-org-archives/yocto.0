Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0D9AE009B3; Thu, 23 Jul 2015 15:54:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A23E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:54:08 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so4605687qkb.2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=uR4hHcN9erHzk/HNcCF5kuXD8ZwfyQ69/lc+7Fo9TXY=;
	b=Vn1ZER0U1Je0zRAtdcDFOYiIaZrtyJLSfchSTshU/rZQyiYhYOwv0DhhvZl86Y03nC
	/QKTyIckRbmSJ/UaUY6ROAF4agAs3EHTifH3duiXBvXlXgVwWBqql7KvbhVQwUbTk4JX
	OBK1cV2S2dSIu6ZdxejgnJVwNPnwvFzvgztDQ1QMqfqjLRaO0xkoRmS5UY0WzBaxqENR
	HEKG04oxg3h6cGUuKHW2vQSorh0ospZC0r9dsLIuHXmXEfBx4mJ0JNkO0HOjcnG+FWiC
	/0b2PjEFlV0aHzXDxM7ZJsq/61Uo51ZVP8vOf9fqihAxwr6gANE6vbAEEQzqlsKD5tB+
	SYAA==
X-Gm-Message-State: ALoCoQmOVQ1lmlki8Wl1D8Oqr8QCPHQZC/hTnzSSA8RfboRRF9wL6qnz052V0knGxHpRDstHmjcc
X-Received: by 10.140.20.115 with SMTP id 106mr15718706qgi.87.1437692047554;
	Thu, 23 Jul 2015 15:54:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 23 Jul 2015 15:53:48 -0700 (PDT)
In-Reply-To: <021f01d0c599$f338f9d0$d9aaed70$@neuf.fr>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<CALbNGRRgRKX0Rh08gWPJ496oc9AY9e5XEJ6foN9m6fKcrpUgGw@mail.gmail.com>
	<021f01d0c599$f338f9d0$d9aaed70$@neuf.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 Jul 2015 23:53:48 +0100
Message-ID: <CAJTo0LZfEsMW94mbAQ=jbMbD1soBQSHrAmiwkxC+rqBZ64in4w@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
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
X-List-Received-Date: Thu, 23 Jul 2015 22:54:08 -0000
Content-Type: multipart/alternative; boundary=001a11c128b4ca8d29051b92c3ad

--001a11c128b4ca8d29051b92c3ad
Content-Type: text/plain; charset=UTF-8

On 23 July 2015 at 23:50, Herve Jourdain <herve.jourdain@neuf.fr> wrote:

> This said, I - maybe wrongfully - assumed that anyone including the
> meta-raspberrypi layer would actually want to run on a raspberrypi, which
> does have an Ethernet interface I believe on all machines - I only have a
> RaspberryPi 2, so I didn't check all other devices, so might assumption
> might be wrong there.
> Is there any version of raspberrypi without an Ethernet interface?
>

Certainly wrongly.  For example the Guacamayo distro includes BSP layers
from meta-yocto-bsp, meta-ti, meta-raspberrypi, and meta-intel.  BSP layers
should always scope their changes to impact only the machines they care
about.

Ross

--001a11c128b4ca8d29051b92c3ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 July 2015 at 23:50, Herve Jourdain <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:herve.jourdain@neuf.fr" target=3D"_blank">herve.jourdain@neuf.fr</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":235" class=
=3D"a3s" style=3D"overflow:hidden">This said, I - maybe wrongfully - assume=
d that anyone including the meta-raspberrypi layer would actually want to r=
un on a raspberrypi, which does have an Ethernet interface I believe on all=
 machines - I only have a RaspberryPi 2, so I didn&#39;t check all other de=
vices, so might assumption might be wrong there.<br>
Is there any version of raspberrypi without an Ethernet interface?<br></div=
></blockquote><div><br></div><div>Certainly wrongly.=C2=A0 For example the =
Guacamayo distro includes BSP layers from meta-yocto-bsp, meta-ti, meta-ras=
pberrypi, and meta-intel.=C2=A0 BSP layers should always scope their change=
s to impact only the machines they care about.</div><div><br></div><div>Ros=
s</div></div></div></div>

--001a11c128b4ca8d29051b92c3ad--
