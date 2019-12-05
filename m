Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.7572.1575544056543245888
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 03:07:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Dec 2019 03:07:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; 
   d="scan'208";a="209106886"
Received: from aaronsan-mobl.ger.corp.intel.com (HELO blackadder.local) ([10.249.32.186])
  by fmsmga008.fm.intel.com with ESMTP; 05 Dec 2019 03:07:34 -0800
Subject: Re: [yocto] http2 support issue in curl #yocto #raspberrypi
To: Uzair Mazhar <uzair.mazhar@emumba.com>, yocto@lists.yoctoproject.org
References: <51ac1f70-332b-4557-823b-931918fcbbb4@www.fastmail.com>
 <16345.1575541823580051622@lists.yoctoproject.org>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <cbf1df7f-c852-438c-9c20-ef142d5bbb64@intel.com>
Date: Thu, 5 Dec 2019 11:07:34 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <16345.1575541823580051622@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 05/12/2019 10:30, Uzair Mazhar wrote:
> I added nghttp2 into depends but it gave dependency chain error about 
> nghttp2-native.

As Paul said:

"You may need to find or write a recipe for that library."

layers.openembedded.org is your friend here:

https://layers.openembedded.org/layerindex/recipe/86423/

There's a recipe for this in meta-networking.

Ross
