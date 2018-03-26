Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BA1EE00B18; Mon, 26 Mar 2018 02:20:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C07BE00823
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 02:20:42 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id y128so22398354iod.4
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 02:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sin2dpj0PeD6yKpS00xLmlkhc230tFLlGDNqhcxlB/M=;
	b=Sj0EFORjniteumCozUpDDoyxX8ud8FFW6kGfEwUoTxGY34hQNKzkfbUMSEbo1DcBYs
	Kko3rsxAQNBfP5bv6QvIucSA0hUz/phzkNHhcpg5T39LH+JoB3jvxtWm/gJB+8/5esXw
	JLuHjaCqTHZLBoORr+s4X00BqeSY3skGQPDhyyiA61inYv7g/cvYqmoLvfPfna+QJeKx
	2/WWE8SzloqIynvqDgpaPjCD/rP5cH3Q9kB73VjJf3Y1pZoPV8PSavSTcOAAK4Xu/YpX
	1lpkdCYmk4R9LcoqAGPjAQ7jfeIRSbrC9vCBvDyCCvOfNAMVZsqMjWyuOf9e2mT4EUTJ
	4hIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sin2dpj0PeD6yKpS00xLmlkhc230tFLlGDNqhcxlB/M=;
	b=aGflhT82e+cmWHj8+ULtPsvauly9qUbyKp+mWItLCg9Dw/a748st7IOk/i53TN9zxP
	kElFtqpByuXFJ8fKBEcQJfxSKuQ6qDDcSAEN8c4mY1vuDKeEPjWofg+hHvekcugLU4o5
	qkPvx3pQICbnGor9KcYpmm99laQZEFO6Xy9DLgi+7aDKKJ+WIyJjP9VE2i4jwczWGBqf
	HbH/fW6N5GsEXMHpE8Xwr9Z9Elfyc8yzEZipIhQ0cffFNWlEfJMGNNodQNQhuNGs2n/i
	v8v7ABNqnY6GjWRLXulVADyk8ZcSN0PukgHWK/lxc6rPVZ8LSxxk/iEWidf4KJOaQyrx
	u13w==
X-Gm-Message-State: AElRT7GYLeQfVr9tnLSsp3yyoTBfG6E8UFAtd/g3FKb00Jn4P0rJKnlh
	6SQIRpMTSTIpuGMBrA0bz8yMUdho6wcU4LyRKg0x0A==
X-Google-Smtp-Source: AG47ELsWm2y3PZ/xQG+iivU59aKgJ78Jdl71PrBuFcMbMpEt8pODlLBwxqhac6R5pYIMeq4oL3z/3vLSx9Ad0dDb6O4=
X-Received: by 10.107.7.68 with SMTP id 65mr39747396ioh.216.1522056041693;
	Mon, 26 Mar 2018 02:20:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 26 Mar 2018 02:20:21 -0700 (PDT)
In-Reply-To: <DM2PR0201MB0767D00687D6442744F7FB23BCAF0@DM2PR0201MB0767.namprd02.prod.outlook.com>
References: <1521038859-32429-1-git-send-email-devarsht@xilinx.com>
	<9478134a-8f67-334a-cfc8-d7a07bd1fe86@linux.intel.com>
	<CAJTo0Lb3o_8cOG7fCLNwsFdPPEx_5-u-qDASPHzHy8kXC2cKAw@mail.gmail.com>
	<DM2PR0201MB0767D00687D6442744F7FB23BCAF0@DM2PR0201MB0767.namprd02.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Mar 2018 10:20:21 +0100
Message-ID: <CAJTo0LbaB20fLt_=io7v5Omp8_UbrEwgTU7u2+6LH=CeeEOoCA@mail.gmail.com>
To: Devarsh Thakkar <DEVARSHT@xilinx.com>
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	Nirmala Pelluri <nirmala@xilinx.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>,
	Varunkumar Allagadapa <VARUNKUM@xilinx.com>,
	Maulik Desai <maulikd@xilinx.com>
Subject: Re: [matchbox-terminal] main.c: Add support to run user command inside the terminal
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
X-List-Received-Date: Mon, 26 Mar 2018 09:20:43 -0000
Content-Type: text/plain; charset="UTF-8"

Sorry, I failed to push.  It's now been pushed to the
matchbox-terminal repository.

Ross

On 24 March 2018 at 15:50, Devarsh Thakkar <DEVARSHT@xilinx.com> wrote:
> Hi Ross,
>
>
>
> I would be glad if you could please share latest updates on this patch?
>
> If I am correct, last status was that a build test was triggered with this
> patch.
>
>
>
> Thanks & Regards,
>
> Devarsh
>
>
>
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Wednesday, March 14, 2018 12:33 PM
> To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
> Cc: Devarsh Thakkar <DEVARSHT@xilinx.com>; Yocto-mailing-list
> <yocto@yoctoproject.org>; Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>;
> vcu-team <vcu-team@xilinx.com>; Devarsh Thakkar <DEVARSHT@xilinx.com>
> Subject: Re: [yocto] [matchbox-terminal] main.c: Add support to run user
> command inside the terminal
>
>
>
> On 14 March 2018 at 18:44, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
>
> On 03/14/2018 04:47 PM, Devarsh Thakkar wrote:
>
> Add support for commandline options (--command or -e)
> using which one can provide commands to run inside the terminal
> as shown in below command :
>
>   $matchbox-terminal -e <command>
>   $matchbox-terminal --command <command>
>
>
> Ross, who (if anyone) has write access to the mathcbox repo? I think
> matchbox stuff is in a bit of limbo currently?
>
>
>
> I do, this was having a build test earlier so I'll be pushing shortly.
>
>
>
> Ross

