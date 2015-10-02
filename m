Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 607C7E00C6D; Fri,  2 Oct 2015 14:35:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AB55E0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 14:35:00 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so46919673wic.0
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 14:34:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=Br8CWcpX9rfedevXjdsQ5AEQHcfCzA9NSbIzc1pLPAo=;
	b=Ij4GZuMzq4JcSiA4yIj+ipQHRuPXQB7h3w78uH7GrSlt7X4dRZiECxmqa4FKNHq2LB
	1kDjhSWFn1mt8QxWmDzzobCVa2UWYQJca/w2SWtVWEeGmEcH2RqnYOWE4OjChJDscCeB
	Z1qH7BnoEoncYfYc1uKS1H18/WcK8+LjcBzzwucD+Y5Q+fwIb6g/hAxrUGvdTHB5mWtY
	crT3zb6CDtlOGxFW/s1rStuvyXFFK42Ogogay2ApZ9M4ZMrzpJlAO+r/AnyIcfTJGcXF
	F587ljli3YM0/LAAfnbAjx8x4zTNzAE376B0bi4AKVt2Ngxurm58JahidT6Zubfn/k0x
	VdHA==
X-Gm-Message-State: ALoCoQn9TR9cFMpoOlqlMnQjlYotM9O9FVcdrcYhL1g/dDlJp7RLPwI23IG/OftT6yHlpuiJsuCG
X-Received: by 10.194.84.42 with SMTP id v10mr20731258wjy.1.1443821699772;
	Fri, 02 Oct 2015 14:34:59 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	c8sm13194171wja.36.2015.10.02.14.34.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Oct 2015 14:34:58 -0700 (PDT)
Date: Fri, 2 Oct 2015 23:34:56 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20151002213456.GB3484@resin>
References: <5604850F.2030108@eins-plus.de>
	<CAMKF1so1qMH=FNzoj0PzE7FN1FeGiLM=mcq-ywYfRziO4Cb-Ng@mail.gmail.com>
	<CALbNGRTRh6ezt416=z2qbBiRQnVUObesOrMWtQTgyPs3N7u8Dw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRTRh6ezt416=z2qbBiRQnVUObesOrMWtQTgyPs3N7u8Dw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] compiling userland
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
X-List-Received-Date: Fri, 02 Oct 2015 21:35:04 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Sep 27, 2015 at 10:24:28PM +0200, Andreas Müller wrote:
> On Fri, Sep 25, 2015 at 6:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > Can you try the patches from
> > https://github.com/kraj/meta-raspberrypi/commits/kraj/master
> >
> Hi Khem,
>
> Because of running into same issues I've tried your branch and get
> errors as attached with current oe-core.
>
> Off-topic note: I think this layer is totally under-maintained. There
> were many patches send that were not even commented. This ends up in
> forks (e.g yours - and yes I've seen your efforts in sending patches)
> which should be avoided.
>

Started to get back on track. Hope this won't happen again.


--
Andrei Gherzan

