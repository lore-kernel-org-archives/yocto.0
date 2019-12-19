Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.8364.1576754987042189401
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 03:29:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Dec 2019 03:29:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; 
   d="scan'208";a="298687857"
Received: from brzodkie-mobl.ger.corp.intel.com (HELO blackadder.local) ([10.249.32.172])
  by orsmga001.jf.intel.com with ESMTP; 19 Dec 2019 03:29:45 -0800
Subject: Re: [yocto] SSTATE_MIRRORS with ssh/sftp fetchers #yocto
To: yocto@lists.yoctoproject.org
References: <OmzH.1576751850923597182.4rq4@lists.yoctoproject.org>
 <9cb0a929b4b74c114156ad5fd1731b4bd16e8e5d.camel@linuxfoundation.org>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <78ef180e-e66b-07e6-6c57-b106561560ec@intel.com>
Date: Thu, 19 Dec 2019 11:29:45 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <9cb0a929b4b74c114156ad5fd1731b4bd16e8e5d.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 19/12/2019 11:16, Richard Purdie wrote:
>> Do you have any idea on how to use these fetchers (or other SSH keys-
>> based secure fetcher) to share sstate cache ?
> 
> I think this is a "not implemented" problem.
> 
> If you look at bitbake/lib/bb/fetch2/ssh.py or sftp.py, they don't have
> a checkstatus() method that local.py or wget.py has.
> 
> I think the sstate code relies on the checkstatus method working to
> know know if an sstate artefact is present.
> 
> Performance of that function is key and creating a new ssh connection
> to check for each sstate artefact may make the build prohibitively
> slow. There are some connection caching mechanisms present which may
> help with that.

I actually started implementing this a while ago:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=ross/mut2&id=42bdcd8181d2826a5a5dff6803958a900c0c4a2d

I *think* that worked but I can't be sure, it was a while ago and 
typically I forgot to put notes to my future self in the commit message.

As RP says, you'll want to use connection sharing: this is configured 
using ControlMaster and friends in the ssh configuration.  That should 
make the performance reasonable.

Ross
