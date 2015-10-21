Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5B43E009EF; Wed, 21 Oct 2015 05:42:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14C78E009C3
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:42:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 21 Oct 2015 05:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,711,1437462000"; d="scan'208";a="799077972"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.27.125])
	by orsmga001.jf.intel.com with ESMTP; 21 Oct 2015 05:42:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
Date: Wed, 21 Oct 2015 13:42:38 +0100
Message-ID: <4449982.pFjXl0Qf24@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <7858CE2B355E1A438F13002DDE9D639401110E3132@vie196nt>
References: <7858CE2B355E1A438F13002DDE9D639401110E3132@vie196nt>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Modifying the OE-internal Python code
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
X-List-Received-Date: Wed, 21 Oct 2015 12:42:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Georg,

On Tuesday 20 October 2015 21:07:15 PIEWALD Georg wrote:
> I'm trying to do some modifications in the OE-internals (just some personal
> customizations), in the Python code. In particular, I changed the file
> oe-core/meta/lib/oe/terminal.py
> I also compiled it into a terminal.pyc file. However, the modifications
> don't seem to be picked up by bitbake. Is there something more I have to
> do? Does the .pyc file have to be installed somewhere?

There should be no need to explicitly build the pyc nor do anything special 
for any changes to be recognised (assuming you're not using oe-init-build-env-
memres). Something must be going wrong in your setup somewhere. Perhaps an 
unusual python path?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

