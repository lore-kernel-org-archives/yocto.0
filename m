Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 189914C8122E
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 12:57:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Dec 2010 10:57:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="685210944"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2010 10:57:44 -0800
Message-ID: <4CFFD522.7030303@intel.com>
Date: Wed, 08 Dec 2010 10:57:38 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <bug-552-84@http.bugzilla.pokylinux.org/>	<20101207212853.4282620F48496@mail.opensource.intel.com>
	<4CFEAE72.1030401@intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2B1F@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2B1F@shsmsx501.ccr.corp.intel.com>
Cc: Harry Ciao <qingtao.cao@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Bug 552] autobuild missing the non-x86 realboard images
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
X-List-Received-Date: Wed, 08 Dec 2010 18:57:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/08/2010 12:32 AM, Xu, Jiajun wrote:
>>
>> I wanted to give people a heads up about the addition of a few more
>> targets to the nightly build and how they'll effect the nightly (and our overall efficency).
>>
>> This bug asks for the addition of a few targets:
>>
>> arm: beagleboard: poky-image-sato, poky-image-minimal, poky-image-sdk
>> powerpc: mpc8315e-rdb: poky-image-minimal
>> mips: routerstationpro: poky-image-minimal
>>
> 
> Hi Beth,
> Could you also build sdk images for mpc8315e-rdb and routerstationpro? We will have testing for them from M2.

I have a config file with the requested changes in it. Once build #141
is done, I'm move it over to the main config.

-b

