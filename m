Return-Path: <peachj@lexmark.com>
Received: from exprod8og109.obsmtp.com (exprod8og109.obsmtp.com [64.18.3.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C109BE014A9
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 11:18:20 -0800 (PST)
Received: from mail-yh0-f70.google.com ([209.85.213.70]) (using TLSv1) by
	exprod8ob109.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUTjn+0UYAY4wQVZJtF1m0XShCVNpsDWR@postini.com;
	Thu, 07 Mar 2013 11:18:20 PST
Received: by mail-yh0-f70.google.com with SMTP id z20so1172909yhz.9
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 11:18:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=61eB1tMpqq6NykdU/WLWQvhfTDLr3Pc7hBo2Yf/psR4=;
	b=lNk4erj77svvGuD/pxYngCfDzY0WUhxydwI0TOvWmwRQgktBXgTe/xtYTwGY6l2m0D
	AkeBqNQXplUVPNKaSBDzczgn1nOyv8dgntVQXjiskaOQL++9gRCUOeqcG5yrVklp2P9C
	M81VVosXjloAyEik70DcOncE75oOWwfnIRfS64rOLAcCkviQdQxhVOhHCkKY07bkPkuB
	9CcdBE99YXYF3aYwYuMNU2qPaIIr1Lk4jv02bQgMQsUIL3FtBbKLABSoVbZljORYwnAB
	R8TBwgwhHv78EEmenismOPPWaVLUaM/RggsDuplJLchrxwU23CViJvDwBptHR1MrB5rI
	/6ig==
X-Received: by 10.224.27.77 with SMTP id h13mr52429466qac.23.1362683498871;
	Thu, 07 Mar 2013 11:11:38 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.27.77 with SMTP id h13mr52429457qac.23.1362683498802;
	Thu, 07 Mar 2013 11:11:38 -0800 (PST)
Received: by 10.49.47.112 with HTTP; Thu, 7 Mar 2013 11:11:38 -0800 (PST)
In-Reply-To: <CAFyqS9r=myEwXm6tv4cTFVSPUi4fG3eAvmZ0oqKMBDFmV4wBZw@mail.gmail.com>
References: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
	<CAFyqS9r=myEwXm6tv4cTFVSPUi4fG3eAvmZ0oqKMBDFmV4wBZw@mail.gmail.com>
Date: Thu, 7 Mar 2013 14:11:38 -0500
Message-ID: <CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQmfRvxuQqvX/Na4jHPlWQHjeSJJ0PRSNwGwgcQ+G3QqugV3r3bRCp6AT+46p2L2v73WdF7ehV0eE7juyvShR5zmp2Li+DNlvcrMbT2/yLF8j654ojqWPKpNmHzwkq3QR5r//67q8y4YabHuRKasf2jX6Z23Zg==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Thu, 07 Mar 2013 19:18:21 -0000
Content-Type: multipart/alternative; boundary=bcaec51b9fd3e346d604d75a79b0

--bcaec51b9fd3e346d604d75a79b0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hans,

Are you sure you're seeing the patch system use $WORKDIR instead of $S as
the root for patching?  I've had to do a lot of patching in our own layers
recently and I've always seen $S used as the root for the patch.  Are you
explicitly setting S =3D "${WORKDIR}/git"?  That's what we do for our git
recipes.  That's how you get the system to recognize the source somewhere
other than just $WORKDIR.

As for specifying a different -pnum, you absolutely can do that like so:

*SRC_URI +=3D "file://my-change.patch;striplevel=3DX"*

X is the pnum that you want.  Its default value is 1.

You may also find this page useful -- it contains all sorts of hints for
setting up your recipes in a Yocto-standard way:

https://wiki.yoctoproject.org/wiki/Recipe_&_Patch_Style_Guide

That's where I learned about striplevel and the preference for it over the
deprecated pnum parameter.

Kind regards,

Jerrod






On Thu, Mar 7, 2013 at 7:33 AM, Hans Beck=E9rus <hans.beckerus@gmail.com>wr=
ote:

> On Thu, Mar 7, 2013 at 1:12 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>
> wrote:
> > Hi. More problems ;)
> > I have a patch file that needs to be applied to a source tree and the
> > patch file is copied properly to the ${WORKDIR} directory.
> > So far so good. But, the problem with this source tree is that it is
> > not built from the traditional root folder of the repo.
> > This means I need to change ${S} to point somewhere else. This also
> > causes the patch system to fail!
> > I did an override of do_patch() in my .bb and that seems to work, but
> > I do not like to use overrides unless I really have to.
> > So basically, is there some way to tell the built-in patch system to
> > use a different -pnum value?
> > If there is, I could stick with the do_patch() as provided by default.
> >
> > Hans
>
> Hmm, ok a correction from my side. Forget parts of what I said ;)
> The patch system does not seem to use the value of ${S}, it is using
> ${WORKDIR} as the root for patching, this is also where the patch file
> is placed. The problem in my case does not seem to be that is built
> from a non-standard path. The reason why it fails seems to be because
> the actual source is not in ${WORKDIR}, it is in ${WORKDIR}/git. The
> patch file does include git as part of the source path for obvious
> reasons. What am I doing wrong? Having actual source code in
> ${WORKDIR}/git I assume is very common for git based downloads.
>
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec51b9fd3e346d604d75a79b0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hans,<div><br></div><div>Are you sure you&#39;re seeing th=
e patch system use $WORKDIR instead of $S as the root for patching? =A0I&#3=
9;ve had to do a lot of patching in our own layers recently and I&#39;ve al=
ways seen $S used as the root for the patch. =A0Are you explicitly setting =
S =3D &quot;${WORKDIR}/git&quot;? =A0That&#39;s what we do for our git reci=
pes. =A0That&#39;s how you get the system to recognize the source somewhere=
 other than just $WORKDIR.</div>
