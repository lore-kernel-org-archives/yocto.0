Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2A2DE00524; Tue, 22 Jul 2014 08:57:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AB75E00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 08:57:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6MFuuqC018450
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Jul 2014 08:56:57 -0700 (PDT)
Received: from msp-dhcp53.wrs.com (172.25.34.53) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 22 Jul 2014 08:56:56 -0700
Message-ID: <53CE89C8.3020903@windriver.com>
Date: Tue, 22 Jul 2014 10:56:56 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Maciej W. Rozycki" <macro@codesourcery.com>
References: <alpine.DEB.1.10.1407221529230.16254@tp.orcam.me.uk>
In-Reply-To: <alpine.DEB.1.10.1407221529230.16254@tp.orcam.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][PATCH] Always create a conflict for R_ARM_TLS_DESC relocs
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
X-List-Received-Date: Tue, 22 Jul 2014 15:57:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for the patch, I'll get it integrated later today.

(What a nasty problem for such a simple fix.)

--Mark

On 7/22/14, 9:50 AM, Maciej W. Rozycki wrote:
> Hi,
>
>   This is a bit obscure.  In my testing, for the purpose of upstreaming, of
> the glibc change to support ARM TLS descriptors in prelinked binaries (cf
> upstream BZ #17078, https://sourceware.org/bugzilla/show_bug.cgi?id=17078)
> I have come across a problem where all programs prelinked against glibc
> binaries using ARM TLS descriptors themselves segfaulted in the normal
> exit path, where libc.so's own TLS destructors are called.  I have tracked
> it down to the GOT entry (pointed to by the DT_TLSDESC_GOT dynamic tag)
> meant to point to the lazy TLS descriptor resolver (pointed to by the
> DT_TLSDESC_PLT dynamic tag) being left uninitialised and therefore NULL.
> An attempt to call that resolver caused therefore a segfault.
>
>   The cause of this lack of initialisation turned out to be an omission in
> the original fix (dated 2011-04-13 in ChangeLog.cross), that didn't ensure
> that a conflict entry is created even for these R_ARM_TLS_DESC relocations
> that refer to a local symbol.  Somehow it didn't trigger in testing back
> when implemented, perhaps glibc didn't require or access the missing entry
> in code handling TLS destructors then.  Such an entry is needed, because
> for prelinked binaries the DT_TLSDESC_GOT GOT entry is only initialised by
> the dynamic linker when a conflict is resolved.  The change below enforces
> this conflict entry creation.
>
>   This fix removes 33 failures in prelink testing with glibc built using
> ARM TLS descriptors, that is with the `-mtls-dialect=gnu2' GCC option in
> effect (that is not the default unless explicitly requested at GCC build
> time):
>
> FAIL -> PASS: default/prelink.sum:cxx1.sh
> FAIL -> PASS: default/prelink.sum:cxx2.sh
> FAIL -> PASS: default/prelink.sum:cxx3.sh
> FAIL -> PASS: default/prelink.sum:layout1.sh
> FAIL -> PASS: default/prelink.sum:layout2.sh
> FAIL -> PASS: default/prelink.sum:reloc1.sh
> FAIL -> PASS: default/prelink.sum:reloc10.sh
> FAIL -> PASS: default/prelink.sum:reloc11.sh
> FAIL -> PASS: default/prelink.sum:reloc2.sh
> FAIL -> PASS: default/prelink.sum:reloc3.sh
> FAIL -> PASS: default/prelink.sum:reloc4.sh
> FAIL -> PASS: default/prelink.sum:reloc5.sh
> FAIL -> PASS: default/prelink.sum:reloc6.sh
> FAIL -> PASS: default/prelink.sum:reloc7.sh
> FAIL -> PASS: default/prelink.sum:reloc8.sh
> FAIL -> PASS: default/prelink.sum:reloc9.sh
> FAIL -> PASS: default/prelink.sum:shuffle1.sh
> FAIL -> PASS: default/prelink.sum:shuffle2.sh
> FAIL -> PASS: default/prelink.sum:shuffle3.sh
> FAIL -> PASS: default/prelink.sum:shuffle4.sh
> FAIL -> PASS: default/prelink.sum:shuffle5.sh
> FAIL -> PASS: default/prelink.sum:shuffle6.sh
> FAIL -> PASS: default/prelink.sum:shuffle7.sh
> FAIL -> PASS: default/prelink.sum:shuffle8.sh
> FAIL -> PASS: default/prelink.sum:shuffle9.sh
> FAIL -> PASS: default/prelink.sum:tls1.sh
> FAIL -> PASS: default/prelink.sum:tls2.sh
> FAIL -> PASS: default/prelink.sum:tls3.sh
> FAIL -> PASS: default/prelink.sum:tls4.sh
> FAIL -> PASS: default/prelink.sum:tls5.sh
> FAIL -> PASS: default/prelink.sum:tls6.sh
> FAIL -> PASS: default/prelink.sum:tls7.sh
> FAIL -> PASS: default/prelink.sum:undo1.sh
>
>   Please apply.
>
> 2014-07-22  Maciej W. Rozycki  <macro@codesourcery.com>
>
> 	* src/arch-arm.c (arm_prelink_conflict_rel): Always create a
> 	conflict for R_ARM_TLS_DESC relocs.
> 	(arm_prelink_conflict_rela): Likewise.
>
>    Maciej
>
> prelink-arm-tlsdesc-conflict-always.diff
> Index: trunk/src/arch-arm.c
> ===================================================================
> --- trunk.orig/src/arch-arm.c	2014-07-17 23:26:08.000000000 +0100
> +++ trunk/src/arch-arm.c	2014-07-18 04:18:53.790564615 +0100
> @@ -416,7 +416,9 @@ arm_prelink_conflict_rel (DSO *dso, stru
>   	case R_ARM_TLS_DTPMOD32:
>   	case R_ARM_TLS_TPOFF32:
>   	  break;
> -
> +	/* Likewise TLS_DESC.  */
> +	case R_ARM_TLS_DESC:
> +	  break;
>   	default:
>   	  return 0;
>   	}
> @@ -526,7 +528,9 @@ arm_prelink_conflict_rela (DSO *dso, str
>   	case R_ARM_TLS_DTPMOD32:
>   	case R_ARM_TLS_TPOFF32:
>   	  break;
> -
> +	/* Likewise TLS_DESC.  */
> +	case R_ARM_TLS_DESC:
> +	  break;
>   	default:
>   	  return 0;
>   	}
>


