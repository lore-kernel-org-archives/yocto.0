Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DACB4E00857; Thu,  2 Oct 2014 03:05:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B581E0074B
	for <yocto@yoctoproject.org>; Thu,  2 Oct 2014 03:05:04 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id w8so1525459qac.33
	for <yocto@yoctoproject.org>; Thu, 02 Oct 2014 03:05:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=48kGEAkTjV5SDyrMpqs//+YPnuucsjzXW6tjbfDJ3GQ=;
	b=jCEQn1pHrCk/7preTz8V5KEjgTskGxf+0BdyCSVY1UsFASRT8LoJIgWSAI3d+9C7Ov
	b6OM22GNcgn/kG3WpF2WF9zDpzH4iCus77B9T6E2m6RlAH/rSXRSvIsW8FSXsIhTy1ok
	xakGNEGVsQHm1E/YFSXCvp7RC6fPWKh8WJ3DE7YATgiOb1AE3e4Av/EX8U/N+39SRAkq
	THpiw0TAbSeRPxe+J+xH7htycOVom60Kjeh+r4Q+s3trMNW6AVOO8anGGpumGrheh54K
	AIRRr/A0ydNrvLV4vD3ojlsVgOso0diDdrW+Tq87+22SbmlqUvZoRpJfpOPci8GEvlmZ
	enwg==
X-Gm-Message-State: ALoCoQkviIuodWu6d4F1l6FNxMd+It+g2sM88hIGAoQy0VHZ6IFsoqj8ZQS8ivLMxj4nHYWf8iWJ
X-Received: by 10.224.104.2 with SMTP id m2mr85607789qao.52.1412244303622;
	Thu, 02 Oct 2014 03:05:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 2 Oct 2014 03:04:43 -0700 (PDT)
In-Reply-To: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
References: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Oct 2014 11:04:43 +0100
Message-ID: <CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
To: Oliver Novakovic <Oliver.Novakovic@alpine.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recommended Hardware for building
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
X-List-Received-Date: Thu, 02 Oct 2014 10:05:08 -0000
Content-Type: text/plain; charset=UTF-8

On 2 October 2014 10:36, Oliver Novakovic <Oliver.Novakovic@alpine.de> wrote:
> Can anyone recommend a reasonable performant hardware setup to use ?
>
> What should be considered ? Are there any pitfalls ? What about bottlenecks
> in the build system ?
>
> Specifically:
>
> How many cores are recommended ? And how much cache is necessary ?
> How much of the main memory does Yocto really use ? Is 32 GB sufficient or
> should I go for 64 ?
>
> Does it make sense to use two SSDs as Raid0  to get builds faster ?

As much of everything as you can afford.  :)  The build isn't heavy in
any particular metric, so don't sacrifice RAM for SSDs for example.

RAID 0 over SSD would be nice and fast, but I prefer having a good
amount of RAM and a tuned ext4 (no journal, long commit delay) so data
doesn't actually hit the disk as frequently. Keeping the actual build
directories on a separate disk is good for performance and not causing
data loss when you lose a disk.

There are people that have 64GB in machines and then set TMPDIR to a
tmpfs.  Surprisingly this isn't that much faster (5% or so), but it's
a lot easier on the hardware and power consumption.

Ross

