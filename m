Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.4909.1578063444770911757
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 06:57:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Jan 2020 06:57:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,391,1571727600"; 
   d="scan'208";a="369620155"
Received: from hongy-mobl1.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.50.70])
  by orsmga004.jf.intel.com with ESMTP; 03 Jan 2020 06:57:22 -0800
Subject: Re: [yocto] bitbake core-image-mono build error
To: yocto@lists.yoctoproject.org
References: <2ae4ae54-d72d-94d6-ec1e-92748d9a8c88@iwavesystems.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b6558e2c-3c61-8cd0-d275-4d50bd4875e6@intel.com>
Date: Fri, 3 Jan 2020 14:57:21 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <2ae4ae54-d72d-94d6-ec1e-92748d9a8c88@iwavesystems.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 03/01/2020 07:19, Sheraz Ali wrote:
>      I was trying to add meta-mono to yocto build, i had cloned 
> meta-mono and added the layer to bblayer.conf and when i try to build 
> core-image-mono using the below command, i get "No package 'gdk-x11-3.0' 
> found", I have attached the error screenshot for your reference.

It looks like your DISTRO is building without X11 (no x11 in 
DISTRO_FEATURES), and you're also using a very old release (pre-2.0?) 
which explicitly checks for this.

Ross
