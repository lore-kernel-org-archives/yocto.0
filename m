Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FE92E00D33; Thu, 19 Sep 2019 06:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5AF5E009E2
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 06:40:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8JDduGr003157
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Sep 2019 06:39:57 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 19 Sep 2019 06:39:56 -0700
To: <yocto@yoctoproject.org>, <robert.berger.yocto.user@gmail.com>,
	<simon.spannagel@cern.ch>
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <ed609776-571f-0633-fb68-055236d32897@windriver.com>
Date: Thu, 19 Sep 2019 09:39:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
X-Originating-IP: [172.25.44.5]
Subject: Re: gitlab-runner
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
X-List-Received-Date: Thu, 19 Sep 2019 13:40:03 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
> Hi,
> 
> Does someone happen to have a BitBake recipe for gitlab-runner?[1]
> 
> [1] https://gitlab.com/gitlab-org/gitlab-runner
> 
> A quick search did not show up anything;)

There's nothing in the layer index:
 
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner

(It wasn't clear if you knew about the index.)

I did find:
https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
that mentions gitlab-runner but it doesn't seem like that layer provides
a recipe but you might want to check it out anyway and let us know if
it works for you.

Also I CCed Simon who is the most recent active committer to 
meta-caribou. Simon, Do you want to add this layer to the index?
See:
   https://layers.openembedded.org/layerindex/branch/master/layers/
and click the "Submit layer" button.

,./Randy

> 
> Regards,
> 
> Robert


-- 
# Randy MacLeod
# Wind River Linux

