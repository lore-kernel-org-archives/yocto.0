Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC123E008C3; Thu, 13 Nov 2014 15:49:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05780E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 15:49:02 -0800 (PST)
Received: by mail-oi0-f53.google.com with SMTP id i138so3765266oig.12
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 15:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=N+nlKKvDXr8DFMX+OeT6gPSUZlXbKTlgn/z1Am0Mpcc=;
	b=VJD8svUPJX+1uo1jpWKy+bVrGYo2sKZ5jXZrmoNciGsk54oR/xoNFil1Frcv9NAlnx
	1SAlpzhCfjEEgTGKrHd+rB+6eAwyEtvJmiXQ1QQokV7FoiK1CQV/OsbcgCPOGoZGdmnH
	mxM6vqzMojrciD6o5ZjAHhfPMZgN95lvkD4C5uwcitVNsgq3LQmcxVeCvci+Itp1Qvug
	a/tzxq4vZW2YitsWRu4AymKvNnWZbvkMrSoMuWPPDf45dLAIxl89/6JcKwDFM6DxB02h
	t/sFcYChVKmSgXFvCCTJG8v9GJ0d0adfBmd1CamxInyve8aCNy8NDSBtbfiDCsRmTH7D
	aG+w==
MIME-Version: 1.0
X-Received: by 10.182.87.37 with SMTP id u5mr4644863obz.38.1415922541732; Thu,
	13 Nov 2014 15:49:01 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Thu, 13 Nov 2014 15:49:01 -0800 (PST)
In-Reply-To: <CAByxTR_QusEg1O=UVJp9M0e2A_k6=d-drwbTnPcE55ADh72LhQ@mail.gmail.com>
References: <CAByxTR_FokGs5SHExf1o55j3UeeVWA_mugg+qdxAnYcR_=+-4A@mail.gmail.com>
	<CAEKp-aYUPN5kLcU75++zH+n-9ZQkUg8_zhG-+2buht_=DSP81A@mail.gmail.com>
	<CAByxTR_QusEg1O=UVJp9M0e2A_k6=d-drwbTnPcE55ADh72LhQ@mail.gmail.com>
Date: Thu, 13 Nov 2014 17:49:01 -0600
Message-ID: <CAByxTR-QBJe5LniJP_tTUbaXLC3ybdF1O=USwT7VrtOuk-gqpw@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob and Toaster Languages.
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
X-List-Received-Date: Thu, 13 Nov 2014 23:49:11 -0000
Content-Type: text/plain; charset=UTF-8

Almost forgot, what about the interface for Hob. I'm thinking GTK+, am
I correct?

Thanks,
John

On Wed, Nov 12, 2014 at 5:36 PM, John Unland
<opensourcejohn2112@gmail.com> wrote:
> Thank you.
>
> Regards,
> John
>
> On Wed, Nov 12, 2014 at 5:35 PM, Rudolf Streif <rudolf.streif@gmail.com> wrote:
>> Hi John,
>>
>> Both are written in Python. Toaster is built on the Django Python web
>> framework (https://www.djangoproject.com/).
>>
>> Cheers,
>> Rudi
>>
>> On Wed, Nov 12, 2014 at 1:18 PM, John Unland <opensourcejohn2112@gmail.com>
>> wrote:
>>>
>>> What is Hob and Toaster written in? Figured I would like to contribute
>>> maybe a deployment tool when you have created a image (I know there is
>>> the deployment tool for Hob but it only works for .iso and .hddimg FS)
>>>
>>> Thanks,
>>> John
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> Rudolf J. Streif
>>

