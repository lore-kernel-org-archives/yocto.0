Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B2BE00576
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 08:09:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1B230F811F0; Thu, 21 Nov 2013 09:09:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5CBEAF811EF;
	Thu, 21 Nov 2013 09:09:09 -0700 (MST)
Message-ID: <528E3035.9040100@mlbassoc.com>
Date: Thu, 21 Nov 2013 09:09:25 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFyqS9o5dBnO5C9yvy6UvUxbsHKhBAqNSiiRXsBhgd6w8qgurg@mail.gmail.com>
	<528E2DDE.1080602@gmail.com>
In-Reply-To: <528E2DDE.1080602@gmail.com>
Subject: Re: init-ifupdown: is this missing a RDEPEND to procps?
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
X-List-Received-Date: Thu, 21 Nov 2013 16:09:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-11-21 08:59, Hans Beckerus wrote:
> On 2013-11-20 4:15, Hans Beckérus wrote:
>> The /etc/init.d/networking script is using sysctl to grab some
>> parameters from /etc/sysctl.conf. This file does not exists unless
>> procps is also installed.
>> I can not see that init-ifupdown RDEPENDS procps. Should it not? Or is
>> there a reason for not having it like that?
> No one? Should I route this question to OE-core instead?

Probably since this recipe is in OE-core.

IMO, there should not be a dependency on procps since that's pretty
heavy and not really needed for smaller systems.  The single use
of /etc/sysctl.conf in the ifupdown script seems to be trying to make
sure local settings are applied before bringing up the network devices.
The script simply ignores the failure if the file is missing which is
OK, plus it does allow for local customization providing /etc/sysctl.conf
without the overhead of procps.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

