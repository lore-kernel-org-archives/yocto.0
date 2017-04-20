Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52B35E00AE4; Thu, 20 Apr 2017 04:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FB91E00ADD
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:34:59 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id c45so7049455qtb.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lGROfTnTaNTB44nigbZUwOan5WzLUR4Gm9PbGQ0esPU=;
	b=rbdgrKrjo0PcuMQSajRw3UrueXrHvhgqQp/IycglvhVwLStORlCVRFT9Lw5Y8gWx/B
	gwuEOzk7IqPS0JDEgA5aAUORyPfqDqtdY5VPRDpJEyVv6Ww38We7WG81CuEINP0wWOIN
	MyiJa4pgIy7wqJYcvo0ebgynFX6dkO9EP439erfvKQwDg2ox4A5qyT5ZVdo3roEdy88P
	Yp8Xm1stASw9sicgLl8EkfJSuWHZFIphE/KaMt1DTiaqe8BMi0GkqKmB9kxL5byh57j2
	y7W8ccSdLRELePqUulS9/VFvPW7BABzbVjH2ESY8K21col+jfXVJudFvtcyFk/6m6Elj
	fXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lGROfTnTaNTB44nigbZUwOan5WzLUR4Gm9PbGQ0esPU=;
	b=KDwJTdIWA0Udy/r7i9qN6HLheBolKudJW5C81T8DqDRkm6Mo48zWzFf1FiMAbuWhNX
	1vQEHU/+25JGlwAXS5P2zrI2HRTiC/qMZeFfMsIVhXyScMQPLUm3ZTL7/t2wE5xWbf/8
	bbUZ3RUaQ9n3Wu3LNu6xetwurU/ebo/VVc54FKIlDGCgWKpzadZ28AkJmka6AKpVmpr6
	D1gP+uF82vcbkBf7eduTibQCJV0mjhGCj88GSPMdQkhxQq1NU2oPupAcy8Kx9DqvoG7E
	BXqMi4wyl16q1At+qBkKapR7j8jTdSj6+hbxsb2399iZ25WlGNwreGzqvVdJY1WuHhI3
	ygvA==
X-Gm-Message-State: AN3rC/7s3tDHKYse3jdLueX1OyiNBzCu+Q2bOfWmjkBRNdWrk9rC+OwD
	zt7dCxh3CrhFqQqdvhKUtwGlZnansw==
X-Received: by 10.200.43.17 with SMTP id 17mr6823434qtu.199.1492688099291;
	Thu, 20 Apr 2017 04:34:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Thu, 20 Apr 2017 04:34:58 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
In-Reply-To: <20170420105921.GG19325@carbonA>
References: <20170420084022.14927-1-raj.khem@gmail.com>
	<20170420105921.GG19325@carbonA>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 20 Apr 2017 12:34:58 +0100
Message-ID: <CAPyrkgzHtFgMHh+YczTwagAPWoqvsu01m6HnsOogMwvH8tJc+w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.23
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
X-List-Received-Date: Thu, 20 Apr 2017 11:35:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 20, 2017 at 11:59 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Apr 20, 2017 at 01:40:22AM -0700, Khem Raj wrote:
>> bring CMA > 256M changes
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-ker=
nel/linux/linux-raspberrypi_4.9.bb
>> index c0e8b83..70b16a6 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>
>> -LINUX_VERSION ?=3D "4.9.21"
>> +LINUX_VERSION ?=3D "4.9.23"
>>
>> -SRCREV =3D "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
>> +SRCREV =3D "53460a0a50f3dd5e60266e945d0ac794ce0eca77"
>>  SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3Drpi-4.9.y \
>>  "
>>  require linux-raspberrypi.inc
>> --
>> 2.12.2
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Merged to master. Thanks.
>

I'll add this to my queue for backporting to morty, may be about a
week before I get to it though.

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

