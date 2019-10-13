Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2387E00C74; Sun, 13 Oct 2019 13:45:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FFB3E0083A
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2019 13:45:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Oct 2019 13:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,293,1566889200"; d="scan'208";a="207829278"
Received: from rositasu-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.156.132])
	by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2019 13:45:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Date: Mon, 14 Oct 2019 09:31:36 +1300
Message-ID: <1682418.DauT7RXp9d@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
References: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] [PATCH 0/3] Some misc changes/fixes..
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
X-List-Received-Date: Sun, 13 Oct 2019 20:45:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mark

On Sunday, 13 October 2019 2:56:30 PM NZDT Mark Hatle wrote:
> A few misc changes/fixes.  The first two are well tested.  However, I 
suspect
> the 3/3 may be incorrect and I've labeled it an RFC due to this.
> 
> 1/3 - '.' wasn't allowed in branch names w/o an error.  This turned out
> to be a fairly simple fix.
> 
> 2/3 - For people who want to use 'poky' repository and not bitbake +
> openembedded-core.  I've tested this locally in both configurations.
> 
> 3/3 - When I was testing, my local git mirror is broken up with
> directories that are called 'git.openembedded.org' and 
'git.yoctoproject.org'
> due to this, the system was matching and locking out the edit layer 
> vcs_web_url submissions...  so I tried to make it better.. but I'm not
> sure it's right.
> 
> Mark Hatle (3):
>   layerindex/urls.py: Allow branches with a '.' in the name
>   update.py: Allow bitbake to live in a subdirectory of a repository
>   editlayer: Be more specific on the searches

Thanks, I merged these - I did make a minor change to 2/3 to allow it to work 
if BITBAKE_PATH doesn't appear in settings.py (I try to do this when adding 
new settings in case the user doesn't add the default to their edited settings 
file).

Cheers
Paul

-- 

Paul Eggleton
Intel System Software Products



