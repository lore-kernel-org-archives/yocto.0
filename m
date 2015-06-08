Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E04AE0094C; Mon,  8 Jun 2015 15:15:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE96E00496
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 15:15:54 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 08 Jun 2015 15:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,576,1427785200"; d="scan'208";a="505092924"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.173])
	([10.219.4.173])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2015 15:15:50 -0700
Message-ID: <55761476.7030804@linux.intel.com>
Date: Mon, 08 Jun 2015 17:17:26 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Alex Franco <alejandro.franco@linux.intel.com>, 
	paul.eggleton@linux.intel.com
References: <1433800812-34731-1-git-send-email-alejandro.franco@linux.intel.com>
In-Reply-To: <1433800812-34731-1-git-send-email-alejandro.franco@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] [layerindex-web] Add support for inherits in recipes
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
X-List-Received-Date: Mon, 08 Jun 2015 22:15:56 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I pushed and signed the changes to [1].

Cheers,
     alimon

[1] 
http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=franco/recipe_inherits

On 08/06/15 17:00, Alex Franco wrote:
> These patches add support for the inherits field in recipes. The first
> one adds the inherits field itself along with style changes, while the
> next one includes a Django migration file also for the inherits field.
> The local branch used in these patch files is afxez0r/YOCTO7575
>
> [YOCTO #7575]
>
> Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
>
> Alex Franco (2):
>    [layerindex-web] Support for recipe inherits field v3
>    [layerindex-web] Add recipe inherit migration file
>
>   .../0009_auto__add_field_recipe_inherits.py        | 196 +++++++++++++++++++++
>   layerindex/models.py                               |   2 +-
>   layerindex/static/css/additional.css               |  14 +-
>   layerindex/update.py                               |   4 +
>   templates/layerindex/detail.html                   |   4 +-
>   templates/layerindex/recipedetail.html             |  12 ++
>   templates/layerindex/recipes.html                  |   4 +-
>   7 files changed, 232 insertions(+), 4 deletions(-)
>   create mode 100644 layerindex/migrations/0009_auto__add_field_recipe_inherits.py
>


