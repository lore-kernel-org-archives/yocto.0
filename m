Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76116E00C6E; Thu,  4 Aug 2016 13:01:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Aug 2016 13:01:44 PDT
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5750E00C55
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 13:01:44 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bVObE-0002Ru-CE
	for yocto@yoctoproject.org; Thu, 04 Aug 2016 21:46:36 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Thu, 4 Aug 2016 22:46:26 +0300
Message-ID: <6513b127-05da-2b88-197c-604d485e1525@reliableembeddedsystems.com>
References: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
	<CAD4b0_Js_XrQSGLbzqbGO5ihN9x-LkdYBz7vM-BTEdeGfh-0hA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
In-Reply-To: <CAD4b0_Js_XrQSGLbzqbGO5ihN9x-LkdYBz7vM-BTEdeGfh-0hA@mail.gmail.com>
Cc: "yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Layer priorities & package selection
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
X-List-Received-Date: Thu, 04 Aug 2016 20:01:45 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-08-04 16:21, Maciej Borzęcki wrote:
>
> Another option that I see is to set BBMASK =
> "meta-ivi/recipes-graphics/wayland/" in local.conf, but that's a bit
> ugly, hence I'd say it's a temporary solution only.

BBMASK does not seem to apply only to local.conf anymore[1], so this 
might not just be a temporary solution.

[1] https://lists.yoctoproject.org/pipermail/poky/2016-January/010358.html

Regards,

Robert


