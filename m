Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D82EE00E66; Sat, 24 Feb 2018 12:11:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1D31E006F3
	for <yocto@yoctoproject.org>; Sat, 24 Feb 2018 12:11:51 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Feb 2018 12:11:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,389,1515484800"; d="scan'208";a="33344007"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2018 12:11:50 -0800
Received: from elorhamm-mobl4.ger.corp.intel.com (unknown [10.254.109.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 8B2305803CB
	for <yocto@yoctoproject.org>; Sat, 24 Feb 2018 12:11:50 -0800 (PST)
To: yocto@yoctoproject.org
References: <dcad044fec2b4e0ab2efbaea4043fe76@MXPA2FGAW.fgremc.it>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <ddd36ecb-c3cf-e247-64a5-d11e4949f46b@linux.intel.com>
Date: Sat, 24 Feb 2018 12:11:56 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <dcad044fec2b4e0ab2efbaea4043fe76@MXPA2FGAW.fgremc.it>
Subject: Re: Problem in the building phase - Yocto 2.4.1 for Siemens IoT 2040 (Intel Quark)
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
X-List-Received-Date: Sat, 24 Feb 2018 20:11:52 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/22/18 3:59 AM, Pulizzotto Alessio (COMAU) wrote:
> Hello,
>
> I’m writing you because I have some problems with the building of an
> 2.4.1 image of the Yocto.
>
> I am using a Siemens IoT 2040 hardware witch have an intel quark cpu.
> 
> My error is the follow, in the “bitbake name-image”:
> 
> “ExpansionError during parsing
> ***/poky/meta-java/recipies-extended/xmlpull/xmlpull_1.1.3.4c.bb”
> 
> And at the end:
> 
> “module bb.data has no attribute ‘getVar’”
> 

I am currently building for a product using Quark + Java running YP
2.4.1. Here are the SHAs that are working for me:

meta-yocto-bsp
yocto-2.4.1
c2b641c8a0c4fd71fcb477d788a740c2c26cddce

meta-intel
8.0-rocko-2.4
d68dda959b5bf6f90aa8e5c2f027be324bb68e14

meta-java
master
03e35bf64f97980652ac532cca0ea96e730a551c

Cheers,
Stephano


