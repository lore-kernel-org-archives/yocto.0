Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27E46E00D90; Thu, 18 Jul 2019 05:14:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E4CFE00D55
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 05:14:31 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id m24so51081501ioo.2
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 05:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RKams1tn7zbS7ycZnlwqNIzUHBUUbtvdsl8ZhzoGHyU=;
	b=Q6R/EHBS4aM6HJltgHVKPs5hMXbjmwqOg3H5h6ODpl++xNybzWVa7ziZjdvEvhL1OP
	F/9XqVU+s7WQbKaq1ZryNOdpfbr+siQJEnibQYQ9tO0e/jKBOw2oyWWli9cmpQ6KwwEQ
	POsMYeW5kcYTZ6iIuiPB/g0qidcsfIQg5DHeCy9IdVF63IccqERktbvLAVdlqODLMEJa
	6vinHzAVAVJTHQHyh8m4l1D6dRTPAtZjbYiW/hxybhVPxn/t5qxOILAUZSl4scfPrgtD
	3Cyzv8DxYn6IiIMyR8+kTxE7Geyi73GNIUCQB7/d0LK0C5ffib+kAugoplxafYtRU0Fc
	ou2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RKams1tn7zbS7ycZnlwqNIzUHBUUbtvdsl8ZhzoGHyU=;
	b=SHzZHCRKNB9tV2V29pT+FMjctXGHU7Kmy75IXKeZuE/0UZyj1j0U4l1K1I9I8mUhMi
	fOyAOmtIkGHqL/Y/3wio82Acx+GwF1yHAuf5C2ngLkG9kQatD9DnArtVvc9VV6lrSdn4
	7fRzBrMcDC4hqm5yy2C0LJ42Nb+VUELCax1nwBQFSNW68sSze8QLtg4T7Er9CpVP7WwE
	w/jIKSI+xVGv5QvMCVMs7AGzDB1CxQL+mUVsfnSK2uZPjNbnJCuzehkdOKKhzzu1VCTl
	ighD4KFT8eDgBdLa8EkbQTgOyvOJSuUF+N2vij9ztLmKh8yfDESO5In+vxcTz9bEBi1t
	IfWw==
X-Gm-Message-State: APjAAAUJZ+1wkpKgLWG2xrMeGp+1yYm/t1Mgt/qg27JLLznLTLmc8DfA
	iaZyI290Ibho9h0lJEXWrN7LWVFyrAE0G7mGORrposJX
X-Google-Smtp-Source: APXvYqw+rOfQVSKbXt4yfhvphB8K5701LruoyQ2uKMNwh5Pr+be+iZfuunYGeqhZMKhqeAnWMAKCo47N5sJyU+IyQv0=
X-Received: by 2002:a02:69d1:: with SMTP id
	e200mr48663372jac.138.1563452070886; 
	Thu, 18 Jul 2019 05:14:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Thu, 18 Jul 2019 05:14:30
	-0700 (PDT)
In-Reply-To: <894b59cc-bd91-6178-de1b-f0d190655307@3mdeb.com>
References: <CAA=hcWTbyJUmn458++uuMzWCki2R+s0aRd4u6_eQ76oSFgAFwg@mail.gmail.com>
	<894b59cc-bd91-6178-de1b-f0d190655307@3mdeb.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 18 Jul 2019 22:14:30 +1000
Message-ID: <CAA=hcWT2gTh03nKzuog1xDS48Vk-sCMFp_cPFsNy1BZhoyxoqw@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto@yoctoproject.org
Subject: Re: Missing service file
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
X-List-Received-Date: Thu, 18 Jul 2019 12:14:34 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Maciej,

On 7/18/19, Maciej Pijanowski <maciej.pijanowski@3mdeb.com> wrote:
>
> On 18.07.2019 12:01, JH wrote:
>> Hi,
>>
>> I set up a service file at following myapp.bb file, but that service
>> file was not installed to /lib/systemd/system. What could I be wrong
>> here?
> Not installed means it's not in the final image on the target? Which
> package gets installed into the
> image? I guess the ${PN} package.

It is in the package build:
sysroot-destdir/lib/systemd/system/myapp.service
package/lib/systemd/system/myapp.service
image/lib/systemd/system/myapp.service

> Have you inspected the recipe
> work/YOUR_TARGET/RECIPE_NAME/RECIPE_VERSION/image dir?
> Maybe it is present there, but not in the package you are installing
> (check the coThanks Maciej,ntent of the pacakges-split dir as well).

All installed files are in pacakges-split dir except that service file.

> You may use the:
>
> FILES_${PN} += "/lib/systemd/system/${PN}.service
>
> to force packaging the file into the ${PN} package.

Hmm, that caused an error unparsed line

Thank you.

- jh

