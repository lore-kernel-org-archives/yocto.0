Return-Path: <drew@moseleynet.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FE51E00D75; Fri, 29 Dec 2017 07:48:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85AF3E00D1C
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 07:48:45 -0800 (PST)
Received: by mail-ot0-f194.google.com with SMTP id 14so9617856oth.9
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 07:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=moseleynet.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=Fp5U709pLB5Wm6J2sWu8B1Ryl9t+id2g8TWU13446GI=;
	b=mvxCKS+sYWzCl5QH05Z0ntHUVCuCD+wiyIf6LXTW6xJ2UxQMnjTBArVzD3bcZqRJJ4
	bEK6F294kku9qOtRAVxR1Flx/cpmAu6bGhZ42XEr7sohf2/+JogxNXHxN6tx7nihwybx
	2IdRvztF2ydDBlO55+DqaBF/+7bRsQyDrr/jE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Fp5U709pLB5Wm6J2sWu8B1Ryl9t+id2g8TWU13446GI=;
	b=Y8QFY51i8+++ENWiClYCZYV+GhWALWTXpquCJK58jOd41sPaBXm/P5WXKNP71FzLfg
	3AmjlaBXbSTEPn4yMINpn/t2zn+sfi8yvw2WiCOIoPEnIlCkQbJRKcn/4Qh4IaNE/4jd
	C3BPAREgrDtubeyCWpVwMjaAPf+zNdLEm+5GCh0bZ9xZ3xR9ZFdg6yf0SBZEkNq7wmMc
	fB9ebu7BROicLTHoDuGJJL/v9ANaj+CnJvskzuP+BUNPMtbqtlv1J5IiW8O7zpmovur2
	EKWaGrKDZo++yg0/ViG9OZ99ekl6zqBWf7pgoLu9wSABAodAh0+MsbD6UhuHzlPJpG21
	iEOg==
X-Gm-Message-State: AKGB3mIaBoNRrC/Ft04Z0doAnwSW5bcUWnb1KBTpo9nTW1oipC3AjKsT
	QiUcMEOKMNxpCjYERRNAfDmktclmsrA=
X-Google-Smtp-Source: ACJfBovbvg32fepGfyEMoEQ8yDcT88r9dqDcWdK9rwfJ42YdvG7noQcAt7N+OhOoXztcmmEDTlMkGg==
X-Received: by 10.157.37.21 with SMTP id k21mr27901543otb.110.1514562523971;
	Fri, 29 Dec 2017 07:48:43 -0800 (PST)
Received: from [192.168.1.37] ([173.168.237.167])
	by smtp.gmail.com with ESMTPSA id
	x19sm4731247otd.63.2017.12.29.07.48.43 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Dec 2017 07:48:43 -0800 (PST)
To: yocto@yoctoproject.org
References: <1514502046-18414-1-git-send-email-drew.moseley@northern.tech>
	<CAPyrkgxRik8jN1kiPciXmo90ioeqp8mWb3UwmFMm102T0Gh+sA@mail.gmail.com>
From: Drew Moseley <drew@moseleynet.net>
Message-ID: <28c8a42a-3a0a-c9b4-86cc-7deb55ed44ff@moseleynet.net>
Date: Fri, 29 Dec 2017 10:48:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPyrkgxRik8jN1kiPciXmo90ioeqp8mWb3UwmFMm102T0Gh+sA@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: Allow arbitrary additions to config.txt.
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
X-List-Received-Date: Fri, 29 Dec 2017 15:48:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 12/29/2017 10:44 AM, Paul Barker wrote:

> On Thu, Dec 28, 2017 at 11:00 PM,  <drew.moseley@northern.tech> wrote:
>> From: Drew Moseley <drew.moseley@northern.tech>
>>
>> Setup a bitbake variable to allow users to specify
>> arbitrary additions to config.txt that are not otherwise
>> covered by specific settings.
>>
>> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
> This is already implemented on master as commit 9bf91801.
>
> Cheers,
>

Thanks.  I checked the mailing list and didn't see it but didn't
actually look into the current master.

Drew

