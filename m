Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50890E0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 03:09:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Jun 2013 03:09:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,903,1363158000"; d="scan'208";a="257661996"
Received: from unknown (HELO helios.localnet) ([10.252.122.59])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Jun 2013 03:09:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
Date: Thu, 20 Jun 2013 11:09:48 +0100
Message-ID: <2169568.OdCe6aKEne@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Installing .deb file in Build
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
X-List-Received-Date: Thu, 20 Jun 2013 10:09:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 19 June 2013 09:10:20 DAMARLA Satya Swaroop wrote:
> I have a .deb file which has to be installed. It installs properly on the
> target image but I want to install it at the build itself by creating a
> bitbake recipe.. Is it possible to install .deb files or not? If possible,
> please suggest me so that I can make it..

I think the bin_package class is designed explicitly to help with this. Have a 
look at classes/bin_package.bbclass.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