<div><br></div><div style>As for specifying a different -pnum, you absolute=
ly can do that like so:</div><div style><br></div><div style><i>SRC_URI +=
=3D &quot;file://my-change.patch<b>;striplevel=3DX</b>&quot;</i></div><div =
style>
<br></div><div style>X is the pnum that you want. =A0Its default value is 1=
.</div><div style><br></div><div style>You may also find this page useful -=
- it contains all sorts of hints for setting up your recipes in a Yocto-sta=
ndard way:</div>
<div style><br></div><div style><a href=3D"https://wiki.yoctoproject.org/wi=
ki/Recipe_&amp;_Patch_Style_Guide">https://wiki.yoctoproject.org/wiki/Recip=
e_&amp;_Patch_Style_Guide</a><br></div><div style><br></div><div style>That=
&#39;s where I learned about striplevel and the preference for it over the =
deprecated pnum parameter.</div>
<div style><br></div><div style>Kind regards,</div><div style><br></div><di=
v style>Jerrod</div><div><br></div><div><br></div><div><br></div><div><br><=
/div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On=
 Thu, Mar 7, 2013 at 7:33 AM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a href=
=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmail.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Thu, Mar 7, 2013 at 1:1=
2 PM, Hans Beck=E9rus &lt;<a href=3D"mailto:hans.beckerus@gmail.com">hans.b=
eckerus@gmail.com</a>&gt; wrote:<br>

&gt; Hi. More problems ;)<br>
&gt; I have a patch file that needs to be applied to a source tree and the<=
br>
&gt; patch file is copied properly to the ${WORKDIR} directory.<br>
&gt; So far so good. But, the problem with this source tree is that it is<b=
r>
&gt; not built from the traditional root folder of the repo.<br>
&gt; This means I need to change ${S} to point somewhere else. This also<br=
>
&gt; causes the patch system to fail!<br>
&gt; I did an override of do_patch() in my .bb and that seems to work, but<=
br>
&gt; I do not like to use overrides unless I really have to.<br>
&gt; So basically, is there some way to tell the built-in patch system to<b=
r>
&gt; use a different -pnum value?<br>
&gt; If there is, I could stick with the do_patch() as provided by default.=
<br>
&gt;<br>
&gt; Hans<br>
<br>
</div>Hmm, ok a correction from my side. Forget parts of what I said ;)<br>
The patch system does not seem to use the value of ${S}, it is using<br>
${WORKDIR} as the root for patching, this is also where the patch file<br>
is placed. The problem in my case does not seem to be that is built<br>
from a non-standard path. The reason why it fails seems to be because<br>
the actual source is not in ${WORKDIR}, it is in ${WORKDIR}/git. The<br>
patch file does include git as part of the source path for obvious<br>
reasons. What am I doing wrong? Having actual source code in<br>
${WORKDIR}/git I assume is very common for git based downloads.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Hans<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--bcaec51b9fd3e346d604d75a79b0--
