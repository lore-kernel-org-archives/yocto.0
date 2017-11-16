Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4423E00CE2; Thu, 16 Nov 2017 10:36:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCC48E00AD7
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 10:36:49 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id f134so22993871lfg.8
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 10:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xgu77AohVVgSjpvNPOMLguzkmcBsfjY4QAbDUhbfj5c=;
	b=QFZfWJvSMCydiUEvk3oNwO3WsmR/8bmzBJpXr0LDDtvoLn3pFX6cNVlNFrabSikaAu
	6cOPRkYoGbNAtIaqjUibtKr3y/O6CAr2pYCRiGsMcjd/g4FIg4/80+Bbdu2A6YF982Go
	71LpvWRVm1hGnZv3wB+WdWah/+MJnWxBSYL3k416QbHfjMWCyhZGDzMumOHn1uu8d0yT
	tKZ7s6J53chRU2KZgeGs2AXBqlpSvu5WJa+nPLBtdIl2ALCY/s0EGDsUr6EEileVquR8
	tcZWQSIA5qlJ8rnv7a4FKgbex4wWkfTMvBU7BZaN3zFfV+K+jkkJdT3sKTMJnn4vuTXt
	aOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xgu77AohVVgSjpvNPOMLguzkmcBsfjY4QAbDUhbfj5c=;
	b=MwH69uvnC8+8fye5tdN2cMS8SqlMxxEOCv1wrGQqlDH6dxnr2HgfmYkDgZOdNgn/MP
	jJPrO17D4POt6GifSUdDBlK78uaTGbzJ192VS8xMXRyX7kJQ1MF/XVnb2VwCIUP5ImzC
	JDlh935GBCf7dd0jvI7clFgtQHaRrGC76slMeu3YBBTeoFLBaGJMomIaeAnXedSunt5/
	RsMg1I91CZTPc8/iJzP/bwPL2Gym8U8Q3Ibi/+H8z5hPjJN22N1DcFWz3kyVnBAVdtiy
	I2/UaLMgdUTr/xrpzX5P3h8VKkWSEKlreVT7BDT/3vrLoV9XqUstOWPq9vCzilyUNN5/
	eQ1g==
X-Gm-Message-State: AJaThX4w8SA/mdoUPfugLF6M3zdKJhXOeOXFk7v0r9dC/4Z88wacFdYU
	2uOjmgnd266Jvb1agsi/q3MHpRZuTQWkMUhkY8Q=
X-Google-Smtp-Source: AGs4zMY0qQt+0sD2XCocUnM561neADFij2yNwyL4rIF+uYquwj+d9cMcntCEf+YYzx0txoD0StIQ5tR9SPOhC0e1UF4=
X-Received: by 10.46.0.23 with SMTP id 23mr1425237lja.187.1510857408517; Thu,
	16 Nov 2017 10:36:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKmWj-0jdV2UR3VTsw8w3=98CdH5_x7_e1Equ-GfFn8TzX3OOw@mail.gmail.com>
	<20171116092717.4125ec08@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <20171116092717.4125ec08@lsandov1-mobl2.zpn.intel.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 16 Nov 2017 18:36:38 +0000
Message-ID: <CAKmWj-2JDOKVbVvZyFFT9HbX8fGPV5fEq0=C3LtTc0yKGvJKpg@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Detecting all AUTOREV usages in a build, for reproducible stable production builds.
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
X-List-Received-Date: Thu, 16 Nov 2017 18:36:51 -0000
Content-Type: multipart/alternative; boundary="001a1142c5ee24195c055e1de7e1"

--001a1142c5ee24195c055e1de7e1
Content-Type: text/plain; charset="UTF-8"

That is EXACTLY what I am looking for. Thanks!

A "nice to have" would be a check to see if any AUTOREVs has snuck in since
last srcrev.conf generation. I'd like to validate/ensure this with a build
task on the build server.

