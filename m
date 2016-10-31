Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA6C7E00C3A; Mon, 31 Oct 2016 09:53:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9513CE00803
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:53:07 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id a136so5794250pfa.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=fhU6DcIPNTfxbKB2oH03toHP8rtfcdwMraRy9TgSW4E=;
	b=amYpe1h472Zp5VTr68lDdbwnacoZJ1yE8+gmaBvNWhed5RVS9Yj0Ycc6KOHl1ekf3J
	BPh+MX2qV6+4LLQ2dhIoV5TiU0+XBGO7R1T127656ZU99SfC8toFCW+qzWL1hZ4S+81F
	cPG0n4WrGhmT45zvY5IIuUkhJHyKCP79QxazyuXRoTTCW9yjiS6TzhqqZUoMkNbo37E4
	krdBp97ncLwev/WzPvqUVz7O6ijQCiu1SbNbQBbjsYjC+k4ff4lYHg6T7jKJ+LioKsZ8
	kJrwxEmd8JIQccHrO9ppL7EEZl0HMC+VDRCBu7eufHyxd2NnIA08ixBxcJkO6wtkrUFj
	MxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=fhU6DcIPNTfxbKB2oH03toHP8rtfcdwMraRy9TgSW4E=;
	b=b5q1OAaYoEKMOvk57luBypxnhhjfkxOzcgPaB3lW8MVO8b7XVGcNIP0cbE/YjxIdbk
	DeC4DJwINDfrwGiRsSvRbK2pUo2lShuCj2/CfrcNToFIoLliIZICrsiZcY7y22NgeKGk
	4/ZR8xnMOstNSwNOBDLV8/w9rU9kLxC8LFF5JyCu3veLVF8lbYWXkY0M2tirrbVGWHPH
	jZ3WaiFk/WJlFuaSul2Gcf7UqFQCQNrR6kFFZm9Ypj864fsB8obAhbzELYvMBh3YxCwz
	o0l6vjyvcxYP3QlcwCpOYW01V4AXbWa/waihj7tULboofrL64HGqlP4Ini47kGXeVEaf
	d3Bw==
X-Gm-Message-State: ABUngvcHFVeXTy9jdkOKwfpt6OpOrtYJvV6Hjy8cAdxm7C3hvIMPwzjPDgCxyh5yChECaQ==
X-Received: by 10.99.218.21 with SMTP id c21mr41710317pgh.67.1477932787324;
	Mon, 31 Oct 2016 09:53:07 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:793b:10a4:267d:c6fc?
	([2601:646:8882:b8c:793b:10a4:267d:c6fc])
	by smtp.gmail.com with ESMTPSA id
	e90sm36826583pfd.5.2016.10.31.09.53.05
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 09:53:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161031164425.GD3276@carbonA>
Date: Mon, 31 Oct 2016 09:52:59 -0700
Message-Id: <73809C16-06E2-4B0D-8519-09FD485CCF26@gmail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
	<1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
	<20161031141011.GA9939@carbonA>
	<7D7B27EF-25D7-491A-B19F-098CDEA59106@gmail.com>
	<20161031164425.GD3276@carbonA>
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
X-List-Received-Date: Mon, 31 Oct 2016 16:53:19 -0000
X-Groupsio-MsgNum: 32707
Content-Type: multipart/signed;
	boundary="Apple-Mail=_49EA6BBE-7AAC-417A-A5D7-3FCEC4CFA6F2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_49EA6BBE-7AAC-417A-A5D7-3FCEC4CFA6F2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Oct 31, 2016, at 9:44 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> On Mon, Oct 31, 2016 at 09:41:18AM -0700, Khem Raj wrote:
>>=20
>>> On Oct 31, 2016, at 7:10 AM, Andrei Gherzan <andrei@gherzan.ro> =
wrote:
>>>=20
>>> On Thu, Sep 22, 2016 at 07:47:54AM +0200, Andreas M=FCller wrote:
>>>> For those who want to run closed source driver with mesa. See =
further details
>>>> at [1]
>>>>=20
>>>> [1] http://anholt.livejournal.com/47717.html
>>>>=20
>>>> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
>>>> ---
>>>> conf/machine/include/rpi-base.inc | 1 +
>>>> 1 file changed, 1 insertion(+)
>>>>=20
>>>> diff --git a/conf/machine/include/rpi-base.inc =
b/conf/machine/include/rpi-base.inc
>>>> index 69774f4..737e842 100644
>>>> --- a/conf/machine/include/rpi-base.inc
>>>> +++ b/conf/machine/include/rpi-base.inc
>>>> @@ -38,6 +38,7 @@ KERNEL_DEVICETREE ?=3D " \
>>>>    overlays/w1-gpio-pullup.dtbo \
>>>>    overlays/pi3-miniuart-bt.dtbo \
>>>>    overlays/vc4-kms-v3d.dtbo \
>>>> +    overlays/vc4-fkms-v3d.dtbo
>>>=20
>>> There is a problem with this change. It seems like this dtb overlay =
is
>>> not availble in kernel version above 4.4. Don't know exactly why.
>>>=20
>>=20
>> Interesting, did you apply latest firmware patch ?
>=20
> You mean kernel update patch, right? No I haven't but the sources seem
> to not deploy this dtbo:
> =
https://github.com/raspberrypi/linux/tree/rpi-4.8.y/arch/arm/boot/dts/over=
lays

I see. I think it could be an oversight in 4.8

>=20
>>=20
>>>>    "
>>>> KERNEL_IMAGETYPE ?=3D "Image"
>>>>=20
>>>> --
>>>> 2.5.5
>>>>=20
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>>> --
>>> Andrei Gherzan
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>=20
>=20
>=20
> --
> Andrei Gherzan


--Apple-Mail=_49EA6BBE-7AAC-417A-A5D7-3FCEC4CFA6F2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgXdu8ACgkQuwUzVZGdMxRMwQCcDHq6QmCUZCAwsT1Q4eD6JQaG
yHcAn1p9TVWTC1INFlXLQRKSrRj0WKbV
=jbsT
-----END PGP SIGNATURE-----

--Apple-Mail=_49EA6BBE-7AAC-417A-A5D7-3FCEC4CFA6F2--
