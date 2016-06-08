Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00911E00CCC; Wed,  8 Jun 2016 01:58:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E37E00927
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 01:58:29 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id p22so707701qka.2
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2016 01:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RnNnCvIrG3YsmkPMjigpwDDtugu7gfn8EvI4XNW7dcA=;
	b=b+Q9jy0W/aVDSVr+5cEnG0zSqCEve6sSNA09ZNZ2rhIindy2iScfHK56dueOBCROSy
	m6eVt/g5AwHXeC3+bGnMpmdaPCFiPmSLY54X065UO+tODMzDM6mzrI/a6i4Ly2dcqkzv
	gVvb7K7WbGhWLauLKZw4j5anKbY2+4G2yIUNYdzmwOc/jYLVuTsM9qP6syxB1dtDQMuS
	bxzdpWScCjwkq0Uolzo94d9belrgHGTOTjdns85Dz43RBy+HSxXt9XWMHJcI5g/Itb6z
	eQKQXXOKt8YQvOYmVrEi3oBLZM0sYX0odGxi6+bwB4IeRlDVu3fmXXgm2hmJ2EDOrfGc
	GpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RnNnCvIrG3YsmkPMjigpwDDtugu7gfn8EvI4XNW7dcA=;
	b=R1PyHOn696tqHfmsanKN4QM1H1jYIiUqaidt2dtMxKel9bDYxLu4RwvmI903YBPwbW
	6OTgiHWGfSTtrzrsaswp5WOMO8fC2be3a7JCz0jxjkGLQrNGrDjH9IQwcJvLT3AXCnWF
	THRJp2nryIPU7fECTsSt+Dn/ft2omqPzRLNiDSiKs2kVnLGy402m90p9kGIpKEJorvBM
	lWWKFXrlMy46yeLZZb9DiLbnU1YrdtwAqSiSPUTNvIHrj5DoinXiPbhV4NDle2vteknh
	O4hXqloCUoGc5U3LjsLRywwyHtk11w5T7GPz144CLqB+tZkBec/DSSkAAI3TV5ZtPdZN
	t7/g==
X-Gm-Message-State: ALyK8tJgLAA1XbI6AZTjodnWfLaAarcFrKq/jnnjog137SIpgIk3GHF/sMuYq1hXu4+J4euO6fDoLnNn7xBBvw==
X-Received: by 10.55.40.68 with SMTP id o65mr3248733qkh.201.1465376309325;
	Wed, 08 Jun 2016 01:58:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.36 with HTTP; Wed, 8 Jun 2016 01:58:28 -0700 (PDT)
In-Reply-To: <6693315.UnGygSzkB8@peggleto-mobl.ger.corp.intel.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<1857108.OcXCc2mBxV@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoF=KA=wmKu=+Zd6UOaQ=waZQgjvCQz=z8h+QtUgbYXoiTA@mail.gmail.com>
	<6693315.UnGygSzkB8@peggleto-mobl.ger.corp.intel.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Wed, 8 Jun 2016 11:58:28 +0300
Message-ID: <CAEeWubL6=JcOBLbFdHmuikXuAvryCECnVHJ7fx5J2oShhnU7FA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Wed, 08 Jun 2016 08:58:33 -0000
Content-Type: multipart/alternative; boundary=001a1141c04e6136100534c0822d

--001a1141c04e6136100534c0822d
Content-Type: text/plain; charset=UTF-8

Hi, Edward.
Your approach is valid. But RREPLACES is not enough.

You should define that your package and original ones are conflicting and
that it provides the same as original one for other packages.

So in your recipe:

RPROVIDES_${PN} = "sysvinit-inittab"
RREPLACES_${PN} = "sysvinit-inittab"
RCONFLICTS_${PN} = "sysvinit-inittab"

Thanks,
Oleksandr Poznyak!


