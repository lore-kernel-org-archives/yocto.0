Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8CC9E00C93; Wed,  6 Mar 2019 10:55:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBAEE00C43
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 10:55:29 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id j89so11278724edb.9
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 10:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OeKsBnvIMnZphWc3ksP9zGt9kpw5t3psuS6cJj1sEYE=;
	b=gvb8r421eTaoHhL6hPYfnVkOurVJPG7pG3+4v/oOesi2Cdv9YcdD61CWh4Sx7Pohj/
	pFMJqUhkZO2HOlC6A9FtlT1L5AcSOi9d8Dh4vfliNKlhyPyG6EnssLqtWqNqUna3E/N8
	YTGsahzwuqh74IHWlthBO/AsdkYUS7I1P2ZFmchWkxumaob9eDsh23JxtybGY/8yXrde
	eHQMDZFfCnsFQEwkGrAjRmkJWmyqWL1LCbafIIfGrp8WOnei56xa/TCshPDpL0WMSnfw
	fgZPrruxlFX7FXSySp2sw2g+XyvSx16WV/yJTEwgdVfznjh9YWJ95e1GbvpXUJu/iRGL
	TE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OeKsBnvIMnZphWc3ksP9zGt9kpw5t3psuS6cJj1sEYE=;
	b=XMZGbViCUJTLGtkwKca7B0XJFXEu61pfLbVwGlSxeMBunuJQxSflcao0kp5qMf0htB
	sP18IYSAIaAfroB8V+bEsxwwYQvmEI1n/6yLHnm6N31doXjt06XsgYAr8vxQOljh1IZF
	Au6OFXe2R3RBez5WeefTwH1C6I0oaOFWRZEsLXAzeXKaRsAsGaVq2h8pIda6CA4ova0I
	BjeS3iSyIQ83ak2tqCQqOSLqhax7Q6B2WKcO87XA1j6RjvOyDosG7iCOvVE/hJF49/qt
	1XOn8TtGs6q08W2NF0HVc1HILoqtdOhFcnVEys4Ree8dwrHlCtuT4FzBjSE4RRG+H107
	7LYA==
X-Gm-Message-State: APjAAAUne7vt/1Gi9WUv4HxTE45FKoEEIllS+JaYC/PHur93/wxKWYON
	aD7WhIZNSheOLrjXzpdxKezv15RQeKdHhHDJmq0=
X-Google-Smtp-Source: APXvYqyA6R2Jn6fvDT1MPDov+N7odkGxP4d3HNr7JgqAPfUhP+HQMlx3XWhqOqc9TdeqpexzgKi4opPlohQ50vByG+s=
X-Received: by 2002:a17:906:4f0b:: with SMTP id
	t11mr5012250eju.79.1551898528725; 
	Wed, 06 Mar 2019 10:55:28 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
	<CAFNP8Ouk6e7xEjSLfBuCOsdQKVB=yDPhHwNG4nLUuNcLSPk=jQ@mail.gmail.com>
	<CAMKF1sr3e1e725ZpSWBYw2awbF-6VuJ8wYd0YEBn24b4zMeSTw@mail.gmail.com>
	<CAFNP8OsHvvVkiGGCUvtsVd6OAsAoT76BRGJ+WFY0aLRLdagk7w@mail.gmail.com>
	<CAMKF1soGS34ey2eEHTHFDww97hcitGCp1Ndz49LMs2hQrCquZA@mail.gmail.com>
In-Reply-To: <CAMKF1soGS34ey2eEHTHFDww97hcitGCp1Ndz49LMs2hQrCquZA@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 6 Mar 2019 10:55:17 -0800
Message-ID: <CAFNP8OvguH1fvaMEmMhmCAmMZSY-jz=ZqUqGk7T68oyUHMG2gg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: INHIBIT_SYSROOT_STRIP
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
X-List-Received-Date: Wed, 06 Mar 2019 18:55:30 -0000
Content-Type: multipart/alternative; boundary="0000000000008841d805837188fa"

--0000000000008841d805837188fa
Content-Type: text/plain; charset="UTF-8"

Got it. Thanks Khem.

