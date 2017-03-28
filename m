Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C2D6E0050B; Tue, 28 Mar 2017 14:35:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI, RCVD_IN_SORBS_SPAM,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.55.52.88 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00764E003E1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 14:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490736933; x=1522272933;
	h=from:to:cc:subject:date:message-id:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=O6wkbJcTwrEVxsANuAOFRWCm8wJgaPYs988fG+IEE8g=;
	b=E/kDx+jokP707eieqINDZoVqskvCv3+0Vw49k82jk371HP4MPMZdg/p0
	EnjWGHlrHLywuKPVX81pMd9rpOmQRA==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2017 14:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,238,1486454400"; d="scan'208";a="839441851"
Received: from dalin-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.138.23])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Mar 2017 14:35:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ian Welch <ian_welch@trimble.com>
Date: Wed, 29 Mar 2017 10:35:28 +1300
Message-ID: <2831743.0r9HdKAZTp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>
References: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using ${SRCVP} in PR of BB file
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
X-List-Received-Date: Tue, 28 Mar 2017 21:35:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ian,

On Wednesday, 29 March 2017 9:27:01 AM NZDT Ian Welch wrote:
>       We are preparing to move to PRservice in Yocto to handle auto rolling
> our revisions on every build. As an interim step we are doing some
> reordering or our current PR and PV parameters in our bitbake files. Our
> current syntax is as follows and works as expected
> 
> ----BB File----
> SRC_URI =
> "git://myrepo.git;branch=mybranch;subpath=Linux/bcastforwd;destsuffix=Linux/
> bcastforwd;protocol=ssh" SRCREV = "${AUTOREV}"
> PV = "1.1"
> PR = "r0"
> PV_append = "+git${SRCPV}"
> 
> ----Output from build----
> 
> bcastforwd_1.0-r0git0+afc68d4a00_arm926ejste.ipk
> 
> 
> 
> When we change git${SRCPV} to append to the PR we get "AUTOINC" in place of
> the revision number
> 
> ----BB File----
> "git://myrepo.git;branch=mybranch;subpath=Linux/bcastforwd;destsuffix=Linux/
> bcastforwd;protocol=ssh" SRCREV = "${AUTOREV}"
> PV = "1.1"
> PR = "r0"
> PR_append = "+git${SRCPV}"
> 
> ----ipk Output from build----
> 
> bcastforwd_1.0-r0gitAUTOINC+afc68d4a00_arm926ejste.ipk
> 
> 
> I took a look at the package.bbclass file which appears to be the
> magic sauce for searching and replacing the "AUTOINC" string but
> nothing jumped out at me as to why this would work for PV but not PR.

It's doing the replacement on PKGV, which is the equivalent of PV at the 
packaging end of things. We don't apply the replacement to PKGR, which is the 
equivalent to PR.
 
> Is it possible to support AUTOREV on PR?

The code isn't designed to handle that - the convention is to put it into PV 
and have the AUTOINC value ensure that the version increments properly. Aside 
from the preceding "r", PR is typically just a number.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

