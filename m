Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web12.11301.1579863255147213429
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 02:54:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Jan 2020 02:54:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; 
   d="scan'208";a="260205445"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
  by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2020 02:54:12 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX108.ger.corp.intel.com (163.33.3.3) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 24 Jan 2020 10:54:12 +0000
Received: from rochenix-mobl.ger.corp.intel.com (163.33.253.164) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 10:54:11 +0000
Subject: Re: [yocto] cve-checker name collisions
To: Anders Montonen <Anders.Montonen@iki.fi>, <yocto@lists.yoctoproject.org>
References: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <866d4701-b299-dcc8-4541-4da98daeb8ed@intel.com>
Date: Fri, 24 Jan 2020 10:54:09 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
Return-Path: ross.burton@intel.com
X-Originating-IP: [163.33.253.164]
X-ClientProxiedBy: irsmsx605.ger.corp.intel.com (163.33.146.138) To
 irsmsx602.ger.corp.intel.com (163.33.146.8)
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 24/01/2020 09:02, Anders Montonen wrote:
> Hi,
> 
> What's the best way for handling name collisions when using the 
> cve-checker tool? For example, there's a ton of Adobe Flex 
> vulnerabilities that are reported against the Flex lexical analyzer 
> generator tool. Whitelisting the individual CVEs would be one option, 
> but the list is pretty long.

Set CVE_PRODUCT, if you use a colon then you can set the vendor too.

This specific instance is already fixed in oe-core master:

# Not Apache Flex, or Adobe Flex, or IBM Flex.
CVE_PRODUCT = "flex_project:flex"

Ross
