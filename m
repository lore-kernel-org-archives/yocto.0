Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DD32E0049D; Tue, 10 Jan 2017 07:40:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35BE5E0034A
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 07:40:21 -0800 (PST)
Received: by mail-oi0-f49.google.com with SMTP id 3so550450462oih.1
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 07:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uBIISKiCLda+Hi1/vjCXvL1TIAR/84bd3y9NJQMieC0=;
	b=JBWnsWNLyd4YAKUoPVvK0FWp2gy+ktx3b7r8znSXK1osn/p2uavdnwlI5Gxz9CtnN2
	Uy2VMmgaxgdkGVXUTM0Xnm7rZ2KJXETBzFn1bnjlsrKmooWQqd2loUbsIBZnKWQ0wwzJ
	gIXFQaIS9wrSRI3I2bDvO5ti06IRYxRq+NRLGs4y0x0CxZvVcTEmRoYlHmFZQUWHJE2U
	z8bYXF/O5uYDIIrZgoU3tjiBm2/vDLoFGZ0qMQi/i/95nZZALw4B1mpEHGFG+CKHZuxh
	1OdLILqmxp6/jlwAvYRw2QUK1NL/+hMg9xl2KppH6kos37aBCRGOBzU0v96R5KpFjM7a
	g8sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uBIISKiCLda+Hi1/vjCXvL1TIAR/84bd3y9NJQMieC0=;
	b=bhOiti/LTO0iBWB2IoiE8Tp2vXyYiskHM3M5VU6AH5d/XXUxsIxAmky+ggVu+Ybt0q
	bdTB7qehoiIUNn1LSUuEg5kvto7R9N4STDbCuSCoIaHsGqfCmOxIIISY0/FNaCPDheCo
	a5jvQe+hH2/VXzzOq7BON/xkEJ8no8oD5O+uVvwk66HRokYS+x4BNahU0TBQR+Rs30oe
	L6TVxyf0OistqA0OH9BWRDgjdCMyI0UEqR2R+C7JjxJfLvE057XnG+SPLCJtdvCpkSMh
	8VcqvGL/mB953UuPcPA5pPAjEtgRcCRtyzzh3Qunj4wfTNrkXjYJeeaG1ch26ubMmY+1
	IbMw==
X-Gm-Message-State: AIkVDXJMqlZdLLp1P4ivJG6LjYyMNPssv9vQmb9hXInEuKOIRbZmlQ7eVQUuF3gvIuqUDse1UJqBeFoJlcX1Qg==
X-Received: by 10.157.13.166 with SMTP id 35mr1925238ots.140.1484062820762;
	Tue, 10 Jan 2017 07:40:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.1.71 with HTTP; Tue, 10 Jan 2017 07:40:20 -0800 (PST)
In-Reply-To: <20170110144821.GC8258@mentor.com>
References: <20170110144821.GC8258@mentor.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Tue, 10 Jan 2017 21:10:20 +0530
Message-ID: <CALwQErqYtkpFUAf3DKYuRBYC2n9bY23zCuyE3WFWC3K-orWqMw@mail.gmail.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Cc: yocto@yoctoproject.org, Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux] What's the point of refpolicy-minimum?
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
X-List-Received-Date: Tue, 10 Jan 2017 15:40:24 -0000
Content-Type: multipart/alternative; boundary=94eb2c033158418b2d0545bf4dbb

--94eb2c033158418b2d0545bf4dbb
Content-Type: text/plain; charset=UTF-8

Hi Joe,


