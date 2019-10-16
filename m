Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD524E0053F; Wed, 16 Oct 2019 12:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C66E8E0053F
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 12:09:25 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id u12so11689302pls.12
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 12:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=qiaIk9UMRcNYYkIH7Jy38GoLnyqaRprfOGPKsvwg1rA=;
	b=GKHNxp87xLxggSb4FWg6ctBMc9psHoRDjw2+KNRfnJromhEdHobOEPIXsQcbdHiXPn
	5ENXI3x9gwZzgGQI8UcVzmcR8S3IQf+bwNKWJUH57ybNy0mX9IGHo1ecZd4yU9GMq3tN
	+jovYT2VZzFadTAvvYB47ddAsZ4hyPAdtcPllxUQc/1sgl3dkxW+XVqa8P+jq8Faz5bM
	FBb3BejO1cyEG+VGO69fiFGoK3qUWIcjvhyZLnTjH7EVFASFSrPat8BRtu17SId+faAa
	6NsTvPK2Nurj31aXqBUW1Jsh6FuCY4oxEHt0gHRm/pAz8N9Z3aLwIEwJlu5g0gc9LsQ8
	9hkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=qiaIk9UMRcNYYkIH7Jy38GoLnyqaRprfOGPKsvwg1rA=;
	b=Z5O7poDKZpnUkrlkIy+o0gJtDsmDNwaplNqthUmAkxVSW5SsEmM1yJadTazl5Wapyt
	5bLnnphDDb1EB4jtplZbNYj9G7Ue98axCpBQzA4VDFp8kiMpLDqK5atuFgrwXNYFkjfe
	JMraeiUg9uXGfjPEQiL72FnBh1PSPsmIrwda2zYbkSNBb7u9gYVZ+uCja5+H/nVKtD3x
	JMmfdOlROMBzT6KkoiioEoeREtc7CIOTkyWABaMMeXFC9Uex1VKvKtDMZmDwE1poqSMW
	RRbAgX5gj0IlraAYx/jlQ/CZbxurpmN9Z32unoL3+nwclT5ARWkNidkS76GRAi5X9yye
	1JmA==
X-Gm-Message-State: APjAAAW/AoqllFeP4PXA5vEvHfxRu2npF+kLD6JG8ewbyNnaErLvcsIS
	86eBLCVRlis+lMXEZEqIPmQDX82Obe4=
X-Google-Smtp-Source: APXvYqwop5fA20JxNKqaRzwG0GIYBPAAuJc/+8EUfQGdWSJou6ScrJ5TdHVF/zDsXF0hepVwFa8W7A==
X-Received: by 2002:a17:902:aa82:: with SMTP id
	d2mr41760967plr.24.1571252964893; 
	Wed, 16 Oct 2019 12:09:24 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:8dc1:2952:740a:7402?
	([2601:202:4180:a5c0:8dc1:2952:740a:7402])
	by smtp.gmail.com with ESMTPSA id
	q71sm4215151pjb.26.2019.10.16.12.09.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Oct 2019 12:09:23 -0700 (PDT)
To: Guilhem Saurel <guilhem.saurel@laas.fr>, yocto@yoctoproject.org
References: <20191013093004.zxzgukocmkrliu42@laas.fr>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <e520871b-f98f-90ce-9cc1-402da97251db@mvista.com>
Date: Wed, 16 Oct 2019 12:09:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191013093004.zxzgukocmkrliu42@laas.fr>
Subject: Re: download.yoctoproject.org - Certificate expired
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
X-List-Received-Date: Wed, 16 Oct 2019 19:09:28 -0000
X-Groupsio-MsgNum: 46952
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="odAg5BZdXV3u0tHAB1FGx9t5oYrAZwO2W"

--odAg5BZdXV3u0tHAB1FGx9t5oYrAZwO2W
Content-Type: multipart/mixed; boundary="RJx8ziVjP5SzV4sJtSVCdskzWoIiLaoOU";
 protected-headers="v1"
