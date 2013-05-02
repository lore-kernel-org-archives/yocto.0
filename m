Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF7AE01544
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 04:33:44 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pa12so369678veb.25
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 04:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=9l7NUDZbzu1vW8IfEOZuTotGwfc7MWzImYQwk42o+fU=;
	b=c06uOVRXcFwvO2mwTvR1Dq44BJ9nCERyhcHzs9GAXB0lAxqB+gnZ4qLDryreP4Pq3R
	iXCRna1fulNwifcRTznmrEGvqjOuYBIIDkUw8KBNJjzcfCcy5nCfHSvZWDsTLRkOWYSq
	RhFoGcJ25nmj5kP+Ei9Solq52RruK2ypWz6omT2L0Z3YfhReo6s/TJw5MfMlSGCk6mHR
	5vbYxEa8hUFb0VatoyFVHXE0FQizvQF9k7vQ6nAjGkORLAzhCz7ECOBemacpxXrHt+uc
	GpMSG0CUZNMELpX52tVOnppixt91VSI5rvQP6tdNoiVfZOGR/g3bKky7msPnCk0TlnW9
	Dv8w==
X-Received: by 10.58.247.130 with SMTP id ye2mr1589550vec.35.1367494422983;
	Thu, 02 May 2013 04:33:42 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Thu, 2 May 2013 04:33:22 -0700 (PDT)
In-Reply-To: <CAK18fxFCE_=X57fDp8+wYQOACeOjU2NPuM3bLKYYxCNFTOiCqA@mail.gmail.com>
References: <51788031.7080701@gmail.com>
	<CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
	<CA+JN8xMvcoaLKufSeCLO21ozH542OG-uZSn8fDS0OVMGXkUNbw@mail.gmail.com>
	<CANyK_8dWFNWQ2UhHdQUPACfruFk9uSrUfpTVxJeNn2m3kAYX=A@mail.gmail.com>
	<CAK18fxFCE_=X57fDp8+wYQOACeOjU2NPuM3bLKYYxCNFTOiCqA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 2 May 2013 12:33:22 +0100
X-Google-Sender-Auth: o8a1YbBcElO73jj_8AqVW5geGJY
Message-ID: <CANyK_8e+VWmPpZBO7CMTp2_3AT_qX46JDy_nUpBT1CyeS5iGog@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Thu, 02 May 2013 11:33:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 1 May 2013 20:10, Andrei Gherzan <andrei@gherzan.ro> wrote:
> I think I asked Seth a while ago and he confirmed that bash was his shell. I
> thought about dash as well. But as a matter of fact we should remove
> bashisms and make things as usable as possible. So maybe his patch makes
> sense after all.
>

Based on Paul Eggleton's reply elsewhere:

On 2 May 2013 09:07, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> On Wednesday 01 May 2013 19:13:19 seth bollinger wrote:
>> 2.  I couldn't find a wildcard string search in dash.  Can anyone
>> suggest a more shell agnostic way to do this?
>
> AFAIK grep or awk is the only way.

I think this patch probably does make sense.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

