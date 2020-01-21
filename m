Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.15215.1579626262715919253
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 09:04:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Jan 2020 09:04:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; 
   d="scan'208";a="280123638"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
  by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2020 09:04:21 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jan 2020 17:04:20 +0000
Received: from nholland-mobl.ger.corp.intel.com (163.33.253.164) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 17:04:20 +0000
Subject: Re: [yocto] Remove buildhistory from deb package version
To: <yocto@lists.yoctoproject.org>
References: <18da5635-d9e0-5f6d-0aac-101008ba6fb6@faresoftware.it>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d01da9bf-45ee-11ad-39a2-091c97f21ae5@intel.com>
Date: Tue, 21 Jan 2020 17:04:14 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <18da5635-d9e0-5f6d-0aac-101008ba6fb6@faresoftware.it>
Return-Path: ross.burton@intel.com
X-Originating-IP: [163.33.253.164]
X-ClientProxiedBy: irsmsx605.ger.corp.intel.com (163.33.146.138) To
 irsmsx602.ger.corp.intel.com (163.33.146.8)
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 21/01/2020 11:58, Mauro Ziliani wrote:
> Hi all.
> 
> I need to remove the buildhistory number from final package version
> 
> 
> Until now I use in local.conf
> 
> PRSERV_HOST = "localhost:0"
> BUILDHISTORY_COMMIT = "1"
> INHERIT += " buildhistory "
> 
> When the package is built the buildhistory number is appended to the 
> version.
> 
> i.e.  1.0.0-r0.3

That's not buildhistory, that's the PR service.

Comment out PRSERV_HOST.

Ross

