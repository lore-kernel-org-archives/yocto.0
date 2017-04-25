Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA5A7E00AE6; Mon, 24 Apr 2017 18:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8E6E00ADD
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 18:41:16 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id d79so21588538wmi.2
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 18:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=imTuOv3ak3qFq7AUDQClB9bg9ogr7jXTVZYc5fPGsPY=;
	b=KCGsTStCk7a8VMOrddNImrj8NFJkar1R1hQvXwb/BGLBZoXghJVBx7qGkOf0ZMWhIZ
	++AsPfAWHx1CxZ6RlZfF3gxrGs0flXzFiZo2nq3nzGVhHsWLxv+3cnBdKYYES2UO32b/
	fZw0C6UoRLo63XCZIm56O7Z4ptqEZDd4pa4ReJfvlibjJWt6KJaLHikdnNHOmoIWA+ic
	lBwcekn9e0TKEnKXesReDy1DhbQsyR+6oXPFyoLv+Kqmf3iVgU7V5+M8ybPhwVRBKqjx
	+SnIv29OTJwnjJfH1yi77PbxVgCILCyNi4obMsfDULgKX7llRLo5Y8XYqar3iUYE+pHv
	6Fxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=imTuOv3ak3qFq7AUDQClB9bg9ogr7jXTVZYc5fPGsPY=;
	b=Yz1h0Gw10obb2lhwmUeCZgwSldiHvH4RnCuLWgTDputTthSW0pfGmUztRriN4FEYkU
	huh0iZ6emT7iwCihUdgaV6JXzAbpgBqvHR2jz+A25DNMFqXER8ooBUZIljAIz+/Ed0Tv
	jDcPMDqDTXoMJ7x2xFCDshNmhgaG60necK7nd8ppFzV+tPrc6MeVPKRipEE/S59slV3+
	t1sKG16FCCtide8V/CxtBcmFmnggADcLPe7GUXB33JvrvWoAMbxh1mf8PLcTNg9GGggp
	pzz/kZfDHOB2SwRiqpyfWS5gzUpbW3Xt6doFnNqfi8LxuubdC5Yr1wiG0bjIFouQPYD8
	IK/A==
X-Gm-Message-State: AN3rC/5jL3vBZwGVbM85alnoXgzUDiRB7aa+Esg/tDuO12zGOXcZaMDw
	UTBl7cgLGzoKZsDSEsG5RmZcHKFtjg==
X-Received: by 10.80.178.228 with SMTP id p91mr3111317edd.131.1493084475374;
	Mon, 24 Apr 2017 18:41:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Mon, 24 Apr 2017 18:40:44 -0700 (PDT)
In-Reply-To: <CAJTo0La+bGDBuJ42yVy79hW2iN3ZhpeyjXrhUApLn-PAi6PYBw@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0La+bGDBuJ42yVy79hW2iN3ZhpeyjXrhUApLn-PAi6PYBw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Apr 2017 18:40:44 -0700
Message-ID: <CAMKF1sqf=hEejwiMGdQyhpXzWeUZLYxkCV2a2H9pS4JkBRz-9g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Tue, 25 Apr 2017 01:41:19 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 24, 2017 at 12:13 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 24 April 2017 at 10:09, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> All merged, I'll fire in a moment.
>
>
> lttng-modules fails:
>
> In function 'lib_ring_buffer_align',
>     inlined from 'lib_ring_buffer_try_reserve' at
> TOPDIR/tmp/work/qemumips-poky-linux/lttng-modules/2.9.1-r0/lttng-modules-2.9.1/lib/ringbuffer/frontend_api.h:118:3,
>     inlined from 'lib_ring_buffer_reserve' at
> TOPDIR/tmp/work/qemumips-poky-linux/lttng-modules/2.9.1-r0/lttng-modules-2.9.1/lib/ringbuffer/frontend_api.h:179:6,
>     inlined from 'lttng_event_reserve' at
> TOPDIR/tmp/work/qemumips-poky-linux/lttng-modules/2.9.1-r0/lttng-modules-2.9.1/lttng-ring-buffer-metadata-client.h:317:6:
> TOPDIR/tmp/work-shared/qemumips/kernel-source/include/linux/compiler.h:518:38:
> error: call to '__compiletime_assert_269' declared with attribute error:
> BUILD_BUG_ON failed: (size_of_type) == 0 || ((size_of_type) &
> ((size_of_type) - 1))
>   _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
>                                       ^
>
> Suggestions welcome :)

my builds have been primarily arm/aarch64/x86_64 only thus far
probably BUILD_BUG_ON  can be replaced may be with BUG_ON

>
> Ross

