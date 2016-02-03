Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1E5FE00C4A; Wed,  3 Feb 2016 11:58:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62373E00C44
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 11:58:19 -0800 (PST)
Received: by mail-pf0-f181.google.com with SMTP id n128so18928198pfn.3
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 11:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=EQivp4UUQF+QJ/p85Tllv+gGWB9xvVHCQh5yp0hBfo0=;
	b=xiYINzLj/2Sfs2G14dv/y7LFJcn9RN1gA6O9NpfF77SffypCFM+EhrupY9zGEuAOAe
	8dWut0hjtoIso5K1ZmT6tCTYPZA/KV0oSQPi6lJQW2w5x17Uze7oKXV0uaHiqRbRuQFO
	axxjytKNwQruseu3oPSfPJMF/MlDBINHSyLtFCpKkhQ9Iae8mESrfuMnO4fh/w9ghJFc
	aEj+emCpDmEc/1RLjOzadpLLwvZ7cPslfJXsP5nui8jCf9+8UDsff09B1TQnlxzSL2l2
	hv6QVpunejdLSf6ajvBBEcscT6XNZbGj5MZiG4iM1wF039Y919rg4w6VdZfPormk1UaJ
	Kd0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=EQivp4UUQF+QJ/p85Tllv+gGWB9xvVHCQh5yp0hBfo0=;
	b=bz+luEjwj88PPOk26E5FAvP3QumlgYY9KW4jhpPCNaXvHnEjuHxLVJ4v6nYo7tKJD/
	p5tIsIBijEWx3utEBcUNMgHfHhzNm0IVGsqiPNaQYRXIl+jI6l153FrnPQW5dRI9q2TC
	cnPyFeRdkDb889uSFgZwfVxS8OAffKUxL+s9bq88upR58qSHm3aY2B/d/RwynZ5ObuHt
	CqjKvQ58ybL+5COP28Oja4TZxzHK6JpXsWwjL03wBDvwq8EMtNXAOXBWGq95USIfWrhn
	D2tDjhmirOO7+5bjrL7a7k+EGthc2xNQLQ2yc8dYkm1q1DOp8XfO9ytLoAJdNaNRWhzP
	BHQw==
X-Gm-Message-State: AG10YOQE9WNfu2ARV2Fz7fUke0oWUYVXdil/BllcXMJFBboT0JkhSIId6sCT+pcFmLB8wg==
X-Received: by 10.98.18.8 with SMTP id a8mr5145816pfj.41.1454529499429;
	Wed, 03 Feb 2016 11:58:19 -0800 (PST)
Received: from ?IPv6:2601:647:4c01:b37d:95b4:fa84:8c74:446f?
	([2601:647:4c01:b37d:95b4:fa84:8c74:446f])
	by smtp.gmail.com with ESMTPSA id
	qj8sm11621667pac.40.2016.02.03.11.58.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Feb 2016 11:58:18 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALf_N3bW91zwfebcdvfseHFKQrnykSdAsvodjchVKGr2eym-2w@mail.gmail.com>
Date: Wed, 3 Feb 2016 11:58:22 -0800
Message-Id: <EA9A28A7-7142-4441-B07D-FDE55FC5D2F1@gmail.com>
References: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
	<CAJTo0LbiKF0w=NeNFRYmh_fc73HYH-1Zg6p1-8r46-oexFt6-A@mail.gmail.com>
	<CALf_N3bW91zwfebcdvfseHFKQrnykSdAsvodjchVKGr2eym-2w@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which Toolchain is being used to build Yocto ?
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
X-List-Received-Date: Wed, 03 Feb 2016 19:58:22 -0000
X-Groupsio-MsgNum: 28250
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D23F280C-0B4A-4554-9910-4B033789638B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D23F280C-0B4A-4554-9910-4B033789638B
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0B5ED6CA-8306-46C1-89AE-8A2E74F8744D"

--Apple-Mail=_0B5ED6CA-8306-46C1-89AE-8A2E74F8744D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 3, 2016, at 10:15 AM, Mark T <mtl1nuxd3v@gmail.com> wrote:
>=20
> Thanks. That makes sense; all the cross compile tools are built using =
the Host machines native toolchain on the host then the cross-toolchain =
used to cross compile yocto for the target.
>=20
>=20
>=20
> On 3 February 2016 at 17:13, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
>=20
> On 3 February 2016 at 15:07, Mark T <mtl1nuxd3v@gmail.com =
<mailto:mtl1nuxd3v@gmail.com>> wrote:
> I notice there is a meta/recipes-devtools  -  I assume this pulls in =
from build/downloads - so gcc-5.2.0.tar.bz2 for example. Does the =
tool-chain comprised of these recipes get built by /usr/bin/gcc before =
being used to compile Yocto ?
>=20
> The host's gcc (typically /usr/bin/gcc) is used to build gcc-cross, =
which is then used to compile everything that needs to be =
cross-compiled.  We don't build our own native compiler to replace the =
host compiler.
>=20

you can always use build-appliance if you want to insulate from host =
dependencies.

> Ross
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0B5ED6CA-8306-46C1-89AE-8A2E74F8744D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 3, 2016, at 10:15 AM, Mark T &lt;<a =
href=3D"mailto:mtl1nuxd3v@gmail.com" =
class=3D"">mtl1nuxd3v@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Thanks. That makes sense; all the cross compile tools are =
built using the Host machines native toolchain on the host then the =
cross-toolchain used to cross compile yocto for the target.<br =
class=3D""><br class=3D""><br class=3D""></div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On 3 =
February 2016 at 17:13, Burton, Ross <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank" =
class=3D"">ross.burton@intel.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><span class=3D""><br class=3D""><div=
 class=3D"gmail_quote">On 3 February 2016 at 15:07, Mark T <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:mtl1nuxd3v@gmail.com" =
target=3D"_blank" class=3D"">mtl1nuxd3v@gmail.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"">I =
notice there is a meta/recipes-devtools&nbsp; -&nbsp; I assume this =
pulls in from build/downloads - so gcc-5.2.0.tar.bz2 for example. Does =
the tool-chain comprised of these recipes get built by /usr/bin/gcc =
before being used to compile Yocto ?&nbsp; <br =
class=3D""></div></blockquote></div><br class=3D""></span>The host's gcc =
(typically /usr/bin/gcc) is used to build gcc-cross, which is then used =
to compile everything that needs to be cross-compiled.&nbsp; We don't =
build our own native compiler to replace the host compiler.</div><span =
class=3D"HOEnZb"><font color=3D"#888888" class=3D""><div =
class=3D"gmail_extra"><br =
class=3D""></div></font></span></div></blockquote></div></div></div></bloc=
kquote><div><br class=3D""></div><div>you can always use build-appliance =
if you want to insulate from host dependencies.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr" class=3D""><span =
class=3D"HOEnZb"><font color=3D"#888888" class=3D""><div =
class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_0B5ED6CA-8306-46C1-89AE-8A2E74F8744D--

--Apple-Mail=_D23F280C-0B4A-4554-9910-4B033789638B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlayW94ACgkQuwUzVZGdMxTtdgCfX0HhUAhPKc00jmHRGn+lMd/l
kuQAn0SABWDvko3lSFhK6jpoEd/MCTsD
=GqLo
-----END PGP SIGNATURE-----

--Apple-Mail=_D23F280C-0B4A-4554-9910-4B033789638B--
