Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E7B8E00DAA; Thu, 24 Oct 2019 08:55:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C837E00C25
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:55:05 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id v24so25615863ljj.3
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QEnuhxIngQrfk+nb1bCCXqetAjbTF7q9eXl2/OQDQBE=;
	b=Ik9DTzNxP64/soO+aJr6A0wuiOvkGWaSrD0zEQh16rPGquqGoLrIFoYcXTpem3gTOW
	+vlQ7LaAOPrMx4Xx4fiiVVZyUyUANNWUVzJx6XnZHUYhuE12wLKqSoeNQGmckXQPohct
	VlE5sdjwvzSuPMFKObSoDMO3xXfinNO1v1215Ztbngjvnlkta7k58l2n4jIhgGHydjqe
	9/5f77vcs97Dc7hpNtBLAW1s8b6TS5BL8fJ4VuSI5riTpnVxVysakk7/bvoX1ACCpETW
	TOMz66GhR7GfhEBt9SxVXL4aluMnrCOxQ/ul1w0dRTlzdWy2AUlAmkWCM7TjXSmMZEzi
	S1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QEnuhxIngQrfk+nb1bCCXqetAjbTF7q9eXl2/OQDQBE=;
	b=q1BO73cwZUBohMuhSKofU6cxbdcmu6gOwWoLMUYWSeCpQ4lyA/7PTzqd1IwY1KlQP4
	IxZQjUhgZgvyor8wMxBPcSmJn1ftYy9HX9uE+VIP/xi2ag2o+nYv3nAamkyfL2LoZarP
	IghGTBAFviMK3mfB7z7iHhpeNYUX6eHM839dUJ/OetNy8/VUTcO8YpToHZddJ7JpX8xO
	ihAbZa53SXB6Sed01Cdfqachxtv2QgLJeMlze9apWYO5VFMmEPjLgT5Acqxek2KO9sJr
	84/4LFdCAdACjYraZuBxC20clW2VCLBldiTqcb1H3uHixGUaosaExjxqaap5XYMdVdmE
	EJiw==
X-Gm-Message-State: APjAAAWgJq0V9YoIUk6reEFeLItzewGwPr9JSxcSUokdxG/3n3O3GYV9
	bfTxgUhDK2lwjf8hzqLs7OtqH7EmCTRNCyEzygYMLg==
X-Google-Smtp-Source: APXvYqyIzTvuypv1XUpBetynMc6KJ0cP5ajXMv2tX+1wsfPVXk314Pbbc4F1pcnyh0SBiBlE+Y/hq9ymgENQYazgzSk=
X-Received: by 2002:a2e:9b46:: with SMTP id o6mr10524392ljj.90.1571932504941; 
	Thu, 24 Oct 2019 08:55:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok9yJyq+LkDLNNPpiA=BMEwnpEyzT2a00t146rw-93=rkQ@mail.gmail.com>
In-Reply-To: <CAFP0Ok9yJyq+LkDLNNPpiA=BMEwnpEyzT2a00t146rw-93=rkQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 24 Oct 2019 17:54:53 +0200
Message-ID: <CAP71Wjw1D5Z2Ef3LCWxw7bkiXWYcO0KsSZ6n5mO=RMiNFwUD_g@mail.gmail.com>
To: karthik poduval <karthik.poduval@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: kernel oops/panic stack trace decoding
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
X-List-Received-Date: Thu, 24 Oct 2019 15:55:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 24, 2019 at 5:47 PM karthik poduval
<karthik.poduval@gmail.com> wrote:
>
> Hi All,
>
> I was wondering if there is any yocto supplied tools/shortcuts to
> changing kernel oops/panic log to line numbers in source code ?

it's not yocto specific, but i like using scripts/decode_stacktrace.sh
from the kernel source tree.

>
> --
> Regards,
> Karthik Poduval
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

