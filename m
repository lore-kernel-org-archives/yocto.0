Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B83E8E00C1E; Thu,  3 Jan 2019 15:21:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F08E006F1
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 15:21:37 -0800 (PST)
Received: by mail-qk1-f196.google.com with SMTP id y78so20615527qka.12
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 15:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WvVDdGYiHJOi+gKag2tmLZPxTu1//oH9tpca0/Qg5mY=;
	b=JEvmigDJRD60CztcyzsjzV150x6gfpwCGgJXa2KsfXLMCLE1Bjfy7ROyUFnyaRll/Y
	OsDsnG2R5uiqcxNZCy0BoWHNdhpR+90RYGPYp/b/FnNqmQlB8x12gAneAtj6y90Fy04g
	AT193BoLALcWc2USDEPWBNxsV+AWsK7UxMrYwtXNNXZIJSMP5wh45UC14Cd2lliYFLku
	yZbJ1Od7TXfUCcp4Up/UO3ovYXw2vxB1M8qaKRhsy7DbgJNijg7Stb7h44o+3acK6u+Y
	wl6+GCEDxJ/B/7wr2RcQH+0oVsl09OyMLjCzg5kldeg86+krC9uBatnrPPSl5+5nLuvT
	bscw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WvVDdGYiHJOi+gKag2tmLZPxTu1//oH9tpca0/Qg5mY=;
	b=ceh4hwpd6gvszu8MlMTnjMWds2GQLTxlB33NH5lo1xjBtd1BkEKYJ1oUT01Hht4KgS
	43VTRRDgRlwAEz/n+o2qJtQk9/9h2v4oIE+MHBWoVmyxbFyCkQpDlO7g+l+Tfs5z2upF
	pG+38l6kegz48hx4G2TRnbOyvIj1vXTMG2soN+7RkrfXAMxt/lIO9UlpKJZ8IJ5lD/P/
	FVuR3ubULH3IoyPperMgdOXWxWGPfSJQAUpVLqRUXzP+AVILmhPciiIv5nXoMKobM/pO
	Ww8AVMDpkjo7MdNtQiuV6/6mid2rhYAbZ/3fXNfuO1mQZ7pP5FnVkywUCU71nHPFSOxR
	ZzDQ==
X-Gm-Message-State: AJcUukcLncHYcxRzwm1OcLq/rZTbYTbW1eEk0/7aBO2B3B6FBmESIJXK
	tl+79UcYiHvULB7/Twx4eh0ZE5+b8zZtfy81XIGES+8i
X-Google-Smtp-Source: ALg8bN6cNwk6kk6xyH1q1UdWzGk4bKWCYWF6bgUSyrGj4Th2Bnr4ebQbxy/04FrtRfWsMUmztKMvxboUP7sYON/D+Rs=
X-Received: by 2002:a37:4c41:: with SMTP id z62mr45328456qka.206.1546557697105;
	Thu, 03 Jan 2019 15:21:37 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sooPOtN-Y=0_cZ=Qv2viS5mwJAsm+yVsHpOJ5gpN65eZw@mail.gmail.com>
	<20190103225915.GB29139@localhost>
In-Reply-To: <20190103225915.GB29139@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 Jan 2019 15:21:11 -0800
Message-ID: <CAMKF1sqhDzQL9P1Vaw5Xczo0co_=NcP1-efnzW=tDnJT9cAq_A@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Dropping armv5 and armv5e tunes in 2.7
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
X-List-Received-Date: Thu, 03 Jan 2019 23:21:38 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Adrian

On Thu, Jan 3, 2019 at 2:59 PM Adrian Bunk <bunk@stusta.de> wrote:
>
> On Thu, Jan 03, 2019 at 02:01:42PM -0800, Khem Raj wrote:
> > Hello All
> >
> > You might have noticed a recent commit in gcc trunk
> >
> > https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=b232e6b58e3766bc66fe08fdb7bcba1bdadda8a2
> >
> > Which removed support for deprecated -march=armv5 and armv5e, this
> > will be released along with gcc-9 release which is upcoming and we
> > might be able to add gcc9 to 2.7 release or 2.8 release for sure.
> >
> > We still have non-thumb tunes for armv5 and armv4 in our tune pack, I
> > would like to propose a patch to remove them.
> >...
>
> Note that gcc 9 does *not* remove non-thumb armv4 support.
>

yes that's right. However, I was taking this time to find out if we can drop all
the ones besides armv5te even if gcc supported it unless there were OE users
who are still interested in supporting them and had devices running OE
which need them

> Non-thumb armv5/armv5e have been removed due to
> "have no known implementations".
>
> Non-thumb armv4 support was deprecated in gcc 6 together with armv2/armv3,
> but there are still people using recent gcc on StrongARM - which is
> non-thumb armv4.

OK, that's a fair point, however, in OE's case I only have reports from users
with armv4t devices, but it we can keep the armv4 arm-only tunes around along
with the arm-thumb v4 ones

>
> > Thanks
> > -Khem
>
> cu
> Adrian
>
> --
>
>        "Is there not promise of rain?" Ling Tan asked suddenly out
>         of the darkness. There had been need of rain for many days.
>        "Only a promise," Lao Er said.
>                                        Pearl S. Buck - Dragon Seed
>

