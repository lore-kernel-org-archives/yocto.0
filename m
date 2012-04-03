Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47EA1E0044A
	for <Yocto@yoctoproject.org>; Tue,  3 Apr 2012 08:22:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2012 08:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="124894639"
Received: from unknown (HELO [10.255.12.141]) ([10.255.12.141])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2012 08:22:58 -0700
Message-ID: <4F7B15D2.6030208@linux.intel.com>
Date: Tue, 03 Apr 2012 08:22:58 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Shih, Chiu-Pi" <chiu-pi.shih@intel.com>
References: <EEBED312D613344FA54373CD9A08D4BD05AC7239@FMSMSX103.amr.corp.intel.com>
In-Reply-To: <EEBED312D613344FA54373CD9A08D4BD05AC7239@FMSMSX103.amr.corp.intel.com>
Cc: "Yocto@yoctoproject.org" <Yocto@yoctoproject.org>
Subject: Re: Failure expanding variable OE_FEATURES - Poky-1.2_M2.final
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
X-List-Received-Date: Tue, 03 Apr 2012 15:22:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2012 11:57 AM, Shih, Chiu-Pi wrote:
> Hi,
>
> I am getting the following error using poky-1.2_M2.final.
>
Hi Chiu-Pi,

The M2 release is a Milestone release, which should be suitable for testing.

> [tmelab@fc16tmelab build]$ bitbake core-image-minimal
>
> Pseudo is not present but is required, building this first before the
> main build (guess this does not really matter? I did add user in
> /etc/sudoers though)
>
Pseudo is a tool that we use that does similar workas sudo, but keeps 
better track of the state of files (permission and ownership), it needs 
to be built first, which is what's happening there.

> ERROR: Failure expanding variable OE_FEATURES[:=], expression was
> ${@features_to_uclibc_conf(d)} which triggered exception AttributeError:
> 'NoneType' object has no attribute 'split'
>
Do you have some other settings someplace?  Are you building generic 
1.2_M2 or do you have additional layers?

Sau!

> ERROR: Command execution failed: Exited with 1
>
> Summary: There were 1 WARNING messages shown.
>
> Summary: There were 1 ERROR messages shown, returning a non-zero exit code.
>
> I did a search on the OE_FEATURES and found some instances, how do I fix
> this?
>
> Thanks,
>
> Chiu-Pi
>
> [tmelab@fc16tmelab poky-1.2_M2.final]$ find . -exec grep OE_FEATURES {}
> \; -print
>
> OE_FEATURES := "${@features_to_uclibc_conf(d)}"
>
> if "${OE_FEATURES}":
>
> ("\\n <file:///\\n>".join((bb.data.expand("${OE_FEATURES}",
> d).split("\n")))))
>
> *./meta/recipes-core/uclibc/uclibc.inc*
>
> OE_FEATURES := "${@features_to_busybox_conf(d)}"
>
> if "${OE_FEATURES}":
>
> ("\\n <file:///\\n>".join((bb.data.expand("${OE_FEATURES}",
> d).split("\n")))))
>
> *./meta/recipes-core/busybox/busybox.inc*
>
> OE_FEATURES = "${@features_to_eglibc_settings(d)}"
>
> echo '${OE_FEATURES}' > ${B}/option-groups.config
>
> *./meta/recipes-core/eglibc/eglibc.inc*
>
> ERROR: Failure expanding variable OE_FEATURES[:=], expression was
> ${@features_to_uclibc_conf(d)} which triggered exception AttributeError:
> 'NoneType' object has no attribute 'split'
>
> ./build/tmp/cooker.log.20120315204404
>
> [tmelab@fc16tmelab poky-1.2_M2.final]$
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

