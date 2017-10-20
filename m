Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA035E00B67; Fri, 20 Oct 2017 16:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E27E00A62
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 16:33:55 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id d28so13109349pfe.2
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 16:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=47Frszt4qEwVivhV6FQqhkbAlmBsnuC65qQLYyNMpeo=;
	b=qn7IER2NaBafT9LB/jCefW11Jc0SV8oI3ncMrvEnRgZsKq8VKwEUrd8hk8XMINzJxN
	tgedtij4NU3C0sDkwIww3UxbU55cWXi23i6WK2JKsYSIdK5UZa00tzDghGW5lwhsdb/U
	NNDOPcPNLm59L5Mdco9Lo6Cij1KXgwp/U4D/+bZYuvLg2pIugOXcABhOK8xSERXi0SUC
	O6a3s3zzsRYa0j6sUnXj+nkQwzXlim+JkmqgQ6sLDJm1xVI8tx4WX/DAqvG4UGh6AwCa
	AYyBxU58Q3pQdJVt7iYueZf00tIuJzSF43cOAMHimxev3swqpu4flBT9ioRYuR77ZJGi
	EMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=47Frszt4qEwVivhV6FQqhkbAlmBsnuC65qQLYyNMpeo=;
	b=mYLA1PlrJ1BNrCOcJPX2KttfNqkE7pXkQVEPqYOeQbmGEl3UNZ3AhyDVGvqnsgdWpH
	IEsHVSdy6wryhiBzodjvfk3wINOiOHw09fsULalb6teicxhqKkEtUuHfnLyMDhRR7x4J
	RJmSCcwk3KYREtKl9Rfx3L7JA5S0mWkXwMD+LzvxpZNzKEFBV877nmK1VEz40qwKcD2/
	V++ZxoQuBS1V+IJ0hsDdpeOUFUIG2+YziiIS8kgJ6oXVpWZcE8hTmUr9fgg7QJWbgofC
	RxMhGzHhH+N04Ao+HfFG/YLCrSUdxMsyUq0CMgI8wzihD03m1l+2OjZTq88DaHKPhIGV
	QUpA==
X-Gm-Message-State: AMCzsaU4zWuBlSkLuj/U98IbdElXbijh7i+kNVdA3FZZdYYEdnIG75LY
	LlqNzswuteqMBerGEu+HjbwElqtKg+PHX4FF0xU=
X-Google-Smtp-Source: ABhQp+Qv5V3bltEDFyN3aSVXSajcPLuVFniGpYf5NquT1AuWMMuj3OtJtJyPpdgUO8It8RTq4EakWXpjkQbsnVp0I8A=
X-Received: by 10.84.138.1 with SMTP id 1mr5276493plo.404.1508542434767; Fri,
	20 Oct 2017 16:33:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Fri, 20 Oct 2017 16:33:24 -0700 (PDT)
In-Reply-To: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
References: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Oct 2017 16:33:24 -0700
Message-ID: <CAMKF1sqqq=g2LTNseV02f_nENtce5CkfCo=mrt-s8K3aKT2eFA@mail.gmail.com>
To: Javier Romero <xavinux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Contribution to Yocto Linux.
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
X-List-Received-Date: Fri, 20 Oct 2017 23:33:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 20, 2017 at 10:22 AM, Javier Romero <xavinux@gmail.com> wrote:
> Hi,
>
> My name is Javier and live in Argentina.
>
> Would like to know if it can be useful to test Yocto Linux's Kernel on
> my Raspberry PI 3, and report bugs that maybe found.
>

If you want to try something diffrerent than rpi kernel fork. I would suggest
to try upstream kernel directly and see whats missing, usually it should work

> Thanks for your attention.
>
> Regards,
>
>
> Javier Romero
> E-mail: xavinux@gmail.com
> Skype: xavinux
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

