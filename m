Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46AE4E0050B; Wed, 15 Mar 2017 10:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1393CE00349
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 10:02:38 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id d188so12011591vka.0
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 10:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+ktCZjBBazPBWblVZtGz+5UzOD+mAl01iy3ytgSET28=;
	b=ORuW98ZYpic+G/G8dViulV32++Htyuwgh9YV0VsFNN2LQtY56IUlux6AbPOy86/t1u
	nY16uCJF71IBNPVAVbtLS2BRTnxFGof4xA0Z9ykdOXH6cvEqkX0ydrqjXzJLr1J0sbd3
	EkOjP7RsCFavBuwzgz7ekgJSY81hl7DyAX/6Fr4yp7mj0IpQVvMRDkPA+ZUt1/srukWQ
	iTJb+m5lDMxMKoFn/WzCq/iMM7BVfOAYTaaLLHnrLWnRYKA2EiX0LXFmaOaA7Guo9VsN
	R05shqwKaRuSMsw15oja/1wfvI4vjNO0AlCVtDvcX4EI0W3d5Khddz0hPr5kFgpUmhVx
	kK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+ktCZjBBazPBWblVZtGz+5UzOD+mAl01iy3ytgSET28=;
	b=T79Pz5DOgpa4Bf4VmgyjjwsXprlKVJV+CZclh6E0pOaNHJvWgvFLAjbNNmiMtFVmvV
	mwKB0byqlxEB2Fec3Sl+YqBilts6Yiwlp3yFcFSUFrM9wbrs9ylis5axQOC9Zm7/qaYS
	C7ivM5AR9tFr3G7vvLY8o/8Rdh1/dvWJHOMIy86S59JikUS9vO0vLywzugM6lokpenpx
	l0FRkeZ+XdACIRmZnwFbP/Nnxinja6ZHwfpgSPGhnd8M7aovSnMTxsIf7iBMCye/fF6J
	zBdCy//+YASYb/o3unPAEPZ/3VEdy1/cQlj9GV9kHgUJ3sUHRBwMe1Ot5NK5Rmv5pbiJ
	yvPQ==
X-Gm-Message-State: AFeK/H2pkrv6pmYpxXz0YTVDeaIgoaXfaJm3xf7kINexmnhO5SqmuzgeNJIf0L759LKB2ilYjYrOOWy5YmwJXg==
X-Received: by 10.31.211.70 with SMTP id k67mr1395829vkg.67.1489597357904;
	Wed, 15 Mar 2017 10:02:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Wed, 15 Mar 2017 10:02:37 -0700 (PDT)
In-Reply-To: <20170315143024.5da985c5@host0.betafive.co.uk>
References: <20170315134553.14210-1-twoerner@gmail.com>
	<20170315143024.5da985c5@host0.betafive.co.uk>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 15 Mar 2017 13:02:37 -0400
Message-ID: <CAHUNapS8aOsG53sV1RmV4NgOk9WwLO3Ci5YyLRKqrnRsOLyb_Q@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] userland_git.bb: remove libgl RPROVIDES
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
X-List-Received-Date: Wed, 15 Mar 2017 17:02:42 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 10:30 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> I think Khem already has a similar patch staged for this:
> https://github.com/kraj/meta-raspberrypi/commit/e070005aa8251c81323b393d49fd87f92e74cae1


Oops! thanks :-)

