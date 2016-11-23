Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B82AE00571; Tue, 22 Nov 2016 16:59:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DBA0E004E5
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 16:59:37 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2016 16:59:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,535,1473145200"; d="scan'208";a="904560960"
Received: from hsu7-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.214])
	by orsmga003.jf.intel.com with ESMTP; 22 Nov 2016 16:59:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Xiaohui Liu <whulxh@gmail.com>
Date: Wed, 23 Nov 2016 13:59:33 +1300
Message-ID: <2669167.jrsouefJ66@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAFxSfzhpwMx-imzDyd5cPHwpVgbNgLXptpidmPP7oYEaGDZK9Q@mail.gmail.com>
References: <CAFxSfzhpwMx-imzDyd5cPHwpVgbNgLXptpidmPP7oYEaGDZK9Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: When is a task rerun?
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
X-List-Received-Date: Wed, 23 Nov 2016 00:59:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Xiaohui,

On Tue, 22 Nov 2016 13:25:10 Xiaohui Liu wrote:
> Under what condition will a task be rerun? My understanding is that each
> task has a signature/checksum stored somewhere in tmp/. If the checksum
> changes, bitbake will look for shared state cache in SSTATE_DIR and then in
> SSTATE_MIRRORS. If no match is found, the task is run. Is my understanding
> right? Plus, where is the checksum stored in tmp/?

Mostly correct. Basically, the checksums are calculated at various points on
the fly based on the inputs to the task - i.e. the task function itself, plus
the signatures of dependencies (variables and functions). When a task actually
runs to completion a stamp file is written into tmp/stamps using the checksum
as part of the name. If some inputs change then the checksum changes and the
stamp no longer matches, thus if you call for that task (either directly or as
a dependency of another task) it will re-run.

The sstate cache is for certain selected tasks (those added to SSTATE_TASKS)
which produce some output that can be practically cached. At the start of the
build the SSTATE_DIR (and SSTATE_MIRRORS, if set) will be checked for any
sstate packages matching the current signatures of the tasks to be run, and if
available the packages will be unpacked instead of running the actual task.

This section of the reference manual may be helpful:

  http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#shared-state-cache

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

