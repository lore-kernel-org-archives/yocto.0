Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C317E01072; Fri, 19 Jan 2018 13:07:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A60E3E00EF3;
	Fri, 19 Jan 2018 13:07:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0JL7CO9006164
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 19 Jan 2018 13:07:12 -0800 (PST)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 19 Jan 2018 13:07:11 -0800
To: <meta-intel@yoctoproject.org>, "Huang, Jie (Jackie)"
	<Jackie.Huang@windriver.com>, "Slater, Joseph" <joe.slater@windriver.com>,
	Yocto discussion list <yocto@yoctoproject.org>, <luv@lists.01.org>,
	<california.l.sullivan@intel.com>, <zhang.jia@linux.alibaba.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <4d49205c-7c86-69d1-5fc5-ae80da918e88@windriver.com>
Date: Fri, 19 Jan 2018 16:07:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
X-Originating-IP: [172.25.44.3]
Subject: single or authoritative home for sbsigntool?
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
X-List-Received-Date: Fri, 19 Jan 2018 21:07:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit


In chasing down a rare ccan configuration bug that sbsigntool-native
trips over, I noticed that there are several sbsigntool-native recipes,
all alike but not identical.

We have a few in the layer index:
 
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=sbsigntool

and more elsewhere:
   https://www.google.ca/search?q=sbsigntool-native
and even:
   https://www.google.ca/search?q=meta-secure-core

The meta-intel and meta-secure-core versions were somewhat different but
that seems to be due to lack of co-operation rather than different
requirements.

Does it make sense to have a single version of the recipe in
a signing-key layer with the actual keys kept elsewhere I'd expect.

If so, what layer would make the most sense?
How about picking:
 
https://layers.openembedded.org/layerindex/branch/master/layer/meta-signing-key/


There is likely other recipe duplication in secure boot layers but
it's not something that I work on directly so I'm only mentioning
sbsigntool. Feel free to reduce more duplication!

Thanks,

-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

