Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AA53E00CC4; Thu,  4 Feb 2016 18:08:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AF51E00B3A
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 18:08:32 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id w123so60138413pfb.0
	for <yocto@yoctoproject.org>; Thu, 04 Feb 2016 18:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=/SAxeH9gHwg7j3o1+ip5AfUWK0L/CKwM/V9mT81i/rI=;
	b=FDt0PcmJjxe8sgc6NDbT1TIfgKmpkueC0kLDtVP9/jhpLDFTFFwVHGmihwivoiAQRx
	5AdQBECq2WPxbWeWkOJkHE/vQdONTYtmgCUnXRfeT9T3OUNJqh0ZH6hzlGn7EuMsOlhn
	x2Jhsx5hgyLT2wcjrIa8x1N1ZRjwWgO5hLaMj3b9obMhledD6in4ot0TdMxUUT+b5PiM
	Wnq5DjQbvMIvYbtxgvSJzdhUbZshvcZC/vRt15+hKwjH4q5Qb/qd1dDRTJt4YS/xyuuC
	/fvMajbiNWCjtPCK0OedaVFug5lwPgVeegnqV0oftV/wXhvgBGgVq8nkpnj7QVFKIowf
	PxTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=/SAxeH9gHwg7j3o1+ip5AfUWK0L/CKwM/V9mT81i/rI=;
	b=KhKmm6KZ0S9VpIKK3kM+wlp3hntr44RQAxnalZvEy0DYuPL8K43vkLozbNg3C1GulP
	elCTKY9P8a07XgH0SKPdfDIC4eW4EN0f4vhSxb+Bb3UWqWfiqlP5Cvm0vlTDR93+LH8r
	qx6qp2yDXvjktEH6NxNBFPvzq1QRagBkr2LMJaVmS79+cDTi302ackhf3RE8t1iDmSm8
	RZSlT59KTxrNOwhA7AQKa0c84hylkCeCdN82f/Yc8f3L5gK5tFmj/578xJTNG0GrCo8V
	7ZL+yryTKBza2ZemUyBrnutAGMEfbcRZulY/CX9uWa5QwtUHkTlSP74HinYT7mZN5lFe
	BTKg==
X-Gm-Message-State: AG10YOTIxfUlfnfU0R0XJVrIYUNiM2uuMw7lNA4RWrIDuwg5eAMfxLg+saQvhlV0O5nZDA==
X-Received: by 10.98.0.84 with SMTP id 81mr6407209pfa.67.1454638112405;
	Thu, 04 Feb 2016 18:08:32 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:bcf2:ba04:e76c:6df3?
	([2601:646:8802:5d5c:bcf2:ba04:e76c:6df3])
	by smtp.gmail.com with ESMTPSA id
	h65sm20028177pfh.43.2016.02.04.18.08.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 04 Feb 2016 18:08:31 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1454624831-25414-1-git-send-email-ross.burton@intel.com>
Date: Thu, 4 Feb 2016 18:08:26 -0800
Message-Id: <A2879B89-41D4-42C2-8C86-A0ABD2F149B5@gmail.com>
References: <1454624831-25414-1-git-send-email-ross.burton@intel.com>
To: Ross Burton <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-autobuilder] nightly-musl: also build core-image-weston
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
X-List-Received-Date: Fri, 05 Feb 2016 02:08:37 -0000
X-Groupsio-MsgNum: 28283
Content-Type: multipart/signed;
	boundary="Apple-Mail=_88C0A2C3-E29F-45E7-ADB5-047CBEC7F7A6";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_88C0A2C3-E29F-45E7-ADB5-047CBEC7F7A6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 4, 2016, at 2:27 PM, Ross Burton <ross.burton@intel.com> wrote:
>=20
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
> buildset-config.controller/nightly-musl.conf | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/buildset-config.controller/nightly-musl.conf =
b/buildset-config.controller/nightly-musl.conf
> index 9a82e6b..5da90c3 100644
> --- a/buildset-config.controller/nightly-musl.conf
> +++ b/buildset-config.controller/nightly-musl.conf
> @@ -12,7 +12,7 @@ steps: [{'SetDest':{}},
>                             'buildhistory' : False, 'distro': =
'poky=E2=80=99,

one generic problem I see is that poky packages rpm and rpm does not =
work with musl.
when I build core-image-sato with OE-Core it works out fine.

fixing rpm with musl will need some some patching. I was wondering we =
could use poky-tiny + opkg combo
for musl.


>                             'atextappend' : '\nTCLIBC=3D"musl"\n' }},
>         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> -        {'BuildImages': {'images':  'core-image-minimal =
core-image-full-cmdline core-image-sato'}},
> +        {'BuildImages': {'images':  'core-image-minimal =
core-image-full-cmdline core-image-sato core-image-weston'}},
>         {'SendErrorReport': {}},
>         {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
>=20
> --
> 2.7.0
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_88C0A2C3-E29F-45E7-ADB5-047CBEC7F7A6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAla0BB4ACgkQuwUzVZGdMxTUJQCfVW4tG776L3wnTVQ5XqPuilQ+
E1kAniuNw+d9ulAt+9+n2bTIVnUvvEzC
=0F56
-----END PGP SIGNATURE-----

--Apple-Mail=_88C0A2C3-E29F-45E7-ADB5-047CBEC7F7A6--
