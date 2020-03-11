Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6985.1583887051502557634
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 17:37:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=s0lPEnf2;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F01FCE0181A; Tue, 10 Mar 2020 17:37:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF15BE01818
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 17:37:28 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id b72so278826pfb.11
        for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 17:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=bXE9O/fTzxWxMGDWCDIMYiJWy7aNeCcR1ONzj0GtvtM=;
        b=s0lPEnf2TzbgUdoOv6AH0exzsIyRG66pHKHSMtbF+Z7oBAUzuGWjKeb5TvQJh7Ma/Z
         XL6hHnuzTK+lJ7hMsDzN3tGefdJXkTIDcgzw6TgXr0rYykFTf7YeYrW/XUeCBx4sywRJ
         DLdLgr78GQThyXxvMB0NoXkX8z7GNO6BYORARfe4sdoENsN5Pq4XK+qWEf+JDkM3CJ4I
         C+D+YsWUwU3WiR18/grvRChMnQJjQ+zIGwdrD4iECDqUWhQmqqfwObdr4BNecB85xDwZ
         mnBOioJ7bJ2/R0/GhqrKlVfgd3HJNGTpQ9EzEL7eFwj5bJ5i3UVxaExTJ9aKCa+Lj0PY
         hwzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=bXE9O/fTzxWxMGDWCDIMYiJWy7aNeCcR1ONzj0GtvtM=;
        b=cP/eJ6A9QFKBJSHmbdqHj8R4z3+51c1Ew+fuuojOmx0jp0nJEA0zNAuQZnBibpwpXR
         rv1BhqOkwh324K4ZADPYRMvd/2lfF3r1XKK7rLpUz+C4UbvDpbKJQ3DlWloaFOQ6u+3D
         oqk8eMiQXCINmB3JyCIpGpySICgTvcjizJnuuHs8JtJ5uDKtkS6KgifZACxeZvRDF1Gv
         eVXuxIwib2K2NBsbxwChUO+yqwzdWuFysad47zRf/z9le+5ZZCfkI3tN/CRzzK3nVWUi
         LK0SVwUC91j0RmvyDCKZiEAk286Lq5RsAVyuo9RVDYGo2isHqvapF3Kpm2E0mxqoq38Q
         Z89w==
X-Gm-Message-State: ANhLgQ3jifc4FZ65DzHL2XthIs2QFZDcSMDo4gSskv8xHLIodh/SoYPx
	/QmEPLVVA5GKzVEsQIOkiWRyLaQ39Mo=
X-Google-Smtp-Source: ADFU+vssJ0SEo6KTaVyzWwDCROOdPXq+YwPuwV4Y09xoHO+1RQ1rmHtc0Sy8dxxe5hAHOi2hJMNTEg==
X-Received: by 2002:aa7:94b6:: with SMTP id a22mr221351pfl.176.1583887047429;
        Tue, 10 Mar 2020 17:37:27 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id o2sm42630588pfh.26.2020.03.10.17.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 17:37:26 -0700 (PDT)
Subject: Re: [yocto] uboot netboot
To: Trevor <cashtrevor@msn.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <c280ff2d-fc49-6eeb-58cb-5a3eab03a2c6@ibeeto.com>
Date: Tue, 10 Mar 2020 17:37:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
X-Groupsio-MsgNum: 48729
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Nl2ZxqndAL9eEkvuYlZFfVEVq4q5NstqM"

--Nl2ZxqndAL9eEkvuYlZFfVEVq4q5NstqM
Content-Type: multipart/mixed; boundary="UgSwEGMKlk6Ubt14Gxu17G82yqCPC58WN"

--UgSwEGMKlk6Ubt14Gxu17G82yqCPC58WN
Content-Type: multipart/alternative;
 boundary="------------4D50F19BC08F99474CA5E6AC"
Content-Language: en-US

--------------4D50F19BC08F99474CA5E6AC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Trevor,


I am afraid the error message did not make it into your previous e-mail.


:rjs


On 3/10/20 5:29 PM, Trevor wrote:
> Hello Yocto Project,
>
> I am working with a IMX8 based board from TechNexion.
>
> I am having troubles getting the board to boot using netboot from
> within uboot.=A0=A0
>
> I have the tftp server setup as well as the NFS server setup on the
> host machine.=A0=A0
>
> Initially seems things to mount ok and the kernel starts to work with
> the remote filesystem.=A0 then I get the following message in the kernel
> boot:
>
>
>
>
>
>
> Trevor
>
>
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------4D50F19BC08F99474CA5E6AC
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>Hi Trevor,</p>
    <p><br>
    </p>
    <p>I am afraid the error message did not make it into your previous
      e-mail.</p>
    <p><br>
    </p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/10/20 5:29 PM, Trevor wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0@CH2PR13MB3368.namprd13.=
prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;ma=
rgin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello Yocto Project,</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am working with a IMX8 based board from TechNexion.</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am having troubles getting the board to boot using netboot
        from within uboot.=A0=A0</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I have the tftp server setup as well as the NFS server setup on
        the host machine.=A0=A0</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Initially seems things to mount ok and the kernel starts to work
        with the remote filesystem.=A0 then I get the following message in
        the kernel boot:</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div id=3D"divtagdefaultwrapper" dir=3D"ltr"
            style=3D"font-size:12pt; color:rgb(0,0,0);
            font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple
            Color Emoji&quot;,&quot;Segoe UI
            Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
            Symbol&quot;,&quot;Android
            Emoji&quot;,EmojiSymbols,EmojiFont,&quot;Apple Color
            Emoji&quot;,&quot;Segoe UI
            Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
            Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
            <p style=3D"margin-top:0px; margin-bottom:0px">Trevor</p>
            <p style=3D"margin-top:0px; margin-bottom:0px"><img
                moz-do-not-send=3D"true"><br>
            </p>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------4D50F19BC08F99474CA5E6AC--

--UgSwEGMKlk6Ubt14Gxu17G82yqCPC58WN--

--Nl2ZxqndAL9eEkvuYlZFfVEVq4q5NstqM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl5oMsQACgkQjYyoKScz
m3X8OQf/ZXNVrpFlHxsjBSjcZjZ+U4ctF63tQlN50xNey+EF3Y9N7D/f7iUbeRQ/
TFPQQ7XPm4TAa4kmB8X1LQYwzh6S6AXRO1eB8JRQiy7y/2dA/eFb7O5W8cgdfFOv
zvwG2enOjeJn2KPIrQuWgZDZPTiOpmuMEm3H/A6VdDUAuBlxIInFi2aGvaxe4H/9
MLbnAvwf5oQ32tKQqDN3aby8HOcrCn8QPPF27G08/ox9fQ62QsOmO/XHx7Fm5GUZ
7iwc/FBPA0EsjuIppO/W6CI7gwKl7OLDN9bapYnDucTpr1VOCWuO6nEkk+0GyaYS
CozrAtZalQGsCZUxNEmy1RH3x/YTOw==
=/kIL
-----END PGP SIGNATURE-----

--Nl2ZxqndAL9eEkvuYlZFfVEVq4q5NstqM--
