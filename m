Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DCE2E00BBC; Sat,  1 Jul 2017 00:48:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D24E00BB3
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 00:48:42 -0700 (PDT)
Received: by mail-yb0-f174.google.com with SMTP id 84so44092525ybe.0
	for <yocto@yoctoproject.org>; Sat, 01 Jul 2017 00:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dkYGhJ+bfuFDUePZh/wL03ESyoVdUUirEcCRDwlNdHU=;
	b=jT89fPAxWekPxWPOKtqCNJ2NOCHlriRrVAEFQ5p3ftAiVh71jziwxwnsE8u/XxXiS9
	vTkLLKmPXP7PrbpkK86ph9hOFwfgGZbI/MHDfD2naZqoCqLppn7DpHuOkgB0WSMSgk9A
	wipJQt+b2qFhsAS4zaPw1yPmwbk1bun0imXDnv4TI7rJvcILdCarsTZJr/6HrGJ/45fD
	5TA/YOS5LybAj9a4kv2Mv3DZ8gbco3zBjexsBqh42QTL7ADxKiEAIsapABhh4j8KhP8V
	0qCichrrdrq5qGmAVP8hN7ErQkI97A54A13C9OJF7N1+IVrIqYkluttAh5TESlBKChbK
	uBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dkYGhJ+bfuFDUePZh/wL03ESyoVdUUirEcCRDwlNdHU=;
	b=jyHjwkK0+qcMC1k/T32dO4eQ/0zG362qIV7FTiYpmoZi3a0wPb8WH1X/azDKwXACyM
	NH7kabDmCM1NgqRJUdQklu2W6A9MgJDZ9545/dwn3PgUlIhQuCONhGc7wRM+csU55cyD
	xjqE50TE2VXgd0khuRhU0jkmtkAk64PXur/VUA9fDi2qCVDEejtB+TD61tUoqBaDU8Kw
	nYLt/SByuSho1b0QKoClRGR2Zh5qCUA9kd9VageCdYutioGvS2+uBbkVKbbOc5qXRjwU
	WYBR9JM5lM2NFfCh0nQTHxdiHIqPrZHjE0g9RBde1SXQMnEr17a5AJNXcIc6fuagmf1K
	fKwg==
X-Gm-Message-State: AKS2vOy8MOxwzkpMdbdql8y/TLywtianVQXdEKJ9GM5Gk7vKQbEx+0AX
	Tw1GCO8sOSzceMu8dKRmlIv+BnXBN3yY
X-Received: by 10.37.74.67 with SMTP id x64mr18900117yba.69.1498895322255;
	Sat, 01 Jul 2017 00:48:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.181.204 with HTTP; Sat, 1 Jul 2017 00:48:41 -0700 (PDT)
In-Reply-To: <1498816090789.97105@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sat, 1 Jul 2017 09:48:41 +0200
Message-ID: <CA+chaQcS17v-sPc9Prhu0JTf_TNTRXBEDxnwzZ6eTFC0aYSEJw@mail.gmail.com>
To: Michael Ho <Michael.Ho@bmw-carit.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Sat, 01 Jul 2017 07:48:46 -0000
Content-Type: multipart/alternative; boundary="001a113e70b43d17f405533cc337"

--001a113e70b43d17f405533cc337
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I haven't tried the patches, but I really like this idea (I was suggesting
something like that since 2011
http://permalink.gmane.org/gmane.comp.handhelds.openembedded.core/10327)
and I'm glad you weren't discouraged attempting to do this.

It also implements 3) b) idea from
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5970 , you might be
interested read that ticket.

Thanks

On Fri, Jun 30, 2017 at 11:48 AM, Michael Ho <Michael.Ho@bmw-carit.de>
wrote:

