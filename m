Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D23F4E00CE8; Mon, 23 Oct 2017 04:45:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48CF7E00928
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:45:40 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id 72so5507660itl.5
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KzFFrn/E4vcrF7v9mzqB9+TMp3PksMGGxj5YEaJKpT0=;
	b=1dFqpaDizwc+4BGt//QTVz7pQhzqQt6bwr3TiHGliNphB6ikSsYdQRB85dIn/Kiz0j
	N7I2tghEsDmuLt4lb2QRecZp3tcc+jJja6YqklYVVOTzoNSe66Gl4kCF6ehbO30FyP6n
	pBxQcl2CksYGoU1raDcpQUNERVIFTJmGmxOA6aZKsT6O6eMvJxPJ3SCgebjKUvh5gTOZ
	3MOxsAwyGUkl23IPR/tNzeC2n3sU/FwJx+MkZxHfXRSujR3Rkqbp+LEiTN71OYij4cB1
	6SZcWtnqmzRKqsf+3pBgm9+I/LpSwtVs8yuzwq2qrUQP4Qe7OTRB4v8aXuSky7p/WYYV
	iCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KzFFrn/E4vcrF7v9mzqB9+TMp3PksMGGxj5YEaJKpT0=;
	b=tEpVjQsVTOFqsXfAuSIUDRgUD/zDlcdXI4BJpx0+Jzu8QLdM9SnNbKg3/lHUTUemd6
	Phj2v9tIY1HX+PPxYq4WYXntgal8qPOzLO63m9YdpX3ejIbZtIP6ypOUpAdhnL6ifHmY
	zP7tIVhjOSy0l/4DDcF1uCUcq02BJTns0/4HSzDePUSiuO9PQy2M5GMmIDRb9jyJmh+U
	XVvlqdTJ5aofmLYUjFIAlUb9AQ/GxYNPwcb39OKcp/nacDxarbEmlZnO5hxLwyDbSCyv
	+DFiwx6F92uPrvEY0GSiiDS13MsRlvPsHb/abvzZsWXGdtGGsO1GsIS71myJcrOSOW50
	3ZIw==
X-Gm-Message-State: AMCzsaWZFgcG9LeKDTCfKfjeCveCt6PpYTVhuobGh54jolMSAk2iJWB1
	CsWBjQcjZisLQwGn3UTrRj6rDJgSGGUzOsqiVnRpFA==
X-Google-Smtp-Source: ABhQp+TYZ+BtWCoCnn+BNZeJvXM0HMhuFUqefCX/T3IM0+yXSb7nI53hvP1g4D4fSzXcidZnTcMA52l/tS9QhJYz8V4=
X-Received: by 10.36.25.4 with SMTP id b4mr8377170itb.108.1508759140413; Mon,
	23 Oct 2017 04:45:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Mon, 23 Oct 2017 04:45:20 -0700 (PDT)
In-Reply-To: <CAGAf8LwFvGj=67qpTSy5ZoU551GKGXSm2c2G_WGyi6v4-pB0WQ@mail.gmail.com>
References: <CAGAf8Lyz6P-K+bSA8bQ_XutML+SjjVYHGPrRPT=zwT85CB8ZEg@mail.gmail.com>
	<CAJTo0LZCZXtPnRB3idwYDVtL8Q7F4FeUzCtbmABeO7xE_2bLVQ@mail.gmail.com>
	<CAGAf8LwFvGj=67qpTSy5ZoU551GKGXSm2c2G_WGyi6v4-pB0WQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Oct 2017 12:45:20 +0100
Message-ID: <CAJTo0LbXY63Pr0cowUfwfwRGdBNkVQqE-Mv65XzBnnuKfhHV4g@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded sole base meta layer and poky base meta layers in sync, or not (should be The Same meta base layer, used in different distros)???
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
X-List-Received-Date: Mon, 23 Oct 2017 11:45:41 -0000
Content-Type: multipart/alternative; boundary="001a1143d8269dd1b8055c355c80"

--001a1143d8269dd1b8055c355c80
Content-Type: text/plain; charset="UTF-8"

On 23 October 2017 at 12:39, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > poky is generated using combo-layer, which effectively cherry-picks
> commits from the parent repositories (in this case bitbake,
> > oe-core, meta-poky, meta-yocto-bsp).  This explains why the SHAs don't
> match, as the history doesn't match.
>
> This is exactly my original point. We should have here original repos'
> SHAs. Not "modified" ones. The "modified" note should be included at the
> end of this report (to understand the differences explained by you). For
> the better understanding from where/which repos' commits/clones are coming,
> and why.
>

The script is reporting the actual SHAs that are being built, which in my
opinion is better than reporting SHAs which are similar but are not in fact
the same.

Ross

--001a1143d8269dd1b8055c355c80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 23 October 2017 at 12:39, Zoran Stojsavljevic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
dir=3D"ltr"><span class=3D""><span style=3D"font-size:12.8px">&gt; poky is =
generated using combo-layer, which effectively cherry-picks commits from th=
e parent repositories (in this case bitbake,</span><div><span style=3D"font=
-size:12.8px">&gt; oe-core, meta-poky, meta-yocto-bsp).=C2=A0 This explains=
 why the SHAs don&#39;t match, as the history doesn&#39;t match.</span><br>=
</div><div><span style=3D"font-size:12.8px"><br></span></div></span><div><s=
pan style=3D"font-size:12.8px">This is exactly my original point. We should=
 have here original repos&#39; SHAs. Not &quot;modified&quot; ones. The &qu=
ot;modified&quot; note should be included at the end of this report (to und=
erstand the differences explained by you). For the better understanding fro=
m where/which repos&#39; commits/clones are coming, and why.</span></div></=
div></blockquote><div><br></div><div>The script is reporting the actual SHA=
s that are being built, which in my opinion is better than reporting SHAs w=
hich are similar but are not in fact the same.<br></div><div><br></div><div=
>Ross</div></div></div></div>

--001a1143d8269dd1b8055c355c80--
