Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE8B8E00AB6; Sat, 28 Sep 2019 15:00:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5FE7E00A4C
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 15:00:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x8SM0aCR028041
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 28 Sep 2019 15:00:36 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Sat, 28 Sep 2019 15:00:36 -0700
To: Chandana Kalluri <ckalluri@xilinx.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <MWHPR02MB2576ADF2408BAAF0BF27D82BB0810@MWHPR02MB2576.namprd02.prod.outlook.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <b02b2cf7-cd9c-5ff5-d3f6-a09f4cdf2b4b@windriver.com>
Date: Sat, 28 Sep 2019 18:00:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <MWHPR02MB2576ADF2408BAAF0BF27D82BB0810@MWHPR02MB2576.namprd02.prod.outlook.com>
X-Originating-IP: [172.25.44.5]
Cc: "dmitry.n.kargin@gmail.com" <dmitry.n.kargin@gmail.com>
Subject: Re: [OE-core] Xilinx/meta-jupyter layer
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
X-List-Received-Date: Sat, 28 Sep 2019 22:00:43 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 9/27/19 4:12 PM, Chandana Kalluri wrote:
> Hello all,
> 
> https://github.com/Xilinx/meta-jupyter is a meta-jupyter layer containing recipes for jupyter notebook. The initial recipes are based of Dmitry Kargin's meta-jupyter layer https://layers.openembedded.org/layerindex/branch/master/layer/meta-jupyter/. This layer has not been updated for a while.
> 
> The Xilinx/meta-jupyter layer also adds recipes for python3 based notebooks apart from existing python2 based notebooks.
> This layer has been tested using Yocto thud layer and  by running jupyter notebooks on Ultra96 community boards.
> We would like to maintain Xilinx/meta-jupyter  layer actively and welcome contributions to this layer either through pull requests or via patches sent to meta-xilinx mailing list until a mailing list for meta-jupyter is in place. In the next cycle we will deprecate python2 recipes.
> 
> A question to community,
>   - Would you recommend maintaining this layer separately in the current github.com/Xilinx location or be included under meta- openembedded layers.
I suppose a seperate layer since jupyter isn't typically used
but I don't have a strong opinion either way.

> - Would you suggest having a separate mailing list ?

Using the Yocto email list would be my preference.
That way, I'd keep on eye on Jupyter from time to time
whereas if it's a separate list, I likely would not subscribe.
I'm assuming that there will be less than few 100 emails per year.

../Randy


> 
> Thanks,
> Chandana
> 


-- 
# Randy MacLeod
# Wind River Linux

