Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E66AE00B6C; Fri, 12 Oct 2018 07:48:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D67BE00A0A
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 07:48:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9CElbPt032719
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Oct 2018 07:48:28 -0700
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 12 Oct 2018 07:48:11 -0700
To: Kyle Russell <bkylerussell@gmail.com>
References: <20180928145711.6958-1-bkylerussell@gmail.com>
	<CAFrQVPNVbc750sJteTEw+Y7ywL0VHjBFOgbU9+ZHR9ndxwPxsg@mail.gmail.com>
	<e66b33f3-68d2-31d0-1c7a-06d7cbf435bb@windriver.com>
	<CAFrQVPOvvqShu1_qU0it_tWO1d7cRQwasOueOPQFZwSdmFHYLg@mail.gmail.com>
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
Message-ID: <225a4506-8b51-0b2e-b117-3d7997040364@windriver.com>
Date: Fri, 12 Oct 2018 09:48:11 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAFrQVPOvvqShu1_qU0it_tWO1d7cRQwasOueOPQFZwSdmFHYLg@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [prelink-cross][PATCH] Support copy relocations in .data.rel.ro
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
X-List-Received-Date: Fri, 12 Oct 2018 14:48:56 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/12/18 9:06 AM, Kyle Russell wrote:
> Do you want me to just resent my last two patches?  I don't mind if that would
> be easier, and I'll remember to add the Signed-off-by. :)

I was able to pull them from the mailing list archives and have them applied to
my local tree.  I have a few other patches and then I'll be pushing to the
staging tree.

--Mark

