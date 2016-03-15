Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B47E007D2; Tue, 15 Mar 2016 14:24:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB87E0071E
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 14:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Cc:Date:In-Reply-To:
	From:Content-Type:Mime-Version:Subject;
	bh=veX+qk0hLtE+ieDEWb7xeGa5kIdHSMSeIZY866hOtJ0=;
	b=DuzpjXj/uKr2blPreG3V7PPFZR
	CFf17OENNHxfdUbrrx0igulcF55DU4eVR8LWQjn/PJLZfU+JWuqSIyfwnLmcWBMz6jKoZnvVxufK3
	IJYGXV7ercQ45ifFAfOKwzUgR8NrLscyB/yi0sL2tARTkjXn8D42zJcPczUrz50Yns5M=; 
Received: from durham.keylevel.com ([88.97.63.243]:15738
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1afwRr-000mXA-Qn; Tue, 15 Mar 2016 21:24:16 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CABcZAN=1oP=SQ3cHYOjbOxzLOTdfX_rxtpf-t+xpv8OnV86fmA@mail.gmail.com>
Date: Tue, 15 Mar 2016 21:24:17 +0000
Message-Id: <2ABC8B66-363B-4C5F-A973-F5A987E9FADE@keylevel.com>
References: <AFBE2F12-5F5E-4982-BB3D-65C7D390485F@keylevel.com>
	<CABcZAN=1oP=SQ3cHYOjbOxzLOTdfX_rxtpf-t+xpv8OnV86fmA@mail.gmail.com>
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
Subject: Re: Starting Pulseaudio automatically
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
X-List-Received-Date: Tue, 15 Mar 2016 21:24:20 -0000
X-Groupsio-MsgNum: 29038
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F7D04602-6476-464B-A800-D20CE48E8908";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_F7D04602-6476-464B-A800-D20CE48E8908
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1E089C86-CFFB-41BF-956E-8B9AF3F407DB"

--Apple-Mail=_1E089C86-CFFB-41BF-956E-8B9AF3F407DB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 15 Mar 2016, at 21:17, Christopher Larson <kergoth@gmail.com> =
wrote:
>=20
> On Tue, Mar 15, 2016 at 2:06 PM Chris Tapp <opensource@keylevel.com =
<mailto:opensource@keylevel.com>> wrote:
> I=E2=80=99ve got an X11 application which uses Pulseaudio. Everything =
works as expected when built under =E2=80=9Cdaisy=E2=80=9D (Pulseaudio =
5), but the same system built under =E2=80=9Cjethro=E2=80=9D (Pulseaudio =
6) fails as Pulseaudio doesn=E2=80=99t start automatically.
>=20
> It looks like this is down to a difference in start-pulseaudio-x11. =
The following is present in =E2=80=9Cdaisy=E2=80=9D:
>=20
>    pulseaudio --start
>=20
> but this isn=E2=80=99t there in =E2=80=9Cjethro=E2=80=9D. Adding this =
line makes Pulseaudio start as expected, allowing the application to =
run.
>=20
> Why was this removed in Pulseaudio 6? Is it supposed to be started =
another way?
>=20
> Pulseaudio will autostart when the apps use it, on demand, nowadays. =
There should be no need to start it in a startup script, afaik.

Thanks :-) Looks like our replies crossed - just posted a reply saying =
similar, noting that this doesn=E2=80=99t happen by default for root.

