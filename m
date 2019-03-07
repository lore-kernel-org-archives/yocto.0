Return-Path: <michael@amarulasolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F08E00D01; Thu,  7 Mar 2019 12:18:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1338E00CED
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 12:18:11 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id o17so18980803wrw.3
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2019 12:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amarulasolutions.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=jB781bHS/opD9586N2O+UkYxs2+vyFirZcpxgltrZys=;
	b=q6VIX5kEazc5k1leDYLG7ZeHIdqcqFj7f4cjmhx9wq9X33nLp3JLLnb5iMoTjgmWWo
	UT6ltGuic1NbX+qsK+O5KtEHmzpvGbLnAl9kpCjHYfBVnpgG+aaP4VjdO963diP0wU1h
	M27nbjhag/RY7MtVNZ13BFisBQ4zjW0tc8+vE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=jB781bHS/opD9586N2O+UkYxs2+vyFirZcpxgltrZys=;
	b=HciRyHf8rOcyz8HoVacX21lSl4HFlZ2OT5UhX932pxVh9SeAIkiVVDWyVh4tWuBL0/
	3GGpqdO4IynPsgf5viuKBzV/A7ibQrfc6Xx0hssaRIQMcsSvDPsN3zwqES5lSZfDClDV
	W7hBfu1ipBSOKXpguh4Tha+5s7h6fJGkYuxZwQu0Y7N3bW81OYMAfR2k9b2vDWa3Gb0F
	5rKDsvOuobemXbqzDUGoep/IaqQ8P4bCwwretBCXFAGNSUBTXNoHVeU+eWu7XOMpdnzR
	133sjTsDp23HVvePMspfW8jKg61C1k5C6vCWqAr7hAF93fee8qCcKQvX4AQL7wNzysXb
	33BA==
X-Gm-Message-State: APjAAAXy7zpuZ4dW6i8Rs5Rlix2hu2j0DzeukFBqx6Xw/2e6hLjSfz+h
	0Rej4k3fHu5qbfY0oGDGGLnXhNjRen0QQYPMEbfcgJ2c
X-Google-Smtp-Source: APXvYqwmDvp/TrKVrp9D/UQPWoBPcnnTRVdARaN0T82+iukfm9vIn9vszvPALHGO8PWzCFumk6ZO4W7Q6utjUfN5Vws=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr2963414wrv.37.1551989888886; 
	Thu, 07 Mar 2019 12:18:08 -0800 (PST)
MIME-Version: 1.0
References: <CAOf5uwmc7JutwaNE9OByoMSRGxacfF8CZUM2pcOgUymrcjS-Ug@mail.gmail.com>
In-Reply-To: <CAOf5uwmc7JutwaNE9OByoMSRGxacfF8CZUM2pcOgUymrcjS-Ug@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Thu, 7 Mar 2019 21:17:57 +0100
Message-ID: <CAOf5uwkTTGqqUpb4fTiyKadA0-591JhTFRwsZTXTSxbiKYU3Pw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: uboot-sign pyro fail
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
X-List-Received-Date: Thu, 07 Mar 2019 20:18:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hi

On Thu, Mar 7, 2019 at 6:54 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi all
>
> I'm trying to generate a sign image with pyro but problem is that when
> uboot is compiled
> the build dir depend on UBOOT_CONFIG and when the uboot-sign.class try to find
> the u-boot.dtb file this is not get because the ${B} point to the base
> but ${B}/${config}/...
> is the directory used by uboot.inc. Anyone has some suggestions?

I have improved a bit not using UBOOT_CONFIG but UBOOT_MACHINE and change
a bit uboot-sign class but still not catch who is using it and how

Michael

>
> Michael
>
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

