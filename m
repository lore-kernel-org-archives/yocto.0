Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 170B0E00C19; Wed, 18 Apr 2018 04:13:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89383E00A26
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 04:13:15 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id j10-v6so1193482oii.12
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 04:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/tIUWtzKis4Hf9t/PVtmhaTUT1Nv0Y+XzRxusa63bnQ=;
	b=e+DFcRGRZJ7AhiCXZsMkeYggVjWNvtMBw/mbTagSaHu8ONFErNNm7tTOFTaUJ49n7J
	nqgCwZhu88jjU3aAOjFXcirIJc1pQgCENSxm6mjChaddozy/9xysr7Xx6uphIOLbF/Mm
	2Yc69Dq9RsbFCOSdWb0b7l4LuV0O3ebXjFMQPPCYyREaldaaMCKfk4K1Bmkafl3fQyLx
	fRkZGv5cqFNj/vpmteXYrqaymfaP19xDU0v7k0IT8fyMXKdyYU9Q16YWZ88jcIeE0dVK
	lA1Sc6MKx+iP21K1jEa1q67L+aq1Ns7jETlqq71oMm8YKiy/4E7aJZ42VD7srDoNyko/
	9vLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/tIUWtzKis4Hf9t/PVtmhaTUT1Nv0Y+XzRxusa63bnQ=;
	b=I9dnfPT02bHls0mGqhjrMTi/K46L7yr90W41tniNDbBKo0rLYI4MwOx/iGEN1TJSKH
	hENjqnKmRNZ0HajWPIn9cjciXs3YMJydZFkcefHaoL1OTJ4G7r0SGd7I7UmVTFfa0NzN
	Kl8ODOMOG/UsDPl6aMg/+iVHY0wmyIN8j5tSEl8pQK3A904sYcmvjsTV6L1VR+MC1asY
	EdVb4LUGbPRoPu2oiLT0G+YhhXGNzzp/RGd3UHuqqy5QjikxR+YT+AvHkLpdP7MvOzsn
	Ymk1nD9AKeIeF+eLEwmgy4KjmDpzmG9wlGLitdbf3OrMjVo4aI3r2FGtsp5iTekEYc5B
	JCSA==
X-Gm-Message-State: ALQs6tDEMaN9YL4Vu1pTWxgFKLekVj8zpzsMY2xXXH5Jpzx4GwygL/Xj
	e0C5rdNyRQhBphBzk0asOZHuENsUZHXX+JpgErStXQ==
X-Google-Smtp-Source: AIpwx48WqVqciigi/tCjdgOSk8DYiLAlKNd7trvbTrxkQ9TMYMwTRZlm+ej7e1ydRtHw9VCFYE7hL3bcbupOGyKq9o4=
X-Received: by 2002:aca:d09:: with SMTP id 9-v6mr905491oin.170.1524049994854; 
	Wed, 18 Apr 2018 04:13:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 18 Apr 2018 04:12:54 -0700 (PDT)
In-Reply-To: <cover.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Apr 2018 12:12:54 +0100
Message-ID: <CAJTo0LaXjmRt1fo3+-6_6X7mxJ7E8_itdRGYygGEqAT5NcASQg@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/4][layerindex-web] bug fix and performance improve
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
X-List-Received-Date: Wed, 18 Apr 2018 11:13:16 -0000
Content-Type: text/plain; charset="UTF-8"

On 18 April 2018 at 12:04, Robert Yang <liezhi.yang@windriver.com> wrote:
>   fixup! update: don't stop on unsatisfied layer dependencies

Pretty sure this isn't what you intended.

Ross