> On Fri, Oct 12, 2018 at 10:00 AM Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     On 10/4/18 9:12 AM, Kyle Russell wrote:
>     > Hey Mark,
>     >
>     > Do you think this approach is reasonable?  If so, I have another patch I'd
>     like
>     > to propose that would enable us to better catch error scenarios (like the last
>     > two patches address) that we might encounter during do_image_prelink.  We just
>     > happened to detect these last two issues even though image_prelink didn't fail
>     > the build, so I'd like to provide an option to enable a little more assertive
>     > error path, if desired.
> 
>     I'm getting caught back up on my prelink 'TODO' set.  The approach seems
>     reasonable to me.  However, I appear to have lost the reference to the original
>     patch email.
> 
>     I'm going to try to reapply from this email (or the list archive), but I may
>     need you to resend it.  I'll let you [and others know] once I get these things
>     merged.
> 
>     Thanks!
>     --Mark
> 
>     > Thanks,
>     > Kyle
>     >
>     > On Fri, Sep 28, 2018 at 10:57 AM Kyle Russell <bkylerussell@gmail.com
>     <mailto:bkylerussell@gmail.com>
>     > <mailto:bkylerussell@gmail.com <mailto:bkylerussell@gmail.com>>> wrote:
>     >
>     >     binutils-2.28 (17026142ef35b62ac88bfe517b4160614902cb28) adds support
>     >     for copying read-only dynamic symbols into .data.rel.ro
>     <http://data.rel.ro> <http://data.rel.ro>
>     >     instead of .bss
>     >     since .bss is technically writable.  This causes prelink to error out on
>     >     any binary containing COPY relocations in .data.rel.ro
>     <http://data.rel.ro> <http://data.rel.ro>.
>     >
>     >     Read-only variables defined in shared libraries should be copied directly
>     >     into the space allocated for them in .data.rel.ro <http://data.rel.ro>
>     <http://data.rel.ro> by
>     >     the linker.
>     >
>     >     To achieve this, we determine whether either of the two sections
>     >     containing copy relocations is .data.rel.ro <http://data.rel.ro>
>     <http://data.rel.ro>.  If so, we
>     >     relocate the
>     >     symbol memory directly into the existing section instead of constructing
>     >     a new .(s)dynbss section once prelink_build_conflicts() returns.
>     >
>     >     Fixes cxx1.sh, cxx2.sh, and cxx3.sh on Fedora 28 (which uses
>     >     binutils-2.29).
>     >     ---
>     >      src/conflict.c | 51 +++++++++++++++++++++++++++++++++++++-------------
>     >      src/undo.c     |  9 +++++++++
>     >      2 files changed, 47 insertions(+), 13 deletions(-)
>     >
>     >     diff --git a/src/conflict.c b/src/conflict.c
>     >     index 9ae2ddb..5613ace 100644
>     >     --- a/src/conflict.c
>     >     +++ b/src/conflict.c
>     >     @@ -450,7 +450,7 @@ get_relocated_mem (struct prelink_info *info, DSO
>     *dso,
>     >     GElf_Addr addr,
>     >      int
>     >      prelink_build_conflicts (struct prelink_info *info)
>     >      {
>     >     -  int i, ndeps = info->ent->ndepends + 1;
>     >     +  int i, reset_dynbss = 0, reset_sdynbss = 0, ndeps =
>     info->ent->ndepends + 1;
>     >        struct prelink_entry *ent;
>     >        int ret = 0;
>     >        DSO *dso;
>     >     @@ -675,6 +675,11 @@ prelink_build_conflicts (struct prelink_info *info)
>     >                          dso->filename);
>     >                   goto error_out;
>     >                 }
>     >     +
>     >     +         name = strptr (dso, dso->ehdr.e_shstrndx,
>     dso->shdr[bss1].sh_name);
>     >     +         if (strcmp(name, ".data.rel.ro <http://data.rel.ro>
>     <http://data.rel.ro>") == 0)
>     >     +           reset_sdynbss = 1;
>     >     +
>     >               firstbss2 = i;
>     >               info->sdynbss_size = cr.rela[i - 1].r_offset -
>     cr.rela[0].r_offset;
>     >               info->sdynbss_size += cr.rela[i - 1].r_addend;
>     >     @@ -702,6 +707,10 @@ prelink_build_conflicts (struct prelink_info *info)
>     >                 }
>     >             }
>     >
>     >     +      name = strptr (dso, dso->ehdr.e_shstrndx, dso->shdr[bss2].sh_name);
>     >     +      if (strcmp(name, ".data.rel.ro <http://data.rel.ro>
>     <http://data.rel.ro>") == 0)
>     >     +        reset_dynbss = 1;
>     >     +
>     >            info->dynbss_size = cr.rela[cr.count - 1].r_offset
>     >                               - cr.rela[firstbss2].r_offset;
>     >            info->dynbss_size += cr.rela[cr.count - 1].r_addend;
>     >     @@ -719,9 +728,9 @@ prelink_build_conflicts (struct prelink_info *info)
>     >               && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
>     >                                         dso->shdr[bss1].sh_name),
>     >                          ".dynbss") != 0
>     >     -         && strcmp (name, ".sdynbss") != 0)
>     >     +         && strcmp (name, ".sdynbss") != 0 && strcmp (name,
>     ".data.rel.ro <http://data.rel.ro>
>     >     <http://data.rel.ro>") != 0)
>     >             {
>     >     -         error (0, 0, "%s: COPY relocations don't point into .bss or
>     .sbss
>     >     section",
>     >     +         error (0, 0, "%s: COPY relocations don't point into .bss, .sbss,
>     >     or .data.rel.ro <http://data.rel.ro> <http://data.rel.ro> sections",
>     >                      dso->filename);
>     >               goto error_out;
>     >             }
>     >     @@ -730,9 +739,9 @@ prelink_build_conflicts (struct prelink_info *info)
>     >               && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
>     >                                         dso->shdr[bss2].sh_name),
>     >                          ".dynbss") != 0
>     >     -         && strcmp (name, ".sdynbss") != 0)
>     >     +         && strcmp (name, ".sdynbss") != 0 && strcmp (name,
>     ".data.rel.ro <http://data.rel.ro>
>     >     <http://data.rel.ro>") != 0)
>     >             {
>     >     -         error (0, 0, "%s: COPY relocations don't point into .bss or
>     .sbss
>     >     section",
>     >     +         error (0, 0, "%s: COPY relocations don't point into .bss, .sbss,
>     >     or .data.rel.ro <http://data.rel.ro> <http://data.rel.ro> section",
>     >                      dso->filename);
>     >               goto error_out;
>     >             }
>     >     @@ -768,16 +777,21 @@ prelink_build_conflicts (struct prelink_info *info)
>     >                   }
>     >
>     >               assert (j < ndeps);
>     >     +         GElf_Addr symaddr = s->u.ent->base + s->value;
>     >     +         char *buf;
>     >     +
>     >               if (i < firstbss2)
>     >     -           j = get_relocated_mem (info, ndso, s->u.ent->base + s->value,
>     >     -                                  info->sdynbss + cr.rela[i].r_offset
>     >     -                                  - info->sdynbss_base,
>     cr.rela[i].r_addend,
>     >     -                                  cr.rela[i].r_offset);
>     >     +           if (reset_sdynbss)
>     >     +             buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
>     >     +           else
>     >     +             buf = info->sdynbss + cr.rela[i].r_offset -
>     info->sdynbss_base;
>     >               else
>     >     -           j = get_relocated_mem (info, ndso, s->u.ent->base + s->value,
>     >     -                                  info->dynbss + cr.rela[i].r_offset
>     >     -                                  - info->dynbss_base,
>     cr.rela[i].r_addend,
>     >     -                                  cr.rela[i].r_offset);
>     >     +           if (reset_dynbss)
>     >     +             buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
>     >     +           else
>     >     +             buf = info->dynbss + cr.rela[i].r_offset -
>     info->dynbss_base;
>     >     +
>     >     +         j = get_relocated_mem (info, ndso, symaddr, buf,
>     >     cr.rela[i].r_addend, cr.rela[i].r_offset);
>     >
>     >               switch (j)
>     >                 {
>     >     @@ -815,6 +829,17 @@ prelink_build_conflicts (struct prelink_info *info)
>     >          if (info->dsos[i])
>     >            close_dso (info->dsos[i]);
>     >
>     >     +  if (reset_sdynbss)
>     >     +    {
>     >     +      free (info->sdynbss);
>     >     +      info->sdynbss = NULL;
>     >     +    }
>     >     +
>     >     +  if (reset_dynbss)
>     >     +    {
>     >     +      free (info->dynbss);
>     >     +      info->dynbss = NULL;
>     >     +    }
>     >        info->dsos = NULL;
>     >        free (cr.rela);
>     >        return ret;
>     >     diff --git a/src/undo.c b/src/undo.c
>     >     index 8a55bf2..4c38dab 100644
>     >     --- a/src/undo.c
>     >     +++ b/src/undo.c
>     >     @@ -633,6 +633,15 @@ prelink_undo (DSO *dso)
>     >                   d->d_buf = NULL;
>     >                   dso->shdr[i].sh_type = SHT_NOBITS;
>     >                 }
>     >     +         else if (dso->shdr[i].sh_type == SHT_PROGBITS
>     >     +                  && strcmp (name, ".data.rel.ro <http://data.rel.ro>
>     <http://data.rel.ro>") == 0)
>     >     +           {
>     >     +             scn = dso->scn[i];
>     >     +             d = elf_getdata (scn, NULL);
>     >     +             assert (d != NULL && elf_getdata (scn, d) == NULL);
>     >     +             assert (d->d_size == dso->shdr[i].sh_size);
>     >     +             assert (memset(d->d_buf, 0, d->d_size) == d->d_buf);
>     >     +           }
>     >               else if (dso->shdr[i].sh_type == SHT_RELA
>     >                        && shdr[i].sh_type == SHT_REL)
>     >                 {
>     >     --
>     >     2.17.1
>     >
> 


