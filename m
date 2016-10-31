Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B26E00752; Mon, 31 Oct 2016 09:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDBFE006C7
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:41:21 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id a136so5771763pfa.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=q8iQyhJC53MemKjYyaXWlX9Y07TXnjRKsb1j3STxpxw=;
	b=wYJfuTqG0WddC4AweepQ5Yn1EZqhp6OXyvN1GNB70ZzKlK0wcgcia2Gmgu0S+PRbG/
	9e3emBBrT8X5lvEnROg8MsMdkWBGOP2fbA8LnsqaIcnjg6XG9Fbiox4fTwbbETpNAfSt
	rFFGzEukIgAZgbXl0oy6Vk3kKSd5no3xbPuGnH+Wc0sP1Yv7lkQjgWzcHzNQyMkQQ1HC
	yg83Dmmh2ZfpsBZIZmD6uAtBCtU3j9elyMkZCg7lbwAeiHoOuAdnAO0jtS1PKf2UN79J
	dH31LD0K6KAbCGFsnQyziVyHW0ColDj0L7bhfyU6+zPcSL5sf1AyAfZYgBpdqaBdU2yO
	15qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=q8iQyhJC53MemKjYyaXWlX9Y07TXnjRKsb1j3STxpxw=;
	b=QfUxfsCSqp7wtt0wC6xPASLDk7I28gMIBefZtozdaTn8t0K8xE/kEV8VdX0o2ZSWQ8
	G9FS401mU1ejmUzCy//5ZbHjviQVBcthKv3kaZjrDjTrz2burWdiiBOmwTZInfCQobTc
	QqbPJ0WWHpI4vcXz5d+ztmer3ckXzypu4PxxjqpCH57caRCYUAHBMloNvZsQgJnGDbHT
	+B9Wnypvsu9oBdXzfC92GrTEHsa5Uea4UxDxOck7y0+hg1j/uWVCSKb5N9ukaawx2DDS
	eNLGGVzRh//tFjelgD4e2fi5ynTD8CIfGQCcmBkcpqoPh0hBtwHwTzTJWQzEhHwYQnn9
	v9xA==
X-Gm-Message-State: ABUngvdWY+azMg05MvbETHMJcVVGiiK8zneCCCadLfUw6FvbSiLvoFz5Zhivx+JU/Fv7xw==
X-Received: by 10.98.0.198 with SMTP id 189mr51775182pfa.75.1477932081665;
	Mon, 31 Oct 2016 09:41:21 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:793b:10a4:267d:c6fc?
	([2601:646:8882:b8c:793b:10a4:267d:c6fc])
	by smtp.gmail.com with ESMTPSA id
	n2sm36700881pfa.75.2016.10.31.09.41.20
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 09:41:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161031141011.GA9939@carbonA>
Date: Mon, 31 Oct 2016 09:41:18 -0700
Message-Id: <7D7B27EF-25D7-491A-B19F-098CDEA59106@gmail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
	<1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
	<20161031141011.GA9939@carbonA>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/6] rpi-base.inc: build vc4-fkms-v3d.dtbo
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
X-List-Received-Date: Mon, 31 Oct 2016 16:41:23 -0000
X-Groupsio-MsgNum: 32699
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7FE708E7-A531-4768-A98D-2DAB1598C7A4";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_7FE708E7-A531-4768-A98D-2DAB1598C7A4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Oct 31, 2016, at 7:10 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> On Thu, Sep 22, 2016 at 07:47:54AM +0200, Andreas M=FCller wrote:
>> For those who want to run closed source driver with mesa. See further =
details
>> at [1]
>>=20
>> [1] http://anholt.livejournal.com/47717.html
>>=20
>> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
>> ---
>> conf/machine/include/rpi-base.inc | 1 +
>> 1 file changed, 1 insertion(+)
>>=20
>> diff --git a/conf/machine/include/rpi-base.inc =
b/conf/machine/include/rpi-base.inc
>> index 69774f4..737e842 100644
>> --- a/conf/machine/include/rpi-base.inc
>> +++ b/conf/machine/include/rpi-base.inc
>> @@ -38,6 +38,7 @@ KERNEL_DEVICETREE ?=3D " \
>>     overlays/w1-gpio-pullup.dtbo \
>>     overlays/pi3-miniuart-bt.dtbo \
>>     overlays/vc4-kms-v3d.dtbo \
>> +    overlays/vc4-fkms-v3d.dtbo
>=20
> There is a problem with this change. It seems like this dtb overlay is
> not availble in kernel version above 4.4. Don't know exactly why.
>=20

Interesting, did you apply latest firmware patch ?

>>     "
>> KERNEL_IMAGETYPE ?=3D "Image"
>>=20
>> --
>> 2.5.5
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --
> Andrei Gherzan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_7FE708E7-A531-4768-A98D-2DAB1598C7A4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgXdC4ACgkQuwUzVZGdMxTOggCfZ0LgepNagwMo2PgWHSC1j7m3
WzIAnREBINmWGCFQ1fJi8JQFHBaovZFO
=MYSK
-----END PGP SIGNATURE-----

--Apple-Mail=_7FE708E7-A531-4768-A98D-2DAB1598C7A4--
