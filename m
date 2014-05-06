Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F5FE00B1E; Tue,  6 May 2014 11:40:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB3BE00975
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 11:40:27 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id rd18so10188579iec.21
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 11:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wuVIYNDbR/1V3gw3V9y3b7T0U1KyPLzrmvpTTxdtmj8=;
	b=hNsi0ECOG0dXGEsWicoCkC1k26VOdTBEcwQrirt+hjQMjjssn1O4lv0RQasBrIOnbw
	q/55yKOubNaA2ZcmJSEDuL1TfO5O1oDGX2I8gBaTql2Ct4dZ4iEg7CNTMaYkHwVEJo3x
	67SRVepOKaFAsfEM3i5akvyAlV4sXgqEiduVnPObN7ELCAcPocYqtEOYieFZYjhZXMYs
	KVZhMLa+rXor7ZxP0iTpWxL4yC6Vsmym/EAC1bkFYKbvkAWYE9wuzP25CmHTURprSM29
	BLsTdmRtdTPY5QOdccMLZloJCfUScZlKHt2L7mqKWKqyqWZuFNZ0LOgHO5zDg+7oBkXX
	jQlQ==
X-Received: by 10.51.17.5 with SMTP id ga5mr34985758igd.2.1399401626882; Tue,
	06 May 2014 11:40:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Tue, 6 May 2014 11:39:56 -0700 (PDT)
In-Reply-To: <CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
	<CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 May 2014 11:39:56 -0700
Message-ID: <CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Tue, 06 May 2014 18:40:30 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 6, 2014 at 11:34 AM, Diego Sueiro <diego.sueiro@gmail.com> wrote:
>
> It's hard to say. But when I try to execute it I receive: "cannot execute
> binary file".
> And the output of "file" command is: "data".
>
> My bet is that the system was powered down during the update process.

what happens if you reinstall it ?

