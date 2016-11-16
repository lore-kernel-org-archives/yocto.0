Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1970DE00C1A; Tue, 15 Nov 2016 22:38:31 -0800 (PST)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD25DE00BF8
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 22:38:27 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id c4so6687360pfb.3
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 22:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=TLjb4NUmogYgzQIggxj82Oqvs7UCEoz+dFK58b05ZCI=;
	b=uQ+KT9MzsDn9rQHB7n/jsc69h886foJkp+ndAtn2mlY4yAGPS2FwFU3aoOo33N3D6N
	+eDUScbEz019xjL/T4EyE21pbepGLS7HPJwTx84QWQBNmTWTJiMsOoogcZCoMkbX/xvV
	klfqcje5Pz3O6l/N97KGUQvTxsY05IepHmTL9nPRDLWtLN5POqRrAnNc0pqs0/qGF8xz
	T/vbeW3+sJGmv8pZsN6jXVBEmYQrK57awi40VJT4dBr/qyrp6KvrHyinfCus1BVZCBGW
	kZQAe5zOuYqVChgkx5c4sANIMIR9Hzdp60JNZdioocnYj9+i75rrx4OUX48nin6UQWfv
	RhfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=TLjb4NUmogYgzQIggxj82Oqvs7UCEoz+dFK58b05ZCI=;
	b=fHSVtoyuUz88pJ3QXTkPZ5V5VgWSzbGKL0AmYJeiHcJqrV7jIDKNzAI0uzB2y+WBjU
	LmLU5vbip5ipMppofFo3Yqk9xtffThgeKZLtz6Ccjv6jT/FdCQtkpgcGnHZb6N1ojYOK
	p/Y/VddpzOrHIPPnw2LwuE4JfemhN5fM+oZkl0ExaDLM6ztsnTQ4BjK99pvgZK4P7JeI
	uQcrNmuN98RUo8pZeYS+M21V5e8ATj0wJkkyd54HDQ5CwjUUoW+0yz/dq0fDIe879jZ1
	9Ude/nCofOx2rFVk5viaja+SN6tH51TUX7rZ3ADhOPIEDSTsKeisl1TS60L8qR3RL8vR
	1jbA==
X-Gm-Message-State: ABUngve5Xfu5sicpqFLTgkztHI9l+KWmOCJMFTVGsruxRNWX8QCaAC9WQhHVUlvyK9yyTQ==
X-Received: by 10.99.229.17 with SMTP id r17mr4732682pgh.97.1479278306762;
	Tue, 15 Nov 2016 22:38:26 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:3c7d:de15:1971:ad3c])
	by smtp.gmail.com with ESMTPSA id
	r21sm49276048pfd.44.2016.11.15.22.38.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Nov 2016 22:38:26 -0800 (PST)
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
	yocto@yoctoproject.org
References: <53113058.17466.1479210978402.JavaMail.root@gwapp>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <065fdf27-0ea4-5762-db79-33741e5928c0@gmail.com>
Date: Tue, 15 Nov 2016 22:38:19 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <53113058.17466.1479210978402.JavaMail.root@gwapp>
Subject: Re: mklibs in USER_CLASSES (Khem Raj)
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
X-List-Received-Date: Wed, 16 Nov 2016 06:38:31 -0000
X-Groupsio-MsgNum: 32989
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="LErAMJGLDwFmuFNMlRseulr6mOFJreDpV"

--LErAMJGLDwFmuFNMlRseulr6mOFJreDpV
Content-Type: multipart/mixed; boundary="TlRdMHSPiKR22kjAP1dD5vJXMuSaTvvho";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
 yocto@yoctoproject.org
Message-ID: <065fdf27-0ea4-5762-db79-33741e5928c0@gmail.com>
Subject: Re: [yocto] mklibs in USER_CLASSES (Khem Raj)
References: <53113058.17466.1479210978402.JavaMail.root@gwapp>
In-Reply-To: <53113058.17466.1479210978402.JavaMail.root@gwapp>

