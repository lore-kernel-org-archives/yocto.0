Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B330AE013B8
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 02:54:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Jul 2013 02:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,973,1363158000"; d="scan'208";a="262331855"
Received: from unknown (HELO helios.localnet) ([10.252.121.225])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Jul 2013 02:48:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: varun bhatnagar <varun292006@gmail.com>
Date: Mon, 01 Jul 2013 10:48:46 +0100
Message-ID: <3624548.VBuVOLK5Yg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAGxOggHBwsZ5f5f9x12-pOLGJY9bRNkAu6G27kz4Qgp-4ztdqA@mail.gmail.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<2897880.FC0dZLhceG@helios>
	<CAGxOggHBwsZ5f5f9x12-pOLGJY9bRNkAu6G27kz4Qgp-4ztdqA@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Mon, 01 Jul 2013 09:54:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 30 June 2013 00:05:58 varun bhatnagar wrote:
> Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_INSTALL. I have
> removed it from there but I need to add the command provided by these
> packages in my image. So I have added one line in my layer.conf file
> "IMAGE_INSTALL_append= test-ea ". Now if I try to run bitbake -k
> core-image-minimal, it gives me a message saying "Nothing provides
> test-ea". What shall I do? (I have build the recipe file of test-ea without
> any error.)

Can you show me what the test-ea recipe contains?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

