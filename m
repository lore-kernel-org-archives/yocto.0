Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF46BE00CFB; Fri, 11 Jan 2019 19:37:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B86E00CE4
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 19:37:13 -0800 (PST)
Received: by mail-pl1-f171.google.com with SMTP id w4so7623642plz.1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 19:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=+yDkUW8tzVtSHWBJvSWzgBYfuAQ8+bzkM77ekGNBrjE=;
	b=ZEgcsbi2xOJ5uS4Me8TMuhhPcCa63Max8RuaaC/dxUkRk+DzgVfm/wdm/NpX6VO0rz
	1UeRLvKszNvCkqhD+Yh8miDt8RQkP9xr7SDgnw1StIwkAR7ZO2go/hhns6atQ6jQMBUI
	bM2dafCGH3mqPybqY695QgH0KaVI8v9ZX6FGnpaM26yI88D5Tvku9dafN9iBQ2m6O/aB
	tDB5HuUmU7OoNQSXJ4yD2fpfUzda/BDswkFZKlNszQr9NQFp9ipBwLHyBdIdTGpNVCdm
	pFPmgn6PiXMzprecLGO+uVYCGdavobPDfiogtQm1PD0jcl5vji6L+e57w43mNKGbtNWM
	dgIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to;
	bh=+yDkUW8tzVtSHWBJvSWzgBYfuAQ8+bzkM77ekGNBrjE=;
	b=Wz3RVsyHPDF2aOpoPpMAvi2AKRlKI/XL7LvSvJF02BzSHOTle1EaDAwJApPBv8zevU
	iC8gMiRpACVm7kIBUUcvJtmjHub9kwkwPyH6M3sZ6xzF0oFbvYSs61AypBjZqs8yxhjE
	sya4evQ/48PahU5APM/JqWRZoyG61nSCp7ie/TGygPD88wEO+NLPvrFhSNTMAroUCCGU
	SGtCQn3ICTOrSTIzPg5gTJPxn8Gl2W+C/YQCk19KeiOXN4Lpn5pkH0U/5kufPVYXpr8M
	YNsXgiJhE5BVZSzykJLdjAqTz6EVQy2NWzaWKa7LUN2gLqqu5WPOwe+R61KsCCP1E6aE
	qTqw==
X-Gm-Message-State: AJcUukcw0ycgqOhOlBBPVGyHg7IawwMUD3Thv8z4hMNFeXNd/8t4jgq/
	YIeusKu9Yf3pAWrvM1k+JFRlNQw1s7I=
X-Google-Smtp-Source: ALg8bN5Pn7Jq1tND7lPKkYdErTJFwv8pgKdlzXEWaxpRcOJXE7Tqo6R3Smu+HuI3JzTyO7NtXwDbdw==
X-Received: by 2002:a17:902:f01:: with SMTP id
	1mr16681819ply.143.1547264232265; 
	Fri, 11 Jan 2019 19:37:12 -0800 (PST)
