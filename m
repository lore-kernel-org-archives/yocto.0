Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B673DE00D36; Mon, 15 Jul 2019 01:28:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.75.26 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3589 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Jul 2019 01:28:55 PDT
Received: from 8.mo179.mail-out.ovh.net (8.mo179.mail-out.ovh.net
	[46.105.75.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F2E3E00B9C
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 01:28:55 -0700 (PDT)
Received: from player763.ha.ovh.net (unknown [10.108.57.153])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id 5227313971D
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 09:09:50 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player763.ha.ovh.net (Postfix) with ESMTPSA id CF9017EC8142
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 07:09:49 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
	<CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
Date: Mon, 15 Jul 2019 09:09:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
X-Ovh-Tracer-Id: 2791668821288169129
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrheejgdeltdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: Re: Where to add U-Boot argements bootargs and bootcmd?
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
X-List-Received-Date: Mon, 15 Jul 2019 08:28:57 -0000
X-Groupsio-MsgNum: 45931
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="eXRc1DaTmrnEEnc13QOhrnJxFCNsXqrOg"

--eXRc1DaTmrnEEnc13QOhrnJxFCNsXqrOg
Content-Type: multipart/mixed; boundary="oQMiQMsq31HVfddRVcTMb3gn3enVydpBW";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Message-ID: <0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
Subject: Re: [yocto] Where to add U-Boot argements bootargs and bootcmd?
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
 <CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
In-Reply-To: <CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>

--oQMiQMsq31HVfddRVcTMb3gn3enVydpBW
Content-Type: multipart/alternative;
 boundary="------------20E6BF6080F06EDFAAA64BFB"
Content-Language: en-US

--------------20E6BF6080F06EDFAAA64BFB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 15.07.2019 08:45, Gabriele Zampieri wrote:
> Hi,
>
> as far as I know, there is no mechanism to add custom bootargs and/or
> bootcmd to uboot via Yocto (correct me if I'm wrong). I usually patch
> the upstream uboot to achieve this task.
I also haven't heard of any standardized way. It may depend on the
target hardware
and the BSP layer you are using. Apart from patching the U-Boot, there
also might
be boot.cmd script to modify or the config.txt in case of the RPI, for
example.
>
> Best regards,
> Gabriele
>
> Il giorno lun 8 lug 2019 alle ore 22:43 JH <jupiter.hce@gmail.com
> <mailto:jupiter.hce@gmail.com>> ha scritto:
>
>     Hi,
>
>     Which Yocto files and which statement can I add my own U-Boot boota=
rgs
>     and bootcmd?
>
>     Thank you.
>
>     - jupiter
>     --=20
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------20E6BF6080F06EDFAAA64BFB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 15.07.2019 08:45, Gabriele Zampieri=

      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi, <br>
        </div>
        <div><br>
        </div>
        <div>as far as I know, there is no mechanism to add custom
          bootargs and/or bootcmd to uboot via Yocto (correct me if I'm
          wrong). I usually patch the upstream uboot to achieve this
          task.</div>
      </div>
    </blockquote>
    I also haven't heard of any standardized way. It may depend on the
    target hardware<br>
    and the BSP layer you are using. Apart from patching the U-Boot,
    there also might<br>
    be boot.cmd script to modify or the config.txt in case of the RPI,
    for example.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Best regards, <br>
        </div>
        <div>Gabriele<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 8 lug 2019 al=
le
          ore 22:43 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com"
            moz-do-not-send=3D"true">jupiter.hce@gmail.com</a>&gt; ha
          scritto:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi,<br>
          <br>
          Which Yocto files and which statement can I add my own U-Boot
          bootargs<br>
          and bootcmd?<br>
          <br>
          Thank you.<br>
          <br>
          - jupiter<br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"
            moz-do-not-send=3D"true">yocto@yoctoproject.org</a><br>
          <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------20E6BF6080F06EDFAAA64BFB--

--oQMiQMsq31HVfddRVcTMb3gn3enVydpBW--

--eXRc1DaTmrnEEnc13QOhrnJxFCNsXqrOg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdLCa8AAoJEPFAHS4cyxnviGUP/3e/IgQHAdTZD14hIH8Qwojc
XRcN7XPWireuG5iABQpSeV39bFTDRFGREMgs4zL7r6+jx9B+qAs45Z/DVsztczWn
a5Kt8l16lFtgIGOdaBFi1t++cx0L4QhshidPxotlodx9v6kZZSas/xyeLGMBPGbz
TQT2KdFIyW6GE9GdR7oIwP2CmvLFdWuS5uVKsdbMLsdDsO8xauPqMqbVpVRJq/je
adXfKlGMJfVBMnCYgIF/ovufuedokpjCJmtAREuZIDlAAT4g5wXODt+TIHsnWxJ0
P08oOUdk89egsPsp8bO3rumj3Kd6/8Pc4Z/69ArTAmZ8m4EBO9eVDBx26Q0cuBsd
AkdLE7B9dLJqXE54F6H7C/k6QwX48hhjTAL/+XxR4v85mQMmPXpH86CjVBVLrzSD
08wYrWAXeYc5IECDY8f+gtRSPtSUDzUpta19YhMt9qrFpPCcece4jSjuzDX0K8bS
HIpAODZf6sMXOlLDsU9oT9A7fRPQhTe01CNSyKulGTRaKe8oM/6Hoz8RlYbGzBQ/
JsMmGGdFMmK/6ZjX1iojQCUXxQ+DsDd8NqlSijDNnX850YLGIG9oo3v0k/4QON+Y
ZDIWEeK1mMtPUNRpNo8tNLmF9b2zX7wMnk9U1m3zLchXQxwtIU/PzA1ESFTu9AZn
REZgZ2yVyR6LAR5GOPrB
=X9Zd
-----END PGP SIGNATURE-----

--eXRc1DaTmrnEEnc13QOhrnJxFCNsXqrOg--
