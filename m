Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 314E2E00BC0; Thu, 22 Jun 2017 05:08:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-yb0-f177.google.com (mail-yb0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FCAE00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:07:59 -0700 (PDT)
Received: by mail-yb0-f177.google.com with SMTP id 84so3968025ybe.0
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=1bn080+MrI83i04slDjdy9RO5htIYyR4QoSjoPva32w=;
	b=Mqe4eIgtqjAlLaiwxdPKzDOyj2THjyj2kp8A2DTpMU17ge2kOoyawsjAywSypWfxwd
	pIAdspaMn10J590WRBSGnRe4axS6TrET1Mx8p6UxCAwZY+ZVC4DD1kzGov7xjSGCvTAL
	4OtQ3ydLsq/7yvJO3czRD/u2cPdJc9vFaYE9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=1bn080+MrI83i04slDjdy9RO5htIYyR4QoSjoPva32w=;
	b=lkj32jOCjBajJjuvLUOhCPdLoXEnoYMnemqFGTSRzlIe27YuoajI+SyqhH/o2SD8S+
	uQqBJxMzydNm8wFT1iXI5beFLOeLyIuDAsBI15ky3Td0v0ohxtd2QLD9J2HMtpFI2p2L
	JTykV18iYPXnOdkDmlg8yOVV4nHnQIeojDp/Ivok7v/ltyw04+7hyEhLszu7EXox6ALK
	dsuqL/oABN7CBmsuhmLhP5nm73NhEI7D5CJkV2OtVFzsz92rVAFn47jTFHqLMZVa4gsW
	/L0D11JoduuN61KH0Yn4dC3xxmTr04JxvqU0lReRdPwcB/+IDny45k+3KblMKVnn5cWk
	xoAw==
X-Gm-Message-State: AKS2vOx/JglUkl+j4BtYMphx9V0vhC+TX9dJmOuCTty9cQR+AX365K5v
	kWHIpVmzof9StVX7JhLg/A==
X-Received: by 10.37.173.140 with SMTP id z12mr1337830ybi.244.1498133278991;
	Thu, 22 Jun 2017 05:07:58 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133])
	by smtp.gmail.com with ESMTPSA id h27sm456980ywk.59.2017.06.22.05.07.58
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 22 Jun 2017 05:07:58 -0700 (PDT)
Date: Thu, 22 Jun 2017 08:08:32 -0400
From: Tom Rini <trini@konsulko.com>
To: Anders Montonen <Anders.Montonen@iki.fi>
Message-ID: <20170622120832.GS27196@bill-the-cat>
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
	<CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
	<AD70DBFD-84A9-44DF-8DCB-1C25BBF0F351@iki.fi>
MIME-Version: 1.0
In-Reply-To: <AD70DBFD-84A9-44DF-8DCB-1C25BBF0F351@iki.fi>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: AppArmor
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
X-List-Received-Date: Thu, 22 Jun 2017 12:08:02 -0000
X-Groupsio-MsgNum: 36730
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IpljlC28XhFjURzf"
Content-Disposition: inline

--IpljlC28XhFjURzf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 22, 2017 at 05:01:09AM +0300, Anders Montonen wrote:
> On 21 Jun 2017, at 23:46, Khem Raj <raj.khem@gmail.com> wrote:
> > On Tue, Jun 20, 2017 at 9:56 AM Anders Montonen <Anders.Montonen@iki.fi=
 <mailto:Anders.Montonen@iki.fi>> wrote:
> > Has anyone tried using AppArmor with Yocto? The recipe in the
> > meta-security layer is broken, and when fixed so it actually builds, it
> > turns out the installed init script relies on functions not found in
> > Yocto's version of LSB.
> > That seems a bug to me perhaps can be fixed in initscripts ?
>=20
> I ended up replacing the recipe with one combining the one from meta-secu=
rity and from the OpenSwitch project[1]. This allowed me to get rid of the =
sysvinit and apache2 dependencies. I=E2=80=99ll have to look for Tom Rini=
=E2=80=99s tweaks and see if he fixed the Python issues more elegantly.
>=20
> IIRC the issues I ran into with the meta-security recipe were:
> - The tools under binutils require the static library
> - The systemd service file isn=E2=80=99t installed
> - The Python apparmor module is built against Python 2.7, while the scrip=
ts that use it are Python 3. Commit=20
> 89683b4fee4616a08d249bc7afd7be55f3fa71a3 is wrong, it papers over a QA wa=
rning without fixing the actual problem.
> - The Python LibAppArmor module isn=E2=80=99t built at all.

I did fix the latter of these (along with the perl problem), but I'm
using sysvinit and needed apache2 in my project anyhow.

--=20
Tom

--IpljlC28XhFjURzf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJZS7M/AAoJEIf59jXTHXZSO0MP/1PGcrgIiJlydq+RyAc4axOl
fyk+3S0vFqrASVvTi84rgucE8JDIjpq2oz8fYVhmcAUjJNapHdl19G0Ycr1xtiBh
0ynGy8ccz+ladz4/sW7UQzjms8ROk3q06XbGoFPWYL9Ij6swVauz9dPNY1l+nDKa
4jN/M1oaoP1FAj1UD3i5gMje592kA5BPD0F8uy+UbNM5TZdXGN3Xo0wGwqcGBmPC
sop6X/PZ1EBh4OqNV6zrWAgotRynRPnOsm4PuDDqy0z6Qlzs8z/vEoPTTo578koG
099F/JUl6i39VJoTdtiT40qbl16f450C1T6N9jG1eXqUgotB5GxSrCepgFbLJ/Rn
o4erYAvFxnOuy0e5JLeYjCuEtqujBXbL6Njcs72vreitY+pxIq+F5XOVfNjmPtq7
4B6bBL2ygxAvTpsER0yP02u2dju8mdSA3XIWhP8x3K4gbAylRw82kBRghNT5nDLo
4vFr4nlf2LtfC5519Jq8kvCRhwts8nodJY6m7CiYvgVVrULauG/M1Mipv5hmdEe8
aAukNkLtGA4WopMgFwFrzXeES7nsn+gTNQIgbdovm7fIU7bFexuuS4FS8vzFEgib
7o+mFHNdS5kiC90zVqiCzQ3MAKIk7ohFzn7xkPUgMUuMnm88/RgYwJMTvHb9iT4C
8uwTo1O31704SDI6t19S
=TFXv
-----END PGP SIGNATURE-----

--IpljlC28XhFjURzf--
