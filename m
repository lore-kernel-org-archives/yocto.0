Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6018E009A0; Thu, 23 Mar 2017 13:52:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BEF3E00546
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 13:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490302338; x=1521838338;
	h=from:to:cc:subject:date:message-id:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=WojpkHBHPEpR/fWT48JzeqsPQF2npLfj2OpQ3j8IFF8=;
	b=LwehVxIouOqwuX2dfnkygiapgOmbSBnjSEPXcQG86jEJ6meLNsgkEDog
	tiF3xFGmewDxP1BLdfuuSU0QIC66nw==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Mar 2017 13:52:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,211,1486454400"; d="scan'208";a="70120726"
Received: from amilman1-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.171.177])
	by orsmga004.jf.intel.com with ESMTP; 23 Mar 2017 13:52:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alain Achkar <alain.achkar@triacta.com>
Date: Fri, 24 Mar 2017 09:52:12 +1300
Message-ID: <3249600.c7qDm493qG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAGkf0HDQYKbKYYH=eQdrnBkcrPDXm0LsaQpC_3XWN1HSbnikWQ@mail.gmail.com>
References: <CAGkf0HDQYKbKYYH=eQdrnBkcrPDXm0LsaQpC_3XWN1HSbnikWQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Anibal Limon <anibal.limon@intel.com>
Subject: Re: How to interpret the "Recipes reporting system" (e.g. for Python3 3.4, 3.5, 3.6)
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
X-List-Received-Date: Thu, 23 Mar 2017 20:52:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alain,

On Friday, 24 March 2017 4:50:39 AM NZDT Alain Achkar wrote:
> Is there any brief README or documentation about the "Recipe reporting
> system" ?
> 
> For example: http://recipes.yoctoproject.org/rrs/recipedetail/297/
> 
> Is it automatically generated or manually maintained? (If you look at the
> field Source URI, it points to Python-3.4.3.tar.xz but the Recipe file
> points to python3_3.5.3.bb which contains:
> 
> SRC_URI = "http://www.python.org/ftp/python/${PV}/Python-${PV}.tar.xz \

Something is wrong there - the SRC_URI field must not be being updated. For 
the most part the RRS is automatically populated. Anibal, any ideas?

> I am trying to understand how/if I can use it. For example, if I am using
> Jethro and I want Python 3.5 or 3.6, how can I use the "Recipe reporting
> system" to achieve this? (I don't want to upgrade to Krogoth or Morty)
> 
> In Jethro, I have:
> 
> 
> *poky/meta/recipes-devtools/python/python3_3.4.3.bb
> <http://python3_3.4.3.bb>*
> 
> which of course builds Python 3.4
> 
> I know that if I download Morty, I get:
> 
> *poky/meta/recipes-devtools/python/python3_3.5.2.bb
> <http://python3_3.5.2.bb>*
> 
> so, I tried copying this recipe into my Jethro source tree (at the same
> location) but I got too many errors (I think there are several patches that
> are needed).

Backporting will require changes, definitely. You'll have to work through them 
- you may be able to use the migration information in the reference manual (in 
reverse, of course) to provide hints - the 2.2 (morty) and 2.1 (krogoth) 
sections would be appropriate for your situation:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#migration

You may also find the git history for the recipes in question to be 
instructive in terms of what changes were made to bring them to their current 
state in master.

> So, is it possible to use the "Recipe reporting system" to see changes in
> another branch and bring them in to my branch?

You'd do that by checking out the branch in git and copying the entire 
directory, the RRS is just a reporting tool.

> Moreover, if Python 3.6 is not available in Morty, how can I make a recipe
> for it?

Since 3.6 isn't in master, there aren't any shortcuts I'm afraid, you would 
have to try manually updating it - probably the safest thing to do would be to 
copy the existing directory into your own custom layer and modify it there. I 
suspect starting at 3.5.2 is going to be fastest, but of course you'll need to 
backport that to jethro first.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

