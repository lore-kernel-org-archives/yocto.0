Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66573E00C36; Tue, 27 Mar 2018 11:32:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47DD0E00529
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 11:32:07 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id 126-v6so14090346oig.0
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 11:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wrnNuRogp1vM/JX5fiGEGfvv+R29WgSwdVDjKhS2ETA=;
	b=ilVamZpFvq9R7wKAzT+nun/TiKhXVFH+VsN3YtWQ1oLIT0ZBBoS3ZKvTw9A+JQVZNp
	C11k12Ub0nWssJ+RS7p8r7OiGaNwMhqx4OqF0a+49f2Yc9AXBKsZc6sZhiyt63skZQn0
	yS4oGOJyjrpeV/C8FKgop7oi/cjVtMgHAvOlmIHEBEC7+3jKO6E3tYRvCaHrSvlbzlbn
	9vlSKCXPH0rFQ/Rd5chwfJv0AlRyVtFcxGv11wOfddEuO0js4S3LYvOYjBzO5Uf/xw1m
	DXSeKNup7rhM4TyNPPVVMN5S4V0Bd4CBUhDeUS95RvTyxUJGjqg6dcwZXKXjySfW5SBp
	c5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wrnNuRogp1vM/JX5fiGEGfvv+R29WgSwdVDjKhS2ETA=;
	b=ByZMoV23myOAm3/ca0hxb/njOlRP4zseqr3lkg1kqBK4cPZdQPj7hgKjzDXCUovWHV
	6uNXuokUTk9ACwqWluOeOuzfb7qN5tgaHQn9woc/2MKifQ7xgwy2xMU0KiWLhqWHxxk/
	Tpsdog+GnKfTjc7XnUuYTaHRyeYNRf15L9xmiLHMB1ELcPsLksx7MIF9dVw2ApZODTJg
	izl+ZJKtJep8udtxvdGjnZpkWt7x+jM/TBIxAvmke3UBh/eFWuwaMvHGWa6yWebVSu65
	qBOazOjmszzR5lHH5VomKH+u73+lcSELcdTLSxTlHAfTUT0q0mvDzEp+jT/is9ry49PV
	Yj6g==
X-Gm-Message-State: ALQs6tDVhVoCyTbz8Gz7QY8GeeiijkivDIWi8Q/fref2eCdmAdHnM6S+
	WKspmYGKkqbumr+PCdhUfW64qotBOqDlToQa+tFOjw==
X-Google-Smtp-Source: AIpwx4/PQE8C5sW9zwMWAyx9WC/rq8O2Dp7qZgYZ2jz5cwD0nLmKt1iZPsVfS5ukRQyXYpCsfZ7QSX18K92M8s23uHM=
X-Received: by 10.202.105.140 with SMTP id e134mr307836oic.18.1522175527555;
	Tue, 27 Mar 2018 11:32:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 27 Mar 2018 11:31:46 -0700 (PDT)
In-Reply-To: <CAFzUWGkcThCWgeEFxYtPzo=DfZB+5QOvOFxnOwZfqrVs6zUkZQ@mail.gmail.com>
References: <CAFzUWGkcThCWgeEFxYtPzo=DfZB+5QOvOFxnOwZfqrVs6zUkZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Mar 2018 19:31:46 +0100
Message-ID: <CAJTo0LYm6r0qnWrfVF2WfA68+sv8yadFZk3Z3YJO_Qz-_NgoRQ@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: python-fcntl missing in rocko?
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
X-List-Received-Date: Tue, 27 Mar 2018 18:32:09 -0000
Content-Type: text/plain; charset="UTF-8"

python-core is just "an arbitrary subset of the python libraries",
you'd do better by including python-modules in your image which is all
of Python.

Or use oe-pkgdata-util to search what package contains the fcntl module.

Ross

On 27 March 2018 at 17:50, Giordon Stark <kratsg@gmail.com> wrote:
> Hi all,
>
> When I switched from pyro to rocko, using `python-core` -- I'm noticing that
> the fcntl module in python2 is missing. Is there a recipe to add to get it
> back?
>
> Thanks,
>
> Giordon
> --
> Giordon Stark
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

