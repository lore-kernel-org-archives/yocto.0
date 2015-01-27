Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E940E008DC; Tue, 27 Jan 2015 02:42:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45C62E0083A
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 02:42:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 27 Jan 2015 02:38:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="676638587"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2015 02:42:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: kalle@zapdevelopment.com
Date: Tue, 27 Jan 2015 10:42:40 +0000
Message-ID: <1747394.4vyzLVcRMW@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1422354552195.91079.26128@webmail7>
References: <1639085.ayJ6cVLrAT@peggleto-mobl5.ger.corp.intel.com>
	<1422354552195.91079.26128@webmail7>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: One recipe, two gits with destsuffix, how to patch?
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
X-List-Received-Date: Tue, 27 Jan 2015 10:42:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 January 2015 10:29:12 Kalle Komierowski wrote:
> I just modified my recipe with the patchdir.
> SRC_URI = "
> xxxxx.patch;patchdir=backports/
> 
> I can see that the patches are copied to the destination where I want them
> but for some reason they all fail when yocto tries to apply them. If I go
> manually to the destination git and type "git am xxxxx.patch" the all apply
> with no problem, I also tried to "patch -p1 < xxxxx.patch" and that worked
> to. Maybe I should play a bit with the striplevel? But I do think that
> yocto should be able to handle it from the point where I gave it the
> patchdir=..

The default striplevel is 1. If the patch is formatted typically, suspect this 
means that you'd need patchdir to be set to ../backports - does that not work?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

