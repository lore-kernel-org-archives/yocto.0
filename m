Return-Path: <tom.rini@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD10EE011C0
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2011 16:25:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyn35 with SMTP id 35so4159661iyn.21
	for <yocto@yoctoproject.org>; Fri, 05 Aug 2011 16:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=SIZ8JZOoLyr5EI8kuPTBe1mhMph5odbt0jUNbHfVxbU=;
	b=A9+BMbFlkeqol2niOsZQsUhAWnBg+ESSU4GfljrGxRfAiIq6uFH8wdW6K+BP09uYEf
	iKGo+VaU9hpRlk81YLPV6BfyfuEa4bLpNLW0JbA4cBKi2G4nfcCtBW1UdM4D40ytsjDB
	3Jcg218YV3cas/F+kNg4vihjJn+WEP2aWRk1Y=
MIME-Version: 1.0
Received: by 10.42.135.129 with SMTP id p1mr2492306ict.37.1312586749182; Fri,
	05 Aug 2011 16:25:49 -0700 (PDT)
Received: by 10.42.228.73 with HTTP; Fri, 5 Aug 2011 16:25:49 -0700 (PDT)
In-Reply-To: <1312581764.14274.150.camel@rex>
References: <0C14C5AC-2F01-4074-8969-6F7E23A9A141@kernel.crashing.org>
	<1312581764.14274.150.camel@rex>
Date: Fri, 5 Aug 2011 16:25:49 -0700
Message-ID: <CA+M6bXkznWen7zMN5FVPWQJBpDeaPAQAdPyzp4gq7VN8VZ9s5A@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org list" <yocto@yoctoproject.org>
Subject: Re: way to get a package list?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Aug 2011 23:25:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 5, 2011 at 3:02 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2011-08-05 at 16:55 -0500, Kumar Gala wrote:
>> Is there some command to get the set of packages that will be attempted to be built?
>
> bitbake -g will dump out a task-depends.dot file which shows which tasks
> will run and the task interdependencies...

And -u depexp is a nice wrapper around it too.  If you want to get at
what's going to be installed on the target however, I think you'll
need to poke it a little harder however...

-- 
Tom

