Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B69B3E00D26; Tue,  8 Jan 2019 12:00:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 758B5E00D17
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 12:00:05 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id m22so5725413wml.3
	for <yocto@yoctoproject.org>; Tue, 08 Jan 2019 12:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=HEWqFdcKTM1eddklHpaA7v2HJrh2HaX9n9L5xWWwrjI=;
	b=CRuVSxvnJUB1L6j+3p+q9ZExIiMpcwOrSpfzWhyrDsxAxhqGPMD9tZJmjhTinwayBS
	IC9hejiDim58kZZG82mPU1DEIWdE0rdFJGWv0urdsEnCaSQHZLDHq2ddxxeDGGMVKq2F
	LqGr2tIZoM+fu3hgbDtDEci7Nwbjl+yXtF0So=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=HEWqFdcKTM1eddklHpaA7v2HJrh2HaX9n9L5xWWwrjI=;
	b=TY6PVdneJ8o/XUtv07MjN/ZDVKnempwHcbdjDx+p+VzqXnFzL2ezTtyyP9VjKnAq2+
	FltqRit++XdKSB2EFe0R0SYZpO5Jj7//J1Oh//5M3R1DBPsrjGqS3Ga7JCOH8xSDJWYR
	EjQZxK6gHPwveGgLd4/9ovACmqdXmCsxgsprrMju/kRz4TvFpBYdDjfRG2Low6hCq5X7
	7AiQEx8UZBannqumA66vRJZoLSmRqWbHwoAQKYQWbeT1I+v1JJhvFIa/BJA8X5N/fm0J
	e21zRrs2lpQ4Lgrjycmu1Tq8co8UyNisyWTIFQvWx58FzwM3pnxZEDMiWAPnfA2w740m
	EC1w==
X-Gm-Message-State: AJcUukftMXTYrDAAshTM3nzJovsJef7EYvN/rgoCeJeiIxEjXrDdq1rn
	rn2ZYhrNRW6gA8LIMLeBlFfQAQ==
X-Google-Smtp-Source: ALg8bN63DC90W9XufYUrsbcUsvWslngbC/dIdA1jkkANDE/RzUlWOfFrNUJSUNQCduhZ4cFQ8F2WzA==
X-Received: by 2002:a1c:a401:: with SMTP id n1mr2969289wme.101.1546977604524; 
	Tue, 08 Jan 2019 12:00:04 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	125sm15977418wmm.26.2019.01.08.12.00.00
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 08 Jan 2019 12:00:03 -0800 (PST)
Message-ID: <2807dd3a7edf71f4b1d14e385d54184cd07cbc0d.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linaro.org>, 
	yocto@yoctoproject.org
Date: Tue, 08 Jan 2019 19:59:54 +0000
In-Reply-To: <20190107211837.25225-1-anibal.limon@linaro.org>
References: <20190107211837.25225-1-anibal.limon@linaro.org>
User-Agent: Evolution 3.30.3-1 
Mime-Version: 1.0
Subject: Re: [PATCHv2][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Tue, 08 Jan 2019 20:00:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2019-01-07 at 15:18 -0600, Aníbal Limón wrote:
> In stdout reported as,
> 
> ...
> BEGIN: ptest-dir
> ...
> DURATION: N
> END: ptest-dir
> ...
> 
> In XML reported as,
> 
> ...
> <testcase classname='test1' name='run-ptest'>
> 	<duration>N</duration>
> </testcase>
> ...
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
> ---
>  tests/data/reference.xml |  2 ++
>  tests/utils.c            | 20 ++++++++++++--------
>  utils.c                  | 19 ++++++++++++-------
>  utils.h                  |  2 +-
>  4 files changed, 27 insertions(+), 16 deletions(-)

I've not looked at the code detail but the above looks good to me and
will significantly help ptest usage! :)

Once this is in are you able to help update the recipe and pass this
data through to the the oe-selftest json report?

Cheers,

Richard


