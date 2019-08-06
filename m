Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A142E00D5F; Tue,  6 Aug 2019 01:39:55 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BA52E00A75
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 01:39:52 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id b7so40363456otl.11
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 01:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=2V+7RIlg9rDBmOwCJhmIFZ7sn1itkL6/n9tX5mQ0UqI=;
	b=dWGWJIaB09DCbbXG78NIPY+Re7wCCllCnI9qcOJBQrTrfzLJhlYW2umzCk2Bw2TIJX
	bN6xNHzrxPhUwi7g2V6e9u2eFaqL3T9PhW2jOlO7ILHX0AIbgyYQBZKskVQu45+FlBCq
	aCqh8/frF9Ooz7tkjI+xZEYCiQRKASRhsVtzWx4EMz6EU0y3THmYft8Iy0WVcmngmQm6
	/k9mOf1r3Xy7HHlzrQPfyYd7STf7wlTRlzDiFa+R/ldfgzSMt0h7UQIGJeduYBvCMmR9
	Y5vmJgf4bPbtbYi0aJ0EiCZQcfRwZI4nHClcxGzf5GvlKKi6NYxyP+7/l9bZlmwKZ6eJ
	ngcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=2V+7RIlg9rDBmOwCJhmIFZ7sn1itkL6/n9tX5mQ0UqI=;
	b=Gxha8eF2sssTFxteauR9ZbF6JiJ1iPj7lVd+mE51S5iMWJa6RG8xv9iF5nJIj+NySv
	WANXYQqRyFabb28KqeTCSDXViHzMfu9gwvE6uyMgzpvG/GDIgn3XkkacGyLtVwRvxDka
	m8vh0ERa8ylxH9eufhFHyHjuSV40BAYuQ6QTVZKtv5zKuM40wckQRahLY1Pnr314pbVz
	Vzy/SefiPiaFdYi5vdV53XqwTXpzGi0z/lFN0qDHRvQMpSntnf7M8t4KmL0D94D1bq8f
	dD9eb1IhzFF5R+os6gICFCEjfOy6U+d5+t0i1vkrXen9fH0oUUbjnStddLkbYp11D4nN
	+/vA==
X-Gm-Message-State: APjAAAWkIn6QDPN1i6T2VMie/yaLHhlyK/YdmMBWd/3OY3U9KnySXPEz
	MUQVNeznR975TZg6NJC8lXJw7DLpQn+oH/7qTPFcQrPu
X-Google-Smtp-Source: APXvYqxLYCUU1RQ7sVPhXcgQFiJBEGrzYUIcQYlw0v3ur/jr/CXbPG+/d0IzpLOYAG11Sd9WelPpdHVQsYTVLQWFFQE=
X-Received: by 2002:a05:6602:22cc:: with SMTP id
	e12mr2510879ioe.192.1565080791497; 
	Tue, 06 Aug 2019 01:39:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Tue, 6 Aug 2019 01:39:50 -0700 (PDT)
In-Reply-To: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 6 Aug 2019 18:39:50 +1000
Message-ID: <CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Tue, 06 Aug 2019 08:39:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

According to the latest document:

"Package QA checks are now performed during a new do_package_qa task
rather than being part of the do_package task. This allows more
parallel execution. This change is unlikely to be an issue except for
highly customized recipes that disable packaging tasks themselves by
marking them as noexec. For those packages, you will need to disable
the do_package_qa task as well."

How can I disable the do_package_qa task?

Thank you.

Kind regards,

- jh

On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I was running my Yocto build fine until I had a minor change to move
> libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so to
> a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
> issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
> errors, please consider fixing them.
>
> Even I reverse the changes back the, it still complained the same error.
>
> I don't have do_package_qa in my bb file, where is it from? What is
> that error about? How to fix it?
>
> Thank you.
>
> Kind regards,
>
> - jh
>

