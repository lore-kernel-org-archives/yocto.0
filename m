Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5E5EE0084D; Wed,  5 Nov 2014 04:21:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17DC4E0082F
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 04:20:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Nov 2014 04:19:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,319,1413270000"; d="scan'208";a="631870850"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by orsmga002.jf.intel.com with ESMTP; 05 Nov 2014 04:20:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-core@lists.openembedded.org, yocto@yoctoproject.org
Date: Wed, 05 Nov 2014 12:20:56 +0000
Message-ID: <1735659.Fcs0eVF5SY@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Subject: Warning - INCOMPATIBLE_LICENSE regression affecting 1.7 (dizzy)
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
X-List-Received-Date: Wed, 05 Nov 2014 12:21:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks,

Unfortunately we've recently discovered that a regression in INCOMPATIBLE_LICENSE
behaviour has crept into the 1.7 release. We have a bug report covering the issue
here:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=6930

The fix has been merged to the master and dizzy branches as of this morning:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dizzy&id=f3a177cf045b19612b7d2c96889ac24307191c3d
  http://cgit.openembedded.org/openembedded-core/commit/?h=dizzy&id=652008fd9dc909836819e5c6808c63643eff6db6

If you use INCOMPATIBLE_LICENSE with dizzy / 1.7 it is strongly
recommended that you either use the current tip of the dizzy branch or apply
this patch locally. A 1.7.1 point release is upcoming that will include this
fix.

Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

