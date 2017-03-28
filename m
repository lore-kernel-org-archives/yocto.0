Return-Path: <ian_welch@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A573EE004E5; Tue, 28 Mar 2017 13:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841E5E003C1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 13:27:23 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id d10so70399149qke.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 13:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=bd4ZM5MhRjSSl+L12/q+WcElQIWGFnvIxBe7O6yhOXU=;
	b=PMKLTP9RT/Tkj6O6pkIzlXmbgMYrNrpnSN3wIIWwZMFUvFb9mXv8zwJUgD4+IUVdvr
	tDxL2s5iztzpbCq8BC6qhUlBfzEcidKbc6ygwvgQLtqWPun5ctd9l6/7R4g2WgwuA/fk
	FjIOJ5Bv85WBmH+6Lp/uPqRJ7egYK/odduCPsPnnEJ1pEbWKpDL0i7Apcbq2UA7k7M+h
	v4jiof/6paf4BSwNuQ9Td6OCDfNuJQ8znk86bjpMMQBjrnYyUFA5yV+9Vu7AclTB5vno
	d9fqVEiyj+KWmyZl/GCVc2qxCTrGakQvbDQqVDiuwu9OUwR9oL6/8hYKKjbiliXfjZja
	CLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bd4ZM5MhRjSSl+L12/q+WcElQIWGFnvIxBe7O6yhOXU=;
	b=t9sGAjjzIu35aJiuYmwoKCIR7N1VOYT27Oexw29cxLgiTnueEUSDmUowxAcCG91OQT
	gXPEVX7AJgnKKaKJdgALnfchNEvR8a36dh5ueOq+OhqXxHDTYB0YC0fNYHjOiB23bGXu
	3/zfX8SsiX7ElOXa3sANCT8aH3pHycuHwezPJbWMZaBmN2Ioqspds3gjPvmzorWrfpUT
	yTn8QXQjrnbj8ojKFBno4FVWHY2PY6hcmhjSGO5y6KkzkSQMtzPA0zAHewsF2CO/ChTK
	8eeXrURb0GIqo+q0FU0PPourOVwPKukKPTXlP6TXZZO3+OebO6eWa9Tt+GH8dVj96QOw
	xFCw==
X-Gm-Message-State: AFeK/H0J54EMlW7tCRbPJkCzFiJrR4c9LbY71sjh+DHEkIZaJA6LXI2oequfiUQarUzvsZkCgIe1Z3LOvQVDj0nm
X-Received: by 10.55.180.70 with SMTP id d67mr28799687qkf.280.1490732842288;
	Tue, 28 Mar 2017 13:27:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.143.10 with HTTP; Tue, 28 Mar 2017 13:27:01 -0700 (PDT)
From: Ian Welch <ian_welch@trimble.com>
Date: Tue, 28 Mar 2017 14:27:01 -0600
Message-ID: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using ${SRCVP} in PR of BB file
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
X-List-Received-Date: Tue, 28 Mar 2017 20:27:27 -0000
Content-Type: multipart/alternative; boundary=94eb2c0608d485a160054bd049b5

--94eb2c0608d485a160054bd049b5
Content-Type: text/plain; charset=UTF-8

Hello,
      We are preparing to move to PRservice in Yocto to handle auto rolling
our revisions on every build. As an interim step we are doing some
reordering or our current PR and PV parameters in our bitbake files. Our
current syntax is as follows and works as expected

----BB File----
SRC_URI =
"git://myrepo.git;branch=mybranch;subpath=Linux/bcastforwd;destsuffix=Linux/bcastforwd;protocol=ssh"
SRCREV = "${AUTOREV}"
PV = "1.1"
PR = "r0"
PV_append = "+git${SRCPV}"

----Output from build----

bcastforwd_1.0-r0git0+afc68d4a00_arm926ejste.ipk



When we change git${SRCPV} to append to the PR we get "AUTOINC" in place of
the revision number

----BB File----
"git://myrepo.git;branch=mybranch;subpath=Linux/bcastforwd;destsuffix=Linux/bcastforwd;protocol=ssh"
SRCREV = "${AUTOREV}"
PV = "1.1"
PR = "r0"
PR_append = "+git${SRCPV}"

