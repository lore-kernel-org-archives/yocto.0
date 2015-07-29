Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED858E00A7B; Wed, 29 Jul 2015 02:40:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A84B7E009EB
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 02:40:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2015 02:40:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,569,1432623600"; d="scan'208";a="773420656"
Received: from kzamkov-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.21.165])
	by orsmga002.jf.intel.com with ESMTP; 29 Jul 2015 02:40:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Wu, DaweiX" <daweix.wu@intel.com>
Date: Wed, 29 Jul 2015 10:40:51 +0100
Message-ID: <4996109.o2HLxXslWn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <C99A0EA1A65F654ABB458136AC6BD5CB1109F2C5@SHSMSX103.ccr.corp.intel.com>
References: <C99A0EA1A65F654ABB458136AC6BD5CB1109F2C5@SHSMSX103.ccr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to check the version of Yocto
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
X-List-Received-Date: Wed, 29 Jul 2015 09:40:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dawei,

On Wednesday 29 July 2015 09:03:01 Wu, DaweiX wrote:
> Hi, as we know ,there are versions like 1.8, 1.8.1, 1.9 , ... , so how can I
> check this version? I only know 'bitbake --version' .

Perhaps most definitively, If you are using a clone of the poky repository, in
meta-yocto/conf/distro/poky.conf you should see DISTRO_VERSION set to the 
version. If you are using the default of DISTRO = "poky" you'll se this 
reported in the information printed at the start of every bitbake build 
execution.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

