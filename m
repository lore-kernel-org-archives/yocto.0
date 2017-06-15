Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C931AE00B9E; Thu, 15 Jun 2017 10:49:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02A1EE00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 10:49:38 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id f90so1035625wmh.0
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 10:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Wg0bXTtHQjsac60AjDa1IABt7L/z6tJhg0xTUPw0pz4=;
	b=bM+o10HfgRYFJH466mIPFPzsrt03F64anucuZbIRkg3DGos7CLHwhmS93dwnaaAS71
	IMqiEI7MokP3sjGRsUWdihxrFlivZKjpUR5SK3rUoEkBWN29nyBqjlLyqgENwBOdOvzv
	wMb1HN9pThWycYqqGDj6Q8jBqcRnDhbQKvVnWVZ07lAE8ePU719tEDR7BpwRr8QEEqo/
	LjKDhV8PmhcSOPmtLva/Kv6bQ5y2DtzKmkXrei8ZHy+dkBkdMPB5o097WpkaLVbJnln2
	93jVk+eSAB++v04E2N8IIpaF8JrRWotHjM3C0dIsa8nntCjoZYHtGp6bUIRtMsYX6ir/
	T3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Wg0bXTtHQjsac60AjDa1IABt7L/z6tJhg0xTUPw0pz4=;
	b=JawjkoIizXHaM4KbeB/8FHYig9dFKnTLOHZuwjHHHx4uB4KsxruDvq5oW+C4MDLbAP
	aKnIJUD+LGilORlt6L6bbliTvqSguJAesTvH8KAmRtvT/KNd0mODzt80CSY5+AT/c5b5
	KKiIWJ5V1DANn2PftuPztRCOJ+PYp0mSbJCGuMQd9QA22dt80Z7ssCoynZyMzeqnry+2
	jOfRmDeLLlgDaDieJruFJHW54H1lMcZiJkoz57snnK2UC/LyObsqwZO8FRnzNKZEsIru
	bVP1BmHcBStqZeSJsUvU32bcfJRxMIO2CB4f+7Rw6MDPOucDYdy+4KcKdTU15x6PqX+/
	e+bQ==
X-Gm-Message-State: AKS2vOwCdDQJjUh0hR0itsbP8BIXBH0f5Ffy+2pWzmELENczjHYC8iL/
	qqXAPlwerfCICyoe6XdvpI3ALeNEvA==
X-Received: by 10.28.41.193 with SMTP id p184mr4521431wmp.86.1497548977278;
	Thu, 15 Jun 2017 10:49:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.170 with HTTP; Thu, 15 Jun 2017 10:49:36 -0700 (PDT)
In-Reply-To: <CAHiDW_F33q1aas_g+NgdqyHdphx=n4ACkvYCSf5t+bE-QOFOMA@mail.gmail.com>
References: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
	<CAHiDW_F33q1aas_g+NgdqyHdphx=n4ACkvYCSf5t+bE-QOFOMA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 15 Jun 2017 10:49:36 -0700
Message-ID: <CAJ86T=WDF4YquMNjCKrAi+QXguVT=3kxdg-BpU5ZtdFbGG18NQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to build gdb
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
X-List-Received-Date: Thu, 15 Jun 2017 17:49:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 15, 2017 at 8:13 AM, Jussi Kukkonen
<jussi.kukkonen@intel.com> wrote:
> On 15 June 2017 at 10:19, Lm Chew <lm.chew@free2move.se> wrote:
>>
>> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined
>> reference to `_rl_completion_prefix_display_length'
>>
>> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined
>> reference to `rl_sort_completion_matches'
>> | collect2: error: ld returned 1 exit status
>
> Making an educated guess here: Because of the INCOMPATIBLE_LICENSE setting
> you end up with an ancient version of readline that doesn't actually provide
> the API that gdb needs. You may have to allow GPLv3+ for readline as well.

Or use gdb's bundled version of readline, which avoids needing to
whitelist additional packages. Try adding this to local.conf:

  PACKAGECONFIG_remove_pn-gdb = "readline"

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

