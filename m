Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3C4EE00D48; Wed, 11 Jul 2018 12:31:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36C37E0044F
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:31:02 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id x10-v6so9173986pfm.4
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 12:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=UhKYcfmTaSa6kJH2uX5XijtPvnevHsUBRhqEgYFOIPs=;
	b=SBCz0fUfLTSZNRIDp2gjv2nlPo1hAMoSeHjy0vnR5/e6Boc/3AtH5MUNyOn5b/nQAk
	WiEo3PSVoTjEFVm/gLAdWOfD/6FSorUoPzVAfk/01DGcsdQIdDNZfFYOAqMsT7a5r5Jo
	aIU9/FxHrB1jN4U8SXy0WfmAjqITDcP5mbozQcp+0ksgW+PE9G+Qo0I6RFk8QultB9S4
	VWn8fmxDX6BnaWo46yyDBvfcv6S/5KFQzh98mlK7kGV6shfv3wd5PFpa6tdTMhI+3zxv
	g+DJP/wjKkFbHnFB0OSVrU00zA53l8vCc8Cbkic6wR3qySiCaHOgVTjO8EI5QYxlcT37
	vJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=UhKYcfmTaSa6kJH2uX5XijtPvnevHsUBRhqEgYFOIPs=;
	b=Fq+/BNMAiqRrCKUtGmJA1m0Q245WbjCjpRWbpKsyC0k1A3LRfjuKJXBT9C87spGp4x
	wjI1h8Ipqt9vlGBRAmipmLiYLW9+YHAtFr6jMUOuu4tAkdqXD9PHbm10WkyUaW1NK6ta
	zJVZ2qDKc1nMrxINwomzPnZvq6r/pEraheHqNIyM2RwExlHNR6t63rnlAsgcpdoCZGKm
	IXdD0hSD+NXXNk/9W+ipslGVYcFHBvAuinMfL4P95jLYaNDxI+mwwdsHbFcX7o9Rv7Kr
	1LIhhdeIbi7DlvERVzm4+CrNrTxI5CyZdyJtN/prAHCzDGHTFTiudFsPNl+xdTLuJxDv
	gtew==
X-Gm-Message-State: APt69E1IhS+kJ2Xa1eepnRqFLGzrexeeupI3WJKtgnNphE9zXcyDrNam
	rF9JkoGoS3xcxNxn8Zq0uh2IXjcK
X-Google-Smtp-Source: AAOMgpcO888BVc0ByRP4OvIqDgwjfkI/rflHMK1vwDEJbxzcZiIKa0FqdzPaQMZm7xHxYDxhxAjWIA==
X-Received: by 2002:a63:6949:: with SMTP id
	e70-v6mr28606020pgc.119.1531337461341; 
	Wed, 11 Jul 2018 12:31:01 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	d23-v6sm47592310pfe.2.2018.07.11.12.31.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Jul 2018 12:31:00 -0700 (PDT)
To: Simon Chamlian <simon.chamlian@mpbc.ca>, yocto@yoctoproject.org
References: <CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=jUwkOxXNkPnQ@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@gmail.com; prefer-encrypt=mutual; keydata=
	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
	vN0JVJf8p4e3anmLkFyASoeAKUumyGnf
Message-ID: <f5cb281b-731f-14a6-d611-906875e4c40f@gmail.com>
Date: Wed, 11 Jul 2018 12:30:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=jUwkOxXNkPnQ@mail.gmail.com>
Subject: Re: Which bb is chosen when several versions are available
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
X-List-Received-Date: Wed, 11 Jul 2018 19:31:03 -0000
X-Groupsio-MsgNum: 41756
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="4rBszoNliyEVB0YxRKk6Yid3h6Tz2flpD"

--4rBszoNliyEVB0YxRKk6Yid3h6Tz2flpD
Content-Type: multipart/mixed; boundary="ODS9by9J5EgDp3hQRHYF2f2taHfr6Ux69";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>, yocto@yoctoproject.org
Message-ID: <f5cb281b-731f-14a6-d611-906875e4c40f@gmail.com>
Subject: Re: [yocto] Which bb is chosen when several versions are available
References: <CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=jUwkOxXNkPnQ@mail.gmail.com>
In-Reply-To: <CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=jUwkOxXNkPnQ@mail.gmail.com>

--ODS9by9J5EgDp3hQRHYF2f2taHfr6Ux69
Content-Type: multipart/alternative;
 boundary="------------B3C557EFF3ADB270432BE9DE"
Content-Language: en-US

--------------B3C557EFF3ADB270432BE9DE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The one with the higher version number unless explicitly overridden with
PREFERRED_VERSION_php.

However, if there is also a recipe with <PN>_git.bb then that one will
be chosen as git indicates the latest.

:rjs


