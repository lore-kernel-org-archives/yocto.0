Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 400CCE00B5C; Tue, 17 Nov 2015 10:04:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C18ABE00B36
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 10:04:25 -0800 (PST)
Received: by igvi2 with SMTP id i2so102227593igv.0
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 10:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=sk9C7pt3PZfvSzCPLis3DD7jRt3fp4RTWJrqjNiBhjc=;
	b=S4BtcCIwH630B5Nzg3zIX5Z37M1PgAPCNvxVVorrV6aTRbp+CkCL+VY7o4XgswNeGY
	iXLGIu5LpYRE7+6mBljEa7flzxWftrl/caWKFqt/oMwUvZ1c7e+0UFIQDyn6kL4zaM1U
	I7ohNJoEGk4E+puQhHmgQVWYnTacPPbl3a/XIqRE4rfWbfgPZ70g5b/wK4Cujpy75PK2
	1AxmNjAPrSJ25/lm4ENENxpwxsJJ+rkLHAO1pnsRZHVl6pBH7+LAVjcpZNTNcvPENlY+
	wJNMHN5uKiOVgQsrmJ8bhirY/LoOP8ejgca6/G8CCjLbxLvKyWOn6o+ZT0cQjMbJBNEy
	UStA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=sk9C7pt3PZfvSzCPLis3DD7jRt3fp4RTWJrqjNiBhjc=;
	b=DBHOgluIS+WOeVB4zFjyvS6sKFL+J9M7pWriUPA2yJ1anqulZItc13Ce/arJHFe8sl
	C9DLj+z+qQlIxjvDUcSHOBYqsaH1wKI77dHHIJ0ma/v/B9y4GyE+wfe0Bghx8auwm4z1
	cBZ/ill9XrgdRyB/jayqfycOKNN5uY5YDcb1jUNM1P08RPDgfRDvRZxr08lqdlUvdXSv
	OjRzE0R+Kyjj/91gHu8M0+SBqsXmpz9HnNWnbNhU6g59LGRkh1H9bJ3pkgbylwxXIOkK
	Wo9IH3nS9UNlu57cCTXu5YWXuP3KihBtOzJGPSvZb3A+iivDoxTjLCMzPOqyKRfc8gAQ
	MyzQ==
X-Received: by 10.50.92.41 with SMTP id cj9mr2641678igb.38.1447783464814; Tue,
	17 Nov 2015 10:04:24 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.93.7 with HTTP; Tue, 17 Nov 2015 10:04:05 -0800 (PST)
In-Reply-To: <7169720.ScqY2G0nCp@peggleto-mobl.ger.corp.intel.com>
References: <564B48D3.7050304@mlbassoc.com>
	<CABcZANnBeR7BN8M1_GaFDQKbQjbfJtg7_4fy=wH76hMV0vdDuQ@mail.gmail.com>
	<7169720.ScqY2G0nCp@peggleto-mobl.ger.corp.intel.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 17 Nov 2015 11:04:05 -0700
X-Google-Sender-Auth: f1ocOj1z7PXLNtvtQsIl1p7WHv4
Message-ID: <CABcZANm+0LFtsQ=LBPUp_e+qDSnhBzQr6g1ONUFfpM13xbwOUw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: New warning(s)
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
X-List-Received-Date: Tue, 17 Nov 2015 18:04:29 -0000
Content-Type: multipart/alternative; boundary=e89a8f23457521cd230524c05b2a

--e89a8f23457521cd230524c05b2a
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 17, 2015 at 11:02 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 17 November 2015 08:39:55 Christopher Larson wrote:
> > On Tue, Nov 17, 2015 at 8:33 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > > When I run bitbake using layers that are not GIT repos, I'm
> > >
> > > now getting a lot of messages like this:
> > >   fatal: Not a git repository (or any parent up to mount point /raid)
> > >   Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not
> > >
> > > set).
> > >
> > > This seems to be new (I've built from such trees many times
> > > before with no such messages) and it hardly seems "fatal".
> > > The messages apparently are coming from 'git' (I tested with
> > > git version 1.9.1 and 1.7.11)
> > >
> > > Why the change?
> >
> > I believe we need https://github.com/kergoth/meta-mentor/commit/2125799
> > applied to oe-core, haven't had a chance to submit it yet, but it looked
> to
> > me like an accidental loss of the stderr capture/suppression when the
> > metadata_scm functions were reworked recently.
>
> I already sent a patch for this, it hasn't been applied yet:
>
> http://patchwork.openembedded.org/patch/107081/


Ah, excellent. Thanks.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--e89a8f23457521cd230524c05b2a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Nov 17, 2015 at 11:02 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton=
@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D"">On Tuesday 17 November 2015 08:39:55 Christopher Larson wrot=
e:<br>
&gt; On Tue, Nov 17, 2015 at 8:33 AM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt; &gt; When I run bitbake using layers that are not GIT repos, I&#39;m<b=
r>
&gt; &gt;<br>
&gt; &gt; now getting a lot of messages like this:<br>
&gt; &gt;=C2=A0 =C2=A0fatal: Not a git repository (or any parent up to moun=
t point /raid)<br>
&gt; &gt;=C2=A0 =C2=A0Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS=
_FILESYSTEM not<br>
&gt; &gt;<br>
&gt; &gt; set).<br>
&gt; &gt;<br>
&gt; &gt; This seems to be new (I&#39;ve built from such trees many times<b=
r>
&gt; &gt; before with no such messages) and it hardly seems &quot;fatal&quo=
t;.<br>
&gt; &gt; The messages apparently are coming from &#39;git&#39; (I tested w=
ith<br>
&gt; &gt; git version 1.9.1 and 1.7.11)<br>
&gt; &gt;<br>
&gt; &gt; Why the change?<br>
&gt;<br>
&gt; I believe we need <a href=3D"https://github.com/kergoth/meta-mentor/co=
mmit/2125799" rel=3D"noreferrer" target=3D"_blank">https://github.com/kergo=
th/meta-mentor/commit/2125799</a><br>
&gt; applied to oe-core, haven&#39;t had a chance to submit it yet, but it =
looked to<br>
&gt; me like an accidental loss of the stderr capture/suppression when the<=
br>
&gt; metadata_scm functions were reworked recently.<br>
<br>
</span>I already sent a patch for this, it hasn&#39;t been applied yet:<br>
<br>
<a href=3D"http://patchwork.openembedded.org/patch/107081/" rel=3D"noreferr=
er" target=3D"_blank">http://patchwork.openembedded.org/patch/107081/</a></=
blockquote><div><br></div><div>Ah, excellent. Thanks.</div></div>-- <br><di=
v class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot co=
m<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>S=
enior Software Engineer, Mentor Graphics</div>
</div></div>

--e89a8f23457521cd230524c05b2a--
