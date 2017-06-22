Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02FC2E00BD0; Wed, 21 Jun 2017 18:51:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B247E00B8B
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 18:51:23 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id m47so12857543iti.0
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 18:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=FWgKD4u8GYnM6OSxjNPglOL5/jGz/G9Ol7mWTawEtHw=;
	b=D1Ms4cLWWgF85aSjvf4hR/WLLoZD7KFTsDAwuGz3GHafBkxQgLGQOvTdnwLbwDdzD2
	4Bi9dfmVQNEgDSsoqEOVUS/8opkQXHv2eW8eEvpP1LXyFQBrFEj9w/vMWSZIvgPmy8Oa
	3LKYHrMRWnXMEf7tTtfWH91oYnCFq03Q1jtXrCRQMUUyDZ1Fynxo5r+qZ0vuuqLvCXVK
	1kRZrvZu0Ay/tymuBewqN6LP92Y3AkjKrNLmJxSWv5HZpB8l4ytruA4WquUbFM4iQZJV
	J6Nu7+P5E9l8NwzizZd1F8kPhvZKlYCEZtRd7e8dzZ34i8HptzsFkeaNtvak0A4eBepe
	MrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=FWgKD4u8GYnM6OSxjNPglOL5/jGz/G9Ol7mWTawEtHw=;
	b=RgroXK/yDT2PRq0J0EMKYCyj7vAlf1eV+VUrOaTawtjP/xwRD9QExDHfZIpa0bC7wx
	LE6s26UOa/e0jNhuHjMjQ2b4KAlu0tK/ZwdAUjo5BMoJCqblBnAbYsPF054sw3avKiYC
	PDF0+t6SfwkfHZQz739M1ghvbvpMPEpDwgIxDV2YDAUrRdeSrzQkjXSIEpEpw1cBm6uk
	OzBO4rnM6h6r4rzhxMhyxysZzgwbOoR1L26xSNJAO+tkmpclPxSStCi/0THxDyouaD4Z
	apnS1zThE0HXu5tPzeV7r+syGZjBnXbsmh9z3ebCVWm7EWX86oShokyE8X31CvRWhF7u
	UheA==
X-Gm-Message-State: AKS2vOx6gawtUDDPBagfiqf4Fyt9CznDSgOtLiGlaEARKinTFM0TFS9j
	OLoSuOJz86YWtFT2QG0QVXm5FGxm1Q==
X-Received: by 10.36.43.146 with SMTP id h140mr803153ita.72.1498096283159;
	Wed, 21 Jun 2017 18:51:23 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.107.165.9 with HTTP; Wed, 21 Jun 2017 18:51:02 -0700 (PDT)
In-Reply-To: <67d01694-b96e-72bc-5798-19c3492d71eb@windriver.com>
References: <1472139557-7371-1-git-send-email-bkylerussell@gmail.com>
	<67d01694-b96e-72bc-5798-19c3492d71eb@windriver.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Wed, 21 Jun 2017 21:51:02 -0400
X-Google-Sender-Auth: CYabXoWTx6sjzxwU7-MZkN3EqXc
Message-ID: <CAFrQVPOXyboKjeOaQxvh6WU3GShxijdcJAC7YdwYj6o05=s6Ew@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][PATCH] rtld: Add missing DT_NEEDED DSOs to needed_list
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
X-List-Received-Date: Thu, 22 Jun 2017 01:51:25 -0000
Content-Type: multipart/alternative; boundary="001a114749aacc18ee055282b8a8"

--001a114749aacc18ee055282b8a8
Content-Type: text/plain; charset="UTF-8"

Just wanted to follow-up on this so it doesn't get lost.  Any chance this
could be included in cross_prelink_staging?

