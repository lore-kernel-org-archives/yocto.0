Return-Path: <srifenbark@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36CBDE013C2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:08:21 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so37449obb.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=hpe90qE29fPYBXiF/vyHW0jF9LPtQYqolhrl8QZ6iQ4=;
	b=eAjYYGZcXXiWn9CWM1bx1NxLNo17HM42LO54mpJbjWfODR1w8M829J3XVPuWJm5gYe
	iiOaNzNAZLrSgCQ85+MORRuC1JT14gIepNmPK5NlaPgqwerXUhOJEmQMegYfWqplgJNK
	KczyrIm74u/nMTw42GtsJhOTFKTOsnvJdivX7XG0k1rrmHTUP2vHd/QEhjzWiNEOJccw
	mVazwlHSYygb/DGkyUJq9f5E1aVq9oDTqBJSooFvapavnCAzl0CSpyx+Ju+/oR9mDg5k
	+r9A1CsWNOwdN01TTMGbIhBA90M+moY3C6Af6fZ377fwcIFOB20IpBpZqp8d0PgZl0zm
	yL4Q==
MIME-Version: 1.0
Received: by 10.182.51.9 with SMTP id g9mr34481145obo.56.1333058900555; Thu,
	29 Mar 2012 15:08:20 -0700 (PDT)
Received: by 10.182.46.230 with HTTP; Thu, 29 Mar 2012 15:08:20 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123794517710E@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123794517710E@ORSMSX101.amr.corp.intel.com>
Date: Thu, 29 Mar 2012 16:08:20 -0600
Message-ID: <CAFNP8OsNioeAyr_siBh22j8XpS5T3_XOQh=emx1S9E71woWt-Q@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
To: Richard Purdie <richard.purdie@intel.com>, rudolf.streif@linux.com, 
	yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 30 Mar 2012 09:48:42 -0700
Subject: Re: FW: tentative list of vars to be dropped from variable glossary
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 22:08:21 -0000
Content-Type: multipart/alternative; boundary=f46d044473af3b77d104bc68f6e1

--f46d044473af3b77d104bc68f6e1
Content-Type: text/plain; charset=ISO-8859-1

See chapter 4 of the dev manual (
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html) for
this adjustment.

Scott

On Thu, Mar 29, 2012 at 7:32 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>
>
> -----Original Message-----
> From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
> Sent: Thursday, March 29, 2012 6:48 AM
> To: Rudolf Streif; Rifenbark, Scott M
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] tentative list of vars to be dropped from variable
> glossary
>
> On Mon, 2012-03-26 at 16:50 -0700, Rudolf Streif wrote:
> > Thanks, Richard. Clearer now but not entirely.
> >
> >
> >
> >         >> BBMASK removes recipes from being parsed. It does not
> >         remove them from
> >         >> images although that would I guess be an indirect result
> >         since you could
> >         >>no longer build them.
> >
> >
> > Yes, it removes it from being parsed. I used, for test although not
> > sensible, BBMASK = "base-passwd". If I then tried building
> > core-image-minimal it fails with "Nothing provides base-passwd". If
> > one could use BBMASK to customize images as suggested
> > in
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-customimage-localconfthen one would expect the package to be removed indirectly from the image.
> However, that does not happen, the build just fails.
>
> I hadn't realised Scott had added this to the customising images section
> of the manual. This is not what its designed for and we need to move
> this to somewhere less confusing.
>
> Scott: This is going to need to move somewhere else in the manual as
> this is confusing. I'm going to suggest a 4.12 section "Other tips and
> tricks" which says:
>
> """
> Sometimes there are groups of recipes you might wish to filter out. If
> there were recipes you know you're never going to want/use, removing
> them from parsing would speed up parts of the build for example.
>
> It is possible to filter or mask out both .bb and .bbappend files. You
> can do this by providing an expression with the BBMASK variable. Here is
> an example:
>
>     BBMASK = ".*/meta-mymachine/recipes-maybe/"
>
> Here, all .bb and .bbappend files in the directory that matches the
> expression are ignored during the build process.
> """
>
> Cheers,
>
> Richard
>
>
>
>

--f46d044473af3b77d104bc68f6e1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

See chapter 4 of the dev manual (<a href=3D"http://www.yoctoproject.org/doc=
s/latest/dev-manual/dev-manual.html">http://www.yoctoproject.org/docs/lates=
t/dev-manual/dev-manual.html</a>) for this adjustment.<br><br>Scott<br><br>
<div class=3D"gmail_quote">On Thu, Mar 29, 2012 at 7:32 AM, Rifenbark, Scot=
t M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">sc=
ott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
<br>
<br>
-----Original Message-----<br>
From: Richard Purdie [mailto:<a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a>]<br>
Sent: Thursday, March 29, 2012 6:48 AM<br>
To: Rudolf Streif; Rifenbark, Scott M<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] tentative list of vars to be dropped from variable glo=
ssary<br>
<br>
On Mon, 2012-03-26 at 16:50 -0700, Rudolf Streif wrote:<br>
&gt; Thanks, Richard. Clearer now but not entirely.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt;&gt; BBMASK removes recipes from being parsed. It =
does not<br>
&gt; =A0 =A0 =A0 =A0 remove them from<br>
&gt; =A0 =A0 =A0 =A0 &gt;&gt; images although that would I guess be an indi=
rect result<br>
&gt; =A0 =A0 =A0 =A0 since you could<br>
&gt; =A0 =A0 =A0 =A0 &gt;&gt;no longer build them.<br>
&gt;<br>
&gt;<br>
&gt; Yes, it removes it from being parsed. I used, for test although not<br=
>
&gt; sensible, BBMASK =3D &quot;base-passwd&quot;. If I then tried building=
<br>
&gt; core-image-minimal it fails with &quot;Nothing provides base-passwd&qu=
ot;. If<br>
&gt; one could use BBMASK to customize images as suggested<br>
&gt; in <a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-m=
anual.html#usingpoky-extend-customimage-localconf" target=3D"_blank">http:/=
/www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-exte=
nd-customimage-localconf</a> then one would expect the package to be remove=
d indirectly from the image. However, that does not happen, the build just =
fails.<br>

<br>
I hadn&#39;t realised Scott had added this to the customising images sectio=
n<br>
of the manual. This is not what its designed for and we need to move<br>
this to somewhere less confusing.<br>
<br>
Scott: This is going to need to move somewhere else in the manual as<br>
this is confusing. I&#39;m going to suggest a 4.12 section &quot;Other tips=
 and<br>
tricks&quot; which says:<br>
<br>
&quot;&quot;&quot;<br>
Sometimes there are groups of recipes you might wish to filter out. If<br>
there were recipes you know you&#39;re never going to want/use, removing<br=
>
them from parsing would speed up parts of the build for example.<br>
<br>
It is possible to filter or mask out both .bb and .bbappend files. You<br>
can do this by providing an expression with the BBMASK variable. Here is<br=
>
an example:<br>
<br>
 =A0 =A0 BBMASK =3D &quot;.*/meta-mymachine/recipes-maybe/&quot;<br>
<br>
Here, all .bb and .bbappend files in the directory that matches the<br>
expression are ignored during the build process.<br>
&quot;&quot;&quot;<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
</blockquote></div><br>

--f46d044473af3b77d104bc68f6e1--
