Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB4E3E007B5; Mon,  1 Feb 2016 10:34:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C19FE0073D
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 10:34:25 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id ho8so86227602pac.2
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 10:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Da0x1Tj5NMzmqRBiWVgv2mwqsF3g30CnEkfgBCE1NxQ=;
	b=QkBms28UZUkqPZmFgqOk2QimVmD+YcgB82V2lIMJ0TVf4TlnKQ6Ay6efWX3mbl9Eti
	/HCSC8EIBC1KNxNlFsZU8vNlcfuR0FTaX6ewBozHhzLUJjVNUY1Hm2Km88twssCZVU6a
	iC8r2OkgqrupZQqwQ6HHI12ceJ8ntm8yz23WlfZUQE8/LOWOkxcTfv+3/vEvG/dK3apL
	/cCxEHMLr94Elx1pkZb6FpmVDm+my5hKlqkVh4Jocx/sxyKtRtwg9AZxUZdGIhku/K/l
	j1/Nz49bTnpqqqcI3snErKgBF23Wa0ZQJzOSAPzZiK3Av51JUhfbP1Ml2F5mqu5SWNo9
	R8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=Da0x1Tj5NMzmqRBiWVgv2mwqsF3g30CnEkfgBCE1NxQ=;
	b=IKlh+/XxSNu8igH68fitlSvxexPMrb+FrMNkNxS7IBbhSb4/9hT5OQlVfP3zEFDnd5
	gC+BDFwpXAfgMSGkAl/wH1OszbuAqAPlgLFEf8D8ISm1kSbB3e2HpJxf9gUqnpSlSfKT
	iaq2CC/x2DGRLCl486qT7MBS76qQuXjfkMY1/9yec1JaCwlcT+jVyG8noW959SA7KBoL
	QJGr0nTs0Nux7cMra+AIgfB3BIjyLPVcHv+ETl1Kj8Lx0GWOajlGN2wvdrgv9Un89cfU
	s44NnU6SomblufMOl/sAPjre4R6kUWqSOxszyACR6Hmsl8mpl1+6QBxChu0ik7PkHey/
	8WAg==
X-Gm-Message-State: AG10YORvebBGpjXztNMCNIURkfmB3sI5iA9xl0wPj49sHk+/DLEouZ/4lLLUOMt7l5MF2A==
X-Received: by 10.66.191.104 with SMTP id gx8mr40318892pac.21.1454351665646;
	Mon, 01 Feb 2016 10:34:25 -0800 (PST)
Received: from [192.168.0.4] (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	191sm44861294pfa.23.2016.02.01.10.34.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 01 Feb 2016 10:34:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMCfZKHu1YtfYq3GH2R8drMSnFWwYzD8VPs2nwQcGTg4LJr3Mg@mail.gmail.com>
Date: Mon, 1 Feb 2016 10:34:24 -0800
Message-Id: <3BA28CC0-59D4-4013-BD2E-3CAE31B1159D@gmail.com>
References: <CAMCfZKF6asR9ubz7+oKJQ6FCO8mM0ryUzq-WDBGf6AAp2+WeMw@mail.gmail.com>
	<BLUPR0501MB18434F9CCFB9D423227C9F53BBDA0@BLUPR0501MB1843.namprd05.prod.outlook.com>
	<CAMCfZKHu1YtfYq3GH2R8drMSnFWwYzD8VPs2nwQcGTg4LJr3Mg@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migrate, or not Migrate, that's the question!!!
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
X-List-Received-Date: Mon, 01 Feb 2016 18:34:31 -0000
X-Groupsio-MsgNum: 28187
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D97639BC-9AD3-466A-9B9C-B6ECA8B3215E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D97639BC-9AD3-466A-9B9C-B6ECA8B3215E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_951ABCF0-6F68-4F0B-8F04-96E529688365"

--Apple-Mail=_951ABCF0-6F68-4F0B-8F04-96E529688365
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 1, 2016, at 6:18 AM, Diego Sueiro <diego.sueiro@gmail.com> =
wrote:
>=20
> Bryan,
>=20
>=20
> On 28 January 2016 at 13:49, Bryan Evenson <bevenson@melinkcorp.com =
<mailto:bevenson@melinkcorp.com>> wrote:
> In my opinion, I think in the long term it would be easier to make a =
clean break.  Start with a recent branch, like Jethro, get a minimal =
image to build for your hardware and then add your own layer with your =
proprietary recipes.  I think that will be a lot easier than trying to =
get oe-core working with 5+ year old versions of gcc and eglibc.  Yes, =
that would mean additional testing, but it may be less =
testing/integration than you are currently doing just trying to keep =
your current image maintained.
>=20
>=20
>=20
>=20
> Thanks for your opinion.
>=20
> But unfortunately, updating the packages is out of scope in this =
moment since the product is certificated and doing this will require a =
new process.

I think you have to think about what you are getting into. You are =
trying to mix quite two different things are create third one. If I were =
you, I would just
keep myself synced with upstream as much as I could, Don=E2=80=99t look =
one way, you have to look into time and effort you will spend on =
maintaining this new
jargon for years to come.

>=20
> Maybe I can use the Arago External Pre-built Binary Toolchain =
(2011-09)[1] in which is supported by TI until daisy branch[2].
>=20
>=20
> [1] - =
http://software-dl.ti.com/sdoemb/sdoemb_public_sw/arago_toolchain/2011_09/=
index_FDS.html =
<http://software-dl.ti.com/sdoemb/sdoemb_public_sw/arago_toolchain/2011_09=
/index_FDS.html>
> [2] - =
http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dtree;f=3Dmeta-arago-e=
xtras/conf/distro/include;h=3D23e7bcba85ab80e4bf813fd43f64c61a12ba3f0a;hb=3D=
refs/heads/daisy =
<http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dtree;f=3Dmeta-arago-=
extras/conf/distro/include;h=3D23e7bcba85ab80e4bf813fd43f64c61a12ba3f0a;hb=
=3Drefs/heads/daisy>
>=20
>=20
> Regards,
>=20
> --
> *dS
> Diego Sueiro
>=20
> Administrador do Embarcados
> www.embarcados.com.br =
<http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&utm_medium=3D=
e-mail&utm_campaign=3DAssinatura%20Email%20Diego>
>=20
> /*long live rock 'n roll*/
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_951ABCF0-6F68-4F0B-8F04-96E529688365
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 1, 2016, at 6:18 AM, Diego Sueiro &lt;<a =
href=3D"mailto:diego.sueiro@gmail.com" =
class=3D"">diego.sueiro@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra">Bryan,</div><div =
class=3D"gmail_extra"><br class=3D""></div><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">On 28 January 2016 at 13:49, Bryan =
Evenson <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank" =
class=3D"">bevenson@melinkcorp.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><p class=3D"MsoNormal"><span =
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125=
)" class=3D"">In my opinion, I think in the long term it would be easier =
to make a clean break.&nbsp; Start with a recent branch, like Jethro, =
get a minimal image to build for your
 hardware and then add your own layer with your proprietary =
