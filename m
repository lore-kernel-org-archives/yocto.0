Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FA77E00724; Mon,  6 Mar 2017 10:44:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E541E004D2
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 10:44:33 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id q7so141702450uaf.2
	for <yocto@yoctoproject.org>; Mon, 06 Mar 2017 10:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nrGprGMvky8qf/Pk+1nCDB7YZcoRgdSHo3XHIRhL4wU=;
	b=bFLRMlzkqp28oCF4EMjx0BippySbppm2lZtQbML7bLWBRyLcD9/pJp2hiigSpsob+e
	vaO/qsHAS8lVsRew8MlAru6KHm00vRGf9FssYttMuWwPGdi5TXK2jfYzAj5xri6kr4bx
	2EcrHbCKddeZx1BrC9+5Rl+Uj7ZOhAylMnf85lnkpRKsdb5sjk+ZbfnLeM3lt6razc75
	1F4oJJaLUP6SrGsXa8mFLE+tUbL5kgzu5LIpPpnJYK6kYdmrGjEUgSLrZG3KncNFL/5L
	S8/mrZ5S8gTRt+lOcXPKLF9F+tNt5zup3OzZY+Kwuvk3eqXazdyTLUDxwlD+pka3ndUF
	v+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nrGprGMvky8qf/Pk+1nCDB7YZcoRgdSHo3XHIRhL4wU=;
	b=anLSHsjD7FPjbXVbIP7SFIBck+wNEDHlHrQuAjHfEjAWI5/xVJCaIGYLt5xTkS2JR5
	P1KSMRVriHfSnJsNvdBSurKAq0jDXKtrxwbBDh1b7kJFy5ZEGE3eEm0oPudr3e6iwBin
	sVsEwlrcYR+0HJqNhGQBA/MOoQD7po55mlyvcb4ODR39ChQxTbOiVZ2eTEzsFAVS+2ap
	jFr9IS8Ys7D3BYOZk+mdxXrEl/MIyn91TlUn31BS6PMdMpcj7CZGtHfSmBcQUFam/Q2S
	OskHhDM4bajROSWMjT7VSZj9BRyyiL9q7aY0o8VaoQoM4DvH5DLdVNr2/qOndH3Vrc8q
	r/TA==
X-Gm-Message-State: AMke39mSG24fsCJ3hI1gsVXNzckopWO0yAOETGihXY+YZQ9kFw2HqMMRVbCrsLBhfHJpFP0StbyEQQZ+1gQMIQ==
X-Received: by 10.176.8.4 with SMTP id a4mr8793575uaf.171.1488825872908; Mon,
	06 Mar 2017 10:44:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Mon, 6 Mar 2017 10:44:32 -0800 (PST)
In-Reply-To: <CAJrj+DOLDeRFLM7Htj3Bu6TKxS+sfeaqszApdgtQkm0dZG6SRg@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
	<CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
	<CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
	<CAJrj+DO3DfJmDzJAkUAVOf3ja8jvmuEH00+o+u64m=k5N537Wg@mail.gmail.com>
	<20170227090747.GA1959@linux-uys3>
	<CAHUNapQFj7r1w8pGJHOremoau+kE__iY0P45wNbS-JNkvmw3CA@mail.gmail.com>
	<CAJrj+DOLDeRFLM7Htj3Bu6TKxS+sfeaqszApdgtQkm0dZG6SRg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 6 Mar 2017 13:44:32 -0500
Message-ID: <CAHUNapS=uT1XOO1x3tRrc7_tR4m4hSQdjTzbGG7e_LZo=V6Fdw@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Mon, 06 Mar 2017 18:44:36 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 6, 2017 at 2:04 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
> 2017-03-06 13:06 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>
>> I can assume everyone can build/include u-boot successfully when using
>> unmodified repositories?
>
> Yes, I can build it successfully.

Excellent, thank you for the update. I'll push the commit to master.