On Thu, Aug 25, 2016 at 1:03 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> Thanks!  I'll try to get this included soon.
>
> --Mark
>
> On 8/25/16 10:39 AM, Kyle Russell wrote:
> > prelink-rtld may report an "error while loading shared libraries" for
> > the wrong library.
> >
> > If some set of DT_NEEDED DSOs are not in the default search path, they
> > may have a dso_list entry added, but no matching entry is added to the
> > needed_list.  This causes the linker to miscalculate the max number of
> > dsos during build_local_scope(), which later causes find_needed() to not
> > search the entire l_local_scope[0]->r_list during
> > _dl_check_map_versions() (since the max from build_local_scope() becomes
> > l_local_scope[0]->r_nlist).
> >
> > Since find_needed() searches through the r_list, which would have the
> > dso_list entries for the libraries that weren't found earlier, this cuts
> > the search short, meaning libraries near the end of the local scope don't
> > get included in the map version search.
> >
> > As the comment in _dl_check_map_versions() suggests, if needed is NULL,
> > that means a dependency was not found and no stub entry created, which
> > should never happen.
> >
> > Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
> > ---
> >  src/rtld/rtld.c | 36 ++++++++++++++++++++++--------------
> >  1 file changed, 22 insertions(+), 14 deletions(-)
> >
> > diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
> > index 8d7d760..d9a0862 100644
> > --- a/src/rtld/rtld.c
> > +++ b/src/rtld/rtld.c
> > @@ -686,6 +686,25 @@ find_lib_by_soname (const char *soname, struct
> dso_list *loader,
> >    return NULL;
> >  }
> >
> > +static void
> > +add_dso_to_needed (struct dso_list *cur_dso_ent, struct dso_list
> *new_dso_ent)
> > +{
> > +  if (!cur_dso_ent->needed)
> > +    {
> > +      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
> > +      cur_dso_ent->needed_tail = cur_dso_ent->needed;
> > +      cur_dso_ent->needed_tail->ent = new_dso_ent;
> > +      cur_dso_ent->needed_tail->next = NULL;
> > +    }
> > +  else if (!in_needed_list (cur_dso_ent->needed, new_dso_ent->name))
> > +    {
> > +      cur_dso_ent->needed_tail->next = malloc (sizeof (struct
> needed_list));
> > +      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
> > +      cur_dso_ent->needed_tail->ent = new_dso_ent;
> > +      cur_dso_ent->needed_tail->next = NULL;
> > +    }
> > +}
> > +
> >  static struct dso_list *
> >  load_dsos (DSO *dso, int host_paths)
> >  {
> > @@ -812,6 +831,8 @@ load_dsos (DSO *dso, int host_paths)
> >                         dso_list_tail->canon_filename = strdup(soname);
> >                         dso_list_tail->err_no = errno;
> >
> > +                          add_dso_to_needed(cur_dso_ent, new_dso_ent);
> > +
> >                         continue;
> >                       }
> >
> > @@ -854,20 +875,7 @@ load_dsos (DSO *dso, int host_paths)
> >                       dso_list_tail->name = new_dso->soname;
> >                   }
> >
> > -               if (!cur_dso_ent->needed)
> > -                 {
> > -                   cur_dso_ent->needed = malloc (sizeof (struct
> needed_list));
> > -                   cur_dso_ent->needed_tail = cur_dso_ent->needed;
> > -                   cur_dso_ent->needed_tail->ent = new_dso_ent;
> > -                   cur_dso_ent->needed_tail->next = NULL;
> > -                 }
> > -               else if (!in_needed_list (cur_dso_ent->needed, soname))
> > -                 {
> > -                   cur_dso_ent->needed_tail->next = malloc (sizeof
> (struct needed_list));
> > -                   cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->
> next;
> > -                   cur_dso_ent->needed_tail->ent = new_dso_ent;
> > -                   cur_dso_ent->needed_tail->next = NULL;
> > -                 }
> > +                  add_dso_to_needed(cur_dso_ent, new_dso_ent);
> >
> >                 continue;
> >               }
> >
>
>

