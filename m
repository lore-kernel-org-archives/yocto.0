Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E061BE00B4C; Mon, 16 Jun 2014 02:20:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EC1CE00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:20:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 09BBD27E030;
	Mon, 16 Jun 2014 09:20:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 5hbgB4L-6R7q; Mon, 16 Jun 2014 09:20:45 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7931727E02A;
	Mon, 16 Jun 2014 09:20:42 +0000 (UTC)
Message-ID: <539EB6DD.4000405@dynamicdevices.co.uk>
Date: Mon, 16 Jun 2014 10:20:29 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <539D7379.5000907@dynamicdevices.co.uk>
	<539D74D7.8080809@dynamicdevices.co.uk>
	<CAJTo0LaDMD90f4fNjaf9k8Gn=QAvh54qqUn=gh68HX7=ZNApBA@mail.gmail.com>
In-Reply-To: <CAJTo0LaDMD90f4fNjaf9k8Gn=QAvh54qqUn=gh68HX7=ZNApBA@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Autotools, Init Script templates and configure.ac
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
X-List-Received-Date: Mon, 16 Jun 2014 09:20:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 16/06/2014 10:04, Burton, Ross wrote:
> On 15 June 2014 11:26, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:
>> What I'm not understanding is if there's a standardised way to write the
>> autotools configuration
>> that would eliminate the need for Yocto update-rc.d
> There is no cross-platform way of installing init scripts.  I'd
> recommend that the upstream source simply provides a reference init
> script that the recipe can then install to the right place and call
> the right bitbake classes.
>

OK. Thanks Ross. I don't suppose you can recommend a "golden initscript"
somewhere on the interwebs that covers the all bases, including for LSB
functions present / absent?

It seems to me such a script might be a useful thing to have as a
reference somewhere on the wiki.

Cheers, Alex


