Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFDFE013DB
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 10:34:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Sep 2012 10:34:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,450,1344236400"; d="scan'208";a="194943242"
Received: from unknown (HELO helios.localnet) ([10.252.121.228])
	by orsmga001.jf.intel.com with ESMTP; 19 Sep 2012 10:34:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Date: Wed, 19 Sep 2012 18:34:43 +0100
Message-ID: <2395129.l0asU7EgLM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003CCC541@ORSMSX107.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003CCC541@ORSMSX107.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: maximum recursion depth exceeded errors with gnutls_2.12.17.bb
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Sep 2012 17:34:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 19 September 2012 17:00:20 Saxena, Rahul wrote:
> I have suddenly started getting maximum recursion depth exceeded python
> errors with gnutls_2.12.17.bb
> 
>  recipe on Denzil branch.
> 
> I am copying snippets of the message log below (some of the stuff that
> repeats has been removed)
> 
> Any suggestions as what could be the problem ?

This is a symptom of this bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3073

I've sent a backported patch to fix this for denzil, Scott is about to add it 
to his queue:

http://patchwork.openembedded.org/patch/36547/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

