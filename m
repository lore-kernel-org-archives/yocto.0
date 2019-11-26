Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.13983.1574784907827296977
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 08:15:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Nov 2019 08:15:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; 
   d="scan'208";a="233795558"
Received: from xsanroma-mobl1.ger.corp.intel.com (HELO blackadder.local) ([10.249.34.24])
  by fmsmga004.fm.intel.com with ESMTP; 26 Nov 2019 08:15:06 -0800
Subject: Re: [yocto] Adding python3-compile-native
To: yocto@lists.yoctoproject.org
References: <d257b4e4-165b-da06-f988-58621366a309@faresoftware.it>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ebba9770-58eb-518a-7c85-fc604b3efc47@intel.com>
Date: Tue, 26 Nov 2019 16:15:05 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <d257b4e4-165b-da06-f988-58621366a309@faresoftware.it>
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 26/11/2019 13:03, Mauro Ziliani wrote:
> How can I add python3-compile-native to my bsp?
> 
> I working with Krogoth, I llok python-3.5-manifest.inc where 
> FILES_${PN}-compile is defined.
> 
> I think I need to define FILES_${PN}-compile-native in some way

For a release as old as Krogoth, any dependency on python3-compile 
should be target-specific.  Recent releases have the relevant provides 
set so that python3-native provides those names and dependencies just work.

tl;dr: set RDEPENDS_${PN}_class-target instead of RDEPENDS_${PN} where 
you've got a dependency on python3-compile.

Ross
