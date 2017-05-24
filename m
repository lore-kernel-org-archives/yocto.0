Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8089DE00B28; Wed, 24 May 2017 07:49:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AB4DE00B67
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:49:15 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 16C1C68A019; Wed, 24 May 2017 15:49:14 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 9E1D068A019;
	Wed, 24 May 2017 15:49:14 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 48F2C67400FD;
	Wed, 24 May 2017 16:49:14 +0200 (CEST)
To: yocto@yoctoproject.org
References: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
Date: Wed, 24 May 2017 16:49:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Wed, 24 May 2017 14:49:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-05-24 16:39, Koehler, Yannick (HPN Aruba) wrote:
> In our development with Yocto, we use vendor provided layers.  At this time we have to pull those manually (using git or submodule or other technics) to get the vendor layer on disk before bitbake can start.  Does Yocto allow to automatically pull a yocto layer given a uri, branch and other information, similar way as it can pull the source of a package?
> 
> This way, we could omit the vendor layer stuff from our git and instead have Yocto fetch the layer from its source (honoring all the premirror and mirror stuff).  The layer specification would be similar to SRC_URI format with an additional parameter to indicate locally where to put the files, maybe with a default of vendor/<layer-name> structure?
> 
> 	git://git@mylayer.company.com/layer-name.git;protocol=ssh;branch=master
> 
> This would pull into
> 
> 	vendors/layer-name
> 
> Prior to parse all reccipes?

Not part of the default Yocto setup, but what you are asking for
seems to be a perfect fit for the [Android/Google] repo tool.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

