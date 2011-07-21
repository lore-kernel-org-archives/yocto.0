Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by mx1.pokylinux.org (Postfix) with ESMTP id A099E4C80A4F
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 08:29:28 -0500 (CDT)
Received: from mail-iw0-f180.google.com ([209.85.214.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 21 Jul 2011 06:29:27 -0700
Received: by iwn9 with SMTP id 9so862854iwn.25
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 06:29:27 -0700 (PDT)
Received: by 10.231.47.193 with SMTP id o1mr209270ibf.79.1311254967570;
	Thu, 21 Jul 2011 06:29:27 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com [207.192.74.254])
	by mx.google.com with ESMTPS id v16sm924391ibe.0.2011.07.21.06.29.26
	(version=SSLv3 cipher=OTHER); Thu, 21 Jul 2011 06:29:26 -0700 (PDT)
Message-ID: <4E2829B1.7080506@intel.com>
Date: Thu, 21 Jul 2011 06:29:21 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
In-Reply-To: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
Subject: Re: best cfg for building all of yocto?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jul 2011 13:29:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/20/2011 10:10 PM, Kumar Gala wrote:
> For a new bsp/target what's the best config choice to try and build all of yocto?  Is it core-image-sato?
>
> - k

bitbake world should build all of the available packages that aren't 
explicitly excluded due to machine incompatibilities. It doesn't 
generate a final image though, just all of the output packages.

core-image-lsb builds a significantly larger set of packages than -sato 
if you want a reference image that includes more packages.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

