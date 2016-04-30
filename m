Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 493B2E00D6F; Fri, 29 Apr 2016 19:12:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B45F4E00D58
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 19:12:10 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id f74so50070058qge.2
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 19:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OZVKLrQWRrtwIj80Q7K2cDyAop+EkVFw1y/4MFLVZeY=;
	b=YoEpm2WnwD/HLfsGsRJVtSW7qS3Fltgm9tfGWW/byC4BMilXx+Jb1rb87WcyRZj5cp
	JEHLqhV7cq0QUx7y9GSqDNwx+pbVjM3OVHENluhYqoqsGQj3B/hChGoevZF612LH76H8
	8rpQOb2fvxJiq3xo0IjUNG9oGb4r7B4lq2tkcvfUkgOQ0YPWWyO3pZukWfQ7i9p67yWq
	Hex/a6IjvdKhYn0tTo62Dq8LVGs9EXAR2jeILzrITyDDG1KiPffNfS6QcoQN4EaKu1Fj
	bJIieJZPf+IWJKmOhdriSaLQ+/qJgVRDFpP3340g1plNZpIfeyepeERLHEoaDeb20+lu
	ZLww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OZVKLrQWRrtwIj80Q7K2cDyAop+EkVFw1y/4MFLVZeY=;
	b=FEVuFGEN4Tbv/abTYPUmI5WNRfb3e0zlrla0uK/7OgptAjK9h9PwpHIW8H91a7/GVv
	asd2++Cz6j4UHTKVWSOsZpy/YNu7todXoVIF/WpbfYozF22MXrmym3SFMgSaPvbeZohl
	t/dSxDE/XSFZVV6wwAcikvhiFIl82bK7fAXdSRqAjhJJxBgLKD31xr4cuadyRDoYtsHw
	sQUJLMhxzHjUrkVdozG3+TPXj09BkjbW+hwf9w/RnN0NBCStsQqNjmljjTjN3VjZTW5h
	kQsjxVAQo4Wil3nX2lpI0Z/Y64xujUjdezBwj+b0iBXiBPE5m7zrHU5lpYVBZmBFn0fC
	Psbg==
X-Gm-Message-State: AOPr4FWdJ+v+CtMSOYQlE9UWKDoA/8gH2g4EXT4fDEJW2YQ3bZbgyMnNy+5YJVDiYv3Y3ejRsgkL/lB/VpyVTA==
X-Received: by 10.140.196.74 with SMTP id r71mr22677278qha.41.1461982329737;
	Fri, 29 Apr 2016 19:12:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 29 Apr 2016 19:11:40 -0700 (PDT)
In-Reply-To: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Apr 2016 19:11:40 -0700
Message-ID: <CAMKF1spbbhuJsxrKg_hW+nrzXn8oG7iXiejDmTxusUgqFebmeQ@mail.gmail.com>
To: Harinath maddelal <Harinath.maddela@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error while buildng SGX
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
X-List-Received-Date: Sat, 30 Apr 2016 02:12:12 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 28, 2016 at 6:34 AM, Harinath maddelal
<Harinath.maddela@inedasystems.com> wrote:
> Hi all,
>
>
> When i build sgx using yocto, im getting following errors.
>
> The same builds fine when i use my local gcc of version 4.8.3.
>
>
> I have used 1.8.1 Yocto its using 4.9.2 gcc.
>
>
> Can you please help me resolve the issue. Thanks in advance
>
>
> Following is the console build error log

Please provide compiler cmdline for the failing compile, most probably
its due to messed up -isystem
on cmdline

