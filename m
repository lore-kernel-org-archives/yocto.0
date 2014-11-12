Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25907E00860; Wed, 12 Nov 2014 15:36:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA30BE005B7
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 15:36:29 -0800 (PST)
Received: by mail-oi0-f43.google.com with SMTP id e131so9527071oig.30
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 15:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Vl042gp+aj5TClSBL7OBYw2VGawkrs//L+MTcD2lczo=;
	b=EUFKUeIGXBIHzXMWlLV6v8eJdZ5+qC52SjAqONhwrGgkJXdUGcj5dQKQyx1mdR9e+L
	3MAFM+FMWroBM5jw9oSiYq5dBcyHf1AIw+a90rYSuekRM53Firn9iso2D65xiuJru9HX
	T/k+0wPggEaOLbS8WOq3hbSe4vS0n7ixIE2CDQfJvRefXmKAwoXY3O9f1S9xqScw0p7M
	QYfKrcvrEBT08i5HxdC0cs++ob1UlBGJgm49kYNtt/D9zuSkqGCJjbwVJZ7bOROKYIXE
	s4uuB2yFzfOUE+FouyIx4Ex1lKWAutMsWqSeVxWPwGUDLlErQteeiz7kosD5MUKUM5GR
	LRwQ==
MIME-Version: 1.0
X-Received: by 10.60.102.211 with SMTP id fq19mr41862786oeb.2.1415835389301;
	Wed, 12 Nov 2014 15:36:29 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Wed, 12 Nov 2014 15:36:29 -0800 (PST)
In-Reply-To: <CAEKp-aYUPN5kLcU75++zH+n-9ZQkUg8_zhG-+2buht_=DSP81A@mail.gmail.com>
References: <CAByxTR_FokGs5SHExf1o55j3UeeVWA_mugg+qdxAnYcR_=+-4A@mail.gmail.com>
	<CAEKp-aYUPN5kLcU75++zH+n-9ZQkUg8_zhG-+2buht_=DSP81A@mail.gmail.com>
Date: Wed, 12 Nov 2014 17:36:29 -0600
Message-ID: <CAByxTR_QusEg1O=UVJp9M0e2A_k6=d-drwbTnPcE55ADh72LhQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Nov 2014 23:36:34 -0000
Content-Type: text/plain; charset=UTF-8

Thank you.

Regards,
John

On Wed, Nov 12, 2014 at 5:35 PM, Rudolf Streif <rudolf.streif@gmail.com> wrote:
> Hi John,
>
> Both are written in Python. Toaster is built on the Django Python web
> framework (https://www.djangoproject.com/).
>
> Cheers,
> Rudi
>
> On Wed, Nov 12, 2014 at 1:18 PM, John Unland <opensourcejohn2112@gmail.com>
> wrote:
>>
>> What is Hob and Toaster written in? Figured I would like to contribute
>> maybe a deployment tool when you have created a image (I know there is
>> the deployment tool for Hob but it only works for .iso and .hddimg FS)
>>
>> Thanks,
>> John
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> Rudolf J. Streif
>

