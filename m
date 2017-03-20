Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFB99E00901; Mon, 20 Mar 2017 10:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 529A5E007B5
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:22:38 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 313C668A01C; Mon, 20 Mar 2017 17:22:37 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C119268A019;
	Mon, 20 Mar 2017 17:22:36 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 7437D67402A4;
	Mon, 20 Mar 2017 18:22:36 +0100 (CET)
To: yocto@yoctoproject.org
References: <CANr77M3+k7=+wux_zbMZ6juG-ppTpCgfqJ13fQ1L+XYB=9ubjg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <4fe5a241-b774-aef8-da55-6fae5d4285fb@mlbassoc.com>
Date: Mon, 20 Mar 2017 18:22:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CANr77M3+k7=+wux_zbMZ6juG-ppTpCgfqJ13fQ1L+XYB=9ubjg@mail.gmail.com>
Subject: Re: Bumping all packages versions
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
X-List-Received-Date: Mon, 20 Mar 2017 17:22:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-20 16:52, Matthew Stanger wrote:
> Hi,
>
> I'm running Yocto 1.7.1 and was wondering if there was a simple way to roll/bump all package versions. For example in
> every .bb I want to bump PV = $version higher. I'm trying to do this as we've designed our headless system to update
> using opkg but now we are struggling to find a simple way to update package versions, we're trying to stay away from
> manually doing it as there is a lot of room for error when touching so many packages. First, is there a way to brute
> force bump all package versions and 2nd is there a way to only bump packages that have changed code (like auto git hash
> diff or something) without manually bumping the PV version in the .bb? What is the proper way to handle you distro's
> versioning at the package level?

Are you using the PR server?  That's pretty much what it's for.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