> Hi, at BMW Car IT we are working on an experimental feature to improve
> sstate
> cache hits and we are looking for comments on the approach who might have
> some
> insights to the problem and seeing if anyone is interested in the feature
> for
> mainline.
>
> The sstate-cache of a recipe is tied closely to its build dependencies, a=
s
> the
> signature generated for a task includes all parent task's signatures as
> part of
> the signature information. This means that when changes occur in the pare=
nt
> recipes, even if insignificant, all children recipes that have valid ssta=
te
> cache must invalidate their sstate cache objects.
>
> What this patchset does is propose to add another optional variable to
> recipes,
> CDEPENDS, which acts like DEPENDS for all RunQueue purposes but for
> signature
> generation it excludes any parent tasks that come from dependencies liste=
d
> in
> it. This is to break the signature change domino effect.
>
> This patchset also proposes modifying RunQueue to then be able to run a
> compatibility checker during task execution phase for recipes and tasks
> that use
> CDEPENDS and allow for deciding to re-execute a task despite being covere=
d
> by
> sstate-cache.
>
> The patchset is based on the jethro branch for the poky repository, as
> this is
> the branch that we are using.  If the general idea sounds good, we can
> consider
> porting it to master.
>
> Included is an patch that adds an example recipe and compatibility checke=
r,
> where compatibility is based on the file checksums of the parent recipes
> packages. An example recipe, cdepends-test1, generates a compatibility
> report
> containing the file checksums of all files that it packages and which fil=
e
> paths
> they are at. Another recipe, cdepends-test2, can then strip this
> compatibility
> report to the minimal files it needs to be consistent and can compare the
> latest
> checksums it used to configure/compile/install with and if they have
> changed,
> trigger a rebuild. If not, the previous version restored from sstate-cach=
e
> is
> used.
>
> We are still experimenting with the usages of this, including the use of
> having
> abi-compliance-checker to compare the ABI of shared libraries as a
> compatibility
> checker during RunQueue and using the results to avoid rebuilding child
> recipes
> when the .so files they depend on are still compatible. Example use cases
> of
> this are allowing recipes which provide multiple shared libraries to
> change a
> single .so file without rebuilding all its children that depend on the
> other
> shared libraries but not the one that changed.
>
> We're aware of the SIGGEN_EXCLUDERECIPES_ABISAFE feature but feel it
> didn't meet
> the feature requirements of what this compatibility checker callback is
> doing,
> although maybe when porting to master we could refactor to make better us=
e
> of
> the work already done there. The current implementation is a bit hacky bu=
t
> comments would be appreciated in regards to if the concept is feasible an=
d
> if
> people are interested in making use of it and their use cases.
>
> Kind regards,
> Michael Ho
>
> --
> BMW Car IT GmbH
> Michael Ho
> Spezialist Entwicklung - Linux Software Integration
> Lise-Meitner-Str. 14
> 89081 Ulm
>
> Tel.: +49 731 3780 4071
> Mobil: +49 152 5498 0471
> Fax: +49-731-37804-001
> Mail: michael.ho@bmw-carit.de
> Web: http://www.bmw-carit.de
> --------------------------------------------------------
> BMW Car IT GmbH
> Gech=C3=A4ftsf=C3=BChrer: Kai-Uwe Balszuweit und Alexis Trolin
> Sitz und Registergericht: M=C3=BCnchen HRB 134810
> --------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113e70b43d17f405533cc337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I haven&#39;t tried the patches, but I really like this id=
ea (I was suggesting something like that since 2011 <a href=3D"http://perma=
link.gmane.org/gmane.comp.handhelds.openembedded.core/10327">http://permali=
nk.gmane.org/gmane.comp.handhelds.openembedded.core/10327</a>) and I&#39;m =
glad you weren&#39;t discouraged attempting to do this.<div><br></div><div>=
It also implements 3) b) idea from=C2=A0<a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D5970">https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D5970</a> , you might be interested read that ticket.</div><div><=
br></div><div>Thanks</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Jun 30, 2017 at 11:48 AM, Michael Ho <span dir=3D"=
ltr">&lt;<a href=3D"mailto:Michael.Ho@bmw-carit.de" target=3D"_blank">Micha=
el.Ho@bmw-carit.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Hi, at BMW Car IT we are working on an experimental feature to improve ssta=
te<br>
cache hits and we are looking for comments on the approach who might have s=
ome<br>
insights to the problem and seeing if anyone is interested in the feature f=
or<br>
mainline.<br>
<br>
The sstate-cache of a recipe is tied closely to its build dependencies, as =
the<br>
signature generated for a task includes all parent task&#39;s signatures as=
 part of<br>
