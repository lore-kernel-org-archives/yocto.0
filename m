Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEE98E00B8E; Thu, 12 Apr 2018 05:59:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f179.google.com (mail-ot0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F7D6E00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:59:49 -0700 (PDT)
Received: by mail-ot0-f179.google.com with SMTP id 23-v6so5860465otj.0
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o9Rm9ZKXNTNercpFIlcuKwa//fCJ+2egtSx1TODtrt8=;
	b=kerd6nRTnEfq25WDiQqT5rPl/CQHAzMb/cl0Nq/9d6M9BtcXhR2xCWSR3ciGWKEG2K
	eR/B1OAbsaS43RgcxqlH0J4vwA+vPoJXTF+YxelydH2mDYAi6UwZxFw3lLq6L+iTX9p+
	2SS8oH1uM9nr3rxUimYYLffle484aVpsJ0qvKvsD2nd6F0tTzZlMZXy6vphHhyNb5lyX
	PpxVr1vmHlAks16PYGYxuTmi6irpUWe6lbjP1HciqS03iW2luzJGMP1NRK0+Gd2t4zyN
	UUZ9JQkoeoW2O9hSJ4ouX+K60b+dsTZy52I3M6+NJ1A9WX0asQZv4LwlkyEDx7ctksIr
	fScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o9Rm9ZKXNTNercpFIlcuKwa//fCJ+2egtSx1TODtrt8=;
	b=RZY5jpffUK0W+PhKOCgqsVdxAJHHPXf19XZNwY8lxNX4QbRDMCe2uKyuCPD+V/SFg1
	FIw08mJtujyhKAYrgZUQSZdMygT20XOqdU47W/7F7s3XYQHDF4ROcmDLfz9IxIpB+Q7H
	RdojZg+T4DMKwrpG0JWxwdwBHmwQVzuDJKPhKYkWeFf0DIvWrBYq10rM9ADgXUObBFz5
	MoJPP2dr9/NwFe9YywRLs1rsgZzh7G1yNtZUlQUxJiBNMtdgmSSh+l7o1TUwgH3VrsxG
	CIqYIyiXJvGzr7yJ5/ocyuMwMm5xP9MfwJDo/Eu2M901erMF6BOgXO/t/Nc5t+AVCHwA
	gY5A==
X-Gm-Message-State: ALQs6tBj3gdHG9MbzoBg1O6YIUgV9DTuWCUv9UkHw4xHpuEXRQHgoKxG
	HgKCuNQ8+I7N+n1AP203axb1TSgn7bTGXUUfVpfJUw==
X-Google-Smtp-Source: AIpwx4+kqiLXNRbFFlyKnX4AxhOTCtPHevZkk+QiWYu95k+WP8vftqDjHllwqNUNEyVtVCi5Xx61peN8bDQs9P35Mqg=
X-Received: by 2002:a9d:2ce2:: with SMTP id
	e31-v6mr523641otd.135.1523537989526; 
	Thu, 12 Apr 2018 05:59:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Thu, 12 Apr 2018 05:59:28 -0700 (PDT)
In-Reply-To: <CA+chaQfAWs4J1gPVwZ+AdCrHMAXUhUzPmP4hUFTzLJGz1=0jug@mail.gmail.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
	<CAJTo0LZhxZNxHwOLzkWBXixKqU6i=pUQB+ZncMsCaXEwuCEJog@mail.gmail.com>
	<CA+chaQfAWs4J1gPVwZ+AdCrHMAXUhUzPmP4hUFTzLJGz1=0jug@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Apr 2018 13:59:28 +0100
Message-ID: <CAJTo0LaCr1-+DPUfWZa4FP2hFbD0dZob9RGh=6=O=DU5WMdkUA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 12:59:50 -0000
Content-Type: text/plain; charset="UTF-8"

That is an excellent suggestion, yes.

Ross

On 12 April 2018 at 13:54, Martin Jansa <martin.jansa@gmail.com> wrote:
> Cannot LAYERSERIES_CORENAMES added in rocko be used for that?
>
> On Thu, Apr 12, 2018 at 2:47 PM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> I think the message here is that we need to embed the oe-core version
>> in the metadata somewhere...
>>
>> On 12 April 2018 at 13:11, Richard Collins
>> <richard.collins@guidedknowledge.com> wrote:
>> > I get the following for DISTRO.
>> >
>> > DISTRO            = "yogurt"
>> > DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"
>> >
>> > Can't find any reference to yogurt so I assume this is something the
>> > supplier of our SOM's has done. Looking on their Wiki it seems to be
>> > based
>> > on 2.1.2 (Krogoth)
>> >
>> >
>> > Thanks for the help. :)
>> >
>> > On 12 April 2018 at 11:21, Alexander Kanavin
>> > <alexander.kanavin@linux.intel.com> wrote:
>> >>
>> >> On 04/12/2018 12:44 PM, Richard Collins wrote:
>> >>>
>> >>> I've inherited a Yocto project that I know to be an old version. So
>> >>> one
>> >>> of my tasks is to update to the latest version. Before I do this I
>> >>> would
>> >>> like to know what version I have. The only information I can find is
>> >>> the
>> >>> bitbake version, BB_VERSION        = "1.32.0".
>> >>
>> >>
>> >> When you run bitbake, it should also print the values of DISTRO and
>> >> DISTRO_VERSION. Those should give a clue where you are at.
>> >>
>> >> Alex
>> >
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

