Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web09.11409.1576247105272844293
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 06:25:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Dec 2019 06:24:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; 
   d="scan'208";a="211451625"
Received: from roenschv-mobl1.ger.corp.intel.com (HELO blackadder.local) ([10.252.50.17])
  by fmsmga008.fm.intel.com with ESMTP; 13 Dec 2019 06:24:56 -0800
Subject: Re: [yocto] Write contents of recipe variable into a configuration file
To: yocto@lists.yoctoproject.org
References: <em8cb12e6d-6bb4-4ea9-a205-cc8d621fe53e@andys-imac.leeshillfarm.local>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <e43efe93-462c-a8e3-eed9-79d44cdf1b8b@intel.com>
Date: Fri, 13 Dec 2019 14:24:55 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <em8cb12e6d-6bb4-4ea9-a205-cc8d621fe53e@andys-imac.leeshillfarm.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 13/12/2019 10:23, Andy Pont wrote:
> Hello,
> 
> I’m having a Friday, brain-fade moment.  I want to define a variable 
> within the wpa_supplicant.bbappend file:
> 
> WPA_GROUP_NAME = value
> 
> This value needs to be propagated into the wpa_supplicant.conf 
> configuration file for the “ctrl_interface_group” setting before the 
> file gets written into the target file system.
> 
>   I once saw a recipe that defined something similar as an arbitrary 
> value in the configuration file i.e. in this case we would use:
> 
> ctrl_interface_group=$xxxx
> 
> ...and then used file and string manipulation to put the correct value 
> there during the do_install() phase.
> 
> I now can’t find that recipe to see how it was done nor can I work out 
> how it was done.

Use sed:

sed -i -e s/@TOKEN/${WPA_GROUP_NAME}/ ${D}${sysconfdir}/configfile

Ross
