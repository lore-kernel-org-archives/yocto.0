Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE060E0070F; Thu, 14 Jan 2016 09:58:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46BE0E00444
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:58:47 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id yy13so287741562pab.3
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=wA3w6B0X9hYxvLppSThBrvKzRmDzAL9IQfHNYiRTY2U=;
	b=jaCtxPzpmVuTqWwOi8rAJxosJc0Qni3d2z3tkznNpzEuTn0qwS9ISA3/m20zv6OqV3
	S9hxazdFTLR9Mp8s284eLSt6ErwOGFwp26NnLIfBxulUJDhGhIYkGtPdk4vwrq5oX+q0
	0+PoouRSj09PHd7GuQjLeQ13XVtAbiivtm1LueY5SreExszf1Ht3/t9mNr/ddByD0mFC
	TZQ1k63v1++9Q3ts79FCxKdmk+9SDR+rfiF6G5KBJOdKtxdHZRUQ+m3xcU6NJLexJ+nA
	yHfLNX1DpXTG3SKYEyri90VF+9zRMSJz2mDDmVbnTpw25RoXvJkzjkpajJqw62s58XmD
	k28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=wA3w6B0X9hYxvLppSThBrvKzRmDzAL9IQfHNYiRTY2U=;
	b=TEXe6wZ2h6h9exfv+tSCPLwfWpgTKIxolCWDlLpL9ec4eGPTJYAuRHOyMkM2N76P9U
	pS1jQnquRak1CeV10z5ZzH1hqL6mAmx1+o8p7rn3Hp8PLSN1+YabKt4RW3/SDJPmz4qc
	Wkvi0e+8u2rUAIjFchhWVg3Yluhgo57Gsw6LPEhuLUF2E9DhNnrhL1XfCEFiRz+MvkFa
	hDbLS3LTbCh2F2OdMUa+42erlODjuIFQcnEdOVVBZgn+kfkc6mguSk0LH12bkPYFfOI0
	J55W9p2hZfOnQ6siBw5Wu9M7nvIq3BMHZVJhFVWpzNYQmw9SIxTgB1PhtavI0pVYZcQW
	gzuA==
X-Gm-Message-State: ALoCoQmco1/znttwNrZoDyBI7AgRaRFyR12VoUY4ZNxeMYnwZemdxJP6NEyDJqTqXZwRDUlDm4YxC5kUZO23tucsVmvMEnYp5Q==
X-Received: by 10.66.55.39 with SMTP id o7mr7829705pap.13.1452794326685;
	Thu, 14 Jan 2016 09:58:46 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:4c4c:5f92:7d4d:1d28?
	([2601:646:8802:5d5c:4c4c:5f92:7d4d:1d28])
	by smtp.gmail.com with ESMTPSA id
	p70sm10650517pfi.96.2016.01.14.09.58.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jan 2016 09:58:45 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
Date: Thu, 14 Jan 2016 09:58:41 -0800
Message-Id: <8D4D97E3-90AA-4930-900D-252E245B9164@gmail.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package naming "exceptions" in Yocto
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
X-List-Received-Date: Thu, 14 Jan 2016 17:58:50 -0000
X-Groupsio-MsgNum: 27996
Content-Type: multipart/signed;
	boundary="Apple-Mail=_ACD02DB2-C50B-448A-9658-004653CB4549";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_ACD02DB2-C50B-448A-9658-004653CB4549
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9D2B3E5B-0412-448E-9CBC-BC95CFC60052"

--Apple-Mail=_9D2B3E5B-0412-448E-9CBC-BC95CFC60052
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Elena

> On Jan 13, 2016, at 11:43 PM, Reshetova, Elena =
<elena.reshetova@intel.com> wrote:
>=20
> Hi,
>=20
> I have a small question about =E2=80=9Cexceptional=E2=80=9D names of =
packages in yocto/OE. Kernel package is being one example with the name =
=E2=80=9Clinux-yocto=E2=80=9D vs.  traditional =E2=80=9Clinux_kernel=E2=80=
=9D.


This just happens to be that Yocto project maintain a reference kernel =
and its called linux-yocto just following the naming conventions that =
are in use for kernel trees ( linux-<feature> ) e.g. linux-stable and so =
on
OE infra provides virtuals that we use to have pluggable kernels or =
other packages e.g. virtual/kernel for kernel and there are other =
packages which are using this mechanism too.

