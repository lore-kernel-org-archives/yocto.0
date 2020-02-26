Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.3624.1582693702993111901
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 21:08:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2020 21:08:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; 
   d="scan'208";a="384693782"
Received: from unknown (HELO [10.221.217.137]) ([10.221.217.137])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2020 21:08:21 -0800
Subject: Re: [yocto] Bitbake error
To: =?UTF-8?Q?I=c3=b1igo_Vicente_Wali=c3=b1o?=
 <inigovicentewalino@gmail.com>, yocto@lists.yoctoproject.org
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
From: "Anuj Mittal" <anuj.mittal@intel.com>
Message-ID: <395d1171-29eb-6225-883f-ca6bc4d0b365@intel.com>
Date: Wed, 26 Feb 2020 13:08:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 21-Feb-20 05:16 PM, Iñigo Vicente Waliño wrote:
> Hi,
> 
> I'm trying to build yocto project ZEUS for imx8m mini.
> 
> I have this configuration EXTRA_IMAGE_FEATURES= “ ssh-server-openssh
> tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management
> tools-profile” in my build/conf/local.con file.
> 
> But it reports error when executing *bitbake core-image-base*.
> Host environment: Ubuntu 18.04.3 LTS
> 
> Can any one explain how to resolve this?

You are probably trying to use an old kernel that doesn't have python3 
support for perf:

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/tools/perf/Makefile.config?h=linux-4.19.y&id=66dfdff03d196e51322c6a85c0d8db8bb2bdd655

I guess one way to resolve this would be to disable scripting in perf if 
you don't want it.

Thanks,

Anuj
