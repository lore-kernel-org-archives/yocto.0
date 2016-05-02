Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30710E00708; Mon,  2 May 2016 08:46:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB733E006C7
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 08:46:05 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id iv1so75552689pac.2
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 08:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=LxsJ/IX7v9Hxmv11jsJbPrBlYOIXb3gk3x4nAE246cE=;
	b=MthjWg3YP4wrLXkmt6r+iXJPltIpO4Yy9Hge39IlZ57PNjIzDY+03BIv5oENhuTnUF
	kUkU2KwBero96snwGKM324a1PbRg54SPlqYkP5mrLOvECjgyF6fPEvvNTB745sKk23ap
	j8Hu4ThdhYtq88xKDJNG7aNh0SnWNgJTRU0fVhc3LeMa8kuYbA24zChgAQdGe7L+y+VR
	JSMA7g2ZKFufrYbDicGfuStSJUFOXmuuLZLhXUVkBl/tfoUdgK09UPwI9kTp4T0BizUe
	mTc8ExC8oMNhTk7XS6D2Vo8xtqVgRnahaE1u9H0miaD47lPcwxp4QX3NMen06INiJ3Y/
	dbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=LxsJ/IX7v9Hxmv11jsJbPrBlYOIXb3gk3x4nAE246cE=;
	b=hWw2niI4tkBe67fw033Nc6UTAFsBHbGso/ljDAfef4JzQOGG200ywlNe9b0EY3EsuC
	yk9TQLSzcxa+L3ZW4Z4cJybNZhj0Z7f25gHsLbC2llGhAjhbI8HMfemY+e+NlQSXZGLp
	u2ODnzG7o6d/rKFalnmID1jm+OkiA5UC+ktffxHzQTTelKhUnwiSjNoXUrnqTSiySGUf
	u2auglsbgOEJGXZR1D+S4fn6Y2yS7ZEE7NCnBNb4xZI4AZtEJ+M2/DO22KIoEa/mc+Jt
	20LCFamCGz6RNUwOdDXk1ge9fA1njJTJXnE6CTE7G/NflFbx0ILwYdpkvmnnDkwfJVCo
	Y0MA==
X-Gm-Message-State: AOPr4FVr55wWwEhYmAAd8rE4ZOtBPCZJkGs+wyP+XJ/D+p+tYsIZedqXMCkpzXCmwpjsFA==
X-Received: by 10.66.134.15 with SMTP id pg15mr52184719pab.98.1462203965195;
	Mon, 02 May 2016 08:46:05 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:ecc3:a3e8:c0db:d2ff?
	([2601:646:8800:5a9a:ecc3:a3e8:c0db:d2ff])
	by smtp.gmail.com with ESMTPSA id
	s124sm28636244pfb.63.2016.05.02.08.46.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 02 May 2016 08:46:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <PN1PR01MB03335EB964C553EDFD8B3C9BEF790@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Date: Mon, 2 May 2016 08:45:58 -0700
Message-Id: <6D8F8D7A-41DF-4CF7-8363-059BA95294FB@gmail.com>
References: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1spbbhuJsxrKg_hW+nrzXn8oG7iXiejDmTxusUgqFebmeQ@mail.gmail.com>
	<PN1PR01MB03335EB964C553EDFD8B3C9BEF790@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
To: Harinath maddelal <Harinath.maddela@inedasystems.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error while buildng SGX
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
X-List-Received-Date: Mon, 02 May 2016 15:46:09 -0000
X-Groupsio-MsgNum: 29795
Content-Type: multipart/signed;
	boundary="Apple-Mail=_29D628D6-2CB7-4D4E-A29F-7A654B435641";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_29D628D6-2CB7-4D4E-A29F-7A654B435641
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 1, 2016, at 10:44 PM, Harinath maddelal =
<Harinath.maddela@inedasystems.com> wrote:
>=20
> Hi
>=20
>> The same builds fine when i use my local gcc of version 4.8.3.
>=20
> By this i mean we are using our local copy of mips =
toolchain(mips-linux-gnu-gcc-4.8.3)
>=20
> So i have used poky mips toolchain to build the entire poky(except =
SGX).
> SGX is built with our local copy of mips toolchain (as it was giving =
the build errors when built with poky mips toolchain, log file attached =
for reference)

SGX build system is probably hardcoding CC/CXX variables and not letting =
environment to override it. When you build with poky, its important
that CC and CXX variables are effective in the components make system.

>=20
> Is there any way to build the complete poky using local mips toolchain =
rather than using the poky mips toolchain? I just want to know how to =
use our local toolchain setup to build entire poky.

you should look into external toolchain recipes, Some samples like =
sourcery toolchain and Linaro toolchain are available as samples.
I for one would advise to not go this route. Since you are not able to =
take advantage of integration that YP had done using internal
toolchain.

>=20
> Kindly help me in this regard
>=20
> Thanks and Regards,
> Harinath
>=20
>=20
> ________________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Saturday, April 30, 2016 7:41:40 AM
> To: Harinath maddelal
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Error while buildng SGX
>=20
> On Thu, Apr 28, 2016 at 6:34 AM, Harinath maddelal
> <Harinath.maddela@inedasystems.com> wrote:
>> Hi all,
>>=20
>>=20
>> When i build sgx using yocto, im getting following errors.
>>=20
>> The same builds fine when i use my local gcc of version 4.8.3.
>>=20
>>=20
>> I have used 1.8.1 Yocto its using 4.9.2 gcc.
>>=20
>>=20
>> Can you please help me resolve the issue. Thanks in advance
>>=20
>>=20
>> Following is the console build error log
>=20
> Please provide compiler cmdline for the failing compile, most probably
> its due to messed up -isystem
> on cmdline
>=20
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud =
service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
> <log.do_compile>


--Apple-Mail=_29D628D6-2CB7-4D4E-A29F-7A654B435641
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcndjoACgkQuwUzVZGdMxRDuQCfWQpSqqEBLeOs1QYOZvAg5qGf
h98An0Fh/Nh+InNFmTHP+K5E0EHimtu4
=WciO
-----END PGP SIGNATURE-----

--Apple-Mail=_29D628D6-2CB7-4D4E-A29F-7A654B435641--
