Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49C33E006AF; Thu,  4 Oct 2018 07:12:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
	[209.85.217.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59EEE0053F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 07:12:30 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id z19-v6so5452732vso.3
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 07:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HBzVqLVgj0B3UJfc5RAtx6H5JB+Grs7NNRH7OeJ1rns=;
	b=pbtnNnpFtqHuEOernja6knqDv9B4S6ia+j2f67Z4gzmDZFklUoZnXI6NyNmx3nhb3m
	YzFlxolvitW17CXYI+1citc4qRjBRe/+WBQJLf9nupZZwBGO2xuEGZtjWr5NU8dYRaKZ
	yyFmB67WASxGLiGTxRpj86HqCQDevweiRdojKi6QKOLxzDBSUIGRfW4/EXjZipqs+Xiq
	k4LBqhQfloX0xgpx8Iy/fv6B6YIKmbNRvNbWtOOgd90KtoPkah7l5mqptrog/2yqeCa+
	zZo0iWjX5cuFRBCPtiE1gQIY3dwyhcENZ9qWV+kvT0QHDjjQj4aeQ0Se4oQx27rEr/Du
	BCAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HBzVqLVgj0B3UJfc5RAtx6H5JB+Grs7NNRH7OeJ1rns=;
	b=RJp2OkGBQev2Y8Xexfif4TBRM+WWmPs7NhNEggPNkoyNs05LgNFTiRwtwPt4Jhlp7w
	VxBZUSpWma/remwjJn+ph7EtRevY9Mya5VKJgQp0dtLXGU/NlVTUvop67MUv+DRhT6uK
	3ET+Kmt5TvAnHdSlvE1itbdUEfuqYFqhgp7bYoFj3nLgAMCJoPzFWULNLot2Zutklc4w
	M2NBglW0b6H/37X1uBvMU/HnMtS74fwmhS6cvULpejE6p9+orG3ybizW5rEs+ZjlDcAj
	ACd5NdMkvTAf2ICmX1V9BYdiQVpvD+vDtmFeEhoXeMHbjAGiutxssRfKklDhehh6ha3z
	IUeA==
X-Gm-Message-State: ABuFfoiT7s8dm5DAnNcTOO5kkuQVGfuNuI4lsyOej37gbsZaGJp0dxFr
	/FLnPnkzV4tpGlfNc5HU5ZSfEaugpJ1NHSXFxRo=
X-Google-Smtp-Source: ACcGV61ykKemy/5ofzG0v8q+ZB6wrVy3+Cro0CLqM+FnNnOMVFUaxiOgZuQcuz3nv1kslNmf4lNqvkjngIZSVjkPRu0=
X-Received: by 2002:a67:c7:: with SMTP id q68mr362094vsf.224.1538662349612;
	Thu, 04 Oct 2018 07:12:29 -0700 (PDT)
MIME-Version: 1.0
References: <20180928145711.6958-1-bkylerussell@gmail.com>
In-Reply-To: <20180928145711.6958-1-bkylerussell@gmail.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Thu, 4 Oct 2018 10:12:17 -0400
Message-ID: <CAFrQVPNVbc750sJteTEw+Y7ywL0VHjBFOgbU9+ZHR9ndxwPxsg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Thu, 04 Oct 2018 14:12:32 -0000
Content-Type: multipart/alternative; boundary="000000000000c72cbe057767be7c"

--000000000000c72cbe057767be7c
Content-Type: text/plain; charset="UTF-8"

Hey Mark,

Do you think this approach is reasonable?  If so, I have another patch I'd
like to propose that would enable us to better catch error scenarios (like
the last two patches address) that we might encounter during
do_image_prelink.  We just happened to detect these last two issues even
though image_prelink didn't fail the build, so I'd like to provide an
option to enable a little more assertive error path, if desired.

Thanks,
Kyle

On Fri, Sep 28, 2018 at 10:57 AM Kyle Russell <bkylerussell@gmail.com>
wrote:

> binutils-2.28 (17026142ef35b62ac88bfe517b4160614902cb28) adds support
> for copying read-only dynamic symbols into .data.rel.ro instead of .bss
> since .bss is technically writable.  This causes prelink to error out on
> any binary containing COPY relocations in .data.rel.ro.
>
> Read-only variables defined in shared libraries should be copied directly
> into the space allocated for them in .data.rel.ro by the linker.
>
> To achieve this, we determine whether either of the two sections
> containing copy relocations is .data.rel.ro.  If so, we relocate the
> symbol memory directly into the existing section instead of constructing
> a new .(s)dynbss section once prelink_build_conflicts() returns.
>
> Fixes cxx1.sh, cxx2.sh, and cxx3.sh on Fedora 28 (which uses
> binutils-2.29).
> ---
>  src/conflict.c | 51 +++++++++++++++++++++++++++++++++++++-------------
>  src/undo.c     |  9 +++++++++
>  2 files changed, 47 insertions(+), 13 deletions(-)
>
> diff --git a/src/conflict.c b/src/conflict.c
> index 9ae2ddb..5613ace 100644
> --- a/src/conflict.c
> +++ b/src/conflict.c
> @@ -450,7 +450,7 @@ get_relocated_mem (struct prelink_info *info, DSO
> *dso, GElf_Addr addr,
>  int
>  prelink_build_conflicts (struct prelink_info *info)
>  {
> -  int i, ndeps = info->ent->ndepends + 1;
> +  int i, reset_dynbss = 0, reset_sdynbss = 0, ndeps = info->ent->ndepends
> + 1;
>    struct prelink_entry *ent;
>    int ret = 0;
>    DSO *dso;
> @@ -675,6 +675,11 @@ prelink_build_conflicts (struct prelink_info *info)
>                      dso->filename);
>               goto error_out;
>             }
> +
> +         name = strptr (dso, dso->ehdr.e_shstrndx,
> dso->shdr[bss1].sh_name);
> +         if (strcmp(name, ".data.rel.ro") == 0)
> +           reset_sdynbss = 1;
> +
>           firstbss2 = i;
>           info->sdynbss_size = cr.rela[i - 1].r_offset -
> cr.rela[0].r_offset;
>           info->sdynbss_size += cr.rela[i - 1].r_addend;
> @@ -702,6 +707,10 @@ prelink_build_conflicts (struct prelink_info *info)
>             }
>         }
>
> +      name = strptr (dso, dso->ehdr.e_shstrndx, dso->shdr[bss2].sh_name);
> +      if (strcmp(name, ".data.rel.ro") == 0)
> +        reset_dynbss = 1;
> +
>        info->dynbss_size = cr.rela[cr.count - 1].r_offset
>                           - cr.rela[firstbss2].r_offset;
>        info->dynbss_size += cr.rela[cr.count - 1].r_addend;
> @@ -719,9 +728,9 @@ prelink_build_conflicts (struct prelink_info *info)
>           && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
>                                     dso->shdr[bss1].sh_name),
>                      ".dynbss") != 0
> -         && strcmp (name, ".sdynbss") != 0)
> +         && strcmp (name, ".sdynbss") != 0 && strcmp (name, ".data.rel.ro")
> != 0)
>         {
> -         error (0, 0, "%s: COPY relocations don't point into .bss or
> .sbss section",
> +         error (0, 0, "%s: COPY relocations don't point into .bss, .sbss,
> or .data.rel.ro sections",
>                  dso->filename);
>           goto error_out;
>         }
> @@ -730,9 +739,9 @@ prelink_build_conflicts (struct prelink_info *info)
>           && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
>                                     dso->shdr[bss2].sh_name),
>                      ".dynbss") != 0
> -         && strcmp (name, ".sdynbss") != 0)
> +         && strcmp (name, ".sdynbss") != 0 && strcmp (name, ".data.rel.ro")
> != 0)
>         {
> -         error (0, 0, "%s: COPY relocations don't point into .bss or
> .sbss section",
> +         error (0, 0, "%s: COPY relocations don't point into .bss, .sbss,
> or .data.rel.ro section",
>                  dso->filename);
>           goto error_out;
>         }
> @@ -768,16 +777,21 @@ prelink_build_conflicts (struct prelink_info *info)
>               }
>
>           assert (j < ndeps);
> +         GElf_Addr symaddr = s->u.ent->base + s->value;
> +         char *buf;
> +
>           if (i < firstbss2)
> -           j = get_relocated_mem (info, ndso, s->u.ent->base + s->value,
> -                                  info->sdynbss + cr.rela[i].r_offset
> -                                  - info->sdynbss_base,
> cr.rela[i].r_addend,
> -                                  cr.rela[i].r_offset);
> +           if (reset_sdynbss)
> +             buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
> +           else
> +             buf = info->sdynbss + cr.rela[i].r_offset -
> info->sdynbss_base;
>           else
> -           j = get_relocated_mem (info, ndso, s->u.ent->base + s->value,
> -                                  info->dynbss + cr.rela[i].r_offset
> -                                  - info->dynbss_base,
> cr.rela[i].r_addend,
> -                                  cr.rela[i].r_offset);
> +           if (reset_dynbss)
> +             buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
> +           else
> +             buf = info->dynbss + cr.rela[i].r_offset - info->dynbss_base;
> +
> +         j = get_relocated_mem (info, ndso, symaddr, buf,
> cr.rela[i].r_addend, cr.rela[i].r_offset);
>
>           switch (j)
>             {
> @@ -815,6 +829,17 @@ prelink_build_conflicts (struct prelink_info *info)
>      if (info->dsos[i])
>        close_dso (info->dsos[i]);
>
> +  if (reset_sdynbss)
> +    {
> +      free (info->sdynbss);
> +      info->sdynbss = NULL;
> +    }
> +
> +  if (reset_dynbss)
> +    {
> +      free (info->dynbss);
> +      info->dynbss = NULL;
> +    }
>    info->dsos = NULL;
>    free (cr.rela);
>    return ret;
> diff --git a/src/undo.c b/src/undo.c
> index 8a55bf2..4c38dab 100644
> --- a/src/undo.c
> +++ b/src/undo.c
> @@ -633,6 +633,15 @@ prelink_undo (DSO *dso)
>               d->d_buf = NULL;
>               dso->shdr[i].sh_type = SHT_NOBITS;
>             }
> +         else if (dso->shdr[i].sh_type == SHT_PROGBITS
> +                  && strcmp (name, ".data.rel.ro") == 0)
> +           {
> +             scn = dso->scn[i];
> +             d = elf_getdata (scn, NULL);
> +             assert (d != NULL && elf_getdata (scn, d) == NULL);
> +             assert (d->d_size == dso->shdr[i].sh_size);
> +             assert (memset(d->d_buf, 0, d->d_size) == d->d_buf);
> +           }
>           else if (dso->shdr[i].sh_type == SHT_RELA
>                    && shdr[i].sh_type == SHT_REL)
>             {
> --
> 2.17.1
>
>

--000000000000c72cbe057767be7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Mark,<div><br></div><div>Do you think this approach is=
 reasonable?=C2=A0 If so, I have another patch I&#39;d like to propose that=
 would enable us to better catch error scenarios (like the last two patches=
 address) that we might encounter during do_image_prelink.=C2=A0 We just ha=
ppened to detect these last two issues even though image_prelink didn&#39;t=
 fail the build, so I&#39;d like to provide an option to enable a little mo=
re assertive error path, if desired.</div><div><br></div><div>Thanks,</div>=
<div>Kyle</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri=
, Sep 28, 2018 at 10:57 AM Kyle Russell &lt;<a href=3D"mailto:bkylerussell@=
gmail.com">bkylerussell@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">binutils-2.28 (17026142ef35b62ac88bfe517b4160614902cb28) adds=
 support<br>
for copying read-only dynamic symbols into .<a href=3D"http://data.rel.ro" =
rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a> instead of .bss<br>
since .bss is technically writable.=C2=A0 This causes prelink to error out =
on<br>
any binary containing COPY relocations in .<a href=3D"http://data.rel.ro" r=
el=3D"noreferrer" target=3D"_blank">data.rel.ro</a>.<br>
<br>
Read-only variables defined in shared libraries should be copied directly<b=
r>
into the space allocated for them in .<a href=3D"http://data.rel.ro" rel=3D=
"noreferrer" target=3D"_blank">data.rel.ro</a> by the linker.<br>
<br>
To achieve this, we determine whether either of the two sections<br>
containing copy relocations is .<a href=3D"http://data.rel.ro" rel=3D"noref=
errer" target=3D"_blank">data.rel.ro</a>.=C2=A0 If so, we relocate the<br>
symbol memory directly into the existing section instead of constructing<br=
>
a new .(s)dynbss section once prelink_build_conflicts() returns.<br>
<br>
Fixes cxx1.sh, cxx2.sh, and cxx3.sh on Fedora 28 (which uses<br>
binutils-2.29).<br>
---<br>
=C2=A0src/conflict.c | 51 +++++++++++++++++++++++++++++++++++++------------=
-<br>
=C2=A0src/undo.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 9 +++++++++<br>
=C2=A02 files changed, 47 insertions(+), 13 deletions(-)<br>
<br>
diff --git a/src/conflict.c b/src/conflict.c<br>
index 9ae2ddb..5613ace 100644<br>
--- a/src/conflict.c<br>
+++ b/src/conflict.c<br>
@@ -450,7 +450,7 @@ get_relocated_mem (struct prelink_info *info, DSO *dso,=
 GElf_Addr addr,<br>
=C2=A0int<br>
=C2=A0prelink_build_conflicts (struct prelink_info *info)<br>
=C2=A0{<br>
-=C2=A0 int i, ndeps =3D info-&gt;ent-&gt;ndepends + 1;<br>
+=C2=A0 int i, reset_dynbss =3D 0, reset_sdynbss =3D 0, ndeps =3D info-&gt;=
ent-&gt;ndepends + 1;<br>
=C2=A0 =C2=A0struct prelink_entry *ent;<br>
=C2=A0 =C2=A0int ret =3D 0;<br>
=C2=A0 =C2=A0DSO *dso;<br>
@@ -675,6 +675,11 @@ prelink_build_conflicts (struct prelink_info *info)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0dso-&gt;filename);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto error_out;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0name =3D strptr (dso, dso-&gt;ehdr.e_shs=
trndx, dso-&gt;shdr[bss1].sh_name);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (strcmp(name, &quot;.<a href=3D"http:=
//data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a>&quot;) =
=3D=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reset_sdynbss =3D 1;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firstbss2 =3D i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss_size =3D cr.rela[i - 1]=
.r_offset - cr.rela[0].r_offset;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss_size +=3D cr.rela[i - 1=
].r_addend;<br>
@@ -702,6 +707,10 @@ prelink_build_conflicts (struct prelink_info *info)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 name =3D strptr (dso, dso-&gt;ehdr.e_shstrndx, dso-&g=
t;shdr[bss2].sh_name);<br>
+=C2=A0 =C2=A0 =C2=A0 if (strcmp(name, &quot;.<a href=3D"http://data.rel.ro=
" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a>&quot;) =3D=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 reset_dynbss =3D 1;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;dynbss_size =3D cr.rela[cr.count - 1].r=
_offset<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 - cr.rela[firstbss2].r_offset;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;dynbss_size +=3D cr.rela[cr.count - 1].=
r_addend;<br>
@@ -719,9 +728,9 @@ prelink_build_conflicts (struct prelink_info *info)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;&amp; strcmp (name =3D strptr (dso,=
 dso-&gt;ehdr.e_shstrndx,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dso-&gt;shdr[bss1].sh_=
name),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;.dynbss&quot;) !=3D 0<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcmp (name, &quot;.sdynbss&=
quot;) !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcmp (name, &quot;.sdynbss&=
quot;) !=3D 0 &amp;&amp; strcmp (name, &quot;.<a href=3D"http://data.rel.ro=
" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a>&quot;) !=3D 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &quot;%s: COPY relocations =
don&#39;t point into .bss or .sbss section&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &quot;%s: COPY relocations =
don&#39;t point into .bss, .sbss, or .<a href=3D"http://data.rel.ro" rel=3D=
"noreferrer" target=3D"_blank">data.rel.ro</a> sections&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dso-&gt;filen=
ame);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto error_out;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
@@ -730,9 +739,9 @@ prelink_build_conflicts (struct prelink_info *info)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;&amp; strcmp (name =3D strptr (dso,=
 dso-&gt;ehdr.e_shstrndx,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dso-&gt;shdr[bss2].sh_=
name),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;.dynbss&quot;) !=3D 0<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcmp (name, &quot;.sdynbss&=
quot;) !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcmp (name, &quot;.sdynbss&=
quot;) !=3D 0 &amp;&amp; strcmp (name, &quot;.<a href=3D"http://data.rel.ro=
" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a>&quot;) !=3D 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &quot;%s: COPY relocations =
don&#39;t point into .bss or .sbss section&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &quot;%s: COPY relocations =
don&#39;t point into .bss, .sbss, or .<a href=3D"http://data.rel.ro" rel=3D=
"noreferrer" target=3D"_blank">data.rel.ro</a> section&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dso-&gt;filen=
ame);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto error_out;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
@@ -768,16 +777,21 @@ prelink_build_conflicts (struct prelink_info *info)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 assert (j &lt; ndeps);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GElf_Addr symaddr =3D s-&gt;u.ent-&gt;ba=
se + s-&gt;value;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char *buf;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i &lt; firstbss2)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D get_relocated_mem (info, nd=
so, s-&gt;u.ent-&gt;base + s-&gt;value,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss + cr.rela[i]=
.r_offset<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - info-&gt;sdynbss_base, cr.r=
ela[i].r_addend,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cr.rela[i].r_offset);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (reset_sdynbss)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf =3D get_data(dso, cr.r=
ela[i].r_offset, NULL, NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf =3D info-&gt;sdynbss +=
 cr.rela[i].r_offset - info-&gt;sdynbss_base;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D get_relocated_mem (info, nd=
so, s-&gt;u.ent-&gt;base + s-&gt;value,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;dynbss + cr.rela[i].=
r_offset<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - info-&gt;dynbss_base, cr.re=
la[i].r_addend,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cr.rela[i].r_offset);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (reset_dynbss)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf =3D get_data(dso, cr.r=
ela[i].r_offset, NULL, NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf =3D info-&gt;dynbss + =
cr.rela[i].r_offset - info-&gt;dynbss_base;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D get_relocated_mem (info, ndso, sym=
addr, buf, cr.rela[i].r_addend, cr.rela[i].r_offset);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (j)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
@@ -815,6 +829,17 @@ prelink_build_conflicts (struct prelink_info *info)<br=
>
=C2=A0 =C2=A0 =C2=A0if (info-&gt;dsos[i])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0close_dso (info-&gt;dsos[i]);<br>
<br>
+=C2=A0 if (reset_sdynbss)<br>
+=C2=A0 =C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 free (info-&gt;sdynbss);<br>
+=C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss =3D NULL;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 if (reset_dynbss)<br>
+=C2=A0 =C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 free (info-&gt;dynbss);<br>
+=C2=A0 =C2=A0 =C2=A0 info-&gt;dynbss =3D NULL;<br>
+=C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0info-&gt;dsos =3D NULL;<br>
=C2=A0 =C2=A0free (cr.rela);<br>
=C2=A0 =C2=A0return ret;<br>
diff --git a/src/undo.c b/src/undo.c<br>
index 8a55bf2..4c38dab 100644<br>
--- a/src/undo.c<br>
+++ b/src/undo.c<br>
@@ -633,6 +633,15 @@ prelink_undo (DSO *dso)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d-&gt;d_buf =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dso-&gt;shdr[i].sh_type =
=3D SHT_NOBITS;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (dso-&gt;shdr[i].sh_type =3D=3D =
SHT_PROGBITS<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;&amp; =
strcmp (name, &quot;.<a href=3D"http://data.rel.ro" rel=3D"noreferrer" targ=
et=3D"_blank">data.rel.ro</a>&quot;) =3D=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0scn =3D dso-&gt;scn[i];<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d =3D elf_getdata (scn, NU=
LL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0assert (d !=3D NULL &amp;&=
amp; elf_getdata (scn, d) =3D=3D NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0assert (d-&gt;d_size =3D=
=3D dso-&gt;shdr[i].sh_size);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0assert (memset(d-&gt;d_buf=
, 0, d-&gt;d_size) =3D=3D d-&gt;d_buf);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (dso-&gt;shdr[i].sh_type =3D=3D =
SHT_RELA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&=
amp; shdr[i].sh_type =3D=3D SHT_REL)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div>

--000000000000c72cbe057767be7c--
