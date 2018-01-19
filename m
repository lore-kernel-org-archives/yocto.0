Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2462E00EAD; Fri, 19 Jan 2018 14:10:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 216E5E00DC9;
	Fri, 19 Jan 2018 14:10:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w0JMABED006986
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 19 Jan 2018 14:10:11 -0800 (PST)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 19 Jan 2018 14:10:10 -0800
From: Randy MacLeod <randy.macleod@windriver.com>
To: <meta-intel@yoctoproject.org>, "Huang, Jie (Jackie)"
	<Jackie.Huang@windriver.com>, "Slater, Joseph" <joe.slater@windriver.com>,
	Yocto discussion list <yocto@yoctoproject.org>,
	<california.l.sullivan@intel.com>, <zhang.jia@linux.alibaba.com>,
	<megha.dey@intel.com>
References: <4d49205c-7c86-69d1-5fc5-ae80da918e88@windriver.com>
Message-ID: <45bc8aa4-c90d-f591-90f1-9959bc775f1f@windriver.com>
Date: Fri, 19 Jan 2018 17:10:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <4d49205c-7c86-69d1-5fc5-ae80da918e88@windriver.com>
X-Originating-IP: [172.25.44.3]
Subject: Re: single or authoritative home for sbsigntool?
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
X-List-Received-Date: Fri, 19 Jan 2018 22:10:18 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

+Megha
-luv@lists.01.org since you have to be a member to send to the list.

../Randy

On 2018-01-19 04:07 PM, Randy MacLeod wrote:
> 
> In chasing down a rare ccan configuration bug that sbsigntool-native
> trips over, I noticed that there are several sbsigntool-native recipes,
> all alike but not identical.
> 
> We have a few in the layer index:
> 
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=sbsigntool 
> 
> 
> and more elsewhere:
>    https://www.google.ca/search?q=sbsigntool-native
> and even:
>    https://www.google.ca/search?q=meta-secure-core
> 
> The meta-intel and meta-secure-core versions were somewhat different but
> that seems to be due to lack of co-operation rather than different
> requirements.
> 
> Does it make sense to have a single version of the recipe in
> a signing-key layer with the actual keys kept elsewhere I'd expect.
> 
> If so, what layer would make the most sense?
> How about picking:
> 
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-signing-key/ 
> 
> 
> 
> There is likely other recipe duplication in secure boot layers but
> it's not something that I work on directly so I'm only mentioning
> sbsigntool. Feel free to reduce more duplication!
> 
> Thanks,
> 


-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

