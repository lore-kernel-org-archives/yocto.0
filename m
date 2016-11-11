Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC477E00529; Fri, 11 Nov 2016 10:18:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E63E0049D
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 10:18:01 -0800 (PST)
Received: by mail-pg0-f53.google.com with SMTP id x23so12441083pgx.1
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 10:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=YR632F2KlGHE4qWRe/bgCPAW6kCo5xR719IgV1hbizI=;
	b=h0i4CZkQcePS2SqMBsD5AORq98HjqjVGPbXFQRDBImBcV/6S53kOK5hM0fXu3U7Ky9
	stf00PRqNjfSNr1/wD6VYn6wIYnjXcP+qrFU9JQgCkLgi0Z5A5WGTaykVNG8dvkf1xsJ
	y/B+KREch12imdn7Nhm/XyL3ws97Rtq0Sz2wdHlDAi/vP4pfm3b2PofS17ezFelu45Oj
	HeOC4ortMItS3n6qJ8eMwnvQXWlHJsMgoY6bMV09KLcD8dlHeSPKr3224Pxk8jL/YesH
	twH3x+OSUqcVIaMkngEt/6XfjGuFtM94vpSfqPxvqwjV6OEgPpSL95Kc+Cxze11tlxQw
	8MFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=YR632F2KlGHE4qWRe/bgCPAW6kCo5xR719IgV1hbizI=;
	b=DSmoOgqULwsHr1xz/t1XTqRTirDuEfWuGsePlIbnMAnG4dQUu5Zm5WE+ieyYnqDRS1
	G0HcpD44FnIUzN2bcYho/l1kPa3T1FJyjZgG4iujXeP5/mejqwxmJcWyUvpul+/CfdTE
	Ue2hTZ+Ketpi67+bfHRnOhENCrOcpiZqdfblQZEzvvXRGot8iqcr2QBZvNE5bcCw86e5
	+Zd+PylVYo2xr8+sH3/22agFH3YTs4PCzdkbmT6hftphD3a056MpVvDod4KWm739XgBX
	T58s4brTg659zTm7BmygNPjXpDbu5QnWtz0ZVpR/cXQvqzi/ckCMJargNAbDsBy4/4LB
	AHLA==
X-Gm-Message-State: ABUngveqoEaFybdafVr0Vcp/gfNlQsdFN1qWonEWtUYajl2geLotNMjDgGnqZ7uMt/5SxA==
X-Received: by 10.99.204.81 with SMTP id q17mr6724211pgi.168.1478888280491;
	Fri, 11 Nov 2016 10:18:00 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:7d15:461d:dff0:71b0])
	by smtp.gmail.com with ESMTPSA id
	q9sm16726359pfg.47.2016.11.11.10.17.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Nov 2016 10:18:00 -0800 (PST)
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
	yocto@yoctoproject.org
References: <934811323.6209.1478856173340.JavaMail.root@gwapp>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <7cdefdbc-baa9-4dfd-f60d-64c0d3c9e459@gmail.com>
Date: Fri, 11 Nov 2016 10:17:54 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <934811323.6209.1478856173340.JavaMail.root@gwapp>
Subject: Re: mklibs in USER_CLASSES
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
X-List-Received-Date: Fri, 11 Nov 2016 18:18:02 -0000
X-Groupsio-MsgNum: 32947
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="As81b2KWDWcEJOmptee9jh922X4maf3uV"

--As81b2KWDWcEJOmptee9jh922X4maf3uV
Content-Type: multipart/mixed; boundary="5mkwjOHKdxSQu3Dd0LOaE9NbM9gSxIhVs";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
 yocto@yoctoproject.org
Message-ID: <7cdefdbc-baa9-4dfd-f60d-64c0d3c9e459@gmail.com>
Subject: Re: [yocto] mklibs in USER_CLASSES
References: <934811323.6209.1478856173340.JavaMail.root@gwapp>
In-Reply-To: <934811323.6209.1478856173340.JavaMail.root@gwapp>

--5mkwjOHKdxSQu3Dd0LOaE9NbM9gSxIhVs
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/11/16 1:22 AM, =EC=8B=A0=ED=83=9D=ED=98=84 (Taek Hyun Shin) wrote:
> Hi,
>=20
> Somebody help met plz.
>=20
>=20
> I'm using Yocto Project 2.0
>=20
> I want to reduce my rootfs due to fast execute binaries.
>=20
> So, I did apply mklibs using USE_CLASSES

if you use prelink as well then make sure mklibs appear before prelink in=

USE_CLASSES

>=20
> But, I got error message as follow:
>=20
>=20
>  208 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibgmp.so.10
> ; copying
>=20
>  209 reducing libgobject-2.0.so.0
>=20
>  210 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibgobject-2.0.so.0
> ; copying
>=20
>  211 reducing libgstreamer-1.0.so.0
>=20
>  212 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibgstreamer-1.0.so.0
> ; copying
>=20
>  213 reducing libhogweed.so.4
>=20
>  214 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibhogweed.so.4
> ; copying
>=20
>  215 reducing libinput.so.10
>=20
>  216 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibinput.so.10
> ; copying
>=20
>  217 reducing libjpeg.so.9
>=20
>  218 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibjpeg.so.9
> ; copying
>=20
>  219 reducing liblog.so
>=20
>  220 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
iblog.so ;
> copying
>=20
>  221 reducing libm.so.6
>=20
>  222 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/lib//libm.=
so.6 ;
> copying
>=20
>  223 reducing libmenuw.so.5
>=20
>  224 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibmenuw.so.5
> ; copying
>=20
>  225 reducing libmount.so.1
>=20
>  226 No pic file found for
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/lib//libmo=
unt.so.1 ;
> copying
>=20
>  227 reducing libmtdev.so.1
>=20
>=20
> How can I create the pic file each libraries
>=20
>=20
> Help me plz TT
>=20
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
>=20


--5mkwjOHKdxSQu3Dd0LOaE9NbM9gSxIhVs--

--As81b2KWDWcEJOmptee9jh922X4maf3uV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgmC1YACgkQuwUzVZGdMxQ6HgCdG+tF0gyDYN8swK1MpLFBGE//
o+kAn3mZJrTTIQ3jQIoP+in1U7BgnCXU
=HDLO
-----END PGP SIGNATURE-----

--As81b2KWDWcEJOmptee9jh922X4maf3uV--
