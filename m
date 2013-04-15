Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D18E00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 09:41:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2013 09:39:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,476,1363158000"; d="scan'208";a="318523154"
Received: from unknown (HELO helios.localnet) ([10.255.13.245])
	by orsmga002.jf.intel.com with ESMTP; 15 Apr 2013 09:41:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Date: Mon, 15 Apr 2013 17:40:59 +0100
Message-ID: <2299638.betjk7Cq9a@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAFMfyzKEScWXRFDFXQRjrw-+Gm0ie=wwrtAt07JuXBZiOOmhPA@mail.gmail.com>
References: <CAFMfyzKEScWXRFDFXQRjrw-+Gm0ie=wwrtAt07JuXBZiOOmhPA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Tools for measuring temperature on Tegra-Harmony board or in general
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
X-List-Received-Date: Mon, 15 Apr 2013 16:41:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 15 April 2013 16:17:20 Satya Swaroop Damarla wrote:
> I have successfully compiled and am so happy the way poky is working on my
> Tgera-Harmony modified version board... I have a new requirement which is
> to find temperature of CPU so that we can control the fan..
> 
> I think it comes with NCT1008-i2c-4-4C temperature sensor and has Tegra i2C
> adapter

I have no experience with this platform, however typically on Linux, 
lm_sensors is the piece of software used to read sensor values such as 
temperature, fan speed etc. There is an lm_sensors recipe in the meta-oe 
layer.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

