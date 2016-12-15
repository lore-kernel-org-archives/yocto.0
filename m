Return-Path: <vincent.libre@cryostase.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC395E00DB0; Wed, 14 Dec 2016 20:59:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.27.42.4 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6707AE00DA7
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 20:59:35 -0800 (PST)
Received: from [192.168.1.159] (unknown [50.131.250.131])
	(Authenticated sender: vincent.rubiolo)
	by smtp4-g21.free.fr (Postfix) with ESMTPSA id 03D9E19F574;
	Thu, 15 Dec 2016 05:59:29 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
From: Vincent Rubiolo <vincent.libre@cryostase.eu>
Message-ID: <d9f94631-0e2a-3e83-2ab7-e1ddffb79aaa@cryostase.eu>
Date: Wed, 14 Dec 2016 20:59:27 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 15 Dec 2016 04:59:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul

On 12/04/2016 11:14 AM, Paul Eggleton wrote:
> Hmm, it looks like we're treating a byte array as a string (i.e. missing
> decoding) and that doesn't work. Likely this broke during the Python3
> migration, and since there are a number of different code paths in
> recipetool's python handling code our relatively simplistic automated tests
> didn't hit it. I have a fix here and will send it out soon.

Are there any news on this patch? I'd gladly test it out.

In the meantime, I can work around the issue by using the yocto-layer 
script, asking it to create a sample recipe (or manually copying an 
existing recipe file) alongside the new layer.

Thanks for the feedback,

Vincent

