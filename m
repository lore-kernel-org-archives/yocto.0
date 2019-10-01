Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12128E00D4E; Mon, 30 Sep 2019 20:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94E89E00D33
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 20:02:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Sep 2019 20:02:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,569,1559545200"; d="scan'208";a="191325594"
Received: from hanshuan-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.249.65.161])
	by fmsmga007.fm.intel.com with ESMTP; 30 Sep 2019 20:02:42 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Pranay Mankad <pranaymankad@gmail.com>
Date: Tue, 01 Oct 2019 16:02:40 +1300
Message-ID: <13654916.Hyp9vebjCN@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <20191001025259.67179-1-pranaymankad@gmail.com>
References: <20191001025259.67179-1-pranaymankad@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, mankad@synopsys.com
Subject: Re: [layerindex-web][PATCH] These changes will add the metadata for product revision and epoch if present in the bitbake recipe.
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
X-List-Received-Date: Tue, 01 Oct 2019 03:02:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Pranay,

On Tuesday, 1 October 2019 3:52:59 PM NZDT Pranay Mankad wrote:
> Signed-off-by: Pranay Mankad <pranaymankad@gmail.com>
> ---
>  .../migrations/0042_recipe_property_addition.py      | 20 ++++++++++++++++++++
>  layerindex/models.py                                 |  2 ++
>  layerindex/update_layer.py                           |  2 ++
>  3 files changed, 24 insertions(+)
>  create mode 100644 layerindex/migrations/0042_recipe_property_addition.py

So the substance of this change is fine, however the commit message needs a bit of reworking. 
The shortlog (first line, which is used by git-send-email automatically as the subject) should be shorter and then you can have a fuller explanation of the change after a blank line. It should look something like this:

---------- snip ----------
Track PE and PR for recipes

This will add the metadata for epoch and revision if present in the
bitbake recipe. These will be automatically available through the REST
API but won't (yet) be visible in the UI.
---------- snip ----------

(Removing snip lines obviously)

Thanks,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre



