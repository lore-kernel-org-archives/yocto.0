Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.13881.1578184221247463687
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jan 2020 16:30:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Jan 2020 16:30:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,396,1571727600"; 
   d="scan'208";a="221941040"
Received: from hongy-mobl1.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.50.70])
  by orsmga006.jf.intel.com with ESMTP; 04 Jan 2020 16:30:17 -0800
Subject: Re: [yocto] Necessary build host packages
To: Deepak Rawat <drawat.floss@gmail.com>, yocto@lists.yoctoproject.org
References: <73686e24523680289a7b5612b5951a17d2a34043.camel@gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <83ff6855-cd82-eecc-a6f3-9238e5dcb04c@intel.com>
Date: Sun, 5 Jan 2020 00:30:16 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <73686e24523680289a7b5612b5951a17d2a34043.camel@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 04/01/2020 04:36, Deepak Rawat wrote:
> Hi All,
> 
> I am getting started with Yocto project and I am curious regarding the
> need for packages libegl1-mesa, libsdl1.2-dev and xterm are mentioned
> as
> part of "Build Host Packages" in yocto overview doc
> https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-build-system-packages
> . I am doing yocto development on a headless Ubuntu 18.04 and in from
> my limited knowledge think these packages should not really be needed
> for build.

These are only needed if you want to enable graphical output in qemu, 
you won't need them if you don't turn that on.

Ross
