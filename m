Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EADF0E00DCA; Thu, 27 Oct 2016 19:25:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC9DDE00DC6
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:25:49 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id u84so4175124pfj.1
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=THZPX9be+gs8kZe/BUTQaRq06zLf6W29kMB2h7iw+5Q=;
	b=Nh6q3tQjpBZgumLZEdXqTLrunXxZPY/uFi9l17NN+JC7dGbpXHVm4fSYU3h7azd8em
	UQFhchdHcoMYocDFu6Lhk4PPK8fqT9qe4VCyuUmNCGC6nt7C/vSrFhJ7ygxebPa+iYxu
	k3mFdfQVI7q+HndWYDKtUTyC3sFqRT2e3Qe3u960bs1tYOKwB6SbsTu96wWYeANNWjOb
	QDEmjUcnlvmU+UbolVek5KwQ29SUjNH5Tt5xQDQvBG23lDY0RcVR0GzD0sXixjtBpExi
	nYtD4PLBLJDEQUTIc/jAMmG09i2pW8hj9i4+4uEQ0V41iJM2uFvaDx2jLR3vZqpe1hXJ
	PT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=THZPX9be+gs8kZe/BUTQaRq06zLf6W29kMB2h7iw+5Q=;
	b=ZRYAuiGrcnOPCWYia9w2dsBs83CzCDpjJFnI1KrzRH3aH/qdxe5TPwz/KSGAPb+VEV
	TUIjWFBZru5BlIW+CVdfSHBn6aKlXjLGKUynytnSxhHwJo4+DtfUjPFsXt1C8rlg7DyQ
	VRry+ehQP5S1cw3BSOmQADQArlIh05rSC24H3+jucd0YUXa5Cwwtb/sYXCoV+vOtVv2c
	YvwNa168c7iJ/CQ/0fTXbZJB14i+vDuFZh0YvniCl9sa47MtXSCPvTEUzy3Jjz6FecB8
	kTQPl0SVot/CaZZBV8ryxlUdwkLCVWugF5oYzXvjqv2btTOgKT5Vcw++sbm/BNoC+OnM
	c+aw==
X-Gm-Message-State: ABUngvfHowzOepCvjeTaMhf/6lsJg4GQu5rTon3rqYuLxNnnfCG1SkbcADinIWo4o8Gr/Q==
X-Received: by 10.99.121.133 with SMTP id u127mr16856469pgc.4.1477621548804;
	Thu, 27 Oct 2016 19:25:48 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:98cf:ea9b:f72:6b74?
	([2601:646:8882:b8c:98cf:ea9b:f72:6b74])
	by smtp.gmail.com with ESMTPSA id
	w24sm14580296pfa.12.2016.10.27.19.25.47
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 19:25:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CADEQAgjJjnajV+RaN0e=ch4MUt7PBQY42y7929m_hzuH4k0Psw@mail.gmail.com>
Date: Thu, 27 Oct 2016 19:25:42 -0700
Message-Id: <C00483C5-C3CC-4681-9C43-B2A42931A95D@gmail.com>
References: <CADEQAgjJjnajV+RaN0e=ch4MUt7PBQY42y7929m_hzuH4k0Psw@mail.gmail.com>
To: Hugo Heutinck <heutinck.h@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Package relation between package.manifest and license.manifest
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
X-List-Received-Date: Fri, 28 Oct 2016 02:25:51 -0000
X-Groupsio-MsgNum: 32656
Content-Type: multipart/signed;
	boundary="Apple-Mail=_944D2E10-037C-4B2B-95E3-AC1FD395DA40";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_944D2E10-037C-4B2B-95E3-AC1FD395DA40
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A20D9E91-F00D-4F2F-A566-61C545C4303A"

--Apple-Mail=_A20D9E91-F00D-4F2F-A566-61C545C4303A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 26, 2016, at 5:45 AM, Hugo Heutinck <heutinck.h@gmail.com> =
wrote:
>=20
> Question: What is the relation between the package.manifest and =
license.manifest ?
>=20
> After a yocto poky based image has been built there are 2 files in the =
licenses directory "tmp/deploy/licenses/image_name-datestamp"
>=20
> One is the package.manifest, which if understood correctly is a list =
of all packages included in the image.
>=20
> The second file is the license.manifest, but this one contains besides =
the package name also the version, recipe name and license of the =
package.
>=20
> However if I compare the package names in both lists, there seem to be =
a  number of packages in the license.manifest that are not part of the =
package.manifest. E.g. "readline, popt, expat, freetype".
>=20
> Is the license.manifest a list of all items in the package.manifest + =
?build dependencies? or something ?

They should be same.

try something like this
cat license.manifest | grep "PACKAGE NAME: " | sed "s/PACKAGE NAME: =
//=E2=80=9C > a.manifest
diff a.manifest package.manifest

For me both files comes out same.


>=20
> Regards,
>=20
> H.Heutinck
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A20D9E91-F00D-4F2F-A566-61C545C4303A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 26, 2016, at 5:45 AM, Hugo Heutinck &lt;<a =
href=3D"mailto:heutinck.h@gmail.com" =
class=3D"">heutinck.h@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D"">Question: What is the relation between the =
package.manifest and license.manifest ?<br class=3D""><br class=3D"">After=
 a yocto poky based image has been built there are 2 files in the =
licenses directory "tmp/deploy/licenses/<code class=3D"gmail-filename"><em=
 class=3D"gmail-replaceable"><code =
class=3D"">image_name-datestamp</code></em></code>"<br class=3D""><br =
class=3D""></div>One is the package.manifest, which if understood =
correctly is a list of all packages included in the image.<br =
class=3D""><br class=3D""></div>The second file is the license.manifest, =
but this one contains besides the package name also the version, recipe =
name and license of the package.<br class=3D""><br =
class=3D""></div>However if I compare the package names in both lists, =
there seem to be a&nbsp; number of packages in the license.manifest that =
are not part of the package.manifest. E.g. "readline, popt, expat, =
freetype".<br class=3D""></div><br class=3D""></div><div class=3D"">Is =
the license.manifest a list of all items in the package.manifest + =
?build dependencies? or something ?<br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>They should be same.</div><div><br =
class=3D""></div><div>try something like this</div><div>cat =
license.manifest | grep "PACKAGE NAME: " | sed "s/PACKAGE NAME: //=E2=80=9C=
 &gt; a.manifest</div><div>diff a.manifest =
package.manifest</div><div><br class=3D""></div><div>For me both files =
comes out same.&nbsp;</div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><br class=3D""></div><div =
class=3D"">Regards,<br class=3D""><br class=3D""></div><div =
class=3D"">H.Heutinck<br class=3D""></div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A20D9E91-F00D-4F2F-A566-61C545C4303A--

--Apple-Mail=_944D2E10-037C-4B2B-95E3-AC1FD395DA40
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgStysACgkQuwUzVZGdMxTLugCcDYMNfp4otCjvNFapO+fN1fTK
8KAAnRUvmUXOZuuZuEA41ncKxxmG1w2d
=dKhk
-----END PGP SIGNATURE-----

--Apple-Mail=_944D2E10-037C-4B2B-95E3-AC1FD395DA40--
