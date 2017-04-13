Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE28DE00995; Wed, 12 Apr 2017 22:23:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01DB6E00985
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 22:23:18 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 12 Apr 2017 22:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,193,1488873600"; d="scan'208";a="88205803"
Received: from tranm-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.175.125])
	by fmsmga005.fm.intel.com with ESMTP; 12 Apr 2017 22:23:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Date: Thu, 13 Apr 2017 17:23:13 +1200
Message-ID: <2063715.rglnOqm99s@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020@DM5PR0101MB2953.prod.exchangelabs.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 'and' combination for OVERRIDES values?
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
X-List-Received-Date: Thu, 13 Apr 2017 05:23:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 13 April 2017 12:16:08 PM NZST Takashi Matsuzawa wrote:
> I just wonder if there is convenient way of defining somthing in recipes
> based on combination of two OVERRIDES variables. Say, I have two variables
> xxx and yyy.
> 
> AAA = "false"
> AAA_xxx = "true"
> AAA_yyy = "true"
> 
> But what if I want to set AAA to be "true" only when xxx and yyy are in
> OVERRIDES? (And also for 'or' condition.)

This should work for "and":

AAA_xxx_yyy = "true"

(There was a time many releases ago where this didn't, but it should work in 
any release in the last few years).

For "or" you already have the answer above, basically do it with the same 
value for both overrides:

AAA = "false"
AAA_xxx = "true"
AAA_yyy = "true"
 
> The similar situation for do_install_append(), etc.
> 
> do_install_append_xxx() {
> }
> 
> do_install_append_yyy() {
> }

Same thing - for and:

do_install_append_xxx_yyy() {
}

for or:

do_install_append_xxx() {
}
 
do_install_append_yyy() {
}

Note, we're appending here rather than setting as above, but otherwise setting 
a function is pretty much the same in terms of operations as a variable - the 
syntax is slightly different and immediate operations (such as +=) aren't 
allowed, but the same rules apply for overrides and deferred operations such 
as _append.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

