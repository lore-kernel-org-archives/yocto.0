Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web09.9244.1579519358023309469
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 03:22:38 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Jan 2020 03:22:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; 
   d="scan'208";a="228355955"
Received: from grossi-mobl.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.38.20])
  by orsmga006.jf.intel.com with ESMTP; 20 Jan 2020 03:22:36 -0800
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: yocto@lists.yoctoproject.org
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org>
 <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com>
Date: Mon, 20 Jan 2020 11:22:35 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 17/01/2020 20:55, Andreas M?ller wrote:
> 2. I did not ask for stopping this - just asked how to continue and I
> did that for certain reasons: For example: Few minutes ago we saw a
> series for npm rework on oe-core. Unfortunately npm as is requires
> python2 and many modules.

npm needing Py2 is just disappointing.  Surely someone has ported it to 
py3 by now?

> Or the waf stuff: That means somebody has go
> to all the projects and ask them for waf upgrade or prepare patches
> there (and that means not just upgrading waf). So again: How do we
> handle/get rid recipes requiring python2 to build?

Waf is a special case, that the upstream waf file now support Py3, but 
the convention is to copy-and-paste the actual waf script into your 
project each upstream needs to update itself.

I looked at just deleting and dropping in the latest waf in waf.bbclass, 
but the wscript might need to be ported too so that isn't reliable.

tl;dr: anything using waf that called python2 will need to be ported.

Ross
