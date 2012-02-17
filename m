Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68E8DE003E3
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 09:35:54 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2012 09:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="109370977"
Received: from unknown (HELO helios.localnet) ([10.252.123.6])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2012 09:35:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Feb 2012 17:35:52 +0000
Message-ID: <2046170.9fCjTlmZqN@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
MIME-Version: 1.0
Subject: pseudo interaction issue
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
X-List-Received-Date: Fri, 17 Feb 2012 17:35:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all,

I'm trying to extend buildhistory to write out the metadata revisions just 
before it does the commit to the buildhistory repository, and I'm having some 
pseudo-related trouble. The structure is a little unusual, in that the 
execution flow is an event handler that calls a shell function (via 
bb.build.exec_func()) and during parsing this function an ${@...} reference to 
a python function is evaluated, which then calls os.popen(), at which point I 
get the error "pseudo: You must set the PSEUDO_PREFIX environment variable to 
run pseudo."

I don't need pseudo at this stage. I've tried setting PSEUDO_DISABLED=1 and 
even PSEUDO_UNLOAD=1 just prior to the os.popen() call (or within it) and 
despite evidence that pseudo is taking notice of these being set in other 
contexts (when the function is called from elsewhere) even when doing this I 
still get the error above. I could rearrange the structure to avoid this 
execution flow however that would bar me from reusing existing code that we 
have for getting the metadata revision.

Any suggestions?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

