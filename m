Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCB6CE00B6F; Mon, 11 Jan 2016 03:45:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RDNS_NONE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from anavi.org (unknown [91.215.217.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331FDE00B66
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 03:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org;
	s=default; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=aEW2BojcBGpXfVKqDXXQ9FCMwuAYl3Y0WeDNyPGR5e4=; 
	b=e2fWRRmlhliav1A1TXASrtOQR2ro6AXoaYgVCLT4BpsbwGXIl0+h+BO41MKKZduPRvUzBkv1ICm8Kl6oi+MdoWAqpLm82bP0u3f2UNWeXZi1bfYFdqFvkv3lpZKmf0AV2NIG5Se+JN/JpdTfrIIdJFmjTqkkANoaIPdDtzyHTCU=;
Received: from localhost ([::1]:40865 helo=voyager.icnhost.net)
	by voyager.icnhost.net with esmtpa (Exim 4.85)
	(envelope-from <leon@anavi.org>)
	id 1aIauw-0003db-L5; Mon, 11 Jan 2016 13:45:46 +0200
MIME-Version: 1.0
Date: Mon, 11 Jan 2016 13:45:46 +0200
From: Leon Anavi <leon@anavi.org>
To: Andrei Gherzan <andrei@gherzan.ro>
In-Reply-To: <CAK18fxHToV2V=7CqvOGGLRm4WW3FgwSztUt0cmpo7eaSBYaHTg@mail.gmail.com>
References: <1450644797-13141-1-git-send-email-leon@anavi.org>
	<CAK18fxHToV2V=7CqvOGGLRm4WW3FgwSztUt0cmpo7eaSBYaHTg@mail.gmail.com>
Message-ID: <3451d3fbce88423819ec98bf1a36dbb8@anavi.org>
X-Sender: leon@anavi.org
User-Agent: Roundcube Webmail/1.0.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - voyager.icnhost.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - anavi.org
X-Get-Message-Sender-Via: voyager.icnhost.net: authenticated_id: leon@anavi.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] python-rtimu: Add recipe to support RTIMULib
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
X-List-Received-Date: Mon, 11 Jan 2016 11:45:51 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrei,

On 2016-01-11 12:08, Andrei Gherzan wrote:
> Hi,
> 
> On Sun, Dec 20, 2015 at 9:53 PM, Leon Anavi <leon@anavi.org> wrote:
> 
>> RTIMULib is a C++ and Python library that makes it easy to use
>> 9-dof and 10-dof IMUs with embedded Linux systems. Python
>> module for Raspberry Pi Sense HAT depends on it.
>> 
>> Python module python-rtimu uses the source code from the
>> GitHub repository of RPi-Distro.
>> 
>> Signed-off-by: Leon Anavi <leon@anavi.org>
>> ---
>> recipes-devtools/python/python-rtimu_git.bb [1] | 12 ++++++++++++
>> 1 file changed, 12 insertions(+)
>> create mode 100644 recipes-devtools/python/python-rtimu_git.bb [1]
> 
> Merged patch to master with some minor formatting tweaks (removed
> extra space in SRC_URI and broke DESCRIPTION line around 90 chars).
> 

Cool :) Thank you for merging my Raspberry Pi Sense HAT patches.

Best regards, Leon

> Thanks,
> --
> Andrei Gherzan
> 
> Links:
> ------
> [1] http://python-rtimu_git.bb

-- 
http://anavi.org/

