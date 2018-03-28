Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CD0DE00C75; Tue, 27 Mar 2018 18:42:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447FBE00905
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 18:42:32 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 18:42:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,369,1517904000"; d="scan'208";a="29449827"
Received: from wongjosh-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.148])
	by orsmga006.jf.intel.com with ESMTP; 27 Mar 2018 18:42:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Wed, 28 Mar 2018 14:42:20 +1300
Message-ID: <1563754.LIJ7HFd7zq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <3eec5863-dc19-5b58-ecfe-08aa2bbf13f3@gmail.com>
References: <20180325193101.13451-1-paul.eggleton@linux.intel.com>
	<20180325193101.13451-2-paul.eggleton@linux.intel.com>
	<3eec5863-dc19-5b58-ecfe-08aa2bbf13f3@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 2/2] requirements.txt: use the most recent Django 1.8 version
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
X-List-Received-Date: Wed, 28 Mar 2018 01:42:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Armin,

On Tuesday, 27 March 2018 4:14:25 AM NZDT akuster808 wrote:
> Have you seen this ?
> 
> https://www.djangoproject.com/download/#supported-versions
> 
> 1.8 will EOL this April

Ah yes, I was aware this was looming but had forgotten how close it was. 
Thanks for the reminder, I guess I have another item for my todo list...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



