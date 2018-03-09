Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69D4FE00E16; Thu,  8 Mar 2018 17:18:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C1EE00D6D
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 17:18:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w291I9ZI014942
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Mar 2018 17:18:09 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 8 Mar 2018 17:17:33 -0800
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
	<20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
	<4e5155da-e5fa-e19e-969f-bed685faa3e8@windriver.com>
	<20180308221034.2pazjzabwcfe6h6a@nyx.americas.hpqcorp.net>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <d6e0c216-5c38-0fb1-d8fb-df6aa33acfff@windriver.com>
Date: Thu, 8 Mar 2018 19:18:07 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180308221034.2pazjzabwcfe6h6a@nyx.americas.hpqcorp.net>
Cc: yocto@yoctoproject.org
Subject: Re: btrfs-tools Requires libgcc_s.so.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Mar 2018 01:18:18 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/8/18 4:10 PM, Marcelo E. Magallon wrote:
> On Thu, Mar 08, 2018 at 03:16:44PM -0600, Mark Hatle wrote:
> 
>> RDEPENDS are automatically promoted to DEPENDS (build-time).  I would normally
>> expect libgcc_s.so.1 to be present via the typical default depends.  Does your
>> recipe have an INHIBIT_DEFAULT_DEPENDS (I think that is it?) defined?  If so,
>> you would need to manually add all build dependencies then.
> 
> INHIBIT_DEFAULT_DEPS.
> 
> No, it doesn't, but that's a good hint.
> 
>> An executable or library with a stated library dependency (soname) will
>> automatically get an RDEPENDS.  The only time you should have to do an
>> RDEPENDS_${PN} of a library is when that library is 'dlopened'.  (This is the
>> case for things like pam modules.)
> 
> This is also the case in this situation.
> 
> glibc has this bit of code in pthread_cancel_init:
> 
> 	  handle = __libc_dlopen_mode (LIBGCC_S_SO, RTLD_NOW | __RTLD_DLOPEN);
> 	
> 	  if (handle == NULL
> 	      || (resume = __libc_dlsym (handle, "_Unwind_Resume")) == NULL
> 	      || (personality = __libc_dlsym (handle, "__gcc_personality_v0")) == NULL
> 	      || (forcedunwind = __libc_dlsym (handle, "_Unwind_ForcedUnwind"))
> 		 == NULL
> 	      || (getcfa = __libc_dlsym (handle, "_Unwind_GetCFA")) == NULL
> 	#ifdef ARCH_CANCEL_INIT
> 	      || ARCH_CANCEL_INIT (handle)
> 	#endif
> 	      )
> 	    __libc_fatal (LIBGCC_S_SO " must be installed for pthread_cancel to work\n");
> 
> it's dlopen()ing libgcc_s.so.1 in order to get thread 
> cancellation to work via exception unwinding.

Yes, the dlopen means the automated processing can't identify the need.. and
then the RDEPEND is the correct solution.

(This might be a reasonable bug/enhancement request to the system.  Look for
pthread_cancel and automatically infer that libgcc is required.)

> In my case, libgcc_s.so.1 is installed in the image before adding 
> the RDEPENDS.
> 
> What doesn't make sense to me is why in both the OP's and my 
> case, adding RDEPENDS_${PN} += "libgcc" is fixing anything. As 
> you said, this is promoted to a DEPENDS, so libgcc is available 
> at compile time, but that shouldn't change anything that I can 
> see.

I'm guessing if it's not available at compile time that some behavior is
changing (maybe not using pthread_cancel?)

Not sure... but at least the reason the RDEPEND resolves the runtime issue is
now clear to me, and within the design.

--Mark

> Thanks for looking at this,
> 
> Marcelo
> 


