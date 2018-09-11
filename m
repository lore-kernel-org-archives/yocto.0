Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 579F5E0093B; Tue, 11 Sep 2018 09:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB6AE0053F
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 09:43:35 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id i26-v6so12495905pfo.12
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=Gs3FTO+UxWAWnDYNJI2TnZu0ifupMmabNJIjvU0F1uU=;
	b=dh+Vpsv5115YHRWgijXqRixpjGF3FgJTZZVAN8b89zJ8KyQwHL+js/AKxJV/0ea7Yx
	vK5zjMetG2QzDtCVQKv1f1bixKxQ99A4LeJhKUknUhn0tLWNiNLTOc1p0OXPGKtFueTe
	VM2TCoS195Huz+slttXHQk+oQbbxKiep1PrFuTI9rfkslrTHSbSIDADOGOqXZIggoGlk
	RSwXlSEhUjKlrcda6rdACEKL6N1SXRQOjvWOIQpdv9KqU+ZZ0keYSG9KUVMjx3xKNy3R
	NPDlKtEF2hwJWgjihg/JvrfbiwfM/szI4oN+PbOOf/6I3vQn1gX9ssJ4XL36x6Vu7UwG
	qlFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to;
	bh=Gs3FTO+UxWAWnDYNJI2TnZu0ifupMmabNJIjvU0F1uU=;
	b=I5IT20ym581C4A+SgImkpRiFPcEAjmSbS4TfCsFFoUM8eQD5Eq++nspLoPwF4dSwrz
	TVTcw49Kp3BEU58NSAlUSVVmAvcgaGPQ4nzltUFUBPawf9nLHXDRuzgrGaMbsw0BBjNW
	WLMQ0g1bgjoUohwnKhTynhj9qfHvrKN2pUAjAkYE2/YfDL2vrQkX51VqaeNih4Yzsv/c
	OhDMXcUcKRSYe9uKdm7jyYKwG2yDS0FUd0waA/IlzmcRNr0Dct0vn+cHpc51aGHZJO1I
	b5CTbv8usAVtqHH6EY12kT2CLeSpQNph03aj6g2rVEv3/LqnDpou41LDce35h8/XyoVe
	HofA==
X-Gm-Message-State: APzg51Br03LVRMqXk5uH2FZlKzt7N0+6w4uIRXNBoDOsjD+irnobrGOC
	trBLMIGOmnMU0y2CYlD5jnsx8mgi
X-Google-Smtp-Source: ANB0VdZ3LLpQzol8zSqIbhttyDZcj63LowMFTXIGOPzF2YlIxreaZio1bKYIQy7dkjdMnzAw975FDA==
X-Received: by 2002:a63:1021:: with SMTP id
	f33-v6mr29052572pgl.72.1536684215051; 
	Tue, 11 Sep 2018 09:43:35 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:c4fb:7fa6:9077:b44d])
	by smtp.gmail.com with ESMTPSA id
	e8-v6sm22116622pgi.24.2018.09.11.09.43.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Sep 2018 09:43:34 -0700 (PDT)
To: idealsim <idealsim@laposte.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	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
Organization: HIMVIS LLC
Message-ID: <2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
Date: Tue, 11 Sep 2018 09:43:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
Subject: Re: [meta-raspberry]rpi-config
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
X-List-Received-Date: Tue, 11 Sep 2018 16:43:37 -0000
X-Groupsio-MsgNum: 42433
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="wpGXJNUaiKbVPb0yZBnldsOfxpFkm3Isj"

--wpGXJNUaiKbVPb0yZBnldsOfxpFkm3Isj
Content-Type: multipart/mixed; boundary="6gH1A5Hl2SfpK7wzTmc8JUWsWSIXg5eU1";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: idealsim <idealsim@laposte.net>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
Subject: Re: [yocto] [meta-raspberry]rpi-config
References: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
In-Reply-To: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>

--6gH1A5Hl2SfpK7wzTmc8JUWsWSIXg5eU1
Content-Type: text/plain; charset=iso-8859-15
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 9/11/18 8:17 AM, idealsim wrote:
> Hi i'm trying to build an image for a raspberry-pi 3 on branch sumo but=

> i have an error when i try to include rpi-config. See the issue under :=

>=20
> ERROR: Task do_populate_sdk in
> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/recip=
es-xxxx/images/console-image-xxxx.bb
> rdepends upon non-existent task do_package_write_rpm in
> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspberry=
pi/recipes-bsp/bootfiles/rpi-config_git.bb
>=20
> ERROR: Command execution failed: 1
>=20
> Do you have an idea how i can resolve this please ?
>=20

can you try this patch and report back if it helps or not

https://github.com/kraj/meta-raspberrypi/commit/095f642e7c064b44d12854966=
468cc5a2699d8fd

> Regards,
>=20
> Micka=EBl


--6gH1A5Hl2SfpK7wzTmc8JUWsWSIXg5eU1--

--wpGXJNUaiKbVPb0yZBnldsOfxpFkm3Isj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCW5fwsQAKCRC7BTNVkZ0z
FLSNAJ0bG9sNoZJ7PKkq1LS4kpTl65bZkQCfXGyX0us5QgUK7fW6d3VeJ2Hk/v8=
=L+Q6
-----END PGP SIGNATURE-----

--wpGXJNUaiKbVPb0yZBnldsOfxpFkm3Isj--
