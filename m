Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web12.10240.1575557339296709822
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 06:48:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Dec 2019 06:48:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; 
   d="scan'208";a="214142537"
Received: from aaronsan-mobl.ger.corp.intel.com (HELO blackadder.local) ([10.249.32.186])
  by orsmga006.jf.intel.com with ESMTP; 05 Dec 2019 06:48:57 -0800
Subject: Re: [yocto] http2 support issue in curl #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
References: <cbf1df7f-c852-438c-9c20-ef142d5bbb64@intel.com>
 <2561.1575545031107221548@lists.yoctoproject.org>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ead38ea2-9dd8-aa8e-c163-cab7e1404db7@intel.com>
Date: Thu, 5 Dec 2019 14:48:56 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <2561.1575545031107221548@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 05/12/2019 11:23, Uzair Mazhar wrote:
> As I mentioned That I Cloned warrior branch of poky, meta-raspberrypi 
> and meta-openembedded.
> nghttp2 recipe is already in my repository under 
> "meta-openembedded/meta-networking/recipes-support/nghttp2"
> but the problem is still persistent.

Did you add meta-networking to bblayers.conf?

> I tried to add nghttp2 as RDENPENDS in curl and it compiled 
> successfully but libnghttp2 was not part of my image.

Probably because the dependency ended up on a package you didn't 
actually instally.  Also RDEPENDS are not in the sysroot, so the curl 
build wouldn't have been able to see nghttp2, you meant to add it to 
DEPENDS.

> If I add nghttp2 in conf/local.conf inside "IMAGE_INSTALL_append ", the 
> libnghttp2 becomes the part of my image under /usr/lib but again curl 
> doesn't support http2.

Adding the library to the image won't change the curl library which has 
already been built without nghttp2.


Looking at the curl recipe, nghttp2 support is there but disabled out of 
the box, so you just need to turn the support on. The recipe has:

PACKAGECONFIG[nghttp2] = "--with-nghttp2,--without-nghttp2,nghttp2"

The documentation covers the methods available to turn on/off 
PACKAGECONFIG options:

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG

Ross
