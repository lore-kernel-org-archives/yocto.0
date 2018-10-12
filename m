Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A050DE00B93; Fri, 12 Oct 2018 14:06:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7927CE00B6F
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 14:06:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w9CL5wmN024725
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Oct 2018 14:05:58 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 12 Oct 2018 14:05:57 -0700
To: Sergei Trofimovich <slyfox@gentoo.org>
References: <20181010205022.23695-1-slyfox@gentoo.org>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <ae0f9cb7-5f2f-e95b-6b1e-0f138b91061d@windriver.com>
Date: Fri, 12 Oct 2018 16:05:57 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181010205022.23695-1-slyfox@gentoo.org>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] [PATCH] x86_64: allow prelinking of PIE executables with COPY relocs
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
X-List-Received-Date: Fri, 12 Oct 2018 21:06:07 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/10/18 3:50 PM, Sergei Trofimovich wrote:
> COPY relocs are fine to have in PIE executables (as opposed to
> shared libraries).
> 
> By enabling prelink on PIEs we achieve a few goals:
> - prelink more PIE files on system: nicer for uniformity,
> - avoid spurious warnings about shared libraries with COPY relocs
> 
> It's usefult to prelink PIEs when kernel ASLR is disabled:
> kernel.randomize_va_space=0 + PIE-randomization patches.
> 
> I have gcc built as `--enable-default-pie` (generates PIE
> executables by default).
> 
> Testsute results before the change:
>   PASS:  14
>   FAIL:  31
> 
> After the change:
>   PASS:  32
>   FAIL:  13

After applying this patch, I think it uncovered another issue.

See:

http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/log/?h=cross_prelink_staging

specifically:

http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/commit/?h=cross_prelink_staging&id=b10e14218646d8b74773b82b0f8b395bce698fa2


Running the test suite, I was getting 4 failures that each manifested themselves as:

FAIL: layout1.sh  ../src/prelink: testsuite/layout1: section file offsets not
monotonically increasing
FAIL: cxx2.sh     ../src/prelink: testsuite/cxx2: section file offsets not
monotonically increasing
FAIL: cxx3.sh     ../src/prelink: testsuite/cxx3: section file offsets not
monotonically increasing
FAIL: quick1.sh   ../src/prelink: testsuite/quick1.tree/usr/bin/bin3: section
file offsets not monotonically increasing

Before this patch they would report:

   COPY relocations don't point into .bss or .sbss section

So I suspect that enabling the PIE executable prelinking has either triggered a
corner case or uncovered a bug in the existing function.

What I am seeing happen, if I dump the sections is:

   section 15 .fini file offset range 000012f4 and 000012fd
   section 16 .gnu.conflict file offset range 00001300 and 00002080
   section 17 .rodata file offset range 00002000 and 000020a3
   section 18 .eh_frame_hdr file offset range 000020a4 and 00002118

When the .gnu.conflict section is added and processed, it ends up inserting
immediately after .fini.   It then ends up taking more space then the gap allows
for (by 0x80 bytes in this case.)

I looked at the code for a couple of hours, and I'm not making any real progress
on it.

Do you have time to investigate this?

My little hack is enough to identify when this over write happens and abort..
but I suspect it's probably fixable instead.  (I don't intend to keep the hack
commit when transferring this over....)

--Mark

> Signed-off-by: Sergei Trofimovich <slyfox@gentoo.org>
> ---
>  src/arch-x86_64.c |  4 ++--
>  src/dso.c         | 19 +++++++++++++++++++
>  src/prelink.h     |  1 +
>  3 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
> index 5c95f47..2f6c551 100644
> --- a/src/arch-x86_64.c
> +++ b/src/arch-x86_64.c
> @@ -179,7 +179,7 @@ x86_64_prelink_rela (struct prelink_info *info, GElf_Rela *rela,
>  		    value + rela->r_addend - info->resolvetls->offset);
>        break;
>      case R_X86_64_COPY:
> -      if (dso->ehdr.e_type == ET_EXEC)
> +      if (dso->ehdr.e_type == ET_EXEC || dso_is_pie(dso))
>  	/* COPY relocs are handled specially in generic code.  */
>  	return 0;
>        error (0, 0, "%s: R_X86_64_COPY reloc in shared library?", dso->filename);
> @@ -503,7 +503,7 @@ x86_64_undo_prelink_rela (DSO *dso, GElf_Rela *rela, GElf_Addr relaaddr)
>        write_le32 (dso, rela->r_offset, 0);
>        break;
>      case R_X86_64_COPY:
> -      if (dso->ehdr.e_type == ET_EXEC)
> +      if (dso->ehdr.e_type == ET_EXEC || dso_is_pie(dso))
>  	/* COPY relocs are handled specially in generic code.  */
>  	return 0;
>        error (0, 0, "%s: R_X86_64_COPY reloc in shared library?", dso->filename);
> diff --git a/src/dso.c b/src/dso.c
> index a5fcec5..9fcfc3d 100644
> --- a/src/dso.c
> +++ b/src/dso.c
> @@ -1106,6 +1106,25 @@ dso_is_rdwr (DSO *dso)
>    return dso->elfro != NULL;
>  }
>  
> +/* Return true is DSO is position independent executable.
> +
> +   There is no simple way to distinct between shared library
> +   and PIE executable.  Use presence of interpreter as a heuristic.  */
> +
> +int dso_is_pie(DSO *dso)
> +{
> +  int i;
> +
> +  if (dso->ehdr.e_type != ET_DYN)
> +    return 0;
> +
> +  for (i = 0; i < dso->ehdr.e_phnum; ++i)
> +    if (dso->phdr[i].p_type == PT_INTERP)
> +      return 1;
> +
> +  return 0;
> +}
> +
>  GElf_Addr
>  adjust_old_to_new (DSO *dso, GElf_Addr addr)
>  {
> diff --git a/src/prelink.h b/src/prelink.h
> index 93dbf7a..d8a00c6 100644
> --- a/src/prelink.h
> +++ b/src/prelink.h
> @@ -298,6 +298,7 @@ int reopen_dso (DSO *dso, struct section_move *move, const char *);
>  int adjust_symbol_p (DSO *dso, GElf_Sym *sym);
>  int check_dso (DSO *dso);
>  int dso_is_rdwr (DSO *dso);
> +int dso_is_pie(DSO *dso);
>  void read_dynamic (DSO *dso);
>  int set_dynamic (DSO *dso, GElf_Word tag, GElf_Addr value, int fatal);
>  int addr_to_sec (DSO *dso, GElf_Addr addr);
> 


