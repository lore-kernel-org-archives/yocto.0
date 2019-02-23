Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28518E00BBC; Sat, 23 Feb 2019 09:05:17 -0800 (PST)
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
	*      [209.85.222.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE9EE00994
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 09:05:15 -0800 (PST)
Received: by mail-qk1-f194.google.com with SMTP id a15so3016112qkc.1
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 09:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OOcbR657U4YEOCEuUsaYxNmjwDr7nCZEleavc1KKyHw=;
	b=mbFB+722AvbQaxApxtCO8anp6lvIT/GzNC3eQ2ybkIpkCYm8LbxFINgr+wHPgzsJCm
	345aXmq3Mb/CqdD2Jn+YTdoGudxx42QrjyspddWjx1wS/A/2JGQ/XkJjoJn47Xsm/2Wk
	voW3Lc5lpWb9z5JQCV5AQbscNEfr/x+Iuug+ddePO0OY9HKDH0ZDn2RMPC65nLCGx3Sd
	3UdKkr1XMMrhuEFt974wiEbmxLVQrzB/kOHcSYZrz8wdvxho09PNmqFYPRKMWuWP8giZ
	WmzGXAAPleK06/ZWhk2mGQr3MwZI1gahpDrDnj/Z/7NACSm9UfEkemxFrPiu6+kAMqpc
	nz8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OOcbR657U4YEOCEuUsaYxNmjwDr7nCZEleavc1KKyHw=;
	b=dXArPvNCiZ3GDO4y3Z6yvPym/R6kXvWqgTkoiNqW/LwHBbQzSJmPWBZz7HsFH6OKbn
	+3MbjKDr1Ufmhvl+zbew66nk4h3TssGmDj0m+79iJW6FJNkB54jNjRhMA33wUEXkv2Xo
	D041gIABVqp6o/9AGR5jMByM3qxBQe8fHOXtik6WTwOt51EmHTVrtQ8+8xcYilmC0auj
	lrwkTPPu54gPi36lZViN8JauZ8DXOX04uv4JLCGINHTmvepbQLnSEC/41hlEGFahfm1i
	/bK9kTBJ7JF29eWqxuEwavDh0Wv/pnNsA/41hbna/h2lRc/4fXpJblR1HUfaMUKWLC3k
	G4Lw==
X-Gm-Message-State: AHQUAuYZpCKzBCDZ7jtMB+TTRNjnkUU75g7W5LTi7hiKjIs2WZeCWv17
	cxN+9+419QTAHksmpy6SfkH//HoQkf8D9roUV+4=
X-Google-Smtp-Source: AHgI3Ia5kankt0/sgta6GXgwFsrFP1KOThybOyBK5AHTDkZtezR6dlhGtVWhA7VCoJ2M67f59ZUEFQjethMI/knATN0=
X-Received: by 2002:a37:a7ca:: with SMTP id q193mr7325193qke.102.1550941514328;
	Sat, 23 Feb 2019 09:05:14 -0800 (PST)
MIME-Version: 1.0
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
	<2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
In-Reply-To: <2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Feb 2019 09:04:48 -0800
Message-ID: <CAMKF1srCoMu28YEAN7kUNT0BBV33OxdguZ4LQ+Qvf_SMom5KOQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Sat, 23 Feb 2019 17:05:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Feb 23, 2019 at 7:29 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2019-02-22 at 20:49 +0000, Manjukumar Harthikote Matha wrote:
> > >
> > > You might be interested in the yocto layers for tensorflow,
> > > tensorflow-lite and
> > > caffe2 on github here [1]. I'm not part of the team that developed
> > > that work but I
> > > forwarded your announcement to them. Perhaps there is the
> > > opportunity for some
> > > collaboration on the platform independent parts. The maintainer
> > > details are in the
> > > readme.
> > >
> >
> > Thanks for the layer Hongxu. I agree with Steve, it would be good if
> > you could collaborate with meta-renesas-ai and introduce the layer as
> > meta-ai under meta-openembedded.
>
> Please don't do the meta-openembedded part!
>

I would agree to not make it a sub layer under meta-openembedded, but it can
be hosted on openembedded git infrastructure, I dont see much problem with that
if thats the case

> I believe that meta-oe is too large to be maintainable and that we need
> a larger number of smaller layers.
>

There is a fine balance to be had, that I have come to realize over years now
but AI is large enough and segmented enough to have a layer of its own.

> Having tensorflow in its own layer which as a specific purpose and its
> specific maintainers who understand it is in my view much more
> desirable and sustainable.

I think its a good idea to have various AI infras in one layer
including tensorflow
unless we have large enough dev community to maintain each of them so I like
meta-ai conceptually.

>
> Cheers,
>
> Richard
>