From: akuster <akuster@mvista.com>
To: Guilhem Saurel <guilhem.saurel@laas.fr>, yocto@yoctoproject.org
Message-ID: <e520871b-f98f-90ce-9cc1-402da97251db@mvista.com>
Subject: Re: [yocto] download.yoctoproject.org - Certificate expired
References: <20191013093004.zxzgukocmkrliu42@laas.fr>
In-Reply-To: <20191013093004.zxzgukocmkrliu42@laas.fr>

--RJx8ziVjP5SzV4sJtSVCdskzWoIiLaoOU
Content-Type: multipart/alternative;
 boundary="------------D355F5E341F67CDF1C3A2FD3"
Content-Language: en-US

--------------D355F5E341F67CDF1C3A2FD3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 10/13/19 2:30 AM, Guilhem Saurel wrote:
> Hi,
>
> The certificate installed on https://download.yoctoproject.org expired =
about 4
> days ago. Is anyone else experiencing the same issue? Is a new certific=
ate going
> to be installed ?
thank you for letting us know. I believe this issue has been addressed.
Please let us know if you still having issues with the certificate.

- armin
>
> Thanks,
> Guilhem.
>


--------------D355F5E341F67CDF1C3A2FD3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 10/13/19 2:30 AM, Guilhem Saurel
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20191013093004.zxzgukocmkrliu42@laas.fr">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

The certificate installed on <a class=3D"moz-txt-link-freetext" href=3D"h=
ttps://download.yoctoproject.org">https://download.yoctoproject.org</a> e=
xpired about 4
days ago. Is anyone else experiencing the same issue? Is a new certificat=
e going
to be installed ?</pre>
    </blockquote>
    thank you for letting us know. I believe this issue has been
    addressed. Please let us know if you still having issues with the
    certificate.<br>
    <br>
    - armin<br>
    <blockquote type=3D"cite"
      cite=3D"mid:20191013093004.zxzgukocmkrliu42@laas.fr">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Thanks,
Guilhem.
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------D355F5E341F67CDF1C3A2FD3--

--RJx8ziVjP5SzV4sJtSVCdskzWoIiLaoOU--

--odAg5BZdXV3u0tHAB1FGx9t5oYrAZwO2W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJdp2riAAoJEO6LtJn0Vuf5T7kQALwLUWH3eoXF9kAECYcNlm66
mR3xc2mbhTwzf7qIClJaH0qkfzeoQSoKuI+Q74Ak3AovPVcn4mk9RQCt49rjFt4K
eRk2Ux/VdchcB8RnLmVcIvw8oF0l3OkvWth2MJizRADuMk32XFUNmBYeV2xiE6K5
8PIzkZTiRiZgPgna75WhFpPaeuTWCQDQHOS2CT4zqH5ZzdfXe+SlsqXGoYr5t4wE
ooqfaZZquyOOgzbNCcKc4wz2G74EJWfIkLouRxhM65Lon3zu37bDWOCqBcl7AwuX
eZFYA3dikZGLEEskoP3OBtmi3ctngLpvIiq9etMpxVhmW6voyEOCHr0swNqh46Hp
lhPiQRPbE4UfpoZZzoAqRdAoAi3/57HCfjPQeV9HDfLIRN0otk/S3xMxtki8usDv
59csSbWoAP1uYaQFVUVxTI/sxHVbqwnD3HNX42Hv/RzI4p0/ajcsb8onKoZdaI3D
5hGvsz5/VqmOLDuN0wafE7SL/M4JOQ/18+bpGZjQfBmTJivHWQAgj1kZNPYWMOK0
b+2eKDQZDQUfB4lDJfZWZBR9fq6KxfXyCsqTZcG5QiIXpmHc5TQ9hctQ1wNUHi1t
PbpcMD9XX7/V4OFwOjuwmateZfAhMQ0rL2pD8+Gldu5Nb+JTh0f6MCLd5Jog/pnG
Gkhmz42ZyUZFvyUNnYDt
=N6j0
-----END PGP SIGNATURE-----

--odAg5BZdXV3u0tHAB1FGx9t5oYrAZwO2W--
