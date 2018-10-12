Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7206E00A16; Fri, 12 Oct 2018 07:06:36 -0700 (PDT)
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
	*      [209.85.217.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED59E00A0A
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 07:06:34 -0700 (PDT)
Received: by mail-vs1-f67.google.com with SMTP id c10so11996917vsk.2
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 07:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Z5SJUTGSVt2RNqv/aL1P8Z0toHM+FWzqbNktHEtWWWE=;
	b=VQJVXv3ehgw/xtthLoalaoxicejr+vhNamj7EUq3uB0Rkw0bO7Lgz+Ij+TrJAXw6OJ
	qhEA/4iPqn7c9a1zIOOsROwL4hPsCeSy2PKyJhQ4V9nRRPElLhLNnG2h4y95unYAr821
	qEHtXVSngwHS4nRarpm14kwEYODzBBKf+JPHtaUbD9rn4VUAJc2khFfrN8gKQHDZIvEE
	SLWgSrQpVQcAhD7Q31KW3Ew+4xPIGx3ONObz3b3RWyWOS44NP+2LIkkJ8vVZdQTW1gyp
	FCCdxz9MrdWyJ4dBXI9MSykJnw8LYwiOU13xNevCr2NBbep0jRcgnhpDVAftqnO9Q0H2
	Mgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Z5SJUTGSVt2RNqv/aL1P8Z0toHM+FWzqbNktHEtWWWE=;
	b=UKv03ajwMdEBuqdCoBH6npgw6Z3eXzm/V9mJ5jLNS38ecSA7hSuLw7pOLGBPoYxehu
	a9bzpw+8prafLEAM6Xz77YtEAdvs071eMkw6TNmu2aJk60K5sCjYa9q93w2MHuPPx3c7
	ZLw3QWVM4xoc82qno0JLuXzyvMBRY/B1HrSmAKu5WJs4vdVoDdE8ogrJsWFUjBUlSHWk
	FbpPHh1KAe8FlHNg1CGFJ9iOLtGRR1hmvRIdsuBpZWjOzM4x8cvtW5fKPBySZx6ytWF6
	pDoFJpCktsGsyuFtLLHBoG4WxwVwsRW20VQjovaqKLWu+k9dxhsAblKKzebLs3fUlPqK
	sgGg==
X-Gm-Message-State: ABuFfog/ghzhIE5vd3XaSQ2fCGerX/fm62KU7gg54UT/naOuMD4cQwI3
	Ob6T9N9tlN7B1jw0oJsTGe8OPS9VhlWdY5xlUiI=
X-Google-Smtp-Source: ACcGV63wbQkiH1ByoBvFXQVyK7i8h47FxApk8Eq8I3QCtaTtdkTrLDY7RQ3ReCbLHsiTYP8XwHHemBrzWQU/maaksQo=
X-Received: by 2002:ab0:2342:: with SMTP id h2mr2731615uao.121.1539353193863; 
	Fri, 12 Oct 2018 07:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20180928145711.6958-1-bkylerussell@gmail.com>
	<CAFrQVPNVbc750sJteTEw+Y7ywL0VHjBFOgbU9+ZHR9ndxwPxsg@mail.gmail.com>
	<e66b33f3-68d2-31d0-1c7a-06d7cbf435bb@windriver.com>
In-Reply-To: <e66b33f3-68d2-31d0-1c7a-06d7cbf435bb@windriver.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Fri, 12 Oct 2018 10:06:22 -0400
Message-ID: <CAFrQVPOvvqShu1_qU0it_tWO1d7cRQwasOueOPQFZwSdmFHYLg@mail.gmail.com>
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
X-List-Received-Date: Fri, 12 Oct 2018 14:06:36 -0000
Content-Type: multipart/alternative; boundary="0000000000004ddec8057808987c"

--0000000000004ddec8057808987c
Content-Type: text/plain; charset="UTF-8"

Do you want me to just resent my last two patches?  I don't mind if that
would be easier, and I'll remember to add the Signed-off-by. :)

On Fri, Oct 12, 2018 at 10:00 AM Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 10/4/18 9:12 AM, Kyle Russell wrote:
> > Hey Mark,
> >
> > Do you think this approach is reasonable?  If so, I have another patch
> I'd like
> > to propose that would enable us to better catch error scenarios (like
> the last
> > two patches address) that we might encounter during do_image_prelink.
> We just
> > happened to detect these last two issues even though image_prelink
> didn't fail
> > the build, so I'd like to provide an option to enable a little more
> assertive
> > error path, if desired.
>
> I'm getting caught back up on my prelink 'TODO' set.  The approach seems
> reasonable to me.  However, I appear to have lost the reference to the
> original
> patch email.
>
> I'm going to try to reapply from this email (or the list archive), but I
> may
> need you to resend it.  I'll let you [and others know] once I get these
> things
> merged.
>
> Thanks!
> --Mark
>
> > Thanks,
> > Kyle
> >
> > On Fri, Sep 28, 2018 at 10:57 AM Kyle Russell <bkylerussell@gmail.com
> > <mailto:bkylerussell@gmail.com>> wrote:
> >
> >     binutils-2.28 (17026142ef35b62ac88bfe517b4160614902cb28) adds support
> >     for copying read-only dynamic symbols into .data.rel.ro <
> http://data.rel.ro>
> >     instead of .bss
> >     since .bss is technically writable.  This causes prelink to error
> out on
> >     any binary containing COPY relocations in .data.rel.ro <
> http://data.rel.ro>.
> >
> >     Read-only variables defined in shared libraries should be copied
> directly
> >     into the space allocated for them in .data.rel.ro <
> http://data.rel.ro> by
> >     the linker.
> >
> >     To achieve this, we determine whether either of the two sections
> >     containing copy relocations is .data.rel.ro <http://data.rel.ro>.
> If so, we
> >     relocate the
> >     symbol memory directly into the existing section instead of
> constructing
> >     a new .(s)dynbss section once prelink_build_conflicts() returns.
> >
> >     Fixes cxx1.sh, cxx2.sh, and cxx3.sh on Fedora 28 (which uses
> >     binutils-2.29).
> >     ---
> >      src/conflict.c | 51
> +++++++++++++++++++++++++++++++++++++-------------
> >      src/undo.c     |  9 +++++++++
> >      2 files changed, 47 insertions(+), 13 deletions(-)
> >
> >     diff --git a/src/conflict.c b/src/conflict.c
> >     index 9ae2ddb..5613ace 100644
> >     --- a/src/conflict.c
> >     +++ b/src/conflict.c
> >     @@ -450,7 +450,7 @@ get_relocated_mem (struct prelink_info *info,
> DSO *dso,
> >     GElf_Addr addr,
> >      int
> >      prelink_build_conflicts (struct prelink_info *info)
> >      {
> >     -  int i, ndeps = info->ent->ndepends + 1;
> >     +  int i, reset_dynbss = 0, reset_sdynbss = 0, ndeps =
> info->ent->ndepends + 1;
> >        struct prelink_entry *ent;
> >        int ret = 0;
> >        DSO *dso;
> >     @@ -675,6 +675,11 @@ prelink_build_conflicts (struct prelink_info
> *info)
> >                          dso->filename);
> >                   goto error_out;
> >                 }
> >     +
> >     +         name = strptr (dso, dso->ehdr.e_shstrndx,
> dso->shdr[bss1].sh_name);
> >     +         if (strcmp(name, ".data.rel.ro <http://data.rel.ro>") ==
> 0)
> >     +           reset_sdynbss = 1;
> >     +
> >               firstbss2 = i;
> >               info->sdynbss_size = cr.rela[i - 1].r_offset -
> cr.rela[0].r_offset;
> >               info->sdynbss_size += cr.rela[i - 1].r_addend;
> >     @@ -702,6 +707,10 @@ prelink_build_conflicts (struct prelink_info
> *info)
> >                 }
> >             }
> >
> >     +      name = strptr (dso, dso->ehdr.e_shstrndx,
> dso->shdr[bss2].sh_name);
> >     +      if (strcmp(name, ".data.rel.ro <http://data.rel.ro>") == 0)
> >     +        reset_dynbss = 1;
> >     +
> >            info->dynbss_size = cr.rela[cr.count - 1].r_offset
> >                               - cr.rela[firstbss2].r_offset;
> >            info->dynbss_size += cr.rela[cr.count - 1].r_addend;
> >     @@ -719,9 +728,9 @@ prelink_build_conflicts (struct prelink_info
> *info)
> >               && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
> >                                         dso->shdr[bss1].sh_name),
> >                          ".dynbss") != 0
> >     -         && strcmp (name, ".sdynbss") != 0)
> >     +         && strcmp (name, ".sdynbss") != 0 && strcmp (name, ".
> data.rel.ro
> >     <http://data.rel.ro>") != 0)
> >             {
> >     -         error (0, 0, "%s: COPY relocations don't point into .bss
> or .sbss
> >     section",
> >     +         error (0, 0, "%s: COPY relocations don't point into .bss,
> .sbss,
> >     or .data.rel.ro <http://data.rel.ro> sections",
> >                      dso->filename);
> >               goto error_out;
> >             }
> >     @@ -730,9 +739,9 @@ prelink_build_conflicts (struct prelink_info
> *info)
> >               && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
> >                                         dso->shdr[bss2].sh_name),
> >                          ".dynbss") != 0
> >     -         && strcmp (name, ".sdynbss") != 0)
> >     +         && strcmp (name, ".sdynbss") != 0 && strcmp (name, ".
> data.rel.ro
> >     <http://data.rel.ro>") != 0)
> >             {
> >     -         error (0, 0, "%s: COPY relocations don't point into .bss
> or .sbss
> >     section",
> >     +         error (0, 0, "%s: COPY relocations don't point into .bss,
> .sbss,
> >     or .data.rel.ro <http://data.rel.ro> section",
> >                      dso->filename);
> >               goto error_out;
> >             }
> >     @@ -768,16 +777,21 @@ prelink_build_conflicts (struct prelink_info
> *info)
> >                   }
> >
> >               assert (j < ndeps);
> >     +         GElf_Addr symaddr = s->u.ent->base + s->value;
> >     +         char *buf;
> >     +
> >               if (i < firstbss2)
> >     -           j = get_relocated_mem (info, ndso, s->u.ent->base +
> s->value,
> >     -                                  info->sdynbss +
> cr.rela[i].r_offset
> >     -                                  - info->sdynbss_base,
> cr.rela[i].r_addend,
> >     -                                  cr.rela[i].r_offset);
> >     +           if (reset_sdynbss)
> >     +             buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
> >     +           else
> >     +             buf = info->sdynbss + cr.rela[i].r_offset -
> info->sdynbss_base;
> >               else
> >     -           j = get_relocated_mem (info, ndso, s->u.ent->base +
> s->value,
> >     -                                  info->dynbss + cr.rela[i].r_offset
> >     -                                  - info->dynbss_base,
> cr.rela[i].r_addend,
> >     -                                  cr.rela[i].r_offset);
> >     +           if (reset_dynbss)
> >     +             buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
> >     +           else
> >     +             buf = info->dynbss + cr.rela[i].r_offset -
> info->dynbss_base;
> >     +
> >     +         j = get_relocated_mem (info, ndso, symaddr, buf,
> >     cr.rela[i].r_addend, cr.rela[i].r_offset);
> >
> >               switch (j)
> >                 {
> >     @@ -815,6 +829,17 @@ prelink_build_conflicts (struct prelink_info
> *info)
> >          if (info->dsos[i])
> >            close_dso (info->dsos[i]);
> >
> >     +  if (reset_sdynbss)
> >     +    {
> >     +      free (info->sdynbss);
> >     +      info->sdynbss = NULL;
> >     +    }
> >     +
> >     +  if (reset_dynbss)
> >     +    {
> >     +      free (info->dynbss);
> >     +      info->dynbss = NULL;
> >     +    }
> >        info->dsos = NULL;
> >        free (cr.rela);
> >        return ret;
> >     diff --git a/src/undo.c b/src/undo.c
> >     index 8a55bf2..4c38dab 100644
> >     --- a/src/undo.c
> >     +++ b/src/undo.c
> >     @@ -633,6 +633,15 @@ prelink_undo (DSO *dso)
> >                   d->d_buf = NULL;
> >                   dso->shdr[i].sh_type = SHT_NOBITS;
> >                 }
> >     +         else if (dso->shdr[i].sh_type == SHT_PROGBITS
> >     +                  && strcmp (name, ".data.rel.ro <
> http://data.rel.ro>") == 0)
> >     +           {
> >     +             scn = dso->scn[i];
> >     +             d = elf_getdata (scn, NULL);
> >     +             assert (d != NULL && elf_getdata (scn, d) == NULL);
> >     +             assert (d->d_size == dso->shdr[i].sh_size);
> >     +             assert (memset(d->d_buf, 0, d->d_size) == d->d_buf);
> >     +           }
> >               else if (dso->shdr[i].sh_type == SHT_RELA
> >                        && shdr[i].sh_type == SHT_REL)
> >                 {
> >     --
> >     2.17.1
> >
>
>

--0000000000004ddec8057808987c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Do you want me to just resent my last two patches?=C2=A0 I=
 don&#39;t mind if that would be easier, and I&#39;ll remember to add the S=
igned-off-by. :)</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fr=
i, Oct 12, 2018 at 10:00 AM Mark Hatle &lt;<a href=3D"mailto:mark.hatle@win=
driver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">On 10/4/18 9:12 AM, Kyle Russell wrote:<br>
&gt; Hey Mark,<br>
&gt; <br>
&gt; Do you think this approach is reasonable?=C2=A0 If so, I have another =
patch I&#39;d like<br>
&gt; to propose that would enable us to better catch error scenarios (like =
the last<br>
&gt; two patches address) that we might encounter during do_image_prelink.=
=C2=A0 We just<br>
&gt; happened to detect these last two issues even though image_prelink did=
n&#39;t fail<br>
&gt; the build, so I&#39;d like to provide an option to enable a little mor=
e assertive<br>
&gt; error path, if desired.<br>
<br>
I&#39;m getting caught back up on my prelink &#39;TODO&#39; set.=C2=A0 The =
approach seems<br>
reasonable to me.=C2=A0 However, I appear to have lost the reference to the=
 original<br>
patch email.<br>
<br>
I&#39;m going to try to reapply from this email (or the list archive), but =
I may<br>
need you to resend it.=C2=A0 I&#39;ll let you [and others know] once I get =
these things<br>
merged.<br>
<br>
Thanks!<br>
--Mark<br>
<br>
&gt; Thanks,<br>
&gt; Kyle<br>
&gt; <br>
&gt; On Fri, Sep 28, 2018 at 10:57 AM Kyle Russell &lt;<a href=3D"mailto:bk=
ylerussell@gmail.com" target=3D"_blank">bkylerussell@gmail.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:bkylerussell@gmail.com" target=3D"_blank"=
>bkylerussell@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0binutils-2.28 (17026142ef35b62ac88bfe517b4160614902=
cb28) adds support<br>
&gt;=C2=A0 =C2=A0 =C2=A0for copying read-only dynamic symbols into .<a href=
=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a=
> &lt;<a href=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">h=
ttp://data.rel.ro</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0instead of .bss<br>
&gt;=C2=A0 =C2=A0 =C2=A0since .bss is technically writable.=C2=A0 This caus=
es prelink to error out on<br>
&gt;=C2=A0 =C2=A0 =C2=A0any binary containing COPY relocations in .<a href=
=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a=
> &lt;<a href=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">h=
ttp://data.rel.ro</a>&gt;.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Read-only variables defined in shared libraries sho=
uld be copied directly<br>
&gt;=C2=A0 =C2=A0 =C2=A0into the space allocated for them in .<a href=3D"ht=
tp://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a> &lt;=
<a href=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">http://=
data.rel.ro</a>&gt; by<br>
&gt;=C2=A0 =C2=A0 =C2=A0the linker.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0To achieve this, we determine whether either of the=
 two sections<br>
&gt;=C2=A0 =C2=A0 =C2=A0containing copy relocations is .<a href=3D"http://d=
ata.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a> &lt;<a hre=
f=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">http://data.r=
el.ro</a>&gt;.=C2=A0 If so, we<br>
&gt;=C2=A0 =C2=A0 =C2=A0relocate the<br>
&gt;=C2=A0 =C2=A0 =C2=A0symbol memory directly into the existing section in=
stead of constructing<br>
&gt;=C2=A0 =C2=A0 =C2=A0a new .(s)dynbss section once prelink_build_conflic=
ts() returns.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Fixes cxx1.sh, cxx2.sh, and cxx3.sh on Fedora 28 (w=
hich uses<br>
&gt;=C2=A0 =C2=A0 =C2=A0binutils-2.29).<br>
&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0src/conflict.c | 51 +++++++++++++++++++++++++=
++++++++++++-------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0src/undo.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 9 +++++=
++++<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A02 files changed, 47 insertions(+), 13 deletio=
ns(-)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/src/conflict.c b/src/conflict.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 9ae2ddb..5613ace 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/src/conflict.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/src/conflict.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -450,7 +450,7 @@ get_relocated_mem (struct preli=
nk_info *info, DSO *dso,<br>
&gt;=C2=A0 =C2=A0 =C2=A0GElf_Addr addr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0int<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0prelink_build_conflicts (struct prelink_info =
*info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0{<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 int i, ndeps =3D info-&gt;ent-&gt;ndepends =
+ 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 int i, reset_dynbss =3D 0, reset_sdynbss =
=3D 0, ndeps =3D info-&gt;ent-&gt;ndepends + 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0struct prelink_entry *ent;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0int ret =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0DSO *dso;<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -675,6 +675,11 @@ prelink_build_conflicts (struc=
t prelink_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dso-&gt;filename);<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 go=
to error_out;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0name =3D strptr =
(dso, dso-&gt;ehdr.e_shstrndx, dso-&gt;shdr[bss1].sh_name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (strcmp(name,=
 &quot;.<a href=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank"=
>data.rel.ro</a> &lt;<a href=3D"http://data.rel.ro" rel=3D"noreferrer" targ=
et=3D"_blank">http://data.rel.ro</a>&gt;&quot;) =3D=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reset_sdy=
nbss =3D 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firstbss2 =3D i;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss=
_size =3D cr.rela[i - 1].r_offset - cr.rela[0].r_offset;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss=
_size +=3D cr.rela[i - 1].r_addend;<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -702,6 +707,10 @@ prelink_build_conflicts (struc=
t prelink_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 name =3D strptr (dso, dso-&gt=
;ehdr.e_shstrndx, dso-&gt;shdr[bss2].sh_name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 if (strcmp(name, &quot;.<a hr=
ef=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro<=
/a> &lt;<a href=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank"=
>http://data.rel.ro</a>&gt;&quot;) =3D=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 reset_dynbss =3D 1;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;dynbss_size =3D=
 cr.rela[cr.count - 1].r_offset<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - cr.rela[firstbss2].r_offset;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;dynbss_size +=
=3D cr.rela[cr.count - 1].r_addend;<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -719,9 +728,9 @@ prelink_build_conflicts (struct=
 prelink_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;&amp; strcm=
p (name =3D strptr (dso, dso-&gt;ehdr.e_shstrndx,<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 dso-&gt;shdr[bss1].sh_name),<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;.dynbss&quot;) !=3D 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcm=
p (name, &quot;.sdynbss&quot;) !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcm=
p (name, &quot;.sdynbss&quot;) !=3D 0 &amp;&amp; strcmp (name, &quot;.<a hr=
ef=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://data.rel.ro" rel=3D"noreferre=
r" target=3D"_blank">http://data.rel.ro</a>&gt;&quot;) !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &qu=
ot;%s: COPY relocations don&#39;t point into .bss or .sbss<br>
&gt;=C2=A0 =C2=A0 =C2=A0section&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &qu=
ot;%s: COPY relocations don&#39;t point into .bss, .sbss,<br>
&gt;=C2=A0 =C2=A0 =C2=A0or .<a href=3D"http://data.rel.ro" rel=3D"noreferre=
r" target=3D"_blank">data.rel.ro</a> &lt;<a href=3D"http://data.rel.ro" rel=
=3D"noreferrer" target=3D"_blank">http://data.rel.ro</a>&gt; sections&quot;=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dso-&gt;filename);<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto error_out;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -730,9 +739,9 @@ prelink_build_conflicts (struct=
 prelink_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;&amp; strcm=
p (name =3D strptr (dso, dso-&gt;ehdr.e_shstrndx,<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 dso-&gt;shdr[bss2].sh_name),<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;.dynbss&quot;) !=3D 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcm=
p (name, &quot;.sdynbss&quot;) !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; strcm=
p (name, &quot;.sdynbss&quot;) !=3D 0 &amp;&amp; strcmp (name, &quot;.<a hr=
ef=3D"http://data.rel.ro" rel=3D"noreferrer" target=3D"_blank">data.rel.ro<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://data.rel.ro" rel=3D"noreferre=
r" target=3D"_blank">http://data.rel.ro</a>&gt;&quot;) !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &qu=
ot;%s: COPY relocations don&#39;t point into .bss or .sbss<br>
&gt;=C2=A0 =C2=A0 =C2=A0section&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error (0, 0, &qu=
ot;%s: COPY relocations don&#39;t point into .bss, .sbss,<br>
&gt;=C2=A0 =C2=A0 =C2=A0or .<a href=3D"http://data.rel.ro" rel=3D"noreferre=
r" target=3D"_blank">data.rel.ro</a> &lt;<a href=3D"http://data.rel.ro" rel=
=3D"noreferrer" target=3D"_blank">http://data.rel.ro</a>&gt; section&quot;,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dso-&gt;filename);<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto error_out;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -768,16 +777,21 @@ prelink_build_conflicts (stru=
ct prelink_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 assert (j &lt; n=
deps);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GElf_Addr symadd=
r =3D s-&gt;u.ent-&gt;base + s-&gt;value;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char *buf;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i &lt; first=
bss2)<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D get=
_relocated_mem (info, ndso, s-&gt;u.ent-&gt;base + s-&gt;value,<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-=
&gt;sdynbss + cr.rela[i].r_offset<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - inf=
o-&gt;sdynbss_base, cr.rela[i].r_addend,<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cr.re=
la[i].r_offset);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (reset=
_sdynbss)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bu=
f =3D get_data(dso, cr.rela[i].r_offset, NULL, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bu=
f =3D info-&gt;sdynbss + cr.rela[i].r_offset - info-&gt;sdynbss_base;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D get=
_relocated_mem (info, ndso, s-&gt;u.ent-&gt;base + s-&gt;value,<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-=
&gt;dynbss + cr.rela[i].r_offset<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - inf=
o-&gt;dynbss_base, cr.rela[i].r_addend,<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cr.re=
la[i].r_offset);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (reset=
_dynbss)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bu=
f =3D get_data(dso, cr.rela[i].r_offset, NULL, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bu=
f =3D info-&gt;dynbss + cr.rela[i].r_offset - info-&gt;dynbss_base;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0j =3D get_reloca=
ted_mem (info, ndso, symaddr, buf,<br>
&gt;=C2=A0 =C2=A0 =C2=A0cr.rela[i].r_addend, cr.rela[i].r_offset);<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (j)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -815,6 +829,17 @@ prelink_build_conflicts (struc=
t prelink_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0if (info-&gt;dsos[i])<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0close_dso (info-&gt;dsos=
[i]);<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 if (reset_sdynbss)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 free (info-&gt;sdynbss);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 info-&gt;sdynbss =3D NULL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 if (reset_dynbss)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 free (info-&gt;dynbss);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 info-&gt;dynbss =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0info-&gt;dsos =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0free (cr.rela);<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/src/undo.c b/src/undo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 8a55bf2..4c38dab 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/src/undo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/src/undo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -633,6 +633,15 @@ prelink_undo (DSO *dso)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d-=
&gt;d_buf =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ds=
o-&gt;shdr[i].sh_type =3D SHT_NOBITS;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (dso-&gt=
;shdr[i].sh_type =3D=3D SHT_PROGBITS<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &amp;&amp; strcmp (name, &quot;.<a href=3D"http://data.rel.ro=
" rel=3D"noreferrer" target=3D"_blank">data.rel.ro</a> &lt;<a href=3D"http:=
//data.rel.ro" rel=3D"noreferrer" target=3D"_blank">http://data.rel.ro</a>&=
gt;&quot;) =3D=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sc=
n =3D dso-&gt;scn[i];<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d =
=3D elf_getdata (scn, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0as=
sert (d !=3D NULL &amp;&amp; elf_getdata (scn, d) =3D=3D NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0as=
sert (d-&gt;d_size =3D=3D dso-&gt;shdr[i].sh_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0as=
sert (memset(d-&gt;d_buf, 0, d-&gt;d_size) =3D=3D d-&gt;d_buf);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (dso-&gt=
;shdr[i].sh_type =3D=3D SHT_RELA<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;&amp; shdr[i].sh_type =3D=3D SHT_REL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A02.17.1<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000004ddec8057808987c--
