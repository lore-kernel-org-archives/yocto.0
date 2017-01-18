Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1266EE00992; Tue, 17 Jan 2017 22:47:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Jan 2017 22:47:47 PST
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0037E0098A
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 22:47:48 -0800 (PST)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1cTjn7-0001no-2u
	for yocto@yoctoproject.org; Wed, 18 Jan 2017 07:32:17 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Wed, 18 Jan 2017 08:32:11 +0200
Message-ID: <ab1774f5-620b-c72a-255d-8208f5d995cf@reliableembeddedsystems.com>
References: <f5df85a01eecd22894f83c66b3c3884c@reliableembeddedsystems.com>
	<53dace6e-9334-13e1-c963-eb27428e27f3@gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
In-Reply-To: <53dace6e-9334-13e1-c963-eb27428e27f3@gmail.com>
Subject: Re: "external"/"internal" SDK
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
X-List-Received-Date: Wed, 18 Jan 2017 06:47:52 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2017-01-18 04:54, Joshua Watt wrote:
>
>> external SDK:
>> everything the same as above, but for some packages there should be
>> only libraries - no header files.
> Is there a reason why you want the libraries without the headers? It
> doesn't seem particularly useful to be able to link a program against a
> library, but not have the header to use its API (especially in an SDK,
> where the point is to build program against the libraries).

I think they are worried about revealing their "internal" API since they 
don't want their customers to access it directly.

>
> As an alternative, there might be a way to completely exclude those
> particular packages from the external SDK instead of removing the header
> files (see below)?

I'll try to clarify this with them.

...

> Hopefully it will at least give a place to start.

Certainly. This gives me some more ideas how other people would do it.

Thanks!

> Joshua Watt




