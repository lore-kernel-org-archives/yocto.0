Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D67FE00F43; Fri, 14 Oct 2016 05:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0038EE00F41
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:50:07 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id z190so146959385qkc.2
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1i8IoNjwMMiCF/VFA8hrogyEGsgot1udzcHHM6g0DlE=;
	b=A6RxlfpmLX2nIqJ+58XMwbLyV0B+niNichTyOvCN4HrVEMt2GgKvkAhl8XQwWSlHgE
	GPaphKr4yP1AUJJw4vgc0XM9ivvKQl/ZXIA7V/+WjRPthwqygL7N40pCAABYtjBhRee7
	oK+SKaBRJ1sGBMlZxRPlEl7CuoGIbJlb3CzXVtCMZ+tOO7JIx5AYNopKYXWlI1+JWdqX
	78vd/8vwRPHmB4avScelnUc/W7oAKZVdufhpK+tEcQB5TGxnJZASJH+luCgaPa/wEhx/
	QUDGYlf/xaoCGy+r4RFWLXu+g0dB/ph/sV6NlycoE/FSOWm0H0lVHX6fQomyA+Awp5ib
	A3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1i8IoNjwMMiCF/VFA8hrogyEGsgot1udzcHHM6g0DlE=;
	b=AqCQqlA8XkhlsLS6RzTf/POcHtFwlAi1tE3y1gnieymFEczwKWiQqR9d1B6XcYPEQG
	q6rruhPLalRo7SKJevihJODyYcUgh65GhhtVTJsfxE0whhjqgmR43TeKisFYrynmBFbH
	aEfgxWqq3we02/5hNTJYMtxqg1VvXd1pYsmxIZhzFHSH6gnBLcAOFRMg+FAPZ2ULB88P
	9D87wh31axJxQGgdpx/3u+0Iycp2dUbksGkr/M0kx6YXrvon0Z/eH8N7fANuogS0MW9u
	iT+SDKZmaKdcD6f45qUuDCKY0fmUgff8rWhyEr1fkRXFzGEnzue4o5qQyq7i8+yLYpZv
	3G/Q==
X-Gm-Message-State: AA6/9Rl65T/JqfgLst08IRy6+ZRIU+QxeHLdxRKK/wL9bzDxS/AkC/+H93kMonm/udSdULgaXRg2x7WQ9bsb0w==
X-Received: by 10.55.170.143 with SMTP id t137mr11221653qke.151.1476449406245; 
	Fri, 14 Oct 2016 05:50:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.1 with HTTP; Fri, 14 Oct 2016 05:50:05 -0700 (PDT)
In-Reply-To: <20161014092501.GD28288@resin>
References: <20161002143422.GA24664@openSUSE-i7.site>
	<20161014092501.GD28288@resin>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 14 Oct 2016 08:50:05 -0400
Message-ID: <CAHUNapT83B1d65YQCp0pHrr=8cnaE+vvNOkwNnvWV51NJ4HB1Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Fri, 14 Oct 2016 12:50:15 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 14, 2016 at 5:25 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> I know I'm kinda late to the party but just wanted to say that this was
> fixed in master. Cheers!

Excellent. I just tried 3 builds in a row and they all succeeded!

Thanks for the update.