On 07/11/2018 12:28 PM, Simon Chamlian wrote:
> Hi,
>
> In the BSP yocto image, I have 2 recipes:
>
> /sources/meta-openembedded/meta-oe/recipes-devtools/php
>
> drwxrwxr-x 2 jay jay=C2=A0 4096 Jun 28 09:48 php
> -rw-rw-r-- 1 jay jay=C2=A0=C2=A0 232 Jun 28 09:48 php_5.5.38.bb
> <http://php_5.5.38.bb>
> drwxrwxr-x 2 jay jay=C2=A0 4096 Jun 28 09:48 php-5.6.26
> -rw-rw-r-- 1 jay jay=C2=A0=C2=A0 291 Jun 28 09:48 php_5.6.26.bb
> <http://php_5.6.26.bb>
> -rw-rw-r-- 1 jay jay 11980 Jun 28 09:48 php.inc
>
>
> If I add in my image recipe:
> CORE_IMAGE_EXTRA_INSTALL +=3D " \
> =C2=A0=C2=A0=C2=A0 php \=C2=A0=C2=A0
> "
>
> which version will be included?
>
> Thanks,
> S
>
>
>

--=20
Rudolf J Streif


--------------B3C557EFF3ADB270432BE9DE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>The one with the higher version number unless explicitly
      overridden with PREFERRED_VERSION_php.</p>
    <p>However, if there is also a recipe with &lt;PN&gt;_git.bb then
      that one will be chosen as git indicates the latest.<br>
    </p>
    <p>:rjs<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 07/11/2018 12:28 PM, Simon Chamlian=

      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANmTPBaL6gdfO0KhiQ9Eu2zsUvDPkxUtsi8uk=3DjUwkOxXNkPnQ@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>In the BSP yocto image, I have 2 recipes:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px"><span
            style=3D"font-family:monospace,monospace">/sources/meta-opene=
mbedded/meta-oe/recipes-devtools/php<br>
            <br>
            drwxrwxr-x 2 jay jay=C2=A0 4096 Jun 28 09:48 php<br>
            -rw-rw-r-- 1 jay jay=C2=A0=C2=A0 232 Jun 28 09:48 <a
              href=3D"http://php_5.5.38.bb" moz-do-not-send=3D"true">php_=
5.5.38.bb</a><br>
            drwxrwxr-x 2 jay jay=C2=A0 4096 Jun 28 09:48 php-5.6.26<br>
            -rw-rw-r-- 1 jay jay=C2=A0=C2=A0 291 Jun 28 09:48 <a
              href=3D"http://php_5.6.26.bb" moz-do-not-send=3D"true">php_=
5.6.26.bb</a><br>
            -rw-rw-r-- 1 jay jay 11980 Jun 28 09:48 php.inc</span></div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>If I add in my image recipe:</div>
        <div style=3D"margin-left:40px"><span
            style=3D"font-family:monospace,monospace">CORE_IMAGE_EXTRA_IN=
STALL
            +=3D " \<br>
            =C2=A0=C2=A0=C2=A0 php \=C2=A0=C2=A0 <br>
          </span></div>
        <div style=3D"margin-left:40px"><span
            style=3D"font-family:monospace,monospace">"</span></div>
        <div><br>
        </div>
        <div>which version will be included?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>S</div>
        <div><br>
        </div>
      </div>
      <!--'"--><br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif</pre>
  </body>
</html>

--------------B3C557EFF3ADB270432BE9DE--

--ODS9by9J5EgDp3hQRHYF2f2taHfr6Ux69--

--4rBszoNliyEVB0YxRKk6Yid3h6Tz2flpD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEE8vjdGrpkXMshtfshnUrlOPRyboFAltGWvMACgkQhnUrlOPR
ybrBwAf+KkBaNtkwEq/a0rKDk6yVXRglKY9ZGG5TGa/uq/u2tB1cdJpEDL7zyNX8
CH1anehElaJr0lPp4u7b8Bl2NvXn+vfLnrN8jB+ISFnARTNjMbEKwja6SpptqTC7
mSbf5TKhoQJIf35p5DSpqC43aEl09MBzMbuGSmSU2bXN/4jGtWRfSzxUGiunnfzH
qgTNPrjGNwsA86/DEXGdtIs9Ux5xaPt86Wc21nsLIRKJrPXoiUD/tMC5RRGG/CmR
2Wr3KCmF1UsW7KIeGe+f69f9B2NlYlBTE1tNKygPwCX7Nb8j69P/dbBw3h2+LIdU
dZ+Jeh1+Sdw/nhkGA+eG0J2mx3nvRg==
=QXt6
-----END PGP SIGNATURE-----

--4rBszoNliyEVB0YxRKk6Yid3h6Tz2flpD--