recipes.&nbsp; I think that will be a lot easier than trying to get =
oe-core working with 5+ year old versions of gcc and eglibc.&nbsp; Yes, =
that would mean additional testing, but it may be less =
testing/integration
 than you are currently doing just trying to keep your current image =
maintained.<u class=3D""></u><u class=3D""></u></span></p><p =
class=3D"MsoNormal"><span =
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125=
)" class=3D""><u class=3D""></u>&nbsp;</span></p></blockquote></div><br =
class=3D"">Thanks for your opinion.</div><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">But unfortunately, updating =
the packages is out of scope in this moment since the product is =
certificated and doing this will require a new =
process.</div></div></div></blockquote><div><br class=3D""></div><div>I =
think you have to think about what you are getting into. You are trying =
to mix quite two different things are create third one. If I were you, I =
would just</div><div>keep myself synced with upstream as much as I =
could, Don=E2=80=99t look one way, you have to look into time and effort =
you will spend on maintaining this new</div><div>jargon for years to =
come.&nbsp;</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">Maybe I can use the Arago =
External Pre-built Binary Toolchain (2011-09)[1] in which is supported =
by TI until daisy branch[2].</div><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra"><br class=3D""></div><div =
class=3D"gmail_extra">[1] -&nbsp;<a =
href=3D"http://software-dl.ti.com/sdoemb/sdoemb_public_sw/arago_toolchain/=
2011_09/index_FDS.html" =
class=3D"">http://software-dl.ti.com/sdoemb/sdoemb_public_sw/arago_toolcha=
in/2011_09/index_FDS.html</a></div><div class=3D"gmail_extra">[2] =
-&nbsp;<a =
href=3D"http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dtree;f=3Dmeta=
-arago-extras/conf/distro/include;h=3D23e7bcba85ab80e4bf813fd43f64c61a12ba=
3f0a;hb=3Drefs/heads/daisy" =
class=3D"">http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dtree;f=3Dm=
eta-arago-extras/conf/distro/include;h=3D23e7bcba85ab80e4bf813fd43f64c61a1=
2ba3f0a;hb=3Drefs/heads/daisy</a><br class=3D""><br class=3D""><br =
clear=3D"all" class=3D""><div class=3D""><div =
class=3D"gmail_signature"><div dir=3D"ltr" class=3D""><div =
class=3D"">Regards,</div><div class=3D""><br class=3D""></div>--<br =
class=3D"">*dS<br class=3D"">Diego Sueiro<br class=3D""><br =
class=3D"">Administrador do Embarcados<br class=3D""><a =
href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;ut=
m_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" =
target=3D"_blank" class=3D"">www.embarcados.com.br</a><br class=3D""><br =
class=3D"">/*long live rock 'n roll*/<br class=3D""></div></div></div>
</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_951ABCF0-6F68-4F0B-8F04-96E529688365--

--Apple-Mail=_D97639BC-9AD3-466A-9B9C-B6ECA8B3215E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlavpTAACgkQuwUzVZGdMxRx0ACggWpFK2LvNgWwV2cU2tGKsG66
y0EAmQELFiQAEF7DYyaFZ8UYbyYOmgnR
=yzwr
-----END PGP SIGNATURE-----

--Apple-Mail=_D97639BC-9AD3-466A-9B9C-B6ECA8B3215E--
