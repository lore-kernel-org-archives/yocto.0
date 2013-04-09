Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89948E00AFC
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 15:06:57 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id ez12so4214570wid.12
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 15:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=bMsof/Oko2ZXUJEgZNhzG+aAs4SdlzvxWFUKXIeqXPQ=;
	b=s1K1d1hTEgy5P4MVwg1jgsS4JFoBxFSjcBHkecniVvdMoQaJMRMfuKzHeSI8WA+DwT
	pNA3E0bF9jh3xfWVydTR0iHgXeJhRhZwZhBgoQuG6znJmEFLY1XAUbfQuDQqhHIIbOoX
	tdhd7hjRxeU1stp4s5oxQ6GMJ3p/sMifXNyUEhzJQG4efLT2vlqi6YNdcxEn6ZSRhvxa
	SZ64v2Ml2JdE/MMTc9XHCKHHJJEKQYzXtceQezrjIr5dOaqjk5381+HgDv36ecwtMw5m
	zC+gqyzRr3qPbU5lW/2NNscj2/uzAo8/yABdEWlkYmOvMzjXdKi9aRjvtAwPpW70mUfc
	9LMw==
MIME-Version: 1.0
X-Received: by 10.194.157.42 with SMTP id wj10mr41743944wjb.12.1365545216370; 
	Tue, 09 Apr 2013 15:06:56 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Tue, 9 Apr 2013 15:06:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304091746080.4929@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091746080.4929@oneiric>
Date: Tue, 9 Apr 2013 18:06:56 -0400
Message-ID: <CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 22:06:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 9, 2013 at 5:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   ok, so what am i looking for?

I couldn't get lab3 to work fully unless I switched from package_ipk
to package_rpm. The module would get built and included in the image,
but it wasn't being loaded automatically during boot. At the time I
tried against the master HEAD and everything worked fine, so whatever
it is I think I've found, it has been fixed (this is only a
danny-8.0.1 problem).

https://lists.yoctoproject.org/pipermail/yocto/2013-February/014424.html

When I mentioned it, it didn't seem to make sense that the choice of
packaging should affect something like this. But I tried it a couple
times on my machine and could reproduce it. I don't think anyone else
tried reproducing it.

This might be of interest to anyone still using danny.

