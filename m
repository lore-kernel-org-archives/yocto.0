Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65DD7E006C7; Mon, 20 Jun 2016 06:45:26 -0700 (PDT)
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
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D76E005A9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 06:45:24 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id v77so17912256ywg.0
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 06:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=yyvwbyKgWEtPWgdqsdSrE37VZzdwiqX/RQOyGru2EX4=;
	b=RxKb1AbLbj2kCOe55N3UG5pnwLX4aErWCyPXkDN/BjXdkel3Tb4LCSGV8HjemjWgru
	XcFV37Ca5BNde2v5PsbI4/yXJrv+oIiyGuTsMHQalyq9GG89vGC5VNNZSt/FPxsB6YoA
	5619Jk/fBgz0Bk/dUt3igQDk8PHjWdr3jFMdGwWbRab/7lOfcI+Ej6lBfA2fiMjJkCCk
	HVoq8PdK7HyXDxNfhb0GmEH3DoI8yes3m5L+dy9M0U1dTU671GSIEptqpNBIDq3IT9P5
	reX2yPZWr+Hu1nHIO56urnr52iQ2EQJmfcHKnmC2RDnEty+U2UZxkFf4F/aUa2zXA+dH
	nHfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=yyvwbyKgWEtPWgdqsdSrE37VZzdwiqX/RQOyGru2EX4=;
	b=gfpsrEyrNMcX5NgpOYxBmW8I+v+7LwJPdsdwct79V4OE6W6bixVUq9+Ce3b8XQBfIT
	WEMsJmUy8/FkgyAgK3z6FnwGiWsdc1sl/mazgsmAf0dVJzKiN6jtzkL/X5+h9CgFghdw
	qbSLk+Anh4LzZeGnKYgo9bunbt5DnExyeqh0qomCqh4z0Y0cap/2x6V1c9Ur/bLM7XMJ
	73DtkA4FemRlsqSCevEsyHa25e5xjaGw6pZxXI8jICmdAEwm0i7e0/i4iGfG4Yi/3Uw8
	+LUnK7IZIHmotDs/RQFhuYE4oNyrgKqMV5iaqVnz1xmYnAwT84idfr34BEaUNTGy1yHb
	7WoA==
X-Gm-Message-State: ALyK8tIiavzzthqqwZFf6xyd/x1iIGpVWWq7gvrOGrbbj+bUqzWbkSBULnamf0ypxjWBIogDgI/o+/smWUKPkw==
X-Received: by 10.13.254.67 with SMTP id o64mr9205472ywf.145.1466430323821;
	Mon, 20 Jun 2016 06:45:23 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.41.139 with HTTP; Mon, 20 Jun 2016 06:45:04 -0700 (PDT)
In-Reply-To: <856fbb9f-74bc-545b-f5e5-3405d452c0f2@windriver.com>
References: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
	<856fbb9f-74bc-545b-f5e5-3405d452c0f2@windriver.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Mon, 20 Jun 2016 09:45:04 -0400
X-Google-Sender-Auth: Cz8X9refovYLf-uyTQympgfOYfA
Message-ID: <CAFrQVPOg1WekKKXYrph3U1HPWdrPgnCrjPvvdPdG4v8FYNR6Ug@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: prelink support
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
X-List-Received-Date: Mon, 20 Jun 2016 13:45:26 -0000
Content-Type: multipart/alternative; boundary=94eb2c07f3c48a126e0535b5eab2

--94eb2c07f3c48a126e0535b5eab2
Content-Type: text/plain; charset=UTF-8

Thanks, Mark and Richard.  Great update!  I'll try out the staging branch
and report back with results.

