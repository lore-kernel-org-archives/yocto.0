Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51D31E00CD0; Wed, 20 Sep 2017 02:54:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F55E00A39
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 02:54:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Sep 2017 02:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,420,1500966000"; d="scan'208";a="137441619"
Received: from clim8-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.34])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2017 02:54:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 20 Sep 2017 21:54:32 +1200
Message-ID: <51930197.tKTl6ynBxN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Wed, 20 Sep 2017 09:54:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrea,

On Wednesday, 20 September 2017 8:44:22 PM NZST Andrea Galbusera wrote:
> Seeing the errors below while installing an eSDK. This is a routinely
> generated VM that installs the eSDK from installation script. The errors
> appeared with the latest iteration of the eSDK script, which is generated
> with almost up-to-date revisions from master. Of course I have extra layers
> in the mix, but none of them apparently had relevant changed since last
> (working) iteration: mostly synching to master branches happened. Can
> anyone help suggesting how to investigate this further? What do those
> unexpected task mean? I'm blocked on releasing this SDK to developers and
> clues from expert would be very appreciated...
> 
> ==> default: Checking sstate mirror object availability...
> ==> default: done.
> ==> default: ERROR: Task python-native.do_fetch attempted to execute
> unexpectedly
> ==> default: ERROR: Task python-native.do_prepare_recipe_sysroot attempted
> to execute unexpectedly
> ==> default: ERROR: Task python-native.do_unpack attempted to execute
> unexpectedly
> ==> default: ERROR: Task python-native.do_patch attempted to execute
> unexpectedly
> ==> default: ERROR: Task python-native.do_populate_lic attempted to execute
> unexpectedly and should have been setscened
> ==> default: ERROR: Task python-native.do_configure attempted to execute
> unexpectedly
> ==> default: ERROR: Task python-native.do_compile attempted to execute
> unexpectedly
> ==> default: ERROR: Task python-native.do_install attempted to execute
> unexpectedly
> ==> default: ERROR: Task python-native.do_populate_sysroot attempted to
> execute unexpectedly and should have been setscened
> ==> default: ERROR: SDK preparation failed: error log written to
> /home/vagrant/poky_sdk/preparing_build_system.log
> 

Basically this means that these tasks tried to execute where really the 
results should have been able to be restored from sstate. 

The cause of this type of error is one of three things: 

1) The sstate archive corresponding to a task wasn't able to be fetched from 
the server (for a minimal eSDK) or wasn't present in the installer (for a full 
eSDK - less likely as we basically do a trial run as part of building the eSDK 
in the first place)

2) The signature was somehow different to what it should have been. (Locked 
signatures are supposed to guard against this.)

3) A task that wasn't expected to execute did execute and thus the sstate 
wasn't available.

Given that this was python-native which I would expect would be a normal part 
of the SDK, I would suspect #1. Is this a minimal or full eSDK (i.e. what is 
SDK_EXT_TYPE set to)?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

