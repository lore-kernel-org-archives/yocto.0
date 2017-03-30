Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515C3E009B9; Thu, 30 Mar 2017 12:53:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26FDDE00992
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 12:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490903592; x=1522439592;
	h=from:to:cc:subject:date:message-id:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=tojRtokaGmizEgpeBqn5MhBvJ0Y3SqKkYZR2riSpeGI=;
	b=JuUjWyrhghJGfVeoETfD/Dfxbt2a5eudXvuVJxWiJCKufEkKpzIGvNrG
	A5LQ8OOEcTgHT19DxYAX0j+oJJWWgQ==;
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2017 12:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,248,1486454400"; d="scan'208";a="1129050804"
Received: from sjayara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.175.26])
	by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2017 12:53:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alain Achkar <alain.achkar@triacta.com>
Date: Fri, 31 Mar 2017 08:53:06 +1300
Message-ID: <106496051.h0JeANXGLY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAGkf0HCuR9oSm-nv3aZs1KkHztJrDBRQBnwTA71FwO8NMRD2AQ@mail.gmail.com>
References: <CAGkf0HCuR9oSm-nv3aZs1KkHztJrDBRQBnwTA71FwO8NMRD2AQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Meaning of 'Support Level' column in https://wiki.yoctoproject.org/wiki/Releases
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
X-List-Received-Date: Thu, 30 Mar 2017 19:53:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alain,

On Friday, 31 March 2017 7:44:22 AM NZDT Alain Achkar wrote:
> We are currently on Jethro and planning to upgrade to Krogoth (can't use
> Morty yet, since Freescale/NXP hasn't released Morty yet).
> 
> Just wondering what the meaning of the 'Support Level' column is, or if you
> can point me to documentation about it.

"Development" means that the release is currently being worked on.

"Stable" means that the release is a stable release and will receive backports 
of important security / bug fixes (but not features).

"Community" means that maintenance is left up to the community - in reality 
that means that it is no longer officially maintained, but well-tested patches 
may still be accepted.

There's another page with policy information that may be helpful:

  https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