the signature information. This means that when changes occur in the parent=
<br>
recipes, even if insignificant, all children recipes that have valid sstate=
<br>
cache must invalidate their sstate cache objects.<br>
<br>
What this patchset does is propose to add another optional variable to reci=
pes,<br>
CDEPENDS, which acts like DEPENDS for all RunQueue purposes but for signatu=
re<br>
generation it excludes any parent tasks that come from dependencies listed =
in<br>
it. This is to break the signature change domino effect.<br>
<br>
This patchset also proposes modifying RunQueue to then be able to run a<br>
compatibility checker during task execution phase for recipes and tasks tha=
t use<br>
CDEPENDS and allow for deciding to re-execute a task despite being covered =
by<br>
sstate-cache.<br>
<br>
The patchset is based on the jethro branch for the poky repository, as this=
 is<br>
the branch that we are using.=C2=A0 If the general idea sounds good, we can=
 consider<br>
porting it to master.<br>
<br>
Included is an patch that adds an example recipe and compatibility checker,=
<br>
where compatibility is based on the file checksums of the parent recipes<br=
>
packages. An example recipe, cdepends-test1, generates a compatibility repo=
rt<br>
containing the file checksums of all files that it packages and which file =
paths<br>
they are at. Another recipe, cdepends-test2, can then strip this compatibil=
ity<br>
report to the minimal files it needs to be consistent and can compare the l=
atest<br>
checksums it used to configure/compile/install with and if they have change=
d,<br>
trigger a rebuild. If not, the previous version restored from sstate-cache =
is<br>
used.<br>
<br>
We are still experimenting with the usages of this, including the use of ha=
ving<br>
abi-compliance-checker to compare the ABI of shared libraries as a compatib=
ility<br>
checker during RunQueue and using the results to avoid rebuilding child rec=
ipes<br>
when the .so files they depend on are still compatible. Example use cases o=
f<br>
this are allowing recipes which provide multiple shared libraries to change=
 a<br>
single .so file without rebuilding all its children that depend on the othe=
r<br>
shared libraries but not the one that changed.<br>
<br>
We&#39;re aware of the SIGGEN_EXCLUDERECIPES_ABISAFE feature but feel it di=
dn&#39;t meet<br>
the feature requirements of what this compatibility checker callback is doi=
ng,<br>
although maybe when porting to master we could refactor to make better use =
of<br>
the work already done there. The current implementation is a bit hacky but<=
br>
comments would be appreciated in regards to if the concept is feasible and =
if<br>
people are interested in making use of it and their use cases.<br>
<br>
Kind regards,<br>
Michael Ho<br>
<br>
--<br>
BMW Car IT GmbH<br>
Michael Ho<br>
Spezialist Entwicklung - Linux Software Integration<br>
Lise-Meitner-Str. 14<br>
89081 Ulm<br>
<br>
Tel.: <a href=3D"tel:%2B49%20731%203780%204071" value=3D"+4973137804071">+4=
9 731 3780 4071</a><br>
Mobil: <a href=3D"tel:%2B49%20152%205498%200471" value=3D"+4915254980471">+=
49 152 5498 0471</a><br>
Fax: <a href=3D"tel:%2B49-731-37804-001" value=3D"+4973137804001">+49-731-3=
7804-001</a><br>
Mail: <a href=3D"mailto:michael.ho@bmw-carit.de">michael.ho@bmw-carit.de</a=
><br>
Web: <a href=3D"http://www.bmw-carit.de" rel=3D"noreferrer" target=3D"_blan=
k">http://www.bmw-carit.de</a><br>
------------------------------<wbr>--------------------------<br>
BMW Car IT GmbH<br>
Gech=C3=A4ftsf=C3=BChrer: Kai-Uwe Balszuweit und Alexis Trolin<br>
Sitz und Registergericht: M=C3=BCnchen HRB 134810<br>
------------------------------<wbr>--------------------------<br>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113e70b43d17f405533cc337--
