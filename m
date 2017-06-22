Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43604E00B9F; Thu, 22 Jun 2017 03:55:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC72E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 03:55:17 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5MAtHgB009134
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Jun 2017 03:55:17 -0700 (PDT)
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Jun 2017 03:55:16 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<c9e4e046cfdfc84eebf802e7654155218a462c70.1497320961.git.liezhi.yang@windriver.com>
	<2668208.R804ovTHAV@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <99951e14-41f3-30f5-59ea-563cadc310b1@windriver.com>
Date: Thu, 22 Jun 2017 18:55:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <2668208.R804ovTHAV@peggleto-mobl.ger.corp.intel.com>
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 10/10] update_layer.py: delete layerbranch for non-existed branch
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
X-List-Received-Date: Thu, 22 Jun 2017 10:55:23 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit


On 06/21/2017 10:31 PM, Paul Eggleton wrote:
> On Tuesday, 13 June 2017 4:36:51 AM CEST Robert Yang wrote:
>> The branch is not needed any more when it has been removed from the repo, so
>> we also need remove its layerbranch, otherwise it still can be got from the
>> web, which causes confusions.
>
> I think I'd previously avoided this since I was concerned we'd potentially
> lose data about a branch which was manually gathered (such as maintainer
> information) however I can't actually think of a scenario now where you would
> lose valuable data - if the branch is gone then there's not much point keeping
> a reference to it around, so this should be OK.
>
>> Note, we have to move the location of tinfiol's code to make it can be
>> shutdown  correctly.
>
> How does this relate to the rest of this change? Also, can you explain the
> issue you were hitting? The try...finally is supposed to ensure it gets shut
> down.

I updated the commit message:

update_layer.py: delete layerbranch for non-existed branch

The branch is not needed any more when it has been removed from the repo, so we
also need remove its layerbranch, otherwise it still can be got from the web,
which causes confusions.

Note, we have to move the location of tinfiol's code to avoid creating tinfoil
when not needed, otherewise, if tinfoil is created (but not needed), and the
program exists earlier before "try ... finally" block, then tinfoil.shutdown()
doesn't run so that it is not shutdown. Move the code back, right before where
it is needed can fix the problem.

// Robert

>
> Cheers,
> Paul
>
>