--TlRdMHSPiKR22kjAP1dD5vJXMuSaTvvho
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/15/16 3:56 AM, =EC=8B=A0=ED=83=9D=ED=98=84 (Taek Hyun Shin) wrote:
> I did use only image-mklibs TT
>=20
> And, I did try modify some project make file for mklibs. add *_pic.a
>=20
> So, I did resolve not pic file found for error message. just modified p=
ackage.
>=20
> But, other error occurred as follow:
>=20
> __dso_handle undefined
>=20
>=20
> Does mklibs can't support c++? only support c library??
>

Can you check if OE mklib has this patch applied ?

https://lists.debian.org/debian-boot/2013/01/msg00239.html


> =20
>=20
> =20
>=20
> =20
>=20
> =20
>=20
> /Thanks & Best Regards,/
>=20
> /*Wily Taekhyun Shin*/
>=20
>=20
> *Telechips Inc.*
>=20
> *R&D Center / Automotive Group / Linux Team / Research Engineer*
>=20
> Tel : +82-2-3443-6792(Ext. 390), M.P : +82-10-4376-5530, E-mail
> : thshin@telechips.com <mailto:rami@telechips.com>
>=20
> This mail and attachments contain confidential information of Telechips=
 Inc.
> which has its own authority.=20
>=20
> It is not allowed to disclose,transmit or use this confidential informa=
tion to
> the third parties without the prior written consent
> of Telechips Inc. by any form or means.
> If you are not the intended recipient, please notify the sender immedia=
tely
> and do not disclose the contents and destroy all
> copies of the original message.
>=20
>=20
>   *------------------Original Message--------------------*
>   Sender : yocto-request@yoctoproject.org<yocto-request@yoctoproject.or=
g>
>   Received : 2016-11-12 05:02:24
>   To : yocto@yoctoproject.org<yocto@yoctoproject.org>
>   Title : yocto Digest, Vol 74, Issue 56
>=20
> Send yocto mailing list submissions to
> yocto@yoctoproject.org
>=20
> To subscribe or unsubscribe via the World Wide Web, visit
> https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
> yocto-request@yoctoproject.org
>=20
> You can reach the person managing the list at
> yocto-owner@yoctoproject.org
>=20
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>=20
>=20
> Today's Topics:
>=20
>    1. Re: mklibs in USER_CLASSES (Khem Raj)
>    2. Re: Buildbot / Autobuilder / custom? (Beth 'pidge' Flanagan)
>=20
>=20
> ----------------------------------------------------------------------
>=20
> Message: 1
> Date: Fri, 11 Nov 2016 10:17:54 -0800
> From: Khem Raj <raj.khem@gmail.com>
> To: ??? (Taek Hyun Shin) <thshin@telechips.com>,
> yocto@yoctoproject.org
> Subject: Re: [yocto] mklibs in USER_CLASSES
> Message-ID: <7cdefdbc-baa9-4dfd-f60d-64c0d3c9e459@gmail.com>
> Content-Type: text/plain; charset=3D"utf-8"
>=20
>=20
>=20
> On 11/11/16 1:22 AM, ??? (Taek Hyun Shin) wrote:
>> Hi,
>>=20
>> Somebody help met plz.
>>=20
>>=20
>> I'm using Yocto Project 2.0
>>=20
>> I want to reduce my rootfs due to fast execute binaries.
>>=20
>> So, I did apply mklibs using USE_CLASSES
>=20
> if you use prelink as well then make sure mklibs appear before prelink =
in
> USE_CLASSES
>=20
>>=20
>> But, I got error message as follow:
>>=20
>>=20
>>  208 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libgmp.so.10
>> ; copying
>>=20
>>  209 reducing libgobject-2.0.so.0
>>=20
>>  210 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libgobject-2.0.so.0
>> ; copying
>>=20
>>  211 reducing libgstreamer-1.0.so.0
>>=20
>>  212 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libgstreamer-1.0.so.0
>> ; copying
>>=20
>>  213 reducing libhogweed.so.4
>>=20
>>  214 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libhogweed.so.4
>> ; copying
>>=20
>>  215 reducing libinput.so.10
>>=20
>>  216 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libinput.so.10
>> ; copying
>>=20
>>  217 reducing libjpeg.so.9
>>=20
>>  218 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libjpeg.so.9
>> ; copying
>>=20
>>  219 reducing liblog.so
>>=20
>>  220 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
liblog.so ;
>> copying
>>=20
>>  221 reducing libm.so.6
>>=20
>>  222 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/lib//libm=
=2Eso.6 ;
>> copying
>>=20
>>  223 reducing libmenuw.so.5
>>=20
>>  224 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//=
libmenuw.so.5
>> ; copying
>>=20
>>  225 reducing libmount.so.1
>>=20
>>  226 No pic file found for
>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/lib//libm=
ount.so.1 ;
>> copying
>>=20
>>  227 reducing libmtdev.so.1
>>=20
>>=20
>> How can I create the pic file each libraries
>>=20
>>=20
>> Help me plz TT
>>=20
>> =20
>>=20
>> =20
>>=20
>> =20
>>=20
>> =20
>>=20
>> /Thanks & Best Regards,/
>>=20
>> /*Wily Taekhyun Shin*/
>>=20
>>=20
>> *Telechips Inc.*
>>=20
>> *R&D Center / Automotive Group / Linux Team / Research Engineer*
>>=20
>> Tel : +82-2-3443-6792(Ext. 390), M.P : +82-10-4376-5530, E-mail
>> : thshin@telechips.com <mailto:rami@telechips.com>
>>=20
>> This mail and attachments contain confidential information of Telechip=
s Inc.
>> which has its own authority.=20
>>=20
>> It is not allowed to disclose,transmit or use this confidential inform=
ation to
>> the third parties without the prior written consent
>> of Telechips Inc. by any form or means.
>> If you are not the intended recipient, please notify the sender immedi=
ately
>> and do not disclose the contents and destroy all
>> copies of the original message.
>>=20
>>=20
>>=20
>=20
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: signature.asc
> Type: application/pgp-signature
> Size: 204 bytes
> Desc: OpenPGP digital signature
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/2016111=
1/ebbe7d6d/attachment-0001.pgp>
>=20
> ------------------------------
>=20
> Message: 2
> Date: Fri, 11 Nov 2016 18:37:53 +0000
> From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
> To: Alain Achkar <alain.achkar@triacta.com>, joshua.g.lock@intel.com
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Buildbot / Autobuilder / custom?
> Message-ID: <1478889473.18810.3.camel@toganlabs.com>
> Content-Type: text/plain; charset=3D"UTF-8"
>=20
> On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
>> Hello Joshua!
>>=20
>> We are using Yocto to build for the Variscite DART-6UL SoM which is
>> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php?title=3D=
D
>> ART-6UL_Yocto_Jethro_R1_build).
>>=20
>> Currently, developers run builds manually on their desktops. We are
>> considering using a continuous integration server. I found out that
>> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
>> read most of the introductory documentation.
>>=20
>> Would you recommend that we install only BuildBot and configure it to
>> build what we need?
>>=20
>> OR
>>=20
>> Would you recommend that we install Autobuilder (and BuildBot) and
>> configure it to build what we need?
>=20
> Actually, the yocto-autobuilder already contains buildbot so no need
> for both.
>=20
> If you read:
>=20
> http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUIC=

