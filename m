Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.4140.1577115646113394450
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 07:40:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Dec 2019 07:40:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; 
   d="scan'208";a="242244411"
Received: from ansethi-mobl.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.36.195])
  by fmsmga004.fm.intel.com with ESMTP; 23 Dec 2019 07:40:44 -0800
Subject: Re: [yocto] installing and rolling back packages in yocto at runtime
To: yocto@lists.yoctoproject.org
References: <CAGWAjas7jQtoQYX6wGz=Z3AXhq6RDFvFqCxHSGRDksV2QaTN2Q@mail.gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0ca762ba-4dd0-a2f4-a5e5-641264eac00a@intel.com>
Date: Mon, 23 Dec 2019 15:40:43 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAGWAjas7jQtoQYX6wGz=Z3AXhq6RDFvFqCxHSGRDksV2QaTN2Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 23/12/2019 14:38, learning yocto wrote:
> Is it possible to ftp the image to the board and then do something
> like dpkg -i, this would help in deinstall as well?

Yes.  By default rpm/smart is used, but you can use apt/dpkg or opkg if 
you prefer.

You can either copy packages onto the target and use the tool to install 
directly (dpkg -i for example), or use a HTTP daemon to share your 
tmp/deploy/deb folder and set PACKAGE_FEED_URIS to configure the feed in 
your images.

Ross
