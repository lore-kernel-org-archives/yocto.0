Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F3E3E00C7A; Fri, 11 Aug 2017 09:37:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC36E00C5F
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 09:37:37 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id y129so17469172pgy.4
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 09:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hHjGxUOu3CUo43Bjo1tCEEdUQh9RW+qWlWUqgSEnhrw=;
	b=BMjhP291fDM/CixVJZuVqo00NU0EOToqlTbWSsQxhfxvWM3qCGhptln+I7m5tGXbJF
	YKjY6sSll5Ah6+iYXaqXXYYavgiegJav6ik+BWSwj4C+Q3WTN+4RfesqnJ0VdSSh7QP+
	R/ZZX/ZeX7GROv2nZw/AZ6cKPztNHsO0KRGHZo9Ukk+CENUrreS6KWQmzzIOaGIJKaZp
	F6DfuJfaB69iQBXIumP1wJYDgbKT08mGu55LT9mwx/uuX+6AZTVkohas/w5fNl7snZGs
	KQd+pD8AhKEMZXcu1jK7uU4RS5nz5pbnxU22uinrW+oZc2F6MDetWjGg1zf61ALtsLy6
	C8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hHjGxUOu3CUo43Bjo1tCEEdUQh9RW+qWlWUqgSEnhrw=;
	b=ZPYzguKedX/f42QDvbm/C2GEe2te7YqmXgPOeWbOe3TXcZeJBN1dVVx34NMsTpgMgD
	uItFQO0ymaA+rjaddl49z2DxL+i+L469qakyozNYnbqtq3V1tnTMH/s/IG7mi/foKsgM
	pibkNz7bE0bVXVjWU3djpjJNZsxgwrDnVHW7GtecyMPXYiCGjfaWiX8e5brTecb2DpHP
	RrL916p3FBppnyOnMeM7OWXMzLm7xIpBOA6sXHkhcR328ZY1MKOvIGpaTpTxe9MRj7Gf
	exaYPuFS5fAr2B5PLDZ+fea8ywYsg7pgN73ZoAKX/07j8LWu141taipYAAI3IZzBq/dt
	4u1g==
X-Gm-Message-State: AHYfb5hRFW9wPfNTnBKm1uGhE78/vHOHHav4MrMtFVz35EMuJJkDGJXI
	Ngo79XstjiP6mYd8Q9bNQa6I2+GewQ==
X-Received: by 10.99.3.197 with SMTP id 188mr16534409pgd.288.1502469457296;
	Fri, 11 Aug 2017 09:37:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Fri, 11 Aug 2017 09:37:06 -0700 (PDT)
In-Reply-To: <TU4PR84MB0176AAF94BB682B979BF7648ED890@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB0176AAF94BB682B979BF7648ED890@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Aug 2017 09:37:06 -0700
Message-ID: <CAMKF1so0vBVPaGoaPHjd=ZHXufbsuQWtrkKR0AKk536_GZhVgg@mail.gmail.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to configure multi-lines under kernel_module_<modname> variables?
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
X-List-Received-Date: Fri, 11 Aug 2017 16:37:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 11, 2017 at 6:29 AM, Koehler, Yannick
<yannick.koehler@hpe.com> wrote:
> I would like to have the following content under my modname.conf.  It appears that the module_conf_<modname> is a single-line variable, and I am trying using \n to add a newline character but that doesn't appear to be working.
>
>         module_conf_modname :=  "options modname op1=0\n"
>         module_conf_modname_append = "install modname /sbin/modprobe 2ndmodname; /sbin/modprobe -ignore-install modname $CMDLINE_OPTS"
>
> Result in the following file content
>
>         options modname opt1=0\ninstall modname /sbin/modprobe 2ndmodname; /sbin/modprobe -ignore-install modname $CMDLINE_OPTS
>
> Expected
>
>         options modname opt1=0
>         install modname /sbin/modprobe 2ndmodname; /sbin/modprobe -ignore-install modname $CMDLINE_OPTS
>
> Any help appreciated.

May be you can approach the problem differently, and express the
module dependencies such that
you dont need to do custom install of modules from another module conf.

>
> --
> Yannick Koehler
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

