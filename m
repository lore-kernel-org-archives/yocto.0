Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93E75E01506
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 08:34:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jun 2013 08:34:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,845,1363158000"; d="scan'208";a="348210719"
Received: from unknown (HELO helios.localnet) ([10.252.122.29])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2013 08:34:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Javi Roman <javiroman@kernel-labs.org>
Date: Tue, 11 Jun 2013 16:34:23 +0100
Message-ID: <1494443.7oZTxQ4oFI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CACWQdqC6UwX7jYgxp-aRE4pUBz3G=npAAyBRuv3OJQQ_9Y4X_w@mail.gmail.com>
References: <CACWQdqCvEU3x0ctvUUrMhCAcoxnU0=SpVuW4E7Zo-ret9vidcA@mail.gmail.com>
	<51B732EF.9080902@windriver.com>
	<CACWQdqC6UwX7jYgxp-aRE4pUBz3G=npAAyBRuv3OJQQ_9Y4X_w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Custom kernel in Yocto/dylan branch.
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
X-List-Received-Date: Tue, 11 Jun 2013 15:34:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 11 June 2013 16:47:53 Javi Roman wrote:
> With
> 
> SRC_URI_append = "file://defconfig"

Does your actual recipe have a leading space in the value? _append won't add 
this for you so you have to do it explicitly.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

