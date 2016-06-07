Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63FB4E00B7A; Tue,  7 Jun 2016 03:20:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AB0FE009CD
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 03:20:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jun 2016 03:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,432,1459839600"; d="scan'208";a="996844105"
Received: from tchang7-ivm5.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.146.35])
	by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2016 03:20:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 07 Jun 2016 22:20:45 +1200
Message-ID: <56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
	<CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
MIME-Version: 1.0
Cc: Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 07 Jun 2016 10:20:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 07 Jun 2016 00:10:58 Oleksandr Poznyak wrote:
> Unfortunately You can't have two *.bbappend files per one package (recipe).

Let's clarify that for the benefit of others reading along - you absolutely 
*can* have multiple bbappends per recipe. To answer the original question 
though, no you cannot have bbappends conditionally applied based on what image 
is being built - you cannot have other recipes built differently based on the 
image being built *period*. Other than what gets shared via the sysroot, 
recipes are largely independent of eachother, and that's by design.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