pulseaudio.inc includes:
# Since many embedded systems don't have non-root users, it's useful to =
be
# able to use pulseaudio autospawn for root as well.
PACKAGECONFIG[autospawn-for-root] =3D ",,,"
So it looks as if I may be able to apply some magic and not need a =
bbappend.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_1E089C86-CFFB-41BF-956E-8B9AF3F407DB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 15 Mar 2016, at 21:17, Christopher Larson &lt;<a =
href=3D"mailto:kergoth@gmail.com" class=3D"">kergoth@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"">On Tue, Mar 15, 2016 at 2:06 PM Chris Tapp &lt;<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">I=E2=80=99ve got an =
X11 application which uses Pulseaudio. Everything works as expected when =
built under =E2=80=9Cdaisy=E2=80=9D (Pulseaudio 5), but the same system =
built under =E2=80=9Cjethro=E2=80=9D (Pulseaudio 6) fails as Pulseaudio =
doesn=E2=80=99t start automatically.<br class=3D"">
<br class=3D"">
It looks like this is down to a difference in start-pulseaudio-x11. The =
following is present in =E2=80=9Cdaisy=E2=80=9D:<br class=3D"">
<br class=3D"">
&nbsp; &nbsp;pulseaudio --start<br class=3D"">
<br class=3D"">
but this isn=E2=80=99t there in =E2=80=9Cjethro=E2=80=9D. Adding this =
line makes Pulseaudio start as expected, allowing the application to =
run.<br class=3D"">
<br class=3D"">
Why was this removed in Pulseaudio 6? Is it supposed to be started =
another way?<br class=3D""></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Pulseaudio will autostart when the apps =
use it, on demand, nowadays. There should be no need to start it in a =
startup script, afaik.</div></div></div>
</div></blockquote><br class=3D""></div><div>Thanks :-) Looks like our =
replies crossed - just posted a reply saying similar, noting that this =
doesn=E2=80=99t happen by default for root.</div><div><br =
class=3D""></div><div>pulseaudio.inc includes:</div><div><pre =
class=3D""><code class=3D""># Since many embedded systems don't have =
non-root users, it's useful to be
# able to use pulseaudio autospawn for root as well.
PACKAGECONFIG[autospawn-for-root] =3D ",,,"
</code></pre><div class=3D"">So it looks as if I may be able to apply =
some magic and not need a bbappend.</div></div><br class=3D""><div =
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
separate; line-height: normal; border-spacing: 0px;"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">--</div><div class=3D""><br class=3D""></div><div =
class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_1E089C86-CFFB-41BF-956E-8B9AF3F407DB--

--Apple-Mail=_F7D04602-6476-464B-A800-D20CE48E8908
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW6H2BAAoJEAM2GeiJDBSG2gMP/3uE5eLVju4AeWv6amVxWFBr
iakavPhk7oNR6b+9rEvz/r2r1UxqoEtU0Jx9/yvwKsg6P79RHfroHeVCgF8JhqpB
y8V25C1DGfFeZupMZVgB2KjgAi34vZU5Y9T0wxrB5sVgWyXlFkvOTxxL8d06hk6C
MiGZQj/UYzNlRqMstJBQlsFjjgnCIAyZ0kqj+d6ZPpo7+Hx59yoFtFk0qXrqCOjs
R9uSx5YQ67/Bv93T1fQgtoJwRJrGBNwUV50TAwlhdec4xIq6yC4NjqoEs7VukYr1
TUb/CQNKzFgex4pPNLFtogezerSCZAZrR5xfVDKqckEal/nz8akpp3WV99w43dpW
J9NwzVbw5PA7pddQdRRguQgtpReUO5YnKZu0qjIhk1tRQ6/mNrwAivIg1XmjlVl/
3CpeNoo6itMo2b8WunjkAlQpxE92BN+W/XuJhIl7aXEpI5cqftKU7fG0W62i0upc
KqSwuW0tTMGfW6u58VgJ8bLDnxwR7Nrflted1HuI0FbeSSf5MZubFB9wcyztqP2d
+LI4xtFHO7FUFZ00PS07vnAHBCeDfKttNZWdj2TEoazrY8fjASqK2TX6Cp761eyu
BTNUykkVbR8c6Vq2MZN92FSdM2FbIOV7GX3dQCkQCGD0i2x7mJiTw890FA+yNfCk
tfuVxBFHUFm9tMrXcwhS
=Lg2J
-----END PGP SIGNATURE-----

--Apple-Mail=_F7D04602-6476-464B-A800-D20CE48E8908--
