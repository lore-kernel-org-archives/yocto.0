Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46113E00D6D; Fri, 23 Feb 2018 09:31:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB76E00D6D
	for <yocto@yoctoproject.org>; Fri, 23 Feb 2018 09:31:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w1NHUud3028166
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Feb 2018 09:30:56 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 23 Feb 2018 09:30:33 -0800
To: Anders Montonen <Anders.Montonen@iki.fi>, <yocto@yoctoproject.org>
References: <alpine.DEB.2.11.1802231833140.22513@lakka.kapsi.fi>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <fdd3c867-fe60-c536-24d5-bdca7bde7f09@windriver.com>
Date: Fri, 23 Feb 2018 11:30:54 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.1802231833140.22513@lakka.kapsi.fi>
Subject: Re: useradd-staticids
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
X-List-Received-Date: Fri, 23 Feb 2018 17:31:11 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2/23/18 10:37 AM, Anders Montonen wrote:
> Hi,
> 
> I'm looking into using the useradd-staticids class for reproducible 
> builds. Is there any way to delay the warning/error about missing ids 
> until a recipe is actually built rather than getting them during parsing? 
> Having to generate tons of ids for packages you're not even using seems a 
> bit nuts.

The system used to do that, but then people started complaining that whenever
they added items to their image they'd get more warnings -- and why don't we
just tell them up-front.  :/

I do suggest you ask on the openembedded-core mailing list though.  The people
working on revising that code have been active there and may be able to help
more then I can.

--Mark

> Regards,
> Anders
> 


