Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5881E00747; Mon, 31 Oct 2016 09:37:18 -0700 (PDT)
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
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A49F1E006C7
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:37:15 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id s8so78803044pfj.2
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=cbqwNRXbogTUmKytAHP1FivDFFX0OewNaXavDtAtz1M=;
	b=f/b8rFBiMlH/0nt3Pq9LxuDijvkGFVIOfHq+kawZN9tjTjWH+9r6WPhHDIl5LHu1ep
	YBd56Mpxz86oicyJKK+AAYvY0Sm+Gh4rwTJp6/1wySJEMyvy7Gvh/Z4q0HT/Lr1zHILO
	hqnq6zGl56QQjVbEGHzboXhrmuJkC9JUAGN0WMzFyNBbBt0iy+C+2DaoogobmWKsoVsz
	kJMTLYi7PjedCJr5OMVeOLGHN2f7573ARAXAFo1rXMVEtlXYa78kHWLEHwJp8xh8QuAn
	Pl/0jTfUtLPzPo0njd5vCUq1YCeyQqanl4xGYq5tWzicEKIbNyZK7XFdNTzdkVm9XbCE
	+Nfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=cbqwNRXbogTUmKytAHP1FivDFFX0OewNaXavDtAtz1M=;
	b=dOWsZY6Xs9hNkzSG10ITPJ4+6kJ3GiShN81eZP3tgZurk88GPXVQeyzjuWs1NWxJ8A
	lRxVqWRAvtFl2suKiRYGMcMKnhg+bYwElaQmoFEvEYAkqHV+V2Sa0yLsiOZWF6yWgR80
	nF8Gyu763IENIC+lCYtRBUkkXo/4hmbBlgOfzrDwR/32lwmrFIbG8R417t8brXpSBv7j
	+D57okd1paMq3Gk1rxaMNeXj4hXG7YSxLpt/nZUlIl9hx5ocdw4dUkE1zGryMVX6f3dh
	m/e8lWGhXpFsq5DVxUJwtY+4IJsbFiBljPj21hUh2Mh5thb+KOEi9rznDdShCIMdU8te
	W4zQ==
X-Gm-Message-State: ABUngvfgqq+6fUpm+NneL1HotsW6DsTNASp/USZF/+O5tZ3WSBbukKOcLYL4d4uq/7pS6w==
X-Received: by 10.99.100.132 with SMTP id y126mr42344160pgb.177.1477931834573; 
	Mon, 31 Oct 2016 09:37:14 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:793b:10a4:267d:c6fc?
	([2601:646:8882:b8c:793b:10a4:267d:c6fc])
	by smtp.gmail.com with ESMTPSA id
	p62sm36707156pfb.42.2016.10.31.09.37.13
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 09:37:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
Date: Mon, 31 Oct 2016 09:37:07 -0700
Message-Id: <66B0CBC6-1852-482E-94EE-6E216B1105ED@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 minimum kernel requirement
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
X-List-Received-Date: Mon, 31 Oct 2016 16:37:18 -0000
X-Groupsio-MsgNum: 32697
Content-Type: multipart/signed;
	boundary="Apple-Mail=_CF24C9D0-473B-4834-B0A7-3D4569FC2576";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_CF24C9D0-473B-4834-B0A7-3D4569FC2576
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_54650B8B-4B47-44DA-BE4B-431E17C3ED93"

--Apple-Mail=_54650B8B-4B47-44DA-BE4B-431E17C3ED93
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 31, 2016, at 7:37 AM, Vuille, Martin (Martin) =
<vmartin@avaya.com> wrote:
>=20
> We are looking at upgrading from Yocto 1.8 to 2.2.
>=20
> Yocto 2.2 has a minimum kernel requirement of 3.2.0.
>=20
> This isn=E2=80=99t an issue for our target (ARMv5, Linux 4.4) but may =
be
> an issue for our automated build machines (x86, Linux 2.6.32=E2=80=94Cen=
tOS 6.)
>=20
> However, there is a note that says
> =E2=80=9CFor x86 and x86_64, you can reset OLDEST_KERNEL =
<http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#var-OLD=
EST_KERNEL> to anything down to 2.6.32 if desired.=E2=80=9D
>=20
> Is it possible to configure things such that we can keep supporting =
the old
> kernel for the SDK while we support a more up-to-date kernel for the =
target?

I think that should be the default. We do not set it for x86/nativesdk =
case. File a ticket if thats not
the case.

>=20
> MV
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_54650B8B-4B47-44DA-BE4B-431E17C3ED93
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 31, 2016, at 7:37 AM, Vuille, Martin (Martin) &lt;<a =
href=3D"mailto:vmartin@avaya.com" class=3D"">vmartin@avaya.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" =
class=3D"">We are looking at upgrading from Yocto 1.8 to 2.2.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">Yocto =
2.2 has a minimum kernel requirement of 3.2.0.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">This =
isn=E2=80=99t an issue for our target (ARMv5, Linux 4.4) but may be<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D"">an issue for our automated build machines =
(x86, Linux 2.6.32=E2=80=94CentOS 6.)<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" class=3D"">However, =
there is a note that says<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"EN-US" =
class=3D"">=E2=80=9C</span>For x86 and x86_64, you can reset<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#=
var-OLDEST_KERNEL" title=3D"OLDEST_KERNEL" style=3D"color: purple; =
text-decoration: underline;" class=3D""><code style=3D"font-family: =
'Courier New';" class=3D""><span style=3D"font-size: 10pt; color: blue;" =
class=3D"">OLDEST_KERNEL</span></code></a><span =
class=3D"Apple-converted-space">&nbsp;</span>to anything down to 2.6.32 =
if desired.=E2=80=9D<o:p class=3D""></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Is it possible to configure things such that we can keep =
supporting the old<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">kernel for the SDK while we support a more up-to-date kernel =
for the target?</div></div></div></blockquote><div><br =
class=3D""></div><div>I think that should be the default. We do not set =
it for x86/nativesdk case. File a ticket if thats not</div><div>the =
case.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">MV<o:p =
class=3D""></o:p></div></div><span style=3D"font-family: Times-Roman; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"color: purple; text-decoration: underline; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_54650B8B-4B47-44DA-BE4B-431E17C3ED93--

--Apple-Mail=_CF24C9D0-473B-4834-B0A7-3D4569FC2576
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgXczcACgkQuwUzVZGdMxSMSACcCtaBjNxfkLvE25qoblcQ2CcN
A7cAnj3BMgGfwpt3hulBRI2YtdhbxkX/
=atSH
-----END PGP SIGNATURE-----

--Apple-Mail=_CF24C9D0-473B-4834-B0A7-3D4569FC2576--
