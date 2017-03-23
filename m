Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455CDE00AAA; Thu, 23 Mar 2017 08:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C72D2E00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:43:43 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id x35so178548601qtc.2
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VEqjKYcNJxJvvk3yoVqS0NdrIHy5TZNTXWlazPiVk0E=;
	b=HMesAmpxBi9MgQjLEtfk/tzATnszxELvHuf58gH5NsceO4riCWnZZ53E/koqid8bmm
	Ajulvq8X6iTLrh6UxeB6CRv2BXMqqMi+GtrFta4yBshopkmiEJr8tYwZXF+Bs9fYz8Bg
	3p1kF3ujxUidwz4ihhf+ShOud7v2TKfxRIS74DaoIhXa+Wj1UZP9u1aNpkVPhVIGlI92
	MtES3aa8Y689xC8Z7cL5q4BXsKrDiSEL4nIDFlWhZpn03mcf4EAh3AzCs9k7NcZElnvc
	oUjIiY40ug0+DFOuzLQozFuTyIZ5zH4z69LXLQzGReWGYgkkTbdrFf3bvpxqRCf4RGdZ
	zUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VEqjKYcNJxJvvk3yoVqS0NdrIHy5TZNTXWlazPiVk0E=;
	b=FJGxaEfpiwrx8aBwsapbJ/myND3X4bd1SVAgZSy4hGp8vZSVl9lZMT0pxbVXTczJXc
	VPZRw3w7MeUNx+l91pnYgeEtYLP3hnMbo7F5YxCACa1nvhdaMs3SciOvjkvK4r8QqKVV
	rQPdw23BxxTIIZCNcq5X+EavnXtaTGSZPKC60vovLg4CNc/If7LOlQpodLmNP95vRpNX
	6FcIujPE9z5V/VYiVAczfeH9WYiXYgSs5Ysx2kaTz6O+KREyLWu59ggHSszITPMZ5hqS
	QgepGuI3RvUQFJPGVq/tBBN87DrlFaMceJsYOs38zqBL402Gbc9Ro4cOQ1MpqXC+Ajvq
	DylA==
X-Gm-Message-State: AFeK/H1x3yRgVMjdP3g/kmceti0OrLtz/8oM56rxJgLtS1IUNpTu9DuViGX2QOqD1l0naOl6LgjJ2pMme/C7WJyN
X-Received: by 10.237.53.9 with SMTP id a9mr2864126qte.188.1490283822529; Thu,
	23 Mar 2017 08:43:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 23 Mar 2017 08:43:22 -0700 (PDT)
In-Reply-To: <CAGkf0HBCPSm51-q8VhY0GmFnWrh2ZEDcfhxMZBgbpnweMuyy8A@mail.gmail.com>
References: <CAGkf0HBCPSm51-q8VhY0GmFnWrh2ZEDcfhxMZBgbpnweMuyy8A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 Mar 2017 15:43:22 +0000
Message-ID: <CAJTo0LYre-dNxC+D0m4ofMLbs1Axa3scA2ewcteCGUz8Ka6VMg@mail.gmail.com>
To: Alain Achkar <alain.achkar@triacta.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a searchable, complete archive of the Yocto mailing lists?
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
X-List-Received-Date: Thu, 23 Mar 2017 15:43:45 -0000
Content-Type: multipart/alternative; boundary=001a11c0285edb5ba0054b67bd0b

--001a11c0285edb5ba0054b67bd0b
Content-Type: text/plain; charset=UTF-8

On 23 March 2017 at 15:30, Alain Achkar <alain.achkar@triacta.com> wrote:

> So, does anyone know if there is a way to search online through *all*
> postings to *one* mailing list, or through *all* postings to *all* mailing
> lists?
>

You can use the site: operator on google to search them.

Ross

--001a11c0285edb5ba0054b67bd0b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 March 2017 at 15:30, Alain Achkar <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:alain.achkar@triacta.com" target=3D"_blank">alain.achkar@triacta.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>So, does anyone=
 know if there is a way to search online through *all* postings to *one* ma=
iling list, or through *all* postings to *all* mailing lists?</div><div></d=
iv></blockquote></div><br>You can use the site: operator on google to searc=
h them.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--001a11c0285edb5ba0054b67bd0b--
