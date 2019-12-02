Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web12.9293.1575325643182747776
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 14:27:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 14:27:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; 
   d="scan'208";a="213205409"
Received: from aaronsan-mobl.ger.corp.intel.com (HELO blackadder.local) ([10.249.32.186])
  by orsmga003.jf.intel.com with ESMTP; 02 Dec 2019 14:27:21 -0800
To: oe-core <openembedded-core@lists.openembedded.org>,
 openembeded-devel <openembedded-devel@lists.openembedded.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: "Ross Burton" <ross.burton@intel.com>
Subject: Removal of Python 2 from oe-core
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <7ae3e998-5fd8-7d40-bdad-a3558b172f78@intel.com>
Date: Mon, 2 Dec 2019 22:27:20 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

At the time of writing, pythonclock.org tells me that Python 2.7 will 
retire in 29 days and 1 hour.

This means no more releases of Python 2.  No more security fixes.  No 
critical bug fixes.  No support at all.

As such, we're removing Python 2 from openembedded-core on Monday 9th 
December.  Python 2 isn't required by anything else in oe-core so if you 
just use oe-core this won't have any impact on you.  If you use other 
layers, then these layers may need to be updated.

The recipe will be moved to the newly created meta-python2 repository[1] 
for anyone who needs to continue to use Python 2, but remember that from 
2020 it will not be supported upstream so please do simply use Python 2 
as a stop-gap before migrating to Python 3.

If you have any questions about this, feel free to ask.

Regards,
Ross

[1] https://git.openembedded.org/meta-python2/