--001a114749aacc18ee055282b8a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just wanted to follow-up on this so it doesn&#39;t get los=
t.=C2=A0 Any chance this could be included in cross_prelink_staging?</div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Aug 25, 20=
16 at 1:03 PM, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatl=
e@windriver.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Thanks!=C2=A0 I&#39;ll try to get =
this included soon.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--Mark<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
On 8/25/16 10:39 AM, Kyle Russell wrote:<br>
&gt; prelink-rtld may report an &quot;error while loading shared libraries&=
quot; for<br>
&gt; the wrong library.<br>
&gt;<br>
&gt; If some set of DT_NEEDED DSOs are not in the default search path, they=
<br>
&gt; may have a dso_list entry added, but no matching entry is added to the=
<br>
&gt; needed_list.=C2=A0 This causes the linker to miscalculate the max numb=
er of<br>
&gt; dsos during build_local_scope(), which later causes find_needed() to n=
ot<br>
&gt; search the entire l_local_scope[0]-&gt;r_list during<br>
&gt; _dl_check_map_versions() (since the max from build_local_scope() becom=
es<br>
&gt; l_local_scope[0]-&gt;r_nlist).<br>
&gt;<br>
&gt; Since find_needed() searches through the r_list, which would have the<=
br>
&gt; dso_list entries for the libraries that weren&#39;t found earlier, thi=
s cuts<br>
&gt; the search short, meaning libraries near the end of the local scope do=
n&#39;t<br>
&gt; get included in the map version search.<br>
&gt;<br>
&gt; As the comment in _dl_check_map_versions() suggests, if needed is NULL=
,<br>
&gt; that means a dependency was not found and no stub entry created, which=
<br>
&gt; should never happen.<br>
&gt;<br>
&gt; Signed-off-by: Kyle Russell &lt;<a href=3D"mailto:bkylerussell@gmail.c=
om">bkylerussell@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 src/rtld/rtld.c | 36 ++++++++++++++++++++++--------<wbr>------<b=
r>
&gt;=C2=A0 1 file changed, 22 insertions(+), 14 deletions(-)<br>
&gt;<br>
&gt; diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c<br>
&gt; index 8d7d760..d9a0862 100644<br>
&gt; --- a/src/rtld/rtld.c<br>
&gt; +++ b/src/rtld/rtld.c<br>
&gt; @@ -686,6 +686,25 @@ find_lib_by_soname (const char *soname, struct ds=
o_list *loader,<br>
&gt;=C2=A0 =C2=A0 return NULL;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; +static void<br>
&gt; +add_dso_to_needed (struct dso_list *cur_dso_ent, struct dso_list *new=
_dso_ent)<br>
&gt; +{<br>
&gt; +=C2=A0 if (!cur_dso_ent-&gt;needed)<br>
&gt; +=C2=A0 =C2=A0 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed =3D malloc (sizeof (struc=
t needed_list));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail =3D cur_dso_ent-&gt;=
needed;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail-&gt;ent =3D new_dso_=
ent;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail-&gt;next =3D NULL;<b=
r>
&gt; +=C2=A0 =C2=A0 }<br>
&gt; +=C2=A0 else if (!in_needed_list (cur_dso_ent-&gt;needed, new_dso_ent-=
&gt;name))<br>
&gt; +=C2=A0 =C2=A0 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail-&gt;next =3D malloc =
(sizeof (struct needed_list));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail =3D cur_dso_ent-&gt;=
needed_tail-&gt;<wbr>next;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail-&gt;ent =3D new_dso_=
ent;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 cur_dso_ent-&gt;needed_tail-&gt;next =3D NULL;<b=
r>
&gt; +=C2=A0 =C2=A0 }<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 static struct dso_list *<br>
&gt;=C2=A0 load_dsos (DSO *dso, int host_paths)<br>
&gt;=C2=A0 {<br>
&gt; @@ -812,6 +831,8 @@ load_dsos (DSO *dso, int host_paths)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0dso_list_tail-&gt;canon_filename =3D strdup(soname);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0dso_list_tail-&gt;err_no =3D errno;<br>
&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 add_dso_to_needed(cur_dso_ent, new_dso_ent);<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0continue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -854,20 +875,7 @@ load_dsos (DSO *dso, int host_paths)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dso_list_tail-&gt;name =3D new_dso-&gt;soname;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!cur_dso_e=
nt-&gt;needed)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed =3D malloc (sizeof (struct needed_list));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail =3D cur_dso_ent-&gt;needed;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail-&gt;ent =3D new_dso_ent;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail-&gt;next =3D NULL;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (!in_n=
eeded_list (cur_dso_ent-&gt;needed, soname))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail-&gt;next =3D malloc (sizeof (struct needed_list=
));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail =3D cur_dso_ent-&gt;needed_tail-&gt;<wbr>next;<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail-&gt;ent =3D new_dso_ent;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cur_dso_ent-&gt;needed_tail-&gt;next =3D NULL;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 add_ds=
o_to_needed(cur_dso_ent, new_dso_ent);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--001a114749aacc18ee055282b8a8--
