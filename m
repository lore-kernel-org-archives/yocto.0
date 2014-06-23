Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13063E00283; Mon, 23 Jun 2014 10:42:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=KHOP_DYNAMIC autolearn=no
	version=3.3.1
X-Spam-HAM-Report: *  0.2 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D92AFE0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 10:42:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id DC73A27E03B;
	Mon, 23 Jun 2014 17:42:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Mz_QzogYmDQd; Mon, 23 Jun 2014 17:42:45 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B03DC27E031;
	Mon, 23 Jun 2014 17:42:45 +0000 (UTC)
Message-ID: <53A8670D.5020401@dynamicdevices.co.uk>
Date: Mon, 23 Jun 2014 18:42:37 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Bharath Chandra <ellurubharath29@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAGM0ZdR+Ud1zFOmta09FOX4s=LT9Tr3DC+m1a6VEA3oF1dpPGw@mail.gmail.com>
In-Reply-To: <CAGM0ZdR+Ud1zFOmta09FOX4s=LT9Tr3DC+m1a6VEA3oF1dpPGw@mail.gmail.com>
X-Enigmail-Version: 1.6
Subject: Re: Cross compiler in yocto
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
X-List-Received-Date: Mon, 23 Jun 2014 17:42:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 23/06/2014 18:28, Bharath Chandra wrote:
> Hi,
>
> I am new to yocto. I have a gumstix board which is up and running, but
> it does not have GCC on it. I have to compile and run some c programs
> on my image. What is the process to do that?? Is there any
> documentation available about the cross compiler. Kindly provide me
> any pointer which would help.
>

The beauty of Yocto is that it handles this for you. When you first run
Yocto bitbake for a particular MACHINE target it will build a
cross-compiler, and associated supporting utilities from source for that
target. These are the -native packages that are built. 'Native' in Yocto
terminology means "something that run on the build host".

It'll then move onto cross-compiling other configured packages for the
target, which is all driven by meta-data and meta-data dependencies
which are encapsulated in the 'recipes'.

My personal experience fwiw is that the easiest way to cross-compile
projects to run on the target of your choice is to create an autotools
configuration for your project, which then makes it fairly trivial to
create a Yocto recipe to cross-compile that project and to package it up
into the target image.

I have already mentioned this link today, and at the risk of repeating
myself I would hope that this walkthrough would show you how to use
various flavours of an autotooled project and associated recipe to
cross-compile and package your application.

https://wiki.yoctoproject.org/wiki/index.php?title=Building_your_own_recipes_from_first_principles

The example used is here

https://github.com/DynamicDevices/bbexample

This is loosely based on the documentation here

http://www.niksula.hut.fi/~mkomu/docs/autohowto.html

You will of course wish to spend some time with the Yocto Quickstart too
I imagine

http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html

Regards,

Alex

