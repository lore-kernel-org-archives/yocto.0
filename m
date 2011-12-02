Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EE41E005B9
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 19:26:25 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2011 19:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,281,1320652800"; d="scan'208";a="97736559"
Received: from unknown (HELO [10.255.15.144]) ([10.255.15.144])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2011 19:26:24 -0800
Message-ID: <4ED84560.2040807@linux.intel.com>
Date: Thu, 01 Dec 2011 19:26:24 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
In-Reply-To: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
Subject: Re: building the examples from "meta-demo"
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
X-List-Received-Date: Fri, 02 Dec 2011 03:26:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi David

On 01/12/11 18:18, David Smoot wrote:
> From inside my poky folder, I did a "git clone
> git://git.yoctoproject.org/meta-demo" so that I have the meta-demo
> folder at the same level as the the other meta-* folders.
> Outside my poky tree I did the "source poky/oe-init-build-env my-build-folder"
> I edited conf/local.conf to set my parallel build options, my MACHINE
> to routerstationpro, and my download directory variable.
> I then typed "bitbake -k demo-image-mediatomb" but I got an error
> message that "ERROR: Nothing PROVIDES 'demo-image-mediatomb'"

You need to add the layer to your conf/bblayers.conf as per the
documentation here:
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#usingpoky-changes-layers

WARNING: the meta-demo layer hasn't seen any commits for some time, it's
likely bit-rotten and out of date.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

