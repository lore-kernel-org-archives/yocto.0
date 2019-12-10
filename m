Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.8371.1575976504679391946
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 03:15:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Dec 2019 03:15:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; 
   d="scan'208";a="207247880"
Received: from pozo-mobl.ger.corp.intel.com (HELO blackadder.local) ([10.252.33.212])
  by orsmga008.jf.intel.com with ESMTP; 10 Dec 2019 03:15:03 -0800
Subject: Re: [yocto] Writing do_compile in python and importing modules
To: yocto@lists.yoctoproject.org
References: <CAF_dkJB25g1wT87bvbotOjQVLUBqiLJFoqcd9NunEH-Wu6aB6Q@mail.gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3511e9cd-8d03-2f98-0cca-537964b10d68@intel.com>
Date: Tue, 10 Dec 2019 11:15:01 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAF_dkJB25g1wT87bvbotOjQVLUBqiLJFoqcd9NunEH-Wu6aB6Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 09/12/2019 16:30, Patrick Doyle wrote:
> But then I started wondering if I could change do_compile to python,
> have it import assemble-tsk-blob, and get the best of both worlds --
> the ability to test assemble-tsk-blob outside of bitbake, and the
> efficiency of including its core operation directly within
> do_compile() and not requring that I spin up another python instance.

Every layer can have a lib/ folder which is on the Python search path 
(you'll see lots of recipes use oe.*, which is meta/lib/oe/) so you can 
just put Python modules in there.

Alternatively if the python is recipe-specific you could put the script 
next to the recipe and fiddle sys.path before importing?

python do_compile() {
     sys.path.append(os.path.dirname(d.getVar("FILE")))
     import foobar
}

Ross