On Wed, Jun 8, 2016 at 2:23 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Tue, 07 Jun 2016 16:07:26 Edward Wingate wrote:
> > On Tue, Jun 7, 2016 at 1:47 PM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > So what this will give you is alternative packages to be installed
> instead
> > > of sysvinit-inittab in your image.
> >
> > I was under the (mistaken) impression that my recipe will run in
> > addition to, not instead of, sysvinit-inittab (occurring after it and
> > overwriting its inittab with my custom version).
>
> The recipe will build in addition to sysvinit-inittab yes, but do_install
> for
> that recipe is just assembling the files ready for packaging - it doesn't
> directly install files into the image. When it comes time to assemble the
> image, all that is being done when you distil it down is that we install a
> bunch of packages.
>
> > > Have you verified (by way of the image manifest written next to the
> image
> > > file) that this package is actually being installed?
> >
> > The manifest shows both sysvinit-inittab and my package being
> > installed in the image, but sysvinit-inittab's inittab apparently
> > takes precedence over mine.
>
> Hmm, that is strange, because as they install the same file they ought to
> conflict. Perhaps as suggested elsewhere in this thread this is a bug (or
> at
> least undesirable behaviour) in rpm.
>
> > > What steps have you taken to ensure that it does get installed in
> > > preference to sysvinit-inittab?
> >
> > None, due to my mistaken impression.  After investigating your kind
> > inference with help of Yocto manual, I replaced in my recipe:
> > DEPENDS += " sysvinit-inittab"
> > with:
> > RREPLACES_${PN} = "sysvinit-inittab"
> >
> > and it appears to be working now.  I've been using Yocto for a year
> > now, but still feel like I'm barely scratching the surface of it.  I
> > tend to get things to work by floundering about, so even though it
> > does works, I would appreciate knowing if this was the most proper
> > course of action.  Thanks!
>
> I guess here you are getting into functionality that is not very
> well-defined,
> and you're also dealing with behaviour of the package manager rather than
> the
> build system itself (though I appreciate the lines are blurred from usage
> perspective). I guess it would help though if we would document a working
> procedure to do this kind of thing as it does come up from time to time.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a1141c04e6136100534c0822d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Edward.<br>Your approach is valid. But RREPLACES is no=
t enough.<br><br>You should define that your package and original ones are =
conflicting and that it provides the same as original one for other package=
s.<br><br>So in your recipe:<br><br>RPROVIDES_${PN} =3D &quot;sysvinit-init=
tab&quot;<br>RREPLACES_${PN} =3D &quot;sysvinit-inittab&quot;<br>RCONFLICTS=
_${PN} =3D &quot;sysvinit-inittab&quot;<br><br>Thanks,<br>Oleksandr Poznyak=
!<div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Wed, Jun 8, 2016 at 2:23 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggle=
ton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Tue, 07 Jun 2016 16:07:26 Edward Wingate wrote:<br>
&gt; On Tue, Jun 7, 2016 at 1:47 PM, Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt; wrote:<br>
&gt; &gt; So what this will give you is alternative packages to be installe=
d instead<br>
&gt; &gt; of sysvinit-inittab in your image.<br>
&gt;<br>
&gt; I was under the (mistaken) impression that my recipe will run in<br>
&gt; addition to, not instead of, sysvinit-inittab (occurring after it and<=
br>
&gt; overwriting its inittab with my custom version).<br>
<br>
</span>The recipe will build in addition to sysvinit-inittab yes, but do_in=
stall for<br>
that recipe is just assembling the files ready for packaging - it doesn&#39=
;t<br>
directly install files into the image. When it comes time to assemble the<b=
r>
image, all that is being done when you distil it down is that we install a<=
br>
bunch of packages.<br>
<span class=3D""><br>
&gt; &gt; Have you verified (by way of the image manifest written next to t=
he image<br>
&gt; &gt; file) that this package is actually being installed?<br>
&gt;<br>
&gt; The manifest shows both sysvinit-inittab and my package being<br>
&gt; installed in the image, but sysvinit-inittab&#39;s inittab apparently<=
br>
&gt; takes precedence over mine.<br>
<br>
</span>Hmm, that is strange, because as they install the same file they oug=
ht to<br>
conflict. Perhaps as suggested elsewhere in this thread this is a bug (or a=
t<br>
least undesirable behaviour) in rpm.<br>
<span class=3D""><br>
&gt; &gt; What steps have you taken to ensure that it does get installed in=
<br>
&gt; &gt; preference to sysvinit-inittab?<br>
&gt;<br>
&gt; None, due to my mistaken impression.=C2=A0 After investigating your ki=
nd<br>
&gt; inference with help of Yocto manual, I replaced in my recipe:<br>
&gt; DEPENDS +=3D &quot; sysvinit-inittab&quot;<br>
&gt; with:<br>
&gt; RREPLACES_${PN} =3D &quot;sysvinit-inittab&quot;<br>
&gt;<br>
&gt; and it appears to be working now.=C2=A0 I&#39;ve been using Yocto for =
a year<br>
&gt; now, but still feel like I&#39;m barely scratching the surface of it.=
=C2=A0 I<br>
&gt; tend to get things to work by floundering about, so even though it<br>
&gt; does works, I would appreciate knowing if this was the most proper<br>
&gt; course of action.=C2=A0 Thanks!<br>
<br>
</span>I guess here you are getting into functionality that is not very wel=
l-defined,<br>
and you&#39;re also dealing with behaviour of the package manager rather th=
an the<br>
build system itself (though I appreciate the lines are blurred from usage<b=
r>
perspective). I guess it would help though if we would document a working<b=
r>
procedure to do this kind of thing as it does come up from time to time.<br=
>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a1141c04e6136100534c0822d--
