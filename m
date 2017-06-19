Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D63B0E00B05; Mon, 19 Jun 2017 07:20:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED1AE00AF4
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 07:20:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5JEJwYW022930
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 19 Jun 2017 07:19:58 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 19 Jun 2017 07:19:57 -0700
To: Nathan Rossi <nathan@nathanrossi.com>
References: <20170619134545.16674-1-nathan@nathanrossi.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <617def0d-4e2a-0fdf-27f7-8cfc52b899a8@windriver.com>
Date: Mon, 19 Jun 2017 09:20:03 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20170619134545.16674-1-nathan@nathanrossi.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][PATCH] src/rtld: Add MicroBlaze support based on glibc-2.24
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
X-List-Received-Date: Mon, 19 Jun 2017 14:20:01 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I've merged this to the cross_prelink_staging (and master_staging, even though
it's a no-op there).  The change seems fairly obvious to me.

Can you verify it is working properly as merged into cross_prelink_staging, then
I'll move it to the full cross_prelink and master.

--Mark

On 6/19/17 8:45 AM, Nathan Rossi wrote:
> Add definitions/config to support MicroBlaze, using glibc-2.24 as
> reference.
> 
> Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
> ---
>  src/rtld/dl-tls.c |  5 +++++
>  src/rtld/rtld.c   | 12 ++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/src/rtld/dl-tls.c b/src/rtld/dl-tls.c
> index 8b972ff126..2da6bc5c66 100644
> --- a/src/rtld/dl-tls.c
> +++ b/src/rtld/dl-tls.c
> @@ -133,6 +133,11 @@ rtld_determine_tlsoffsets (int e_machine, struct r_scope_elem *search_list)
>        tls_tcb_size = 0;
>        break;
>  
> +    case EM_MICROBLAZE:
> +      tls_dtv_at_tp = 1;
> +      tls_tcb_size = 8;
> +      break;
> +
>      default:
>        /* Hope there's no TLS!  */
>        for (i = 0; i < search_list->r_nlist; i++)
> diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
> index 8d7d760a57..3196981247 100644
> --- a/src/rtld/rtld.c
> +++ b/src/rtld/rtld.c
> @@ -215,6 +215,15 @@ parse_opt (int key, char *arg, struct argp_state *state)
>     | (((type) == R_NIOS2_COPY) * ELF_RTYPE_CLASS_COPY)          \
>     | (((type) == R_NIOS2_GLOB_DAT) * ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(EM_ALTERA_NIOS2)))
>  
> +/* From glibc-2.24: sysdeps/microblaze/dl-machine.h */
> +# define microblaze_elf_machine_type_class(type) \
> +  (((type) == R_MICROBLAZE_JUMP_SLOT || \
> +    (type) == R_MICROBLAZE_TLSDTPREL32 || \
> +    (type) == R_MICROBLAZE_TLSDTPMOD32 || \
> +    (type) == R_MICROBLAZE_TLSTPREL32) \
> +    * ELF_RTYPE_CLASS_PLT \
> +   | ((type) == R_MICROBLAZE_COPY) * ELF_RTYPE_CLASS_COPY)
> +
>  int
>  elf_machine_type_class (int type, int machine)
>  {
> @@ -243,6 +252,8 @@ elf_machine_type_class (int type, int machine)
>  	return sparc64_elf_machine_type_class(type);
>      case EM_ALTERA_NIOS2:
>  	return nios2_elf_machine_type_class(type);
> +    case EM_MICROBLAZE:
> +	return microblaze_elf_machine_type_class(type);
>  
>      default:
>        printf ("Unknown architecture!\n");
> @@ -284,6 +295,7 @@ machine_no_rela (int machine)
>      case EM_SPARC32PLUS:
>      case EM_SPARCV9:
>      case EM_ALTERA_NIOS2:
> +    case EM_MICROBLAZE:
>        return 0;
>      default:
>        return 1;
> 


