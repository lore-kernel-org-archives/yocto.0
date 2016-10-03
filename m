Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 538F3E00839; Mon,  3 Oct 2016 15:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB4A6E00777
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 15:59:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 03 Oct 2016 15:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,292,1473145200"; d="scan'208";a="1060003644"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.185.151])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2016 15:59:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Liam R. Howlett" <Liam.Howlett@windriver.com>
Date: Tue, 04 Oct 2016 11:59:13 +1300
Message-ID: <2862493.qkC2HWhoSf@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1474914338-26310-6-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1474914338-26310-6-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 05/10] layerindex: Add distribution to web interface and model.
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
X-List-Received-Date: Mon, 03 Oct 2016 22:59:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 26 Sep 2016 14:25:33 Liam R. Howlett wrote:
> Add the distributions to the index.  This looks a lot like the machines
> and allows users to search for a particular distribution.
> 
> Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
> ---
>  layerindex/admin.py                     | 11 +++++
>  layerindex/models.py                    | 14 ++++++
>  layerindex/recipeparse.py               |  5 +++
>  layerindex/restviews.py                 | 10 ++++-
>  layerindex/tools/import_classic.py      |  2 +
>  layerindex/update_layer.py              | 46 +++++++++++++++++++-
>  layerindex/urls.py                      |  3 ++
>  layerindex/urls_branch.py               |  6 ++-
>  layerindex/views.py                     | 29 ++++++++++++-
>  templates/layerindex/detail.html        | 23 ++++++++++
>  templates/layerindex/distributions.html | 76

Sorry, I know it's probably going to be a pain, I'd really like to be using 
the term "distro" here rather than "distribution" - that would match up with 
our existing variable and path naming, and at the same time will resolve a few 
typos in this patch (e.g. "distribuiton").

Also, any change to the structure needs to be accompanied by a migration to 
handle existing databases. Since you're working with Django 1.8 you'd be 
creating its migrations rather than South's, and we had to start with a clean 
slate for that so I can see perhaps why you missed them.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

