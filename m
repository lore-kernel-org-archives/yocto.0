Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34734E009E7; Thu, 13 Sep 2018 16:05:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
	[209.85.222.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81D00E006AF
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 16:05:16 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id i4-v6so6102896uak.0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 16:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XGEiGU+LVMQKdUx00Dq4HSzz6YBcuKcoYSbs3KwKJB4=;
	b=P48pSnVqqYsm6e1rwJOQdIzoSX/+lEbub0IZ/SV2KYOLNHPg5e9I9T7UUAI3tYrxaU
	ICZCoCu9qKVJ2hz5FXdF9X5eImcK0kivptuvMitt4QDhstqAOI78MF1fLw6omepYXK2B
	GdAySQhWdiBUk/2Uw6rQQsQJ7ynXGTQPe5jGBtQY+Jfvo7ZQyvaUWmRKCuEqa0k6PX5g
	5HLnUkj/gxB5FaNjsm7YVwuGdbOPhdrI+HmAkD5MBVBPGgYP0/ZEdsjENhFceg3JVUa5
	LOnDYEud2Y68Z119+zNjyaxGt0OX4R/viWSb5s3oIaem8cHFA+LNw/e5Tdvx7qyvlFqj
	fjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XGEiGU+LVMQKdUx00Dq4HSzz6YBcuKcoYSbs3KwKJB4=;
	b=TlPb4rPyqcwNCfZyjKp48jXymS3CBipxuZXKv1NaYnnj5BBtyN8S+V0Z0Z/MH3rkB1
	r7Yadf3HH7+Zc1aDW/ahHxvohnar0G1QbIC0b+3E30k3Ecqd1tquFmAZSeXrsPFgK0t/
	Wih4vvfVLRESJ06HgsZvJ7VuhKEqWd2d2WvqnX5fBSeTX0hGQ9yWJVmATCuSWxw2Ogcj
	On0i2ugSRijH1nzMahk4h5+kD732Pg3nXT21q+9QsbXjekyJ0ANGQfYdVcybu4LSXCL9
	n77CDIUiTm8bfNuls52SJwqnrcqBduX9ynON/sbJvWRGEVCjlN2w98/7M4B6fs1ZShLZ
	vKDg==
X-Gm-Message-State: APzg51D1bbBUsal35Twr3qsIhAxSmjLgvL4kyhnoqu/6fDNY54G8e7T/
	2PFjgDw4XL1XGYpouOHxQx8eniARWXWPVqpgeJs=
X-Google-Smtp-Source: ANB0VdanM4c6Fwmqhj+QKdSOCPNzhZO2gOd+lpMRcu5a7b3fh0zY7sSiTxYOzKALlWFFS8AtuPs1jzHLKLU/kOH4b/s=
X-Received: by 2002:ab0:74d1:: with SMTP id
	f17-v6mr3210548uaq.105.1536879915781; 
	Thu, 13 Sep 2018 16:05:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2904:0:0:0:0:0 with HTTP; Thu, 13 Sep 2018 16:05:15
	-0700 (PDT)
In-Reply-To: <VI1PR01MB10709CA8B94B64B914109AB4E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
	<VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
	<VI1PR01MB10709CA8B94B64B914109AB4E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 13 Sep 2018 16:05:15 -0700
Message-ID: <CAJ86T=UssgCnWjnqzM5PWDumA+4472YZJMTO4dnhQTMvj=r8yA@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Thu, 13 Sep 2018 23:05:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 13, 2018 at 6:05 AM, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Current release's reference manual issues in native.bbclass chapter a warning:
> "When creating a recipe, you must follow this naming convention:      native-myrecipe.bb
> Not doing so can lead to subtle problems because code exists that depends on the naming convention."

Looks like a mistake in the documentation. Native only recipes (ie
recipes which use "inherit native" rather than BBCLASSEXTEND) should
have "-native" as a suffix, not "native-" as a prefix.

> Jethro release manual does not point it out.
> Is this warning really out of relevance for certain past releases e.g. Jethro?
>
> Abstracting from question raised above how following two fit all together:
> "When creating a recipe, you must follow this naming convention:      native-myrecipe.bb"
> and
> " The advantage of the second method is that you do not need to have two separate recipes " (2.5.1 Release Reference Manual)

If you use BBCLASSEXTEND (ie "the second method") then that recipe
naming rule doesn't apply. ie a recipe using BBCLASSEXTEND should not
have a "-native" suffix.

> krzysiek
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Thursday, 13. September 2018 14:00
> To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] inheriting native.bbclass explicitly
>
> On 13 September 2018 at 12:39, Dudziak Krzysztof
> <Krzysztof.Dudziak@gemalto.com> wrote:
>> Thanks for hints.
>> I don't want to have this package on target system.
>> You sound like inheriting explicitly had some major drawback of wide scope.
>
> It won't be included in the image unless you add it to the image.
>
> Ross
> ________________________________
>  This message and any attachments are intended solely for the addressees and may contain confidential information. Any unauthorized use or disclosure, either whole or partial, is prohibited.
> E-mails are susceptible to alteration. Our company shall not be liable for the message if altered, changed or falsified. If you are not the intended recipient of this message, please delete it and notify the sender.
> Although all reasonable efforts have been made to keep this transmission free from viruses, the sender will not be liable for damages caused by a transmitted virus.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

