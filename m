Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A00D5E00B53; Wed, 14 Jun 2017 04:45:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72960E00B18
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 04:45:54 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jun 2017 04:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,340,1493708400"; d="scan'208";a="274142043"
Received: from petrova-mobl12.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.48.250])
	by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2017 04:45:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "blackthirt33n ." <jjosburn@gmail.com>
Date: Wed, 14 Jun 2017 13:45:51 +0200
Message-ID: <62396126.lt37N3rdml@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CA+z1-f-KrzwFjRTgmiH0dj-mYavLa1sJSmG=30AiAMdwQ6TMBA@mail.gmail.com>
References: <CA+z1-f-KrzwFjRTgmiH0dj-mYavLa1sJSmG=30AiAMdwQ6TMBA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is there a guide to making a recipe for bitbake with the morty/pyro branch
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
X-List-Received-Date: Wed, 14 Jun 2017 11:45:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi James

On Wednesday, 14 June 2017 12:43:24 PM CEST blackthirt33n . wrote:
> is there a guide to making a recipe for bitbake with the more recent
> branches.
> I have found a guide but those are dated 2015 and there descriptions
> are now dated.

The relevant section of the manual is here:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

If you have specific issues/questions or you feel something isn't covered
well enough by the manual please let us know. 

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