> KSTART
>=20
> and probably some of the other READMEs and the documentation in the
> docs directory of the yocto-autobuilder directory, it should get you
> started in the right direction.
>=20
> Feel free to ask questions if you need help.
>=20
> -b
>=20
> Elizabeth 'pidge' Flanagan
> Founder/CTO Tog?n Labs
> www.toganlabs.com
>=20
>>=20
>> What is the faster path to get up and running?
>>=20
>> Thanks!
>> Alain.
>>=20
>> --?
>> Alain Achkar, M.Eng. | Software Engineer
>> Triacta Power Solutions
>> (O)?613.256.2868?(C)?613.406.6520
>> www.triacta.com??
>=20
>=20
>=20
>=20
>=20
> ------------------------------
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> End of yocto Digest, Vol 74, Issue 56
> *************************************
>=20
>=20
>=20


--TlRdMHSPiKR22kjAP1dD5vJXMuSaTvvho--

--LErAMJGLDwFmuFNMlRseulr6mOFJreDpV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgr/uAACgkQuwUzVZGdMxToTwCfQhMQje5cSXnq+TSMKSeozHGe
/G8An3awtMgMxDewhEXuR/AG/kf2C9Cp
=h8WN
-----END PGP SIGNATURE-----

--LErAMJGLDwFmuFNMlRseulr6mOFJreDpV--
