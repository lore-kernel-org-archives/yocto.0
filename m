Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0F15E006EC; Wed,  7 May 2014 02:16:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65391E003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 02:16:29 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9018627E010
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 09:16:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id DzAsM8aWAGq5 for <yocto@yoctoproject.org>;
	Wed,  7 May 2014 09:16:27 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id EA63027E006
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 09:16:26 +0000 (UTC)
Message-ID: <5369F9E7.4020709@dynamicdevices.co.uk>
Date: Wed, 07 May 2014 10:16:23 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5369D763.6050806@dynamicdevices.co.uk>
In-Reply-To: <5369D763.6050806@dynamicdevices.co.uk>
X-Enigmail-Version: 1.6
Subject: Re: Smart/RPM automatic feed configuration
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
X-List-Received-Date: Wed, 07 May 2014 09:16:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 07/05/2014 07:49, Alex J Lennon wrote:
> I'm using RPM package feeds with smart, and am wondering how to
> configure up the feed sources easily at build time?
>
> I see in 3.4.5 of the reference manual it talks about base-feeds.conf
> for opkg but I'm wondering if there's a variable
> I can set in local.conf to correct setup, say, the URL prefix for the
> needed feed sources for the image?

I discovered FEED_DEPLOYDIR_BASE_URI in the reference manual glossary,
with some notes on OPKG usage.

This looks ideal but it doesn't appear to be implemented yet for RPM?
(as least setting that seems to have
no effect on my smart channels in a built image)

Alex


