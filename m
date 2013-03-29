Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4976AE003AA
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 14:34:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Mar 2013 14:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,375,1363158000"; d="scan'208";a="309300602"
Received: from unknown (HELO helios.localnet) ([10.255.12.237])
	by orsmga002.jf.intel.com with ESMTP; 29 Mar 2013 14:34:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
Date: Fri, 29 Mar 2013 21:34:09 +0000
Message-ID: <3982011.Guen6pOcoq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
MIME-Version: 1.0
Subject: New OE layer index now available
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
X-List-Received-Date: Fri, 29 Mar 2013 21:34:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks,

There is a new index for OpenEmbedded layers available here:

  http://layers.openembedded.org

It can be used to browse and search for existing layers, as well as the 
recipes and machines contained within them. In addition to the short 
description, repository location and usage link we were collecting in the 
existing wiki, we can now store information on maintainers, layer 
dependencies, and the associated mailing list, as well as a longer 
description. New layers can be submitted easily using a simple form which does 
not require a login.

I've imported all the data from the existing index on the OE wiki and filled
in the blanks by hand - please check the entries for your layers and if I've 
missed anything or entered something incorrectly, please let me know (reply 
off-list) and I'll fix it; alternatively if you're already listed as the 
maintainer of a layer you can create an account with the same email address 
and you'll be able to edit the entry yourself at any time.

The index also supports multiple branches, but for the moment there is only a 
master branch configured as I'd like to have people check the layer data before 
adding the additional stable branches (danny and denzil).

Feedback on the new site is welcome. The code is also available in case you 
want to take a look / improve something - see the TODO file for possible future 
improvements:

  http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/

Once people have had a chance to give feedback I'll replace the content of the 
existing OE wiki page with a link to the new index.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

