Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C645FE013DE
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:04:10 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2013 11:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,771,1367996400"; d="scan'208";a="274907727"
Received: from unknown (HELO helios.localnet) ([10.252.122.206])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Jul 2013 11:04:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 29 Jul 2013 19:04:02 +0100
Message-ID: <11092468.8KYSURtWvb@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkWiUeBoTaYnWD1QLc4ZPWMtWx=LK_AgnFoKcSbaXkquiA@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<1961165.AMxETSbCgv@helios>
	<CA+Z6RkWiUeBoTaYnWD1QLc4ZPWMtWx=LK_AgnFoKcSbaXkquiA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Mon, 29 Jul 2013 18:04:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 July 2013 23:29:25 Navani Srivastava wrote:
> Thanks Paul.. It worked :)
> Able to create SDK with qt inbuilt on issuing "bitbake -c populate_sdk
> core-image-minimal" , but now "bitbake -v core-image-minimal" also invoke
> do_populate_sdk .. Is this the expected behavior or something else?

Er, that is certainly not expected. Would you be able to attach the current 
recipe?

> Is there anyway to clean only sdk by using bitbake command?

I'm not sure that there is, no.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

