Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2088E00E2F; Wed, 20 Nov 2019 03:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE2BE00E24
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 03:53:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Nov 2019 03:53:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="209508612"
Received: from unknown (HELO blackadder.local) ([10.252.49.82])
	by orsmga003.jf.intel.com with ESMTP; 20 Nov 2019 03:53:53 -0800
To: Jeff Kaisner <jkaisner@aeronix.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <e8888d43e2c44373b8c3affaea368dba@aeronix.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <45cfec80-859c-ae08-997a-9dcdabcd6312@intel.com>
Date: Wed, 20 Nov 2019 11:53:52 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <e8888d43e2c44373b8c3affaea368dba@aeronix.com>
Subject: Re: Install native recipe into filesystem
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
X-List-Received-Date: Wed, 20 Nov 2019 11:54:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 19/11/2019 21:15, Jeff Kaisner wrote:
> We have several executables that can run on the target (ARM64) but also 
> on the host system (x86).  I added the BBCLASSEXTEND = "native" and can 
> build all the recipes in native mode.  Once done, I would like to be 
> able to install them on the host system, but don’t see a package for 
> them (or understand that part of the process).

I'm guessing you have a recipe called something like foo.bb.  You've 
added BBCLASSEXTEND=native to this, and can bitbake foo-native.

If you want to also build this for the target, simply add foo to the 
IMAGE_DEPENDS or directly bitbake foo.

Ross

