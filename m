Return-Path: <randy.mort@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 279AFE00CE1; Sun,  9 Oct 2016 15:11:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (randy.mort[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0BDE0074B
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 15:11:26 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id o19so4541419ito.3
	for <yocto@yoctoproject.org>; Sun, 09 Oct 2016 15:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=Wwx8PIVc1G6IahpJSg7srVJCy7dM8mwe+TUaoLg1cys=;
	b=gYUIsaaUURzeBjkk1TQBsb7yD2RJNZrBMiu0H6r5lzTWMKgOKxx5HRCXr63L50on0h
	rR23YqVaKJTmTG24keUFp1m05COVscX/Jy+VCy6aesKChd5/yILp6g1lEAqBMOZYy4oQ
	gkt6WswVb8M2GRmI/v6txMwxIT+iNHK7yadD0i7UXyzJJrOTb83xqbB1vhp6xEHV6Eza
	m0Eaj0UkA5QzCJZXDrJkdTaxwwdQVfjIukz3dsBaS4xcWw/JJ035jJAwuY4DH/QI28So
	ByD2awGWa8itPSWuoozJN2YjilqVmiZRm0AVx1N+/XE57doTFDrYGydc0Z76oPg+g+Oe
	GgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Wwx8PIVc1G6IahpJSg7srVJCy7dM8mwe+TUaoLg1cys=;
	b=BeDqNxTNlU5DcFiETIeIe85VDTPyHKWnsOOqIkmBfyotS/2wgCC4h/EtObBVC++TaO
	nnjlCUZTTdMlOA7tGapv33B4Yx8OOhca4mGXo9+S+XrUN7eRdl2LhTqykb3Qlcq6q6L8
	+EvtVm1+m0aPsO+KcYB/kTvdq4RD14riZxfRu5mVag2YYY7OuxL15Y+wuazihrkITemx
	sV7zkGDbzeoEGVZWuwnG7GNvwBcr62qXA04YGf52lCS4CiZyMZDnVmap8EKtGbZ4m3y9
	E7EzfV8EMMN1JNZQ+Xu6D0AuXXmCtf/HLaMCky9GM+rJlbwl/BG3XDSxovTYm1uj8V9P
	guTg==
X-Gm-Message-State: AA6/9RlaSUdcgus2yIC4659HYb9v91iIrHaWdDdievKx7voqg2ug2e0QNoBy7yrlGOlLiA==
X-Received: by 10.36.95.80 with SMTP id r77mr7191436itb.92.1476051086114;
	Sun, 09 Oct 2016 15:11:26 -0700 (PDT)
Received: from [192.168.0.17] (S0106f0f249854203.ss.shawcable.net.
	[174.2.14.158]) by smtp.gmail.com with ESMTPSA id
	g11sm6756585ioi.12.2016.10.09.15.11.24
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 09 Oct 2016 15:11:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Randy Mortensen <randy.mort@gmail.com>
In-Reply-To: <CAMKF1sp0Q0Qfzf4HWEDGkQ7KOT9mktmXDmS29WvJcMXkpk2-TQ@mail.gmail.com>
Date: Sun, 9 Oct 2016 16:11:23 -0600
Message-Id: <9E4D4DCE-E701-4770-B606-C6280C62C6B0@gmail.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
	<A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
	<0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
	<C0308C46-B222-46A6-BF18-90D853C7B627@sierrawireless.com>
	<A7265EA8-CB91-4D1B-987B-6FE4EBE52417@gmail.com>
	<FB4B6E4F-AA20-4156-958E-EB1C80F3726D@gmail.com>
	<4BCD9DA4-5C88-4A54-A0A6-01C8BC565283@gmail.com>
	<CAMKF1sp0Q0Qfzf4HWEDGkQ7KOT9mktmXDmS29WvJcMXkpk2-TQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Sun, 09 Oct 2016 22:11:30 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5A7848D8-67FA-44FF-9D2C-E18BFB4EF187"

--Apple-Mail=_5A7848D8-67FA-44FF-9D2C-E18BFB4EF187
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 7, 2016, at 5:21 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Fri, Oct 7, 2016 at 4:14 PM, Randy Mortensen <randy.mort@gmail.com> =
wrote:
>>=20
>> On Oct 6, 2016, at 8:35 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>>=20
>> On Oct 6, 2016, at 7:07 PM, Randy Mortensen <randy.mort@gmail.com> =
wrote:
>>=20
>>=20
>> On Oct 5, 2016, at 7:14 PM, Darcy Watkins =
<dwatkins@sierrawireless.com>
>> wrote:
>>=20
>>=20
>>=20
>> On Oct 5, 2016, at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>> On Oct 5, 2016, at 4:45 PM, Randy Mortensen =
<randym@stratagemsystems.com>
>> wrote:
>>=20
>> On Oct 5, 2016, at 5:04 PM, Darcy Watkins =
<dwatkins@sierrawireless.com>
>> wrote:
>>=20
>> =46rom what I gleaned from recent discussions of fetcher errors, this =
is
>> somehow connected with rollout of Python related security fixes to =
various
>> Linux distributions and/or some ...-native recipes.
>>=20
>> It was a bunch of tar balls that are named as mercurial hashes from =
within
>> iced tea rather than the yocto fetch. I worked around it by grabbing =
the
>> tarballs from a different checkout since I didn't have time to dig =
into it.
>>=20
>> It affected a fresh checkout I was building from scratch.
>>=20
>> Thanks for the response. This also happened to me when trying to =
build from
>> scratch.
>> For my clarification, did you already have the tar balls downloaded =
or were
>> you able to download them from a previous (icedtea) commit somehow?
>>=20
>>=20
>> I had the tar balls in a different build that I had around for some =
time.
>> The reason I never cached these ones in a shared location on our =
server was
>> I felt that tar balls with small hashes as filenames was too prone to
>> collisions, especially without a package name as a prefix.  I don't =
know if
>> that is a convention of iced tea, or how the fetcher handles =
mercurial.
>>=20
>> Can you check if the tarballs have been rebuilt upstream ? if so we =
should
>> try to find out what changed.
>> It could also be an oversight that a recipe update forgot or updated =
the
>> checksums wrongly. but we should try to root cause it
>>=20
>>=20
>> I agree here.  We should root cause it.
>>=20
>>=20
>> I=E2=80=99m not sure how this is all supposed to work, but I managed =
to get past the
>> fetch failures by changing the md5sum and sha256sum checksums in
>> icedtea7-native_2.1.3.bb.
>> I used the the checksums helpfully suggested by bitbake when it =
reported the
>> errors.
>>=20
>> I compared one of the problematic tar balls with a =E2=80=9Cgood=E2=80=9D=
 one from a
>> previous download and the only change I could identify was 3 extra =
lines
>> added to a hidden file .hgtag  (which I presume maps a tag to a =
commit). Not
>> sure why requesting the same hg commit results in a different tarball
>> output.
>>=20
>>=20
>> could it be that its generating the tarballs from mercurial directly =
and
>> thats flawed somehow ?
>>=20
>> That seems likely but I don=E2=80=99t know how to fix that.
>>=20
>> I also don=E2=80=99t understand why the configure task fails after =
the fetch task
>> successfully downloads the tarballs.
>>=20
>>=20
>>=20
>> Now however iced tea fails to configure due to checksum errors. The
>> configure task seems to re-download each tarball and check the =
sha256sum
>> which is failing.
>>=20
>=20
> I wonder if this failure will still happen again when it rebuilds the
> tarball internally. I have
> a hunch that might happen again
Probably.
I did manage a workaround by implementing two changes. One was to =
override all the SRC_URI md5sum and sha256sum values from a =
recipes-core/icedtea/icedtea7-native_2.1.3.bbappend file.
The other was to add a patch to fix the checksums listed in =
icedtea-2.1.3/Makefile.am by adding a patch file to the SRC_URI in the =
same bbappend file.
(Apparently the old (erroneous) checksums are baked-into Makefile.am.)


>=20
>> I=E2=80=99m not sure where to go from here to try and resolve so any =
more help is
>> welcome.
>>=20
>>=20


--Apple-Mail=_5A7848D8-67FA-44FF-9D2C-E18BFB4EF187
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 7, 2016, at 5:21 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">On Fri, Oct 7, 2016 at 4:14 PM, Randy Mortensen &lt;<a =
href=3D"mailto:randy.mort@gmail.com" =
class=3D"">randy.mort@gmail.com</a>&gt; wrote:<br class=3D""><blockquote =
type=3D"cite" class=3D""><br class=3D"">On Oct 6, 2016, at 8:35 PM, Khem =
Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D"">On Oct 6, 2016, at 7:07 PM, Randy Mortensen =
&lt;<a href=3D"mailto:randy.mort@gmail.com" =
class=3D"">randy.mort@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D"">On Oct 5, 2016, at 7:14 PM, Darcy Watkins =
&lt;<a href=3D"mailto:dwatkins@sierrawireless.com" =
class=3D"">dwatkins@sierrawireless.com</a>&gt;<br class=3D"">wrote:<br =
class=3D""><br class=3D""><br class=3D""><br class=3D"">On Oct 5, 2016, =
at 4:52 PM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">On Oct 5, 2016, at 4:45 PM, Randy Mortensen &lt;<a =
href=3D"mailto:randym@stratagemsystems.com" =
class=3D"">randym@stratagemsystems.com</a>&gt;<br class=3D"">wrote:<br =
class=3D""><br class=3D"">On Oct 5, 2016, at 5:04 PM, Darcy Watkins =
&lt;<a href=3D"mailto:dwatkins@sierrawireless.com" =
class=3D"">dwatkins@sierrawireless.com</a>&gt;<br class=3D"">wrote:<br =
class=3D""><br class=3D"">=46rom what I gleaned from recent discussions =
of fetcher errors, this is<br class=3D"">somehow connected with rollout =
of Python related security fixes to various<br class=3D"">Linux =
distributions and/or some ...-native recipes.<br class=3D""><br =
class=3D"">It was a bunch of tar balls that are named as mercurial =
hashes from within<br class=3D"">iced tea rather than the yocto fetch. I =
worked around it by grabbing the<br class=3D"">tarballs from a different =
checkout since I didn't have time to dig into it.<br class=3D""><br =
class=3D"">It affected a fresh checkout I was building from scratch.<br =
class=3D""><br class=3D"">Thanks for the response. This also happened to =
me when trying to build from<br class=3D"">scratch.<br class=3D"">For my =
clarification, did you already have the tar balls downloaded or were<br =
class=3D"">you able to download them from a previous (icedtea) commit =
somehow?<br class=3D""><br class=3D""><br class=3D"">I had the tar balls =
in a different build that I had around for some time.<br class=3D"">The =
reason I never cached these ones in a shared location on our server =
was<br class=3D"">I felt that tar balls with small hashes as filenames =
was too prone to<br class=3D"">collisions, especially without a package =
name as a prefix. &nbsp;I don't know if<br class=3D"">that is a =
convention of iced tea, or how the fetcher handles mercurial.<br =
class=3D""><br class=3D"">Can you check if the tarballs have been =
rebuilt upstream ? if so we should<br class=3D"">try to find out what =
changed.<br class=3D"">It could also be an oversight that a recipe =
update forgot or updated the<br class=3D"">checksums wrongly. but we =
should try to root cause it<br class=3D""><br class=3D""><br class=3D"">I =
agree here. &nbsp;We should root cause it.<br class=3D""><br =
class=3D""><br class=3D"">I=E2=80=99m not sure how this is all supposed =
to work, but I managed to get past the<br class=3D"">fetch failures by =
changing the md5sum and sha256sum checksums in<br =
class=3D"">icedtea7-native_2.1.3.bb.<br class=3D"">I used the the =
checksums helpfully suggested by bitbake when it reported the<br =
class=3D"">errors.<br class=3D""><br class=3D"">I compared one of the =
problematic tar balls with a =E2=80=9Cgood=E2=80=9D one from a<br =
class=3D"">previous download and the only change I could identify was 3 =
extra lines<br class=3D"">added to a hidden file .hgtag &nbsp;(which I =
presume maps a tag to a commit). Not<br class=3D"">sure why requesting =
the same hg commit results in a different tarball<br class=3D"">output.<br=
 class=3D""><br class=3D""><br class=3D"">could it be that its =
generating the tarballs from mercurial directly and<br class=3D"">thats =
flawed somehow ?<br class=3D""><br class=3D"">That seems likely but I =
don=E2=80=99t know how to fix that.<br class=3D""><br class=3D"">I also =
don=E2=80=99t understand why the configure task fails after the fetch =
task<br class=3D"">successfully downloads the tarballs.<br class=3D""><br =
class=3D""><br class=3D""><br class=3D"">Now however iced tea fails to =
configure due to checksum errors. The<br class=3D"">configure task seems =
to re-download each tarball and check the sha256sum<br class=3D"">which =
is failing.<br class=3D""><br class=3D""></blockquote><br class=3D"">I =
wonder if this failure will still happen again when it rebuilds the<br =
class=3D"">tarball internally. I have<br class=3D"">a hunch that might =
happen again<br class=3D""></div></div></blockquote>Probably.</div><div>I =
did manage a workaround by implementing two changes. One was to override =
all the SRC_URI md5sum and sha256sum values from a =
recipes-core/icedtea/icedtea7-native_2.1.3.bbappend file.</div><div>The =
other was to add a patch to fix the checksums listed in =
icedtea-2.1.3/Makefile.am by adding a patch file to the SRC_URI in the =
same bbappend file.</div><div>(Apparently the old (erroneous) checksums =
are baked-into Makefile.am.)</div><div><br class=3D""><h1 style=3D"color: =
rgb(51, 51, 51); font-size: 16px; font-weight: 400; line-height: 1.875; =
margin: 0px; padding: 0px 0px 0px 10px; border-left-width: 1px; =
border-left-style: solid; border-left-color: rgb(204, 204, 204); =
display: table-cell; font-family: Arial, sans-serif;" class=3D""><br =
class=3D""></h1><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">I=E2=80=99m=
 not sure where to go from here to try and resolve so any more help =
is<br class=3D"">welcome.<br class=3D""><br class=3D""><br =
class=3D""></blockquote></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_5A7848D8-67FA-44FF-9D2C-E18BFB4EF187--
