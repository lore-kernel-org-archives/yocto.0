Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C9F1E0086B; Fri, 13 Apr 2018 16:07:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E7C7E00529
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 16:07:49 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id v5-v6so6877826plo.4
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 16:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=7J6ttWlZMj6BgUdZzD3bhnx/a5u08dRqFEFhw63tUJw=;
	b=JYhupRzlNm+3rRNq2DfF2p9oeKbJdJHlk46MgLY4jAucJIkHCuqBoj0Ov9CoMBbqP/
	rKKYgeFvQDAgBNoi6OpEVbZSFqNEMA3zprCNRU4aU8VkxZ5UZFnhL0Km1JPn1JAqW71X
	/25dozDgN1h91Zb6+9V+FHcO+NyzBYAQSM1oH7XmrHAaCnyXxPMFGF+nWzAJHlNCS0vV
	tfxi3t1OgKwPTm60tE+sJ940NdX9z9aBw1Op4wH0x5zwyMOljf9ZHoOeCEXfpC9WQFyh
	i8UEtMfk/P9xqo3al9Yu42caOPSVaMQGGcJB4w5p4HGhlWWathLXncHWCfws6LWqnXG1
	EPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=7J6ttWlZMj6BgUdZzD3bhnx/a5u08dRqFEFhw63tUJw=;
	b=Y+DzS2wzap313lD9q2j32ObFYl6znlGEEAqWKpgT/iknkwsLaBwJxYHwve6vwVDtMt
	NdabqUC9RE1C4pppN3wCJ5dP7RoiYnBhXv3az9yM7spHAhgvJBFOijc0Ld4IX7pB+hBD
	790ROXFHN4eShlWUEU41sEsHU0iEgnEJOjcZulv6A6wqUQB/jyKVaWPOp7fejbLFtfkc
	UKlzlaOBNeVdC9tWsLEsMV6uSiMoqUWtov/NRHkFAsEvDLE5OmHlPZO2NpGZztKbqX73
	6614/A18fSDZVjD8QJ7mLZLT3lAuv7/Cf1ODO+GNe+nRfklDtgEtUhggwCGKZ7VTXzEe
	P7xw==
X-Gm-Message-State: ALQs6tAfEiYYV0BiN8qIONq+mK1u4squAzin/CdlcJYc6P5YInw4OPyT
	7xuiBTZwOExK3uod9nf4hZpT4g==
X-Google-Smtp-Source: AIpwx48KePmwnTyY8g6neZFvXgdYzm5JOcnzgTGBl1cWbcgJ8kXNiySnCwYE5gBPAcio/yb/OrgRgg==
X-Received: by 2002:a17:902:bf03:: with SMTP id
	bi3-v6mr6724824plb.368.1523660868767; 
	Fri, 13 Apr 2018 16:07:48 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:dd04:5ab2:7006:f760?
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	v186sm12809039pfb.182.2018.04.13.16.07.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 16:07:48 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>
References: <1523659287-17805-1-git-send-email-akuster@mvista.com>
	<20180413224431.GA2157@jama>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <fbe286c0-ccc4-296b-f4df-de419180fc7e@gmail.com>
Date: Fri, 13 Apr 2018 16:07:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20180413224431.GA2157@jama>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3][PATCH 1/2] layer: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Fri, 13 Apr 2018 23:07:50 -0000
X-Groupsio-MsgNum: 40706
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="d9U0OWodx4sIzSWB9UD4dSNx3RzD3Vxin"

--d9U0OWodx4sIzSWB9UD4dSNx3RzD3Vxin
Content-Type: multipart/mixed; boundary="SCLrChJY0tzPrSTSJC1G5lDMDOGpMBYiv";
 protected-headers="v1"
From: akuster808 <akuster808@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Message-ID: <fbe286c0-ccc4-296b-f4df-de419180fc7e@gmail.com>
Subject: Re: [yocto] [meta-qt3][PATCH 1/2] layer: add LAYERSERIES_COMPAT
References: <1523659287-17805-1-git-send-email-akuster@mvista.com>
 <20180413224431.GA2157@jama>
In-Reply-To: <20180413224431.GA2157@jama>

--SCLrChJY0tzPrSTSJC1G5lDMDOGpMBYiv
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 04/13/2018 03:44 PM, Martin Jansa wrote:
> On Fri, Apr 13, 2018 at 03:41:26PM -0700, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>> ---
>>  conf/layer.conf | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 84ab5f7..2100ffb 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -8,3 +8,4 @@ BBFILE_COLLECTIONS +=3D "qt3"
>>  BBFILE_PATTERN_qt3 =3D "^${LAYERDIR}/"
>>  BBFILE_PRIORITY_qt3 =3D "6"
>> =20
>> +LAYERSERIES_COMPAT_qt3-layer =3D "rocko"
> Shouldn't this be just qt3 like BBFILE_* variables above?
yes. I am hell bent on doing v2's today ; )

thanks,
Armin
>
> Regards,
>
>> --=20
>> 2.7.4
>>
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



--SCLrChJY0tzPrSTSJC1G5lDMDOGpMBYiv--

--d9U0OWodx4sIzSWB9UD4dSNx3RzD3Vxin
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJa0Tg4AAoJEO6LtJn0Vuf5D7oQAMFEDLJ7XJFCVhJNsNH7AYhg
3W5TNjsaw5cDjf2HONhKhkq6i5x+L4XttxrS4IjtszVJNs7tIhMfBbofTaklUetz
ox38AXbsp5rt+1HScZOBBqFrii6qqEW6mNODnQ/oKmbxQxirar4W7vNTqE+ryOlg
/4r0LjGFrwog2GEilRXr8U/IHOm3NwTH0qr5U4NTs9KLgX5eKYqzL1zrB/dmnKi5
SRBg6+Zs3wO/CX28jegj8a/dYTqeBYUOOs7wQKoMqPJ72iBGxcHfk1ZgbiKGVmkX
fneiRNocKendk4SLhd/iEGoStRu3tgu3LoEJ25uOKNisfdN2Cq090ubgWDwIoo+J
FsVJ0iuQPK8Kows78ozVzvF+caNJxVpxfJeRu3JOZ4TUsENXe4Oe6O2kXhw/r9uL
NRsDCWD+wV4OJEsefvWZL+oKEuE4BkBdwDL/Kd+3+5HZbfCF+NfpovrWXp+UQf+K
7CInHYK7bDReqAQvQ0h6ruYiJTQYgBZBDnoYkz3SLyqbDbwL2aPWzgZ+CgAEWyCd
gcjpnqgJpYAl8ouu/GjYa7NB/w6kiHfh1qYeb44bKTiiVQ+oTL9atVXi9pV3GmtL
mjbgcEdKdrQ6rFuifJhCMEuFv/8mOJUv5ehS40Fqq7PZcBcDW7oL8+pP7eTaN4OL
oOQ83Q3Q967V65K/73wt
=JtdC
-----END PGP SIGNATURE-----

--d9U0OWodx4sIzSWB9UD4dSNx3RzD3Vxin--
