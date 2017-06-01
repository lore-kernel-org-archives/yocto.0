Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEBDCE00B45; Thu,  1 Jun 2017 06:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F140E00AE4
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 06:38:14 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 094F468A019; Thu,  1 Jun 2017 14:38:12 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 3D07368A019;
	Thu,  1 Jun 2017 14:38:12 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id CF62667403D0;
	Thu,  1 Jun 2017 15:38:11 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
	<CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <859693e4-eedd-9212-6dc3-eac70c938c71@mlbassoc.com>
Date: Thu, 1 Jun 2017 15:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why can't I install eudev-hwdb
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
X-List-Received-Date: Thu, 01 Jun 2017 13:38:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-01 15:31, Burton, Ross wrote:
> 
> On 1 June 2017 at 08:43, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     In my local.conf, I have this (to save space in my embedded image):
>        BAD_RECOMMENDATIONS = "udev-rules-imx eudev-hwdb"
> 
> 
> Try installing just udev-hwdb, my RPROVIDES patch in oe-core dea267 may be been wrong.

Thanks for the suggestion.  Sadly, still no go.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