On Tue, Jan 10, 2017 at 8:18 PM, Joe MacDonald <Joe_MacDonald@mentor.com>
wrote:
>
> Wenzong / Shrikant,
>
> I thought I knew the answer to the above question, and maybe my
> understanding is still correct, but I think I need to ask it now anyway.
>
> I don't use refpolicy-minimum for anything, so when I did the updates to
> refpolicy*_git I didn't even glance at refpolicy-minimum_git.  Wenzong's
> change to refpolicy-minimum_2.20161023 (in the same thread as the uprev
> of the recipe) piqued my curiosity, so I had a look.  Of course,
> refpolicy-minimum_git.bb also needs to be updated (or thrown out), but
> now that I'm looking at the recipe I see what seems like conflicting
> statements in the recipe:
>
>    recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb:
>
>      1 include refpolicy-targeted_${PV}.bb
>      2
>      3 SUMMARY = "SELinux minimum policy"
>      4 DESCRIPTION = "\
>      5 This is a minimum reference policy with just core policy modules,
and \
>      6 could be used as a base for customizing targeted policy. \
>      7 Pretty much everything runs as initrc_t or unconfined_t so all of
the \
>      8 domains are unconfined. \
>      9 "
>
> and:
>
>    recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb:
>
>      1 SUMMARY = "SELinux targeted policy"
>      2 DESCRIPTION = "\
>      3 This is the targeted variant of the SELinux reference policy.
Most service \
>      4 domains are locked down. Users and admins will login in with
unconfined_t \
>      5 domain, so they have the same access to the system as if SELinux
was not \
>      6 enabled. \
>      7 "
>
> So now I'm trying to understand what the point of refpolicy-minimum
> really is here.  Those of you who are using it, what are you using it
> for and what do you expect would be the correct behaviour of a system
> running that policy?

recently used refpolicy-minimum, as it provides protection/security for
minimum modules
and reaming things with unconfined, the minimum coverage(modules) of policy
easy to start on
& cross check the prepared infrastructure against the expected selinux
behavior.

Also it is easy to patch for systemd compared to other policies. Till
refpolicy v20151208 release
we have refpolicy-minimum working with systemd as init manager.
regarding the latest release need to check.

But moving ahead similar policy with minimum modules can be used..

>
> At the very least, I'm going to remove the 'include [...].bb' from both
> 'minimum' recipes, as that's completely incorrect, but when I do that I
> want to know what anyone using this recipe wants to see from it, so
> whatever the 'include' gets replaced with is doing the right thing
> (which isn't necessarily what it's doing today).

agree..
>
> --
> -Joe MacDonald.
> :wq
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Thanks
Shrikant

--94eb2c033158418b2d0545bf4dbb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br>Hi Joe,<br><br></div><div><div><br>On Tue, Jan 10=
, 2017 at 8:18 PM, Joe MacDonald &lt;<a href=3D"mailto:Joe_MacDonald@mentor=
.com">Joe_MacDonald@mentor.com</a>&gt; wrote:<br>&gt;<br>&gt; Wenzong / Shr=
ikant,<br>&gt;<br>&gt; I thought I knew the answer to the above question, a=
nd maybe my<br>&gt; understanding is still correct, but I think I need to a=
sk it now anyway.<br>&gt;<br>&gt; I don&#39;t use refpolicy-minimum for any=
thing, so when I did the updates to<br>&gt; refpolicy*_git I didn&#39;t eve=
n glance at refpolicy-minimum_git.=C2=A0 Wenzong&#39;s<br>&gt; change to re=
fpolicy-minimum_2.20161023 (in the same thread as the uprev<br>&gt; of the =
recipe) piqued my curiosity, so I had a look.=C2=A0 Of course,<br>&gt; <a h=
ref=3D"http://refpolicy-minimum_git.bb">refpolicy-minimum_git.bb</a> also n=
eeds to be updated (or thrown out), but<br>&gt; now that I&#39;m looking at=
 the recipe I see what seems like conflicting<br>&gt; statements in the rec=