Received: from [192.168.4.19] (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	c72sm136669816pfb.107.2019.01.11.19.37.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 19:37:11 -0800 (PST)
To: Alberto Spin <a.spin@datawatt.nl>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@ibeeto.com; prefer-encrypt=mutual; keydata=
	xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
	Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
	/Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
	cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
	3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
	AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
	IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
	3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
	txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
	lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
	Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
	zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
	5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
	RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
	w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
	svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
	tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
	GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
	s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
	fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
	Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
	P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
	ROZj4g==
Organization: ibeeto
Message-ID: <3c5876e9-16f4-13ca-90fb-3452b257e249@ibeeto.com>
Date: Fri, 11 Jan 2019 19:37:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>
Subject: Re: Setting up a password for the root user
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
X-List-Received-Date: Sat, 12 Jan 2019 03:37:15 -0000
X-Groupsio-MsgNum: 43722
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="G3ZeAl9q79MhnJzk2MYvvgXgAOjtsBGjC"

--G3ZeAl9q79MhnJzk2MYvvgXgAOjtsBGjC
Content-Type: multipart/mixed; boundary="GXnTS221brRkFyEH7iPK9jazBLK14Azeq";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Alberto Spin <a.spin@datawatt.nl>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <3c5876e9-16f4-13ca-90fb-3452b257e249@ibeeto.com>
Subject: Re: [yocto] Setting up a password for the root user
References: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>

--GXnTS221brRkFyEH7iPK9jazBLK14Azeq
Content-Type: multipart/alternative;
 boundary="------------7D497C7CCAD375BC7A3C1E12"
Content-Language: en-US

--------------7D497C7CCAD375BC7A3C1E12
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Alberto,

The quotes around

`openssl passwd ${ROOT_PASSWORD}`

have to be backticks (`) not single quotes (').

:rjs


On 01/11/2019 07:41 AM, Alberto Spin wrote:
>
> Hello There,
>
> =A0
>
> I=92m trying to set a password for the root user of my distribution
> (based rocko branch)
>
> =A0
>
> I=92ve added the following to my image recipe:
>
> =A0
>
> inherit extrausers
>
> =A0
>
> # set image root password
>
> ROOT_PASSWORD =3D "secret"
>
> =A0
>
> EXTRA_USERS_PARAMS =3D "\
>
> =A0=A0=A0 usermod -p 'openssl passwd ${ROOT_PASSWORD}' root; \
>
> =A0=A0=A0 "
>
> =A0
>
> Everything builds fine, but in my image I end up with a password in my
> /etc/shadow file like this:
>
> =A0
>
> openssl passwd secret
>
> =A0
>
> so it seems like the openssl command has not been executed during the
> build, but instead the literal command is now part of my password.
>
> =A0
>
> Can anybody please explain what=92s going on here, and how to fix this?=

>
> =A0
>
> Kind Regards,
>
> =A0
>
> Alberto
>
> =A0
>
> =A0
>
> =A0
>
>
>


--------------7D497C7CCAD375BC7A3C1E12
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Alberto,</p>
    <p>The quotes around</p>
    <p>`openssl passwd ${ROOT_PASSWORD}`</p>
    <p>have to be backticks (`) not single quotes (').</p>
    <p>:rjs<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 01/11/2019 07:41 AM, Alberto Spin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01=
=2Eprod.exchangelabs.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
=2EMsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hello There,<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=92m trying to set a=

            password for the root user of my distribution (based rocko
            branch)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=92ve added the foll=
owing
            to my image recipe:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
>inherit
            extrausers<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
>#
            set image root password<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
>ROOT_PASSWORD
            =3D "secret"<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
>EXTRA_USERS_PARAMS
            =3D "\<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
>=A0=A0=A0
          </span><span style=3D"font-size:8.0pt;font-family:Consolas">use=
rmod
            -p 'openssl passwd ${ROOT_PASSWORD}' root; \<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas">=A0=A0=A0
          </span><span style=3D"font-size:8.0pt;font-family:Consolas"
            lang=3D"EN-US">"<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span
            style=3D"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"=
><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Everything builds fin=
e,
            but in my image I end up with a password in my /etc/shadow
            file like this:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:8.0pt;font-family:Consolas">openssl passwd=

            secret<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">so it seems like the
            openssl command has not been executed during the build, but
            instead the literal command is now part of my password.<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Can anybody please
            explain what=92s going on here, and how to fix this?<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Kind Regards,<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Alberto<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------7D497C7CCAD375BC7A3C1E12--

--GXnTS221brRkFyEH7iPK9jazBLK14Azeq--

--G3ZeAl9q79MhnJzk2MYvvgXgAOjtsBGjC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAlw5YOYACgkQjYyoKScz
m3X4Xwf+OUqwvRgfvIhwCdqn0QK2AIJ+X744bLFjKOKjDSIbvurHCseaRTz1dYb/
VLWsdgAveNMxXpj9ZqxDQvn+RXl2pkmdgizuqVCkr0xNgHESDBM+wojsefDV8vpc
li//+x4rF5dYhBChtbs7pE1wP6mGK7oz72oSGq2ayKZmRPZdT0QkTU72/O6tF43u
U7Aj5k2A39sB9kh6dkAPddkibxiC7H/G6ItiJx/VHAic552bWWo4T3jhGTFA81Vs
cFORUYUmhL9wXDI7mtndgsGim6ymTuJ5jE0AqtKBazAvwgQO6UG8Mtd3hHOXp0UD
ZvmvFC39MekkXITGdfMnGMRNKP8Uaw==
=4KhS
-----END PGP SIGNATURE-----

--G3ZeAl9q79MhnJzk2MYvvgXgAOjtsBGjC--
