Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D18AE00A37
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 03:34:05 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Mar 2014 03:34:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,592,1389772800"; d="scan'208";a="492715173"
Received: from maurorob-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.80])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 03:33:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: karl@hiramoto.org
Date: Wed, 05 Mar 2014 11:33:55 +0000
Message-ID: <1917463.rdkL3MgD4s@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <1393972957-11804-1-git-send-email-karl@hiramoto.org>
References: <1393972957-11804-1-git-send-email-karl@hiramoto.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] gnutls: Fixed bug that prevented the rejection of v1 intermediate CA certificates.
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
X-List-Received-Date: Wed, 05 Mar 2014 11:34:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Karl,

On Tuesday 04 March 2014 23:42:37 karl@hiramoto.org wrote:
> From: Karl Hiramoto <karl@hiramoto.org>
> 
> This patch is for the yocto dylan branch   it comes from uptream:

Thanks very much for sending these two. Because these are fixes for pretty 
serious security issues and we really need them in the dylan branch for the 
imminent 1.4.3 release, I've handled the following already and sent out new 
patches; however for the future could you please remember these:

* Patches for the OE-Core metadata need to go to the OE-Core mailing list 
(openembedded-core@lists.openembedded.org). There is a "Where to Send Patches" 
guide in the README file.

* Individual patch files next to recipes need an Upstream-Status marker - see: 
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_Header_Recommendations

* Please also add your Signed-off-by to individual patch files (not just the 
commit message)

* We ideally need patches for master first and stable branches second

Again, I've already taken care of these so you don't need to do anything for 
now.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

