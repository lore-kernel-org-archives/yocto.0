Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0792BE00FA6; Mon, 22 Aug 2016 19:11:31 -0700 (PDT)
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
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC43CE00F9B
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 19:11:29 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id 52so35639010qtq.3
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 19:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nVZCaHSEAbYhbqmXkF4qvaYjj0y/vYE9fhXXzBu+cYQ=;
	b=g0++OAG5si4DOohU8Rtn8mAZTOWqrOBVznYjvY5Xe5go1ckg+vPmMX3oiEUOATUX0O
	QVCfWt4iNgz13Hd3SIihZve83S4t11fOcewiiKC1wm2vIDon8r36AZb5+SZqil6t3k0Y
	DtnMN1oPyOMv8OppfQbToeZCozBScfUTHqeyWlB0IczjNEMov4QGnlTJTD1Y3fJ8Rtj5
	DMKHFrXyL82y4+1Mg2vxEMJQhgPrzDhJkimSzL2DWpuBhLlNjZihMWCEsaGYZtTkLhal
	qoIdXrAkUDsxPMQifITEQBfXT/zldgT64/vxgalWjyTJr7aATFXni93L6OQqG+M7et/F
	+Tbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nVZCaHSEAbYhbqmXkF4qvaYjj0y/vYE9fhXXzBu+cYQ=;
	b=MJQRZ+in3Srip9XQih+XxBHc0gUeelPaHQY/xVHxtRXKKft9HLEejGC/6JbXRPgOWJ
	GfCbuDnCRmWVyRSm5042Y8eeCP7Y7cmb65o15AdOUWT2lpx9DFDSgZtPYc5jbJjCVETk
	e/OQjy4YOWx8edQuLRriTM0KL8DgDV4UbKYJMlUh3vdIqMnco/wzXfYUvLk9/duPvuqB
	alQxkErreVEqA0e9zEN3lliw4dW877Jz6IXfjA2jgURWeDLvfW29tcXFvyTZIpnj2VQm
	OJwaqQsU1FG4Q+a1DKRB0kh8fXoe1AHR7xSg4c0qaAWLHprXFWqzoYj/YtrITXFoJiDS
	ZIeA==
X-Gm-Message-State: AEkoouvrPCNRn059ey9XhVEgUr+0WsEHQLyLtBYdSKeAgs7VkLj4BwslAKKEBKRlh66rvKEqjrvvpaqV8o87dw==
X-Received: by 10.200.58.103 with SMTP id w94mr27404472qte.123.1471918288904; 
	Mon, 22 Aug 2016 19:11:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.215.13 with HTTP; Mon, 22 Aug 2016 19:10:58 -0700 (PDT)
In-Reply-To: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Aug 2016 19:10:58 -0700
Message-ID: <CAMKF1soEnsOcNsSUgksq+EMByXYbL+wgS3qNQJ4vj0O6mQ9rfw@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBMASK issue
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
X-List-Received-Date: Tue, 23 Aug 2016 02:11:31 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 22, 2016 at 6:50 PM, Takashi Matsuzawa
<tmatsuzawa@uievolution.com> wrote:
> Hello Yocto.
>
> Now I am trying to customize an existing BSP to my need.
> For this, I am adding following to my local.conf so that some of the recipes
> in the BSP to be ignored.
>
> (local.conf)
> BBMASK = "aaa|bbb|ccc"
> BBMASK .= "|ddd|eee"
>
> However, it does not work since BSP itself has lines like below in its
> layer.
>
> (somelayer.conf)
> BBMASK = "xxx|yyy|xxx"
>
> The BSP definition of BBMASK seems to be overwriting my BBMASK definition in
> my local.conf.
> I wonder what is the best way so that the both definition are effective.

You can enforce it with something like

BBMASK_forcevariable = "aaa|bbb|ccc"
BBMASK_append = "|ddd|eee"

However, I would suggest that BSP layer should append and not override
as it seems to be doing. Otherwise it will be hard for that BSP to adapt.

>
> I confirmed modifying BSP's definition as below works, but not sure if this
> can be recommended as practice to everyone who provides layers for their
> BSPs.
>
> BBMASK .= "|xxx|yyy|xxx"
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

