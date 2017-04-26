Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF553E00812; Wed, 26 Apr 2017 13:10:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5957E00812
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 13:10:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2017 13:10:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,255,1488873600"; d="scan'208";a="1161372825"
Received: from cheesinc-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.218])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2017 13:10:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Date: Thu, 27 Apr 2017 08:10:14 +1200
Message-ID: <11146382.D9BAFt9J3r@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAOsmwBQtN=d153NyAnptEDXCai-9fqQ9rQwfaA7ZAF8E8CFsMg@mail.gmail.com>
References: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
	<CAOsmwBRPM7wt=ovbYg1pd+NJQY1PpaH=6onpgp4a_h5VBe4FGg@mail.gmail.com>
	<CAOsmwBQtN=d153NyAnptEDXCai-9fqQ9rQwfaA7ZAF8E8CFsMg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Share recipes
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
X-List-Received-Date: Wed, 26 Apr 2017 20:10:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alvaro,

On Thursday, 27 April 2017 5:43:01 AM NZST Alvaro Garcia wrote:
> The git repository where I should push is
> https://github.com/openembedded/openembedded or

That repository is obsolete as noted in the README.

> http://cgit.openembedded.org/openembedded-core?
> I only saw https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
> but none about recipes, is there any special protocol?

I think you want http://cgit.openembedded.org/meta-openembedded

To submit a new recipe, you'd submit a patch that added the recipe, FYI.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

