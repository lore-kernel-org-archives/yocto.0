Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6058E0074B; Wed, 14 Sep 2016 15:42:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from s-opensource.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B50ACE006D2
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 15:42:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by s-opensource.com (Postfix) with ESMTP id D80C3A0E77;
	Wed, 14 Sep 2016 22:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from s-opensource.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ctXvhUUdtUn9; Wed, 14 Sep 2016 22:42:21 +0000 (UTC)
Received: from [192.168.0.2] (unknown [82.236.136.171])
	by s-opensource.com (Postfix) with ESMTPSA id 582C0A0E61;
	Wed, 14 Sep 2016 22:42:20 +0000 (UTC)
References: <1473862161-4121-1-git-send-email-philippe.coval@osg.samsung.com>
	<1473862161-4121-3-git-send-email-philippe.coval@osg.samsung.com>
	<D3FF107D.19878%kishen.maloor@intel.com>
To: "Maloor, Kishen" <kishen.maloor@intel.com>
From: Phil Coval <philippe.coval@osg.samsung.com>
Organization: https://blogs.s-osg.org/author/pcoval/
Message-ID: <50021eb3-3c54-0d0a-eb61-c10e46aab51b@osg.samsung.com>
Date: Thu, 15 Sep 2016 00:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <D3FF107D.19878%kishen.maloor@intel.com>
Cc: "iotivity-dev@lists.iotivity.org" <iotivity-dev@lists.iotivity.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oic][PATCH 3/3] Update for IoTivity 1.1.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: philippe.coval@osg.samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Sep 2016 22:42:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/09/16 23:55, Maloor, Kishen wrote:
> Hi Philippe,
>
> Thanks for your contributions. I reviewed your patches and also
> ran a quick test build, and it all seemed to work OK. I’ve pushed
> the patches up to meta-oic. Here are links to the commits:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/

Hi Kishen,

I'll try to share more once 1.2.0 released,
need to figure out some changes since 1.1.1

Security wasn't enabled on 1.1.x,
do you think we should set in on 1.2 ?

> I see that you’re maintaining a meta-oic mirror on github
> for Tizen (?).

This is just a sandbox for "work in progress" purpose
for Tizen Yocto and others...

> I’d encourage you to base your work off the upstream
> repo on yoctoproject.org.
that's the plan, only upstream matters :-)
but this very convenient to use "sandbox" repos.

Thanks again for your promptness.

-- 
mailto:philippe.coval@osg.samsung.com gpg:0x467094BC
https://blogs.s-osg.org/author/pcoval/