On Mon, Jun 20, 2016 at 9:15 AM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 6/20/16 7:24 AM, Kyle Russell wrote:
> > It looks like the image-prelink support is still disabled in master
> because of
> > an issue with IFUNC symbol relocation.
> >
> >
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/local.conf.sample?id=8debfea81e69d038bd2d56314b272cb74f5582ed
> >
> > Is there still a problem, or is it safe to reenable image-prelink?  I
> see a "Fix
> > ARM IFUNC support" in the prelink-cross repo, but that appears to have
> been
> > committed several months before image-prelink was disabled.  We'd like
> to enable
> > image-prelink on a build off jethro.
> >
> > Any help or links to a recent discussion thread would be helpful.
> Thanks!
> >
> >
>
> The ARM fix is for a different IFUNC problem.
>
> Disabling the prelinker was caused by a serious of problems that started
> with a
> fork failure traced back to shared library processing orders.
>
> (For comments below, I'm referring to the repository:
> http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/)
>
> The initial problem, IFUNC processing, showed that processing order of the
> shared libraries could lead to a case where the wrong IFUNC was used.  We
> believe this particular issues was fixed in the staging tree.
>
> In the tree you'll see a cross_prelink_staging branch.  In that branch the
> fix
> is commit ID: "8f55afd84b3580b1f1d6af904e8c2a39221055b7"  This fixes the
> 'fork'
> issue by ensuring the proper sort order for shared library processing.
> (This
> was finally fixed in March.)
>
> However with that we determined there was at least one more issue related
> to
> section ordering.  The prelink test suite was failing due to various
> integrity
> checks showing that once we prelinked something, we could not reverse the
> process.  It has taken us months to identify the cause of the problem and
> the
> solution.  (Cause BTW was a change in binutils-2.22 that no longer ensured
> that
> the section order was sorted by offset order... a small amount of the
> prelink
> processing needed to be changed to deal with that behavior.  It's taken far
> longer to fix then we had ever expected.)
>
> See commit (33be255d62af533189f1f7bc66c06602b703980a) in the
> cross_prelink_staging branch.
>
> With this commit, I think the two major issues have been resolved.  I've
> got a
> small set of additional patches I need to put into place -- and then I
> have to
> finish going through the regression suite to verify everything is working
> properly.  (Seems like every time I get to this step, something else comes
> up
> and I'm not getting it done...)
>
> So if you've read this far, the point in all of this is that I THINK that
> the
> cross_prelink_staging branch and current top commit
> "33be255d62af533189f1f7bc66c06602b703980a" are working.  However, I've not
> completed testing so I'm not sure of that yet.
>
> If you can help with testing, you should modify your prelink recipe to use
> the
> 'cross_prelink_staging' branch, and the 33be255 commit.  Verify that this
> is
> working for your use cases.  If you are using glib or graphical
> environments pay
> particular attention to process startup messages that indicate failures.
>
> If this IS working for you, I'd like a reply back with the architecture and
> processor you are using so I can add that to my matrix.  (I'm traveling
> for the
> next couple of days, and then should be back in the officer where I hope to
> finish my regression testing, apply the last couple of patches from Gentoo
> developers, regression test again and prepare a release version.)
>
> Any help is appreciated, thanks for understanding why this is taking so
> long.
>
> --Mark
>

--94eb2c07f3c48a126e0535b5eab2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Mark and Richard.=C2=A0 Great update!=C2=A0 I&#39;=
ll try out the staging branch and report back with results.</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jun 20, 2016 at 9:1=
5 AM, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriv=
er.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On =
6/20/16 7:24 AM, Kyle Russell wrote:<br>
&gt; It looks like the image-prelink support is still disabled in master be=
cause of<br>
&gt; an issue with IFUNC symbol relocation.<br>
&gt;<br>
&gt; <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta=
-poky/conf/local.conf.sample?id=3D8debfea81e69d038bd2d56314b272cb74f5582ed"=
 rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/cgit/cgi=
t.cgi/poky/commit/meta-poky/conf/local.conf.sample?id=3D8debfea81e69d038bd2=
d56314b272cb74f5582ed</a><br>
&gt;<br>
&gt; Is there still a problem, or is it safe to reenable image-prelink?=C2=
=A0 I see a &quot;Fix<br>
&gt; ARM IFUNC support&quot; in the prelink-cross repo, but that appears to=
 have been<br>
&gt; committed several months before image-prelink was disabled.=C2=A0 We&#=
39;d like to enable<br>
&gt; image-prelink on a build off jethro.<br>
&gt;<br>
&gt; Any help or links to a recent discussion thread would be helpful.=C2=
=A0 Thanks!<br>
&gt;<br>
&gt;<br>
<br>
</div></div>The ARM fix is for a different IFUNC problem.<br>
<br>
Disabling the prelinker was caused by a serious of problems that started wi=
th a<br>
fork failure traced back to shared library processing orders.<br>
<br>
(For comments below, I&#39;m referring to the repository:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/" rel=3D=
"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/pr=
elink-cross/</a>)<br>
<br>
The initial problem, IFUNC processing, showed that processing order of the<=
br>
shared libraries could lead to a case where the wrong IFUNC was used.=C2=A0=
 We<br>
believe this particular issues was fixed in the staging tree.<br>
<br>
In the tree you&#39;ll see a cross_prelink_staging branch.=C2=A0 In that br=
anch the fix<br>
is commit ID: &quot;8f55afd84b3580b1f1d6af904e8c2a39221055b7&quot;=C2=A0 Th=
is fixes the &#39;fork&#39;<br>
issue by ensuring the proper sort order for shared library processing.=C2=
=A0 (This<br>
was finally fixed in March.)<br>
<br>
However with that we determined there was at least one more issue related t=
o<br>
section ordering.=C2=A0 The prelink test suite was failing due to various i=
ntegrity<br>
checks showing that once we prelinked something, we could not reverse the<b=
r>
process.=C2=A0 It has taken us months to identify the cause of the problem =
and the<br>
solution.=C2=A0 (Cause BTW was a change in binutils-2.22 that no longer ens=
ured that<br>
the section order was sorted by offset order... a small amount of the preli=
nk<br>
processing needed to be changed to deal with that behavior.=C2=A0 It&#39;s =
taken far<br>
longer to fix then we had ever expected.)<br>
<br>
See commit (33be255d62af533189f1f7bc66c06602b703980a) in the<br>
cross_prelink_staging branch.<br>
<br>
With this commit, I think the two major issues have been resolved.=C2=A0 I&=
#39;ve got a<br>
small set of additional patches I need to put into place -- and then I have=
 to<br>
finish going through the regression suite to verify everything is working<b=
r>
properly.=C2=A0 (Seems like every time I get to this step, something else c=
omes up<br>
and I&#39;m not getting it done...)<br>
<br>
So if you&#39;ve read this far, the point in all of this is that I THINK th=
at the<br>
cross_prelink_staging branch and current top commit<br>
&quot;33be255d62af533189f1f7bc66c06602b703980a&quot; are working.=C2=A0 How=
ever, I&#39;ve not<br>
completed testing so I&#39;m not sure of that yet.<br>
<br>
If you can help with testing, you should modify your prelink recipe to use =
the<br>
&#39;cross_prelink_staging&#39; branch, and the 33be255 commit.=C2=A0 Verif=
y that this is<br>
working for your use cases.=C2=A0 If you are using glib or graphical enviro=
nments pay<br>
particular attention to process startup messages that indicate failures.<br=
>
<br>
If this IS working for you, I&#39;d like a reply back with the architecture=
 and<br>
processor you are using so I can add that to my matrix.=C2=A0 (I&#39;m trav=
eling for the<br>
next couple of days, and then should be back in the officer where I hope to=
<br>
finish my regression testing, apply the last couple of patches from Gentoo<=
br>
developers, regression test again and prepare a release version.)<br>
<br>
Any help is appreciated, thanks for understanding why this is taking so lon=
g.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--Mark<br>
</font></span></blockquote></div><br></div>

--94eb2c07f3c48a126e0535b5eab2--
