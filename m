Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D629EE00576; Tue, 22 Jul 2014 06:27:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22CF3E00547
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 06:27:32 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id s7so6462606qap.37
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 06:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VpmYjLtRRK1HtLkabYjcIAVXvLsQ5GHf7e+6A27i24U=;
	b=dGqmIor+HxEcPsherFltJ/5dLK8FMLC/PTwySW3Cp+759BqyKtgfqyIvu59VM8eYcy
	JM4tbAr6PjvhL+oLxYoIcFvE5uSUdfjXY5pMTeL8VlZox7n2p4tOK7jESBWEDYckbgRb
	lbCoHN3Qiiedfr47AxQ+WtFEAy0fuwkEkKB/w8DaByPTt38v75irOAvOa7mIO1+SrtEr
	6n8Ou6TLi0lk6eB+xzOBsIir8ecUsCmUXH0rYf1ladnrq4NsO09gNRY/wiN1DFNGZtcY
	vu0inwE201opHZbMa3tDwvHtydAmakmv2yOGZ8N08lhn+wdLU+wYcERwQ0NOsatcZ6bj
	j19g==
X-Gm-Message-State: ALoCoQnM13vfrQ72Mwpk6MLIbytHx7PzH7sEKdaOIvi8idA65IDHLMJo8RMTPkbQK6cBdlF6SKx/
X-Received: by 10.224.120.68 with SMTP id c4mr55766953qar.17.1406035652192;
	Tue, 22 Jul 2014 06:27:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Tue, 22 Jul 2014 06:27:12 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407220913020.4099@localhost>
References: <alpine.LFD.2.11.1407220913020.4099@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Jul 2014 14:27:12 +0100
Message-ID: <CAJTo0LYW2b9mE95EW+uK-H8E2ihtwmGNpk0U1Mz2PmzB_NX==g@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rationale for including checkouts in both layers and yocto git repos?
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
X-List-Received-Date: Tue, 22 Jul 2014 13:27:38 -0000
Content-Type: text/plain; charset=UTF-8

On 22 July 2014 14:15, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   i just noticed that, across the two major repos for yocto:
>
> http://layers.openembedded.org/layerindex/branch/master/layers/
> http://git.yoctoproject.org/
>
> there's a wee bit of duplication in that the second repo above
> duplicates a lot of the meta- layers found in the first location. is
> that deliberate? or can things be more properly placed in a single
> location?

The former - the layer index - is a curated index of every known
layer.  It doesn't contain any layers, and is merely a (searchable,
human-readable, tagged) index.

The later is the list of all git repositories on the official Yocto
Project git server.  It contains layers, kernel forks, applications
and more.

There is no duplication here.

Ross