On Thu, Nov 16, 2017 at 10:18 AM Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Thu, 16 Nov 2017 05:06:30 -0500
> Paul Knopf <pauldotknopf@gmail.com> wrote:
>
> > I want to store/fix AUTOREV values for production builds. I saw
> > BB_CACHE_POLICY, but the format (sqllite) isn't something that can be
> > checked in.
> >
> > Let's say I have an image:
> >
> > bitbake my-image
> >
> > How do I detect any dependency that is using AUTOREV?
> >
>
>
> would this tool be useful for your needs? I do not fully grasp what you
> want to do.
>
>
> ----
> You can use the buildhistory-collect-srcrevs command with the -a option to
> collect the stored SRCREV values from build history and report them in a
> format suitable for use in global
> configuration (e.g., local.conf or a distro include file) to override
> floating AUTOREV values to a fixed set of revisions. Here is some example
> output from this command:
>
>
>      $ buildhistory-collect-srcrevs -a
>      # i586-poky-linux
>      SRCREV_pn-glibc = "b8079dd0d360648e4e8de48656c5c38972621072"
>      SRCREV_pn-glibc-initial = "b8079dd0d360648e4e8de48656c5c38972621072"
>      SRCREV_pn-opkg-utils = "53274f087565fd45d8452c5367997ba6a682a37a"
>      SRCREV_pn-kmod = "fd56638aed3fe147015bfa10ed4a5f7491303cb4"
>      # x86_64-linux
>      SRCREV_pn-gtk-doc-stub-native =
> "1dea266593edb766d6d898c79451ef193eb17cfa"
>      SRCREV_pn-dtc-native = "65cc4d2748a2c2e6f27f1cf39e07a5dbabd80ebf"
>      SRCREV_pn-update-rc.d-native =
> "eca680ddf28d024954895f59a241a622dd575c11"
>      SRCREV_glibc_pn-cross-localedef-native =
> "b8079dd0d360648e4e8de48656c5c38972621072"
>      SRCREV_localedef_pn-cross-localedef-native =
> "c833367348d39dad7ba018990bfdaffaec8e9ed3"
>      SRCREV_pn-prelink-native = "faa069deec99bf61418d0bab831c83d7c1b797ca"
>      SRCREV_pn-opkg-utils-native =
> "53274f087565fd45d8452c5367997ba6a682a37a"
>      SRCREV_pn-kern-tools-native =
> "23345b8846fe4bd167efdf1bd8a1224b2ba9a5ff"
>      SRCREV_pn-kmod-native = "fd56638aed3fe147015bfa10ed4a5f7491303cb4"
>      # qemux86-poky-linux
>      SRCREV_machine_pn-linux-yocto =
> "38cd560d5022ed2dbd1ab0dca9642e47c98a0aa1"
>      SRCREV_meta_pn-linux-yocto =
> "a227f20eff056e511d504b2e490f3774ab260d6f"
>      # all-poky-linux
>      SRCREV_pn-update-rc.d = "eca680ddf28d024954895f59a241a622dd575c11"
>
> Note
> -----
>
>
>
>
> > I'd like to generate a dynamic.conf file that fixes the SRCREV values for
> > relevant packages.
> >
> > I guess I could do a normal build, then read the sqllite database, and
> > generate a .conf from it. Does this sound feasible?
> >
> > Any other strategies?
>

--001a1142c5ee24195c055e1de7e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That is EXACTLY what I am looking for. Thanks!<div><br></d=
iv><div>A &quot;nice to have&quot; would be a check to see if any AUTOREVs =
has snuck in since last srcrev.conf generation. I&#39;d like to validate/en=
sure this with a build task on the build server.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Thu, Nov 16, 2017 at 10:18 AM Leonardo=
 Sandoval &lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com"=
