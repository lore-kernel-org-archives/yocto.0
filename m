Return-Path: <jan.kiszka@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3793E00CAB; Thu,  7 Mar 2019 03:57:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.35.17.2 listed in list.dnswl.org]
X-Greylist: delayed 433 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Mar 2019 03:57:46 PST
Received: from thoth.sbs.de (thoth.sbs.de [192.35.17.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EFAE00C71
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 03:57:46 -0800 (PST)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by thoth.sbs.de (8.15.2/8.15.2) with ESMTPS id x27BoVcF025994
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 7 Mar 2019 12:50:31 +0100
Received: from [139.25.68.37] (md1q0hnc.ad001.siemens.net [139.25.68.37] (may
	be forged))
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTP id x27BoS3i001593;
	Thu, 7 Mar 2019 12:50:29 +0100
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
References: <46d4a7de-f19f-8fa2-63b7-f21431d3435c@siemens.com>
	<20190307102519.iehr56q36ghxgcxc@jholzmayr.localdomain>
From: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <7193034e-c413-d854-9b11-4b1ff79886a3@siemens.com>
Date: Thu, 7 Mar 2019 12:50:28 +0100
User-Agent: Mozilla/5.0 (X11; U; Linux i686 (x86_64); de; rv:1.8.1.12)
	Gecko/20080226 SUSE/2.0.0.12-1.1 Thunderbird/2.0.0.12 Mnenhy/0.7.5.666
MIME-Version: 1.0
In-Reply-To: <20190307102519.iehr56q36ghxgcxc@jholzmayr.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: [OE-core] npm offline build for yocto
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
X-List-Received-Date: Thu, 07 Mar 2019 11:57:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 07.03.19 11:25, Josef Holzmayr wrote:
> Hi Jan,
> 
> On Thu, Mar 07, 2019 at 10:37:26AM +0100, Jan Kiszka wrote:
>> Hi Michael,
>>
>> I found your progress report (and unanswered question) on that topic in http://lists.openembedded.org/pipermail/openembedded-core/2018-April/268639.html.
>> Did this effort go further?
>>
>> I just ran into it again while updating
>> https://github.com/siemens/meta-iot2000 to Node.js >v6. I also played with
>> prefilling the cache, but likely in the wrong way.
> 
> We've had our share of fun ourselves by now, especially with the
> event-stream module being hijacked and removed. To my knowledge none of

A mess...

> the existing nodejs package managers (npm, yarn, ...) do support pure
> fetching neither explicit caching. The only thing that seems to be
> mostly working fine is using an explicit caching proxy like lazy-npm to
> externally cache the remote repositories.

Fetching is already implemented by bitbake. Now the question is if we can use 
native npm to install offline.

My understanding was that "npm cache add <tarball>" could be a path, though 
there were at least some issues in the past: 
https://github.com/nodejs/help/issues/944. What only I tried so far was "npm 
cache add <folder>" but that didn't work with npm 6.4.1. Maybe I should also 
check the tarball path. But that would mean unpacking the dependencies into 
${S}/node_modules becomes pointless (well, it already is).

Jan

-- 
Siemens AG, Corporate Technology, CT RDA IOT SES-DE
Corporate Competence Center Embedded Linux