----ipk Output from build----

bcastforwd_1.0-r0gitAUTOINC+afc68d4a00_arm926ejste.ipk


I took a look at the package.bbclass file which appears to be the
magic sauce for searching and replacing the "AUTOINC" string but
nothing jumped out at me as to why this would work for PV but not PR.


Is it possible to support AUTOREV on PR?



Thanks,
     Ian Welch
     Trimble Inc.

--94eb2c0608d485a160054bd049b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>=C2=A0 =C2=A0 =C2=A0 We are preparing to move t=
o PRservice in Yocto to handle auto rolling our revisions on every build. A=
s an interim step we are doing some reordering or our current PR and PV par=
ameters in our bitbake files. Our current syntax is as follows and works as=
 expected</div><div><br></div><div>----BB File----</div><div>SRC_URI =3D &q=
uot;git://myrepo.git;branch=3Dmybranch;subpath=3DLinux/bcastforwd;destsuffi=
x=3DLinux/bcastforwd;protocol=3Dssh&quot;<br></div><div><div>SRCREV =3D &qu=
ot;${AUTOREV}&quot;</div><div>PV =3D &quot;1.1&quot;</div><div>PR =3D &quot=
;r0&quot;</div><div>PV_append =3D &quot;+git${SRCPV}&quot;</div><div><br></=
div><div>----Output from build----<br></div><div><pre class=3D"gmail-consol=
e-output" style=3D"box-sizing:border-box;white-space:pre-wrap;word-wrap:bre=
ak-word;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-size:15px=
">bcastforwd_1.0-r0git0+afc68d4a00_arm926ejste.ipk</pre></div><div><br></di=
v><div><br></div><div>When we change git${SRCPV} to append to the PR we get=
 &quot;AUTOINC&quot; in place of the revision number</div><div><br></div><d=
iv><div>----BB File----</div><div><div><div>&quot;git://myrepo.git;branch=
=3Dmybranch;subpath=3DLinux/bcastforwd;destsuffix=3DLinux/bcastforwd;protoc=
ol=3Dssh&quot;<br></div><div></div></div><div>SRCREV =3D &quot;${AUTOREV}&q=
uot;</div><div>PV =3D &quot;1.1&quot;</div><div>PR =3D &quot;r0&quot;</div>=
<div>PR_append =3D &quot;+git${SRCPV}&quot;</div><div><br></div><div>----ip=
k Output from build----</div></div></div><div><pre class=3D"gmail-console-o=
utput" style=3D"box-sizing:border-box;white-space:pre-wrap;word-wrap:break-=
word;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-size:15px">b=
castforwd_1.0-r0gitAUTOINC+afc68d4a00_arm926ejste.ipk</pre><pre class=3D"gm=
ail-console-output" style=3D"box-sizing:border-box;white-space:pre-wrap;wor=
d-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font=
-size:15px"><br></pre><pre class=3D"gmail-console-output" style=3D"box-sizi=
ng:border-box;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;marg=
in-bottom:0px;color:rgb(51,51,51);font-size:15px">I took a look at the pack=
age.bbclass file which appears to be the magic sauce for searching and repl=
acing the &quot;AUTOINC&quot; string but nothing jumped out at me as to why=
 this would work for PV but not PR.</pre><pre class=3D"gmail-console-output=
" style=3D"box-sizing:border-box;white-space:pre-wrap;word-wrap:break-word;=
margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-size:15px"><br></=
pre><pre class=3D"gmail-console-output" style=3D"box-sizing:border-box;whit=
e-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;colo=
r:rgb(51,51,51);font-size:15px">Is it possible to support AUTOREV on PR?</p=
re></div><div><br></div><div><br></div><div>Thanks,</div><div>=C2=A0 =C2=A0=
 =C2=A0Ian Welch</div><div>=C2=A0 =C2=A0 =C2=A0Trimble Inc.=C2=A0</div>
</div></div>

--94eb2c0608d485a160054bd049b5--