>leonardo.sandoval.gonzalez@linux.intel.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">On Thu, 16 Nov 2017 05:06:30 -0500<br>
Paul Knopf &lt;<a href=3D"mailto:pauldotknopf@gmail.com" target=3D"_blank">=
pauldotknopf@gmail.com</a>&gt; wrote:<br>
<br>
&gt; I want to store/fix AUTOREV values for production builds. I saw<br>
&gt; BB_CACHE_POLICY, but the format (sqllite) isn&#39;t something that can=
 be<br>
&gt; checked in.<br>
&gt;<br>
&gt; Let&#39;s say I have an image:<br>
&gt;<br>
&gt; bitbake my-image<br>
&gt;<br>
&gt; How do I detect any dependency that is using AUTOREV?<br>
&gt;<br>
<br>
<br>
would this tool be useful for your needs? I do not fully grasp what you wan=
t to do.<br>
<br>
<br>
----<br>
You can use the buildhistory-collect-srcrevs command with the -a option to =
collect the stored SRCREV values from build history and report them in a fo=
rmat suitable for use in global<br>
configuration (e.g., local.conf or a distro include file) to override float=
ing AUTOREV values to a fixed set of revisions. Here is some example output=
 from this command:<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0$ buildhistory-collect-srcrevs -a<br>
=C2=A0 =C2=A0 =C2=A0# i586-poky-linux<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-glibc =3D &quot;b8079dd0d360648e4e8de48656c5c=
38972621072&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-glibc-initial =3D &quot;b8079dd0d360648e4e8de=
48656c5c38972621072&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-opkg-utils =3D &quot;53274f087565fd45d8452c53=
67997ba6a682a37a&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-kmod =3D &quot;fd56638aed3fe147015bfa10ed4a5f=
7491303cb4&quot;<br>
=C2=A0 =C2=A0 =C2=A0# x86_64-linux<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-gtk-doc-stub-native =3D &quot;1dea266593edb76=
6d6d898c79451ef193eb17cfa&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-dtc-native =3D &quot;65cc4d2748a2c2e6f27f1cf3=
9e07a5dbabd80ebf&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-update-rc.d-native =3D &quot;eca680ddf28d0249=
54895f59a241a622dd575c11&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_glibc_pn-cross-localedef-native =3D &quot;b8079d=
d0d360648e4e8de48656c5c38972621072&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_localedef_pn-cross-localedef-native =3D &quot;c8=
33367348d39dad7ba018990bfdaffaec8e9ed3&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-prelink-native =3D &quot;faa069deec99bf61418d=
0bab831c83d7c1b797ca&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-opkg-utils-native =3D &quot;53274f087565fd45d=
8452c5367997ba6a682a37a&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-kern-tools-native =3D &quot;23345b8846fe4bd16=
7efdf1bd8a1224b2ba9a5ff&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-kmod-native =3D &quot;fd56638aed3fe147015bfa1=
0ed4a5f7491303cb4&quot;<br>
=C2=A0 =C2=A0 =C2=A0# qemux86-poky-linux<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_machine_pn-linux-yocto =3D &quot;38cd560d5022ed2=
dbd1ab0dca9642e47c98a0aa1&quot;<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_meta_pn-linux-yocto =3D &quot;a227f20eff056e511d=
504b2e490f3774ab260d6f&quot;<br>
=C2=A0 =C2=A0 =C2=A0# all-poky-linux<br>
=C2=A0 =C2=A0 =C2=A0SRCREV_pn-update-rc.d =3D &quot;eca680ddf28d024954895f5=
9a241a622dd575c11&quot;<br>
<br>
Note<br>
-----<br>
<br>
<br>
<br>
<br>
&gt; I&#39;d like to generate a dynamic.conf file that fixes the SRCREV val=
ues for<br>
&gt; relevant packages.<br>
&gt;<br>
&gt; I guess I could do a normal build, then read the sqllite database, and=
<br>
&gt; generate a .conf from it. Does this sound feasible?<br>
&gt;<br>
&gt; Any other strategies?<br>
</blockquote></div>

--001a1142c5ee24195c055e1de7e1--