ipe:<br>&gt;<br>&gt; =C2=A0 =C2=A0recipes-security/refpolicy/<a href=3D"htt=
p://refpolicy-minimum_2.20161023.bb">refpolicy-minimum_2.20161023.bb</a>:<b=
r>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A01 include refpolicy-targeted_${PV}.bb<br=
>&gt; =C2=A0 =C2=A0 =C2=A02<br>&gt; =C2=A0 =C2=A0 =C2=A03 SUMMARY =3D &quot=
;SELinux minimum policy&quot;<br>&gt; =C2=A0 =C2=A0 =C2=A04 DESCRIPTION =3D=
 &quot;\<br>&gt; =C2=A0 =C2=A0 =C2=A05 This is a minimum reference policy w=
ith just core policy modules, and \<br>&gt; =C2=A0 =C2=A0 =C2=A06 could be =
used as a base for customizing targeted policy. \<br>&gt; =C2=A0 =C2=A0 =C2=
=A07 Pretty much everything runs as initrc_t or unconfined_t so all of the =
\<br>&gt; =C2=A0 =C2=A0 =C2=A08 domains are unconfined. \<br>&gt; =C2=A0 =
=C2=A0 =C2=A09 &quot;<br>&gt;<br>&gt; and:<br>&gt;<br>&gt; =C2=A0 =C2=A0rec=
ipes-security/refpolicy/<a href=3D"http://refpolicy-targeted_2.20161023.bb"=
>refpolicy-targeted_2.20161023.bb</a>:<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0=
1 SUMMARY =3D &quot;SELinux targeted policy&quot;<br>&gt; =C2=A0 =C2=A0 =C2=
=A02 DESCRIPTION =3D &quot;\<br>&gt; =C2=A0 =C2=A0 =C2=A03 This is the targ=
eted variant of the SELinux reference policy.=C2=A0 Most service \<br>&gt; =
=C2=A0 =C2=A0 =C2=A04 domains are locked down. Users and admins will login =
in with unconfined_t \<br>&gt; =C2=A0 =C2=A0 =C2=A05 domain, so they have t=
he same access to the system as if SELinux was not \<br>&gt; =C2=A0 =C2=A0 =
=C2=A06 enabled. \<br>&gt; =C2=A0 =C2=A0 =C2=A07 &quot;<br>&gt;<br>&gt; So =
now I&#39;m trying to understand what the point of refpolicy-minimum<br>&gt=
; really is here.=C2=A0 Those of you who are using it, what are you using i=
t<br>&gt; for and what do you expect would be the correct behaviour of a sy=
stem<br>&gt; running that policy?<br><br></div><div>recently used refpolicy=
-minimum, as it provides protection/security for minimum modules <br>and re=
aming things with unconfined, the minimum coverage(modules) of policy easy =
to start on <br>&amp; cross check the prepared infrastructure against the e=
xpected selinux behavior.<br></div><div><br></div><div>Also it is easy to p=
atch for systemd compared to other policies. Till refpolicy  v20151208 rele=
ase <br>we have refpolicy-minimum working with systemd as init manager. <br=
>regarding the latest release need to check.<br><br></div><div>But moving a=
head similar policy with minimum modules can be used.. <br></div><div>=C2=
=A0<br></div><div>&gt;<br>&gt; At the very least, I&#39;m going to remove t=
he &#39;include [...].bb&#39; from both<br>&gt; &#39;minimum&#39; recipes, =
as that&#39;s completely incorrect, but when I do that I<br>&gt; want to kn=
ow what anyone using this recipe wants to see from it, so<br>&gt; whatever =
the &#39;include&#39; gets replaced with is doing the right thing<br>&gt; (=
which isn&#39;t necessarily what it&#39;s doing today).<br><br></div><div>a=
gree..<br></div><div>&gt;<br>&gt; --<br>&gt; -Joe MacDonald.<br>&gt; :wq<br=
>&gt;<br>&gt; --<br>&gt; _______________________________________________<br=
>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">=
yocto@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.or=
g/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;=
<br><br></div><div>Thanks<br></div><div>Shrikant<br></div></div></div>

--94eb2c033158418b2d0545bf4dbb--
