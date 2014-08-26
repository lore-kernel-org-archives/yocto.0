Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9EE1E006B5; Mon, 25 Aug 2014 17:23:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB7A8E004FF
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 17:23:29 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id v10so21014848pde.25
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 17:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=InSxOS8YFn46OjW7pKxVbtDdXQxDTG8B8jT0ZrBTHlM=;
	b=RN2PR192t5ZmohI69XXyC+tT3R9Wn0mz8mFf1m/1a2iq7XOqcG5aglRrDdU7qvOR1t
	RVbgRtWZIn/qIRxWk0ONSUQG5luAElRRr2r5lmMXJVxYdlBTnWpYsZpVXDx9CGBImCVl
	IJEIymh4Yj8x+kW2qNoNyDYTNp3GcTQos1bALIKjPPAAdBTErrBAo+u2A/cLgYCMxjN+
	DbJRHloMUE9jefP5TEkbzX1fkdU1E21x0oUIzFmTXbcHUhXjfmbQh+yWINrkk11iz8OH
	/9B2hevB61H7SDMafA7ztVlyuA1gXtaW0XZpLLKmaeAgzvfFiGAP1Nu+IA6VFiHzpUJX
	7kKA==
X-Received: by 10.66.192.195 with SMTP id hi3mr14182692pac.117.1409012608875; 
	Mon, 25 Aug 2014 17:23:28 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id bx6sm3685788pab.48.2014.08.25.17.23.28
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Aug 2014 17:23:28 -0700 (PDT)
Date: Mon, 25 Aug 2014 17:27:10 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Message-ID: <20140826002710.GA18989@haswell>
References: <1408933563.20144.YahooMailNeo@web140706.mail.bf1.yahoo.com>
	<CA+gsK-qz-D_rfJD=kWif5=T0uHOyD8it0Hu7tOJqAsSY63n=QQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+gsK-qz-D_rfJD=kWif5=T0uHOyD8it0Hu7tOJqAsSY63n=QQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best bet for WiFi Yocto experience?
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
X-List-Received-Date: Tue, 26 Aug 2014 00:23:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-25 13:53:01, Rudolf Streif wrote:
> Hi Pete,
> 
> 
> Please provide a recommendation for a low cost, out of the box WiFi
> > (802.11n) experience using Yocto.
> >
> > Are you looking for a board that has WiFi on board? The Wandboard (
> http://www.wandboard.org/) or the Cubietruck (
> http://www.cubietruck.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2gb-ram-8gb-flash-with-wifi-bt-1)
> have that for example.

a bit expensive but well supported in OE/YP universe
https://store.gumstix.com/index.php/products/526/