On Wed, Mar 6, 2019 at 10:22 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Mar 6, 2019 at 9:48 AM Scott Rifenbark <srifenbark@gmail.com>
> wrote:
> >
> > I think we should probably at least document the variable in the YP
> Reference Manual's glossary.  Correct?
> >
>
> yes and also mention that we only expect it to be used in rare special
> curcumstances, e,g, prebuilt binaries etc.
>
> > Scott
> >
> > On Wed, Mar 6, 2019 at 9:24 AM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Wed, Mar 6, 2019 at 8:15 AM Scott Rifenbark <srifenbark@gmail.com>
> wrote:
> >> >
> >> > Dimitris,
> >> >
> >> > Good find... I will see about documenting this.
> >> >
> >>
> >> Although its not encouranged to use it, its to be used as a last resort
> >> we use it sparingly.
> >>
> >> > Scott
> >> >
> >> > On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos <
> dimtass@gmail.com> wrote:
> >> >>
> >> >> Hi all,
> >> >>
> >> >> this is not a request for help.
> >> >>
> >> >> Today, I've found a very nice option which is not documented
> >> >> which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_strip()
> >> >> inside the poky/meta/classes/staging.bbclass.
> >> >>
> >> >> I had an issue with a recipe that had a few binaries that I wanted
> to add to the
> >> >> recipe-sysroot-native in order to build another package and I was
> getting errors
> >> >> because the do_populate_sysroot couldn't strip those binaries. I've
> searched in
> >> >> the source and found that the author of that code was handling this
> case, but it's
> >> >> not documented (at least in the latest mega-manual).
> >> >>
> >> >> Therefore, I'm dropping this message as a reference to other that
> might need it.
> >> >>
> >> >> Regards,
> >> >> Dimitris
> >> >> --
> >> >> _______________________________________________
> >> >> yocto mailing list
> >> >> yocto@yoctoproject.org
> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008841d805837188fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Got it. Thanks Khem.<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 6, 2019 at 10:22 AM Kh=
em Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, =
Mar 6, 2019 at 9:48 AM Scott Rifenbark &lt;<a href=3D"mailto:srifenbark@gma=
il.com" target=3D"_blank">srifenbark@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I think we should probably at least document the variable in the YP Re=
ference Manual&#39;s glossary.=C2=A0 Correct?<br>
&gt;<br>
<br>
yes and also mention that we only expect it to be used in rare special<br>
curcumstances, e,g, prebuilt binaries etc.<br>
<br>
&gt; Scott<br>
&gt;<br>
&gt; On Wed, Mar 6, 2019 at 9:24 AM Khem Raj &lt;<a href=3D"mailto:raj.khem=
@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Mar 6, 2019 at 8:15 AM Scott Rifenbark &lt;<a href=3D"mail=
to:srifenbark@gmail.com" target=3D"_blank">srifenbark@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Dimitris,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Good find... I will see about documenting this.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; Although its not encouranged to use it, its to be used as a last r=
esort<br>
&gt;&gt; we use it sparingly.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Scott<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos &lt;<a hr=
ef=3D"mailto:dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt;=
 wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi all,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; this is not a request for help.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Today, I&#39;ve found a very nice option which is not doc=
umented<br>
&gt;&gt; &gt;&gt; which is the INHIBIT_SYSROOT_STRIP and is used in the sys=
root_strip()<br>
&gt;&gt; &gt;&gt; inside the poky/meta/classes/staging.bbclass.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I had an issue with a recipe that had a few binaries that=
 I wanted to add to the<br>
&gt;&gt; &gt;&gt; recipe-sysroot-native in order to build another package a=
nd I was getting errors<br>
&gt;&gt; &gt;&gt; because the do_populate_sysroot couldn&#39;t strip those =
binaries. I&#39;ve searched in<br>
&gt;&gt; &gt;&gt; the source and found that the author of that code was han=
dling this case, but it&#39;s<br>
&gt;&gt; &gt;&gt; not documented (at least in the latest mega-manual).<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Therefore, I&#39;m dropping this message as a reference t=
o other that might need it.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Regards,<br>
&gt;&gt; &gt;&gt; Dimitris<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div>

--0000000000008841d805837188fa--
