Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E945E00953; Tue, 14 Feb 2017 03:36:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB914E0089D
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 03:36:12 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id c85so15403561wmi.1
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 03:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fN4OFogBZ2avMinXy0n9y9ivvdIMvuIt/5b9yDY7kl0=;
	b=NoeabUsA2wmwy2RXWJnMOak89WpMkN4H4GvD30M5kpwsBO27bI1yWPsA1Hj+t0MNRA
	H4ItFLqSw2axHEh/LxF1+sUY40hvNT5FCcPSrRWTHi5FGx7L7uZucjZkTuHl7BrJECoh
	7Wpo7LgVOW0BU38mp0bvKHFPWR+/xgze+uR+knM9pbywyOPY+u6fe7TPj2jt4BmxIHoS
	v+2oy/muoRRMMNAQorO8+G5O2W8C00269KI4VFPSdInMbhm94tvLKx2GVYXSI62XnhB9
	9nb+LLkbq1oBKDHHdtQ78F1mE+Iu+cR42TvWw86RdWSfCezMAluWLVJzTYDXcoS7gq2l
	glXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fN4OFogBZ2avMinXy0n9y9ivvdIMvuIt/5b9yDY7kl0=;
	b=QRcpsmrCZthHmyIpuRzy8SowLrSj2QpJ1sM4jVbFlb0VgAIOA37NbOfrmwwxiIkCSn
	NVdD5WP68ZfWybGOVukH42MQFtxk6tj9Xo4Kipi9zPWiPLdoGb22JnBFjs2VWdGGFKef
	udCEs6q7u7XNJj2yZZgsPtbzmxALiI45TBPjK5Ce8dMWW08jqOgdouf+y2Wd7/CzBMBx
	UhZ24HTs7p+//r1S0vUnZaari9xrql3a4sYNXyd55BW71lT0BsvX0GegoSPGgjst/fQb
	HHSOKSep99cmkeP94DUzg7O4ibm+uTJHLpd443GtOc0lLq1vmxb6s9Wl61KTBhg7Lf9h
	VPkQ==
X-Gm-Message-State: AMke39kOj4tp0sbrFzRDXcHKxV8f8oCG2pR3Uhl5p4H/duHUVg9R9SAenSE5sx5yNA7CFAVnn55y/c20poQPXg==
X-Received: by 10.28.13.16 with SMTP id 16mr2732370wmn.101.1487072171401; Tue,
	14 Feb 2017 03:36:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Tue, 14 Feb 2017 03:35:50 -0800 (PST)
In-Reply-To: <28d2a024-7e72-99d9-0f80-8495b2a244c5@3mdeb.com>
References: <28d2a024-7e72-99d9-0f80-8495b2a244c5@3mdeb.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Tue, 14 Feb 2017 12:35:50 +0100
Message-ID: <CAD4b0_JdiAypT6Faay39XQAFxRrKxsoeCftPUTZX99hqZjayfA@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, piotr.krol@3mdeb.com
Subject: Re: [wic] Fixed size partitions (--grow)
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
X-List-Received-Date: Tue, 14 Feb 2017 11:36:15 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 14, 2017 at 12:20 PM, Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
> Hello,
>
> I have a question regarding wic. If this is not appropriate list to ask,
> then
> please point me to correct one.
>
> wic seems like a really simple and powerful tool. My intention was to create
> disk image with multiple partitions with fixed size. While the first part
> seems
> doable, the second does not. I have found a suggestion there [1] that recent
> wic may support --grow and --maxsize switches. As I found out, it does not
> (correct me if I'm mistaken).
>
> So the question is, how hard would it be to implement those options and
> what would be necessary to do so. Those are available in kickstart [2]. As
> far
> as I understand, wic is based on kickstart project. Do you think it is
> desired
> that wic would have the ability to produce fixed size partition based on
> yocto
> images?

There's a --fixed-size partition option, albeit it's not really that
documented. See `wic help kickstart` for details.

We're also currently using it in Mender [1] when building disk images.

Some additional usage examples can be found in patchset adding wic
tests that I posted [2]. I don't think it was merged and unfortunately
I didn't really have time to rebase.

1. https://github.com/mendersoftware/meta-mender/blob/master/meta-mender-core/classes/mender-sdimg.bbclass#L154
2. https://patchwork.openembedded.org/series/4708/#

-- 
Maciej Borzecki
RnDity

