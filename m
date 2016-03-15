Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12A81E007D2; Tue, 15 Mar 2016 16:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2C05E006AE
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 16:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Cc:Date:In-Reply-To:
	From:Content-Type:Mime-Version:Subject;
	bh=FL7T+h3LebHt73uUaRyMfmvGTk9/rBzsrdQQ0L1xGn0=;
	b=ZN8m41jZrPfVzKfYgYZ4eF8xh6
	DuT6nbTC5xOp6NJC1dxr9DKB/H2wM1cgOkAt3NYIzGYLg/BCtuy68oZnLUfKqX93MimvUbDFAZM9q
	xNUzIUInO9BMNyjSpW3kubRAp4RlHN5Tp2mIO9CgxQCPtyumwWyOYt/HEWF6IVfbR+Cg=; 
Received: from durham.keylevel.com ([88.97.63.243]:21833
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1afy5v-001AyX-B7; Tue, 15 Mar 2016 23:09:43 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CABcZAN=aQEjFyUB8dz3p0Qmq=F+_0u5M51Xg+-P9dmp1mWegdw@mail.gmail.com>
Date: Tue, 15 Mar 2016 23:09:35 +0000
Message-Id: <406E9A29-C24C-480C-86A6-4ED556C8856B@keylevel.com>
References: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
	<CABcZAN=aQEjFyUB8dz3p0Qmq=F+_0u5M51Xg+-P9dmp1mWegdw@mail.gmail.com>
To: Christopher Larson <kergoth@gmail.com>
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Master or master-next?
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
X-List-Received-Date: Tue, 15 Mar 2016 23:09:49 -0000
X-Groupsio-MsgNum: 29041
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A9E3839C-D648-46A1-B4D8-BE6A40D36A4E";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_A9E3839C-D648-46A1-B4D8-BE6A40D36A4E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_367CFCD0-F78A-419E-959A-7C1C8AAEA9A1"

--Apple-Mail=_367CFCD0-F78A-419E-959A-7C1C8AAEA9A1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 15 Mar 2016, at 23:05, Christopher Larson <kergoth@gmail.com> =
wrote:
>=20
> On Tue, Mar 15, 2016 at 3:56 PM Chris Tapp <opensource@keylevel.com =
<mailto:opensource@keylevel.com>> wrote:
> Should I use master or master-next to track 2.1 release progress?
>=20
> master-next is rebased. I wouldn't recommend using it unless you need =
to test something specific which is on that branch and isn't yet on =
master, otherwise I'd wait for changes to hit master. master is volatile =
enough at times ;)

Thanks. Just working through an =E2=80=9Cintrospection=E2=80=9D message =
as we speak ;-)

Just seeing where I=E2=80=99m at so I can jump when 2.1 is released :-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_367CFCD0-F78A-419E-959A-7C1C8AAEA9A1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 15 Mar 2016, at 23:05, Christopher Larson &lt;<a =
href=3D"mailto:kergoth@gmail.com" class=3D"">kergoth@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"">On Tue, Mar 15, 2016 at 3:56 PM Chris Tapp &lt;<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Should I use master or =
master-next to track 2.1 release progress?<br class=3D""></blockquote><div=
 class=3D""><br class=3D""></div><div class=3D"">master-next is rebased. =
I wouldn't recommend using it unless you need to test something specific =
which is on that branch and isn't yet on master, otherwise I'd wait for =
changes to hit master. master is volatile enough at times =
;)&nbsp;</div></div></div>
</div></blockquote><br class=3D""></div><div>Thanks. Just working =
through an =E2=80=9Cintrospection=E2=80=9D message as we speak =
;-)</div><div><br class=3D""></div><div>Just seeing where I=E2=80=99m at =
so I can jump when 2.1 is released :-)</div><br class=3D""><div =
class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">--</div><div class=3D""><br =
class=3D""></div><div class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_367CFCD0-F78A-419E-959A-7C1C8AAEA9A1--

--Apple-Mail=_A9E3839C-D648-46A1-B4D8-BE6A40D36A4E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW6JY3AAoJEAM2GeiJDBSG0rMP+waEl91rn+ui+iOJF3oNf5y6
hBmzAkfxMafBu5twsIZ75LdUW4bX+Tc+AwzGMZbHIY9x3a4br7S/UvLLrh20WuaX
+LPnaCY7NaMQJQQKtpXmKe5NQoldoNxtTl0SxPVksUD45BZdYvB6h79rTmP/eWTW
Dw8V76NfN3rkMlbiuj3wCAkORI9/cZP8ZyalxkaZ1Ap+s9Jnmsnwd3Jv49ePwVn6
FHj2wFOSrXSiGOylggJODSYd7750VfTtv22E9wONC9oZcwW3DwlgAaUmMQBNLyfR
qwnCBGt6yxMvxUXmrIzcfNklElweJ1IRpFe5K233b1jtNPjGWWQaS2CocQENbeWk
2G3pNCeLfWKHyZEqW7iUMEKFjQjAhh2YkrYNJ9PeNt3GCmNbi5/ouw7na5uoFKOW
G1SqT4nUDZ/4bJysvkBHd0vHlYj2rRx+cnNbSK7xtwl5Pl3gzGBSUO1qc9EEFAVb
PAiYtVD+CxOmfChK7vHg7iGHu0/P9l1q9mZ+gkCatrUL4ta7Zt3nVlBax5qm0Nep
MiMTqm0ssMrK5bGe+yiwWudJQ66vDm/W/rvMZhKxmn4eJtkexp7yxyg59R/kpKFM
h5ZNY0O+w2C68p/CxS+JGTq5EAartGtKtLoxTCe5wJx+O9NHUCQbV/apEWq4E73U
D42qj1muIe8kq6eMTOGR
=Hjhi
-----END PGP SIGNATURE-----

--Apple-Mail=_A9E3839C-D648-46A1-B4D8-BE6A40D36A4E--
