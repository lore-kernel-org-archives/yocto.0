Return-Path: <vincent.libre@cryostase.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86D17E00BC1; Thu, 15 Dec 2016 11:48:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.27.42.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB918E009BA
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 11:48:04 -0800 (PST)
Received: from [147.11.4.123] (unknown [147.11.4.123])
	(Authenticated sender: vincent.rubiolo)
	by smtp5-g21.free.fr (Postfix) with ESMTPSA id 414105FF8A;
	Thu, 15 Dec 2016 20:47:59 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
	<d9f94631-0e2a-3e83-2ab7-e1ddffb79aaa@cryostase.eu>
	<3954267.PvGXSHNjIp@peggleto-mobl.ger.corp.intel.com>
From: Vincent Rubiolo <vincent.libre@cryostase.eu>
Message-ID: <c040029c-8cb7-304d-508a-d7e08a9c5059@cryostase.eu>
Date: Thu, 15 Dec 2016 11:47:57 -0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <3954267.PvGXSHNjIp@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
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
X-List-Received-Date: Thu, 15 Dec 2016 19:48:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

On 12/15/2016 9:28 AM, Paul Eggleton wrote:
> Sorry for not getting back to you earlier - the patch got sent shortly after
> our discussion and has now been merged:
>
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=8fe1f25ea087cea13c5380de758078f0fb9eae34

Thanks for the link, this is great (I am not subscribed to oe-core so I 
did not see it passing by).

I'll pull and let you know if I have any issues.

Vincent