> Are there more such yocto-specific packages (of course excluding FW =
and other bsp-related packages)? A look over the package list didn=E2=80=99=
t reveal any, but I wanted to double check.
>=20

yocto project does have more tools e.g. cross-prelink etc. there is no =
general naming convention of something-yocto for packages that project =
maintains
just check git.yoctoproject.org for number of components.

> The reason I am asking is that in case when we try to determine the =
package CVEs against the NVD database, in these particular exception =
cases, we probably want to check not only =E2=80=9Clinux-yocto=E2=80=9D, =
but also =E2=80=9Clinux_kernel=E2=80=9D open package CVEs with regards =
to specified version to make sure we cover as much as we can.

it probably is a general problem for end users since they may not use =
linux-yocto to provide the kernel on system but some other name but in =
the end they are kernels. may be some tooling to encode this in recipe =
would be good.

--Apple-Mail=_9D2B3E5B-0412-448E-9CBC-BC95CFC60052
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Elena<div class=3D""><br class=3D""><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Jan 13, 2016, at 11:43 PM, =
Reshetova, Elena &lt;<a href=3D"mailto:elena.reshetova@intel.com" =
class=3D"">elena.reshetova@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-GB" class=3D"">Hi,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-GB" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-GB" class=3D"">I have =
a small question about =E2=80=9Cexceptional=E2=80=9D names of packages =
in yocto/OE. Kernel package is being one example with the name =
=E2=80=9Clinux-yocto=E2=80=9D vs. &nbsp;traditional =
=E2=80=9Clinux_kernel=E2=80=9D.<span =
class=3D"Apple-converted-space">&nbsp;</span></span></div></div></div></bl=
ockquote><div><br class=3D""></div><div><br class=3D""></div><div>This =
just happens to be that Yocto project maintain a reference kernel and =
its called linux-yocto just following the naming conventions that are in =
use for kernel trees ( linux-&lt;feature&gt; ) e.g. linux-stable and so =
on</div><div>OE infra provides virtuals that we use to have pluggable =
kernels or other packages e.g. virtual/kernel for kernel and there are =
other packages which are using this mechanism too.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-GB" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-GB" class=3D"">Are there more such yocto-specific packages =
(of course excluding FW and other bsp-related packages)? A look over the =
package list didn=E2=80=99t reveal any, but I wanted to double =
check.<span class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-GB" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div></div></div></blockquote><div><br =
class=3D""></div><div>yocto project does have more tools e.g. =
cross-prelink etc. there is no general naming convention of =
something-yocto for packages that project maintains</div><div>just check =
<a href=3D"http://git.yoctoproject.org" =
class=3D"">git.yoctoproject.org</a> for number of =
components.</div><div><br class=3D""></div><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"WordSection1" style=3D"page: =
WordSection1; font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-GB" class=3D"">The reason I am asking is that in case when we =
try to determine the package CVEs against the NVD database, in these =
particular exception cases, we probably want to check not only =
=E2=80=9Clinux-yocto=E2=80=9D, but also =E2=80=9Clinux_kernel=E2=80=9D =
open package CVEs with regards to specified version to make sure we =
cover as much as we can.<span =
class=3D"Apple-converted-space">&nbsp;</span></span></div></div></div></bl=
ockquote><div><br class=3D""></div><div>it probably is a general problem =
for end users since they may not use linux-yocto to provide the kernel =
on system but some other name but in the end they are kernels. may be =
some tooling to encode this in recipe would be =
good.</div></div></div></body></html>=

--Apple-Mail=_9D2B3E5B-0412-448E-9CBC-BC95CFC60052--

--Apple-Mail=_ACD02DB2-C50B-448A-9658-004653CB4549
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaX4dUACgkQuwUzVZGdMxTj4QCeNjYXPOO8fw8EvoARS/QAEOuB
LnIAnROemKIotGwfh7O4fdMDby55czNf
=w0RK
-----END PGP SIGNATURE-----

--Apple-Mail=_ACD02DB2-C50B-448A-9658-004653CB4549--
