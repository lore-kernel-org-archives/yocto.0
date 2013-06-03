Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C75E9E01532
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 05:51:33 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id xn12so7175653obc.34
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 05:51:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=jc7NnAG9Hg1kLbsIX61cb5FxhIHXx6frvshZsU116uE=;
	b=XPfLlAHIWxLPENFkVy0D0rP9qNhE5UGv8+EQKP+snBEFhJtn8Ykk/bz96ftHWY3ile
	5qExjrTV1YE5J7EZ7wpcXHJJdwBJ+tpIrFd6ASysU8RyQt55mE8abc9nqYfefRH2HCsV
	jdKIwIUEnyTWuWpLJ4CLb7Ead+3gCZsQmLuWNFRenqdAmlG2FXsbrey5r7fgeBZWT6Ip
	aslaR+xMkabFGc/QeTXjLsODe/XThR09PaSROIiNh6L1YY9/CAlXtJw8Js6uWuoPjHYF
	bchPCAVr1wKhrvsHn4wb1xknSMuBZvXeJOZLxlL6/q27TvUassnNUcDvbKGgMph9F2dz
	2qAg==
X-Received: by 10.182.226.136 with SMTP id rs8mr10328348obc.50.1370263893129; 
	Mon, 03 Jun 2013 05:51:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Mon, 3 Jun 2013 05:51:13 -0700 (PDT)
In-Reply-To: <CAMUsWmC_mQkXfUBPVB7eaGRCVPAgxSkXWGNidpezNVi0_iy_ww@mail.gmail.com>
References: <CAMUsWmC_mQkXfUBPVB7eaGRCVPAgxSkXWGNidpezNVi0_iy_ww@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 3 Jun 2013 14:51:13 +0200
Message-ID: <CAP71WjxP77a_0JPdRLbf2P-oN-MbKAJGbyNvpMU9bWSOartntA@mail.gmail.com>
To: Akshay Sahota <akki.sahota@gmail.com>
X-Gm-Message-State: ALoCoQmmoxy+Y+5lfhYqWIWqkhmMzIb5EzCy9Ltyd/W8v+0WYXf9Z8oo0pl4ExWwiSPV4lkdHM2v
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: yocto-doubts
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
X-List-Received-Date: Mon, 03 Jun 2013 12:51:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jun 3, 2013 at 2:47 PM, Akshay Sahota <akki.sahota@gmail.com> wrote:
>
> Hi all,
> I am following this link
>
> http://www.reliableembeddedsystems.com/wiki/index.php?title=Yocto_%2B_meta-ti
>
> to install danny-8.0.1 ....
> Everything is working fine till the command
>
> git clone git://git.yoctoproject.org/meta-ti meta-ti
>
> but after that,the next command
>
> git co master
>
> is not working.Can someone please provide a solution for this problem...

well, it is generally useful to provide more information about the
error you get. something like "it is not working" won't let us help
you.

if I have to guess something i would say that you get something saying
that 'co is not a git command', 'co' is an alias that many people use
for 'checkout', but if you haven't configured this alias in
~/.gitconfig, it won't work.

>
> Thanks in anticipation

