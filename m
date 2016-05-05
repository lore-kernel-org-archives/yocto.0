Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D054E00E2F; Thu,  5 May 2016 14:22:24 -0700 (PDT)
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
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42FE7E00E14
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 14:22:19 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id x7so50522190qkd.3
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 14:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P97zFqVSwx8YiVm5lZymFbfaAOkYvJe2njHf0jj7WLk=;
	b=tnq9mDza2IbHKNEUGirkU2J53J/XD2wJG1kg7hN6xhMguU/W87NE7AFNdDbPsle9Qi
	5OxDltpg7s3Q3hffZ34O4KuUVmzdg+0hBuyK8peynrBLaUgKfwUIa2aWTSTORvWwilSe
	mtdra/6AMuwfcdgzodulIrdl3Pg6iKuKywK0l9CoGOIjNtA6xmSFHJvFX7hHzLUUbM7R
	ojblTJ4XWT/OI5+eoKzn9dUHNrpBjJQDHV54dDsw5SPhl9A+0DCGwigyaOHk5iTYyJaF
	zzVNtcQe+zkTURYMe368FkaApW5cgRxpZEJNMg574STZn8sBseVcgoCJByL4zveoyqRS
	kmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P97zFqVSwx8YiVm5lZymFbfaAOkYvJe2njHf0jj7WLk=;
	b=WJYhOc48q9aBMqUd0ymjHTxXSQZpg0s5LcVQ5Sp43ehO3hJkGcsnoTApGyubrKgClm
	dCqfz9D114w9YQIjjb6eq3OlftcdhA9KMus7NrCU62fd2z5Qc4KD0gH2inwJgLEXdYz0
	n9a4Semnh7o7gVaCSXrvoXFCWrXuzcmatKQXKNKX9SKU7zamZMA0vLW37w8ibmKf4f8t
	u9hMY7MTa3hG/+P/jVCz+ajpDhGatvgoKIrQBrsNpJmL9qQkI/o1NI05jwr5p5cqcsp8
	y2Tn4BPhaxw5ckFrmeXip3xtke7ZKMxhv4SHYrZDyloJ7Tctg40TsKa4oyTvpBILweTn
	5xLw==
X-Gm-Message-State: AOPr4FUexL079PmuVfVPd9OWHEo3bfk6a8+60ZXyWpd9qe3PgFBHQT8s3nP3u1YBZ7AVRCx+7Z6Xm8cIJtbhzw==
X-Received: by 10.55.200.215 with SMTP id t84mr17795424qkl.41.1462483338477;
	Thu, 05 May 2016 14:22:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 5 May 2016 14:21:49 -0700 (PDT)
In-Reply-To: <20160505192013.GA17781@nyx.americas.hpqcorp.net>
References: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
	<6311B206-D2A3-4CC1-A034-7900EF2E6E21@gmail.com>
	<20160505192013.GA17781@nyx.americas.hpqcorp.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 May 2016 14:21:49 -0700
Message-ID: <CAMKF1soj90GDRuRFCp-YK0TE9dYNQAicyBpLbJ5cd__q53t5ug@mail.gmail.com>
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple MACHINEs in a single build?
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
X-List-Received-Date: Thu, 05 May 2016 21:22:24 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 5, 2016 at 12:20 PM, Marcelo E. Magallon
<marcelo.magallon@hpe.com> wrote:
> On Thu, May 05, 2016 at 06:45:36AM -0700, Khem Raj wrote:
>
>> > This works:
>> >
>> >     $ MACHINE=qemux86 bitbake core-image-minimal
>> >     $ MACHINE=qemux86-64 bitbake core-image-minimal
>> >
>> > and bitbake parallelizes the build across tasks. What I'm trying to
>> > figure out is if it's possible to run two bitbake instances with
>> > different MACHINE values on different hosts but writing to the same
>> > workspace (say, over NFS).
>>
>> Thats not possible and its by design.
>
> Can you nudge me in the direction of some documentation for this design?

It was not a conscious choice to limit however that is what it started with
single machine singe distro in one invocation. It has been raised in
past and I was
one of the persons who raised it as a limitation if you want to call it.

However in your case you said NFS and we have seen problems with NFS even with
single machine builds in past so just be aware. Secondly during build
there are native
packages built and staged and every machine will build them similarly
there are all-*-*
packages which are going to conflict if two bitbake instances did not
synchronise, they
might conflict with each other, so unless we change the logic to let
bitbake take machine
as parameter and setup global datastore accordingly e.g.

bitbake machine1,<image1, images2,.,,, machine2,<imageA, imageB....>

it might not work.

>
> Thanks!
>
> Marcelo

