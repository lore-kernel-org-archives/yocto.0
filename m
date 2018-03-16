Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1D44E00B18; Fri, 16 Mar 2018 11:59:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B8AE00B18
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:59:02 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id b7-v6so2369018plr.8
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AU1s9PNVgGCHDGXcUFbbpywsfe48eGBEyi14hon45XM=;
	b=NspQx5xLrwm16nKAHYygJ664Sg4IwExeKPcH2x1apO5llufByUK3TZ7dxr6x28TyOg
	18NLiBG7shpfOmAVLedh83jWGBJ7SuI7cy9xVgDlr0sORcD38hRoB+cmZEFfF0/CaEVX
	iC+GAFco8qoxYOgv8h/V1lsYamgVZM2urtgqbsVdXe75UlDohvc6yBFhIJdAmFvnFU/S
	PxD3t0biUIngDr8xQOXtFJj31EKK/gXiykqCThfR0YQh8RyhKFtsYls8NTu/sSzZFzSs
	XJfo3NoammcZ/G44BHg89/xfngNiP2VO4/GPnqdKQIGoIjbLa7RA+mqRM124YVXAlRF8
	oipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AU1s9PNVgGCHDGXcUFbbpywsfe48eGBEyi14hon45XM=;
	b=JfQ1IFnufc6Pw2mxq9AeWZUHkmHHgChnAc5/OJ5CEHYjXtVn9rtLNA4x0HEp9eAREa
	ouboOv36ih74T3zgk0e4qo81BOTOAGudZg1yhdq/cIBSOGaKHieSf0WGeVzlGQMl3Xul
	43rdxaCffTKyEXMRy86bD5gh3R3ZNY/dq+pyCKzOwT9Tm5LX6gjjf+OLaqZZRuao/WLh
	F+emcb67q3a7Wr7Cit//LbQoFUJpNt+9hO474SlOE1fgl/eoTotF3nHVCU5D5G1ubAEb
	8qqjt4Y4zbpvx5SFUl5lpUx5920Xj3R1mUtZHYeLIwUjQZUNbcaD8BXPdUqoCNr94PrS
	byvA==
X-Gm-Message-State: AElRT7HI/6wmxngJfLt5K/cpsbdfpi7kpE29it66sD53vHJjPzBHCZHr
	9ditrNd0l8dGEksqL+9UvhcQ3Soc5YhVNdg7/ko=
X-Google-Smtp-Source: AG47ELtegVv1ay8KPa76vRSUPCh+4wDM3iGliYSD82tcdKO8oVX84GNrXg/TVuPAk9zS2Gm63UN/ZvpNI2aLdqfVAZg=
X-Received: by 2002:a17:902:158b:: with SMTP id
	m11-v6mr3223576pla.300.1521226742052; 
	Fri, 16 Mar 2018 11:59:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.182.197 with HTTP; Fri, 16 Mar 2018 11:58:31 -0700 (PDT)
In-Reply-To: <CAO80zYszdMURcr1jTWnEcY3_hQ17m=Er1eptHndyyOpqsW_p9A@mail.gmail.com>
References: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
	<CAMKF1soMC8sPr_LZZN=gkvEUV_fiQ9dSQ1O+7mCJcT01-zOROQ@mail.gmail.com>
	<CAO80zYszdMURcr1jTWnEcY3_hQ17m=Er1eptHndyyOpqsW_p9A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 Mar 2018 11:58:31 -0700
Message-ID: <CAMKF1srZCuUsDVXMiAGpDFjVhHxNSO5O8m2OpRPuQjfxgihCRg@mail.gmail.com>
To: ikjn <tiffang@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How can I check "shared-library-to-package mapping"
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
X-List-Received-Date: Fri, 16 Mar 2018 18:59:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 16, 2018 at 11:05 AM, ikjn <tiffang@gmail.com> wrote:
>
> On Thu, Mar 15, 2018 at 11:37 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> On Wed, Mar 14, 2018 at 8:50 AM ikjn <tiffang@gmail.com> wrote:
>>>
>>> Hi.
>>>
>>> My recipe 'A' installs pre-built shared libraries, but I get file_rdeps
>>> error on
>>> 'B' recipe's package_qa task, which has runtime dependency on A's so
>>> files.
>>
>>
>> Yes however it depends on SONAME being added to the shared objects when
>> they are linked otherwise shlibs code is not able to auto detect the
>> dependency
>
>
> Thank you, now I got it!
> I thought only file name is used for run time dependency matching between
> packages.
> SONAME matching is also executed in build time dependency check when
> DEPENDS_xxx is given?
>

its primarily for runtime dependency checks.

