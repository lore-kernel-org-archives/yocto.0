Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50FD1E00C15; Fri,  7 Oct 2016 09:43:02 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28390E00C0B
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 09:42:56 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id t25so3105821pfg.2
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 09:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=MpVu7KydmK7SJlh2TpXi+WXlcHxeFy+Cpwmv/AJ+/BI=;
	b=KtfoKifOgj0GZ5SE8+wmTAxnwAk79V3DoD968oRvNrA5qdR7Tr1LssK6F//zf1/b4c
	l5mN8PFfUFRRTYUV5csKFiFeP1v40cnYHSZY17tDqHN0dVVfBN+UfOCM2g2giyXI8qZm
	091DF2lOGCx8jvRFcvkoO1PHZ+HsPJAJj5gCSfmzdtZAo87e0cUf4cgBDLaMoFWsKAjm
	kqrPUlnOIG7MXvGnmyIL8htP1i0AjiUYxeY1AnaDaqwUbTy5jtLdBqSUU+5UE3JSxUXR
	jflk0QjS9PPFuZzUnq9R77WcSGMeK5/Btszfxuzo0YRBm2sL33iQ7hKiR320G1JfBNhd
	929g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=MpVu7KydmK7SJlh2TpXi+WXlcHxeFy+Cpwmv/AJ+/BI=;
	b=i2npxoRC2aYi6JejcvfZQNxr1N6VyBTwj+QWMhy3/6pPadTu1ehwersNNkDRfCtqwZ
	QG+tKVlBdL7NPuOR3A0yholnWc59qMIVItoUWw6Wis1ujA2G2mGNhdxtxX1gIJCFvTdW
	wjRaRFYv6t3HtSVRYQFYN3RNSg0mPzzs5zYhqQ/19xtKEvVXqLA5/MrFBA/6ckXo09Nl
	f3IwtPYFSqOzw8C1jFA5+QUfO7iEruRQE07psNlQw0Ira9Jou8sLplNme24MkPZHfS2b
	T+RbgTKa9kZ/nI/CRQPAMQ32EnRw+N9LvyjIj645fGPuu8HmNq6MBV/XXDy7QtvhZRe0
	bZQg==
X-Gm-Message-State: AA6/9RnUklvmciwUXQvWweaRgodq57sLPMXeeyMU7mE82hAuQsJ21b7KVqoieybMpau2Qg==
X-Received: by 10.98.97.70 with SMTP id v67mr12379640pfb.52.1475858575911;
	Fri, 07 Oct 2016 09:42:55 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:cd9d:6261:adca:4b85?
	([2601:646:8882:b8c:cd9d:6261:adca:4b85])
	by smtp.gmail.com with ESMTPSA id
	tj8sm29132058pab.16.2016.10.07.09.42.53
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 07 Oct 2016 09:42:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1475857383-3308-1-git-send-email-akuster808@gmail.com>
Date: Fri, 7 Oct 2016 09:42:48 -0700
Message-Id: <0C576AF4-EAAD-45A8-ADC2-6BAFDF14BDCF@gmail.com>
References: <1475857383-3308-1-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] sleuthkit: fix No GNU_HASH in the elf binary
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
X-List-Received-Date: Fri, 07 Oct 2016 16:43:02 -0000
X-Groupsio-MsgNum: 32283
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F071FAA8-E98A-4670-9BA4-E5AC4F80C99D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F071FAA8-E98A-4670-9BA4-E5AC4F80C99D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 7, 2016, at 9:23 AM, Armin Kuster <akuster808@gmail.com> wrote:
>=20
> From: Armin Kuster <akuster@mvista.com>
>=20
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
> recipes-forensic/sleuth/sleuthkit_4.1.3.bb | 2 ++
> 1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb =
b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
> index 4b82616..4d40586 100644
> --- a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
> +++ b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
> @@ -26,3 +26,5 @@ EXTRA_OECONF +=3D "--enable-static=3Dno =
--disable-java LIBS=3D'-L${STAGING_LIBDIR}' LD
> FILES_${PN} +=3D " ${datadir}/tsk"
>=20
> RDEPENDS_${PN} +=3D " perl"
> +
> +INSANE_SKIP_${PN} =3D =E2=80=9Cldflags"

Can we fix the makefile to respect linker flags instead ?

> --
> 2.3.5
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F071FAA8-E98A-4670-9BA4-E5AC4F80C99D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf30IwACgkQuwUzVZGdMxRxiQCcCwMZtzLWGasDyiJeXIHZ1fpD
js8AnievKEz3mxFO/1dWH9/b99wSW81v
=ZxXo
-----END PGP SIGNATURE-----

--Apple-Mail=_F071FAA8-E98A-4670-9BA4-E5AC4F80C99D--
