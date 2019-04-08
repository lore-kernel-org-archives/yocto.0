Return-Path: <malus.brandywine@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0642E00A84; Mon,  8 Apr 2019 11:58:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (malus.brandywine[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF56BE0097C
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 11:58:45 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id f22so865655ita.3
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 11:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nMkjGDRwYFqo4d0NStWp/ENEN0ZPnOJJAjptSW/8UzY=;
	b=RooM2BvIXS27IElIvthxwLO2nry2Mep68F7bJHY5ZgP4zBQjjI8TkrF94KFmp/sK87
	xXIi51ElSkZS4GLm0zxom4M0H/vH9F1S6M/dKSTfjWOWeRHxXqy+YRvXHHTeaajx5AkB
	jNLI3Aj07gb/w+d6efGEwipNqHmQA07gXIQfwueIlAXppEwRJRPFhVXXvq8lk4vCWlFK
	qF6mWn3jXs1cLO7do9YTXEGmnphrjIV1Ir08t0i/ygqJ0CL41ASDPFsW8S4fFkKZzCxH
	lg424YvHKA+j7xfVmONc3/iwIaDTO2id5XP71VaBpw8D0GjBSvwc5O/IcJpVbDLs5Ce6
	romw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nMkjGDRwYFqo4d0NStWp/ENEN0ZPnOJJAjptSW/8UzY=;
	b=BA1Ro2YOVvgnqTRjZkcKduJokjAOT5KOzVFmuWlGlNXCnJTQF0CWcpXuxIPYsLyvEJ
	ffjWviF/IzQ9dkaZDERbkssY98zBJrbVHf6dwndoskeSYuX4igsrJOUWj+stTLJ/F/sn
	t5IYF918WhNM+b5zP+f43/qi8j4oxj9qsNKS0LTiHnMkGfjp0upgdPi+0AEC6UChhwWy
	mFkn6sBXI2XKlA8UoLOKOk9scmcMFlcylsq3mg5WmLKbne/Ed9Rnu1kkDjZLT6uPgv0O
	bQOjzYObn79EOU/hPO9Qk1E0nLmyom7SGYiCN3QHDcew1m0bl+FsvSpJe6ZmjJGEQc2z
	dLPA==
X-Gm-Message-State: APjAAAUBVCTsyQzp8RnkJWm55UO03KDjItpCsuiD1C+NB7CyNq2ZXCQK
	lAztT2wLzODfwe58y/fTKJshfxDoBmkXO6IK4Nklgg==
X-Google-Smtp-Source: APXvYqx8sy2pzA9kAO3N3O9vRzkB2AgYPHlhIbkgJzI0ROIaiVdRwdUNYkAv/mw7Fz0lQJo0/iu0RcNDCjEbUxDpiQU=
X-Received: by 2002:a24:3613:: with SMTP id l19mr17040316itl.75.1554749925314; 
	Mon, 08 Apr 2019 11:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
	<CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
	<CAJTo0LbEnsy_Ha5EOHuw8cgzFxH_Kj1U8O7ZsXOje+=y_XsVNA@mail.gmail.com>
	<2b04a1ee-d0a5-8525-7707-c4ff57ca6afe@gmail.com>
	<CAJTo0LaJxsg56pY9Fn5DTjFP5byrd0yFpNcXQAE4x9CPhjDOmw@mail.gmail.com>
In-Reply-To: <CAJTo0LaJxsg56pY9Fn5DTjFP5byrd0yFpNcXQAE4x9CPhjDOmw@mail.gmail.com>
From: Nataliya Korovkina <malus.brandywine@gmail.com>
Date: Mon, 8 Apr 2019 14:58:34 -0400
Message-ID: <CADz_WD7w6WztQS1wCcnnkjdTDJ-LTHiqnfQWKqhQ13f_UsqbTg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Karshi Hasanov <karshi.hasanov@gmail.com>
Subject: Re: Installation help
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
X-List-Received-Date: Mon, 08 Apr 2019 18:58:46 -0000
Content-Type: multipart/alternative; boundary="0000000000000356e90586096dee"

--0000000000000356e90586096dee
Content-Type: text/plain; charset="UTF-8"

"example.com" is not working. If someone needs to check their connection
this way, please use CONNECTIVITY_CHECK_URIS="https://www.yoctoproject.org"

N

On Mon, Apr 8, 2019 at 2:50 PM Burton, Ross <ross.burton@intel.com> wrote:

> There must be if example.com can't be downloaded from...
>
> On Mon, 8 Apr 2019 at 19:49, Karshi Hasanov <karshi.hasanov@gmail.com>
> wrote:
> >
> > There is nothing wrong with my network network!
> >
> > For now the issue is resolved.
> >
> > Thanks any way.
> >
> >
> > On 2019-04-08 1:10 p.m., Burton, Ross wrote:
> > > The better fix is to fix your network.  If you need a proxy, set it in
> > > local.conf.
> > >
> > > Ross
> > >
> > > On Mon, 8 Apr 2019 at 18:09, Nataliya Korovkina
> > > <malus.brandywine@gmail.com> wrote:
> > >> Hello Karshi,
> > >>
> > >> I had the same message. I added:
> > >>
> > >> CONNECTIVITY_CHECK_URIS=""
> > >>
> > >> in conf/local.conf as a QUICK FIX. I hope someone has better
> solution, please?
> > >>
> > >> Thanks,
> > >> Nataliya
> > >>
> > >>
> > >> On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov <
> karshi.hasanov@gmail.com> wrote:
> > >>> Hi all,
> > >>>
> > >>> I have followed the
> > >>>
> > >>>
> https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
> > >>>
> > >>> when issue the "bitbake core-image-minimal"
> > >>>
> > >>> I am keep getting this error:
> > >>>
> > >>> ERROR:  OE-core's config sanity checker detected a potential
> > >>> misconfiguration.
> > >>>       Either fix the cause of this error or at your own risk disable
> the
> > >>> checker (see sanity.conf).
> > >>>       Following is the list of potential problems / advisories:
> > >>>
> > >>>       Fetcher failure for URL: 'https://www.example.com/'. URL
> > >>> https://www.example.com/ doesn't work.
> > >>>       Please ensure your host's network is configured correctly,
> > >>>       or set BB_NO_NETWORK = "1" to disable network access if
> > >>>       all required sources are on local disk.
> > >>>
> > >>> --
> > >>> _______________________________________________
> > >>> yocto mailing list
> > >>> yocto@yoctoproject.org
> > >>> https://lists.yoctoproject.org/listinfo/yocto
> > >>
> > >>
> > >> --
> > >>
> > >>
> > >> Nataliya Korovkina
> > >>
> > >> --
> > >> _______________________________________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/yocto
>


-- 


Nataliya Korovkina

--0000000000000356e90586096dee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;<a href=3D"http://example.com">example.com</a>&quot;=
 is not working. If someone needs to check their connection this way, pleas=
e use CONNECTIVITY_CHECK_URIS=3D&quot;<a href=3D"https://www.yoctoproject.o=
rg">https://www.yoctoproject.org</a>&quot;<div><br></div><div>N</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Apr 8, 2019 at 2:50 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@int=
el.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">There must be if <a href=3D"http://example.com=
" rel=3D"noreferrer" target=3D"_blank">example.com</a> can&#39;t be downloa=
ded from...<br>
<br>
On Mon, 8 Apr 2019 at 19:49, Karshi Hasanov &lt;<a href=3D"mailto:karshi.ha=
sanov@gmail.com" target=3D"_blank">karshi.hasanov@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; There is nothing wrong with my network network!<br>
&gt;<br>
&gt; For now the issue is resolved.<br>
&gt;<br>
&gt; Thanks any way.<br>
&gt;<br>
&gt;<br>
&gt; On 2019-04-08 1:10 p.m., Burton, Ross wrote:<br>
&gt; &gt; The better fix is to fix your network.=C2=A0 If you need a proxy,=
 set it in<br>
&gt; &gt; local.conf.<br>
&gt; &gt;<br>
&gt; &gt; Ross<br>
&gt; &gt;<br>
&gt; &gt; On Mon, 8 Apr 2019 at 18:09, Nataliya Korovkina<br>
&gt; &gt; &lt;<a href=3D"mailto:malus.brandywine@gmail.com" target=3D"_blan=
k">malus.brandywine@gmail.com</a>&gt; wrote:<br>
&gt; &gt;&gt; Hello Karshi,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I had the same message. I added:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; CONNECTIVITY_CHECK_URIS=3D&quot;&quot;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; in conf/local.conf as a QUICK FIX. I hope someone has better =
solution, please?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Thanks,<br>
&gt; &gt;&gt; Nataliya<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov &lt;<a href=3D=
"mailto:karshi.hasanov@gmail.com" target=3D"_blank">karshi.hasanov@gmail.co=
m</a>&gt; wrote:<br>
&gt; &gt;&gt;&gt; Hi all,<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; I have followed the<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; <a href=3D"https://www.yoctoproject.org/docs/2.6.1/brief-=
yoctoprojectqs/brief-yoctoprojectqs.html" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoct=
oprojectqs.html</a><br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; when issue the &quot;bitbake core-image-minimal&quot;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; I am keep getting this error:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; ERROR:=C2=A0 OE-core&#39;s config sanity checker detected=
 a potential<br>
&gt; &gt;&gt;&gt; misconfiguration.<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Either fix the cause of this er=
ror or at your own risk disable the<br>
&gt; &gt;&gt;&gt; checker (see sanity.conf).<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Following is the list of potent=
ial problems / advisories:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Fetcher failure for URL: &#39;<=
a href=3D"https://www.example.com/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.example.com/</a>&#39;. URL<br>
&gt; &gt;&gt;&gt; <a href=3D"https://www.example.com/" rel=3D"noreferrer" t=
arget=3D"_blank">https://www.example.com/</a> doesn&#39;t work.<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Please ensure your host&#39;s n=
etwork is configured correctly,<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0or set BB_NO_NETWORK =3D &quot;=
1&quot; to disable network access if<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0all required sources are on loc=
al disk.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; --<br>
&gt; &gt;&gt;&gt; _______________________________________________<br>
&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt; &gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt; &gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Nataliya Korovkina<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; _______________________________________________<br>
&gt; &gt;&gt; yocto mailing list<br>
&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><br><div>=
<br></div><div>Nataliya Korovkina</div><div><br></div></div></div></div></d=
iv>

--0000000000000356e90586096dee--
