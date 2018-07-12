Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34FF5E00E9D; Wed, 11 Jul 2018 23:35:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E321E00E9D;
	Wed, 11 Jul 2018 23:35:05 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2018 23:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,341,1526367600"; d="scan'208";a="66320835"
Received: from wgerner-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.188])
	by orsmga003.jf.intel.com with ESMTP; 11 Jul 2018 23:34:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Konrad Scherer <Konrad.Scherer@windriver.com>
Date: Thu, 12 Jul 2018 08:34:43 +0200
Message-ID: <46407905.10uWkAFYrq@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <7454b0f6-57c6-5304-0108-caa804494e57@windriver.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<7454b0f6-57c6-5304-0108-caa804494e57@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Thu, 12 Jul 2018 06:35:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Konrad

On Wednesday, 11 July 2018 7:03:28 PM CEST Konrad Scherer wrote:
> I have attached a patch to reduce the layerindex-web image size further. 
> Docker image layers are like git objects and RUN commands can only hide 
> files, not remove them once they have been committed. The pip upgrade 
> caused the following 'pip install' to fail and was removed.

Right, overall you don't save any storage space with separate stages - but the 
downside of merging these is that you lose the ability to incrementally update 
the container within those stages; any time anything before changes the whole 
block will need to be re-run. Having said that we still have the separation 
between requirements.txt and everything else which is probably sufficient.

Oddly I did not see a failure from pip when I built this yesterday, but I 
guess it's probably not strictly necessary to upgrade it anyway.

I've pushed your patch to the paule/dockerfixes branch.

> I recommend docker-compose because much of the information in 
> docker/README can be captured in a compose yaml file. It handles the 
> network setup and makes managing shared volumes much simpler.

Right, we'd just need to make sure everything we now have in the README is 
covered by the compose file (everything that's practical to cover, anyway).

Cheers,
Pau;

-- 

Paul Eggleton
Intel Open Source Technology Centre



