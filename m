Return-Path: <peachj@lexmark.com>
Received: from exprod8og102.obsmtp.com (exprod8og102.obsmtp.com [64.18.3.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E91E0144E
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 05:22:44 -0800 (PST)
Received: from mail-yh0-f72.google.com ([209.85.213.72]) (using TLSv1) by
	exprod8ob102.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUMnWo4my6S25xqCNq1ZFI7mB5H9AZhH3@postini.com;
	Thu, 13 Dec 2012 05:22:44 PST
Received: by mail-yh0-f72.google.com with SMTP id q46so2579251yhf.11
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 05:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=uue9pssancctbLdomIA4yBGqB3Hty8WMgLxeEzJX3uw=;
	b=btCKUWINJnmRDr85LDy0ttf0FfJDrUxKt0voAq0gTw61IGsm/yuBUUic9di0RRm4br
	IwloPD4Qf1gg/mOZEky5krBEIqBDLLfIzIJb6X2FT0skSaMU9C1y4iLLYP0welXUX1z1
	LpyFfWrDZ9L8OTMLm3Io6rnp1Jyt2OOdKT+Nl1CWJTfEy7Va4Q8pHye1SJ930Fi8Ii45
	ua5zoZlp5m5UfB0ga/W1xHnmpuSqyZyydA2S7mplY0kYa6YKMWWLyfMkGdF2yYlCKbHj
	A3TuEEKMCwCsgKPPVNxhjFDmC5arW++60sKXs+M0ZJyOScXPBxnnjGml37or0HqaSP7W
	QQpA==
Received: by 10.224.189.137 with SMTP id de9mr937624qab.87.1355404962806;
	Thu, 13 Dec 2012 05:22:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.189.137 with SMTP id de9mr937616qab.87.1355404962565; Thu,
	13 Dec 2012 05:22:42 -0800 (PST)
Received: by 10.49.50.97 with HTTP; Thu, 13 Dec 2012 05:22:42 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212121507090.13855@oneiric>
References: <alpine.DEB.2.02.1212121507090.13855@oneiric>
Date: Thu, 13 Dec 2012 08:22:42 -0500
Message-ID: <CA+QkY1DypOEx4e48Xb0vYwf=S34qXP_2whuzKBng8v0WUF5A6A@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQlHsHZ4Wyi/j0N8eU5R4kjZ7NIzo1SVY2WTZaJwl6vnL38aOFS9T1gjGLvZfV5tNPAVIBPtGuiiEq3+hGcQoYEYApJVzZWwOfFeEU8qRvKKsjgBZh8mPwjjGuCHOGXiGNoP63xBkRUiQ7V4rbppwRI+fixhiw==
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SRC_URI and appending and a "style guide"?
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
X-List-Received-Date: Thu, 13 Dec 2012 13:22:44 -0000
Content-Type: multipart/alternative; boundary=20cf300fafc5520cb904d0bbcf10

--20cf300fafc5520cb904d0bbcf10
Content-Type: text/plain; charset=ISO-8859-1

Robert,

For the specific topic of SRC_URI += vs. SRC_URI_append, I personally
prefer the former over the latter, but I'm not an expert by any means.

As for the topic of a style guide, such a thing already exists on the Wiki:
https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide.  That
would be the obvious place to put such a recommendation, if that is indeed
the consensus.

Kind regards,

Jerrod


On Wed, Dec 12, 2012 at 3:12 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   it's a pedantry-laden day today so i'm going to continue to whine
> about aesthetics.  what about a yocto style guide for coding style
> recommendations?  for example, consider the variations:
>
> poky/meta/recipes-support/libcroco/libcroco_0.6.3.bb:SRC_URI_append = "
> file://croco.patch;apply=yes \
> poky/meta/recipes-support/attr/ea-acl.inc:SRC_URI +=
> "file://relative-libdir.patch;striplevel=0 \
> poky/meta/recipes-support/db/db_5.3.15.bb:SRC_URI +=
> "file://arm-thumb-mutex_db5.patch;patchdir=.."
> poky/meta/recipes-sato/leafpad/leafpad_0.8.18.1.bb:SRC_URI_append_poky =
> " file://owl-menu.patch;apply=yes "
> poky/meta/recipes-sato/puzzles/oh-puzzles_git.bb:SRC_URI_append_poky = "
> file://oh-puzzles-owl-menu.patch;striplevel=0 "
>
>   in the above, you have three different variations for appending to
> SRC_URI.  i don't think it would be clear to a reader if there was any
> difference between "+=" and "_append", other than that "_append"
> forces you to add the space yourself while "+=" doesn't.  of course,
> "_append_poky" is self-explanatory.
>
>   so is there a *preferred* form for things like that?  is it written
> down somewhere?  should it be?  just because it works for perl doesn't
> always mean that "there's more than one way to do it" is a good idea.
> :-)
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf300fafc5520cb904d0bbcf10
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Robert,</div><div><br></div>For the specific topic of SRC_URI +=3D vs.=
 SRC_URI_append, I personally prefer the former over the latter, but I&#39;=
m not an expert by any means.<div><br></div><div>As for the topic of a styl=
e guide, such a thing already exists on the Wiki:=A0<a href=3D"https://wiki=
.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide">https://wiki.yoctoproj=
ect.org/wiki/Recipe_%26_Patch_Style_Guide</a>. =A0That would be the obvious=
 place to put such a recommendation, if that is indeed the consensus.</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div><div=
 class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Dec 12, 2=
012 at 3:12 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rp=
jday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
=A0 it&#39;s a pedantry-laden day today so i&#39;m going to continue to whi=
ne<br>
about aesthetics. =A0what about a yocto style guide for coding style<br>
recommendations? =A0for example, consider the variations:<br>
<br>
poky/meta/recipes-support/libcroco/libcroco_0.6.3.bb:SRC_URI_append =3D &qu=
ot; file://croco.patch;apply=3Dyes \<br>
poky/meta/recipes-support/attr/ea-acl.inc:SRC_URI +=3D &quot;file://relativ=
e-libdir.patch;striplevel=3D0 \<br>
poky/meta/recipes-support/db/db_5.3.15.bb:SRC_URI +=3D &quot;file://arm-thu=
mb-mutex_db5.patch;patchdir=3D..&quot;<br>
poky/meta/recipes-sato/leafpad/leafpad_0.8.18.1.bb:SRC_URI_append_poky =3D =
&quot; file://owl-menu.patch;apply=3Dyes &quot;<br>
poky/meta/recipes-sato/puzzles/oh-puzzles_git.bb:SRC_URI_append_poky =3D &q=
uot; file://oh-puzzles-owl-menu.patch;striplevel=3D0 &quot;<br>
<br>
=A0 in the above, you have three different variations for appending to<br>
SRC_URI. =A0i don&#39;t think it would be clear to a reader if there was an=
y<br>
difference between &quot;+=3D&quot; and &quot;_append&quot;, other than tha=
t &quot;_append&quot;<br>
forces you to add the space yourself while &quot;+=3D&quot; doesn&#39;t. =
=A0of course,<br>
&quot;_append_poky&quot; is self-explanatory.<br>
<br>
=A0 so is there a *preferred* form for things like that? =A0is it written<b=
r>
down somewhere? =A0should it be? =A0just because it works for perl doesn&#3=
9;t<br>
always mean that &quot;there&#39;s more than one way to do it&quot; is a go=
od idea.<br>
:-)<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--20cf300fafc5520cb904d0bbcf10--
