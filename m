Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EE4EE00C82; Sat,  7 Oct 2017 09:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E9CE008A4
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 09:38:16 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id s184so9666926pgc.0
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 09:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=U52e/W/REgt+jfJVoVm7q4gVupYQIQKIO+a6+pHi0Ic=;
	b=lIHzNlZrVenEijEuU2WpQSp3NPp/ohJC6UNC4YlgtnAQVmfBlpi358cwpR4g1JrC/E
	WuTIuGXvnjdnv9Pas/ZEmWIqa5kX1uZgFvbRtWMPVkISLDDRh6ztSwclN5YHuIKU4v+e
	rk5hxKl0T9JMtjtR2YhHzjQAivqT/xQsUZtExqVIDCx935qayWqGX8wZDxuXyItk2Bej
	JbbqdRGcou4vjtSz1GlM8BWVkuaGf8ZXazUJsogajzuvRzUyK9m0w+7DgwHT0FOj5ovM
	ewqo+sy4Jghzuz9PExTLknGULRsFG1FOZHgMPdFlXywsZFDFXCCHQynp3ng2poOZMuxL
	VizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=U52e/W/REgt+jfJVoVm7q4gVupYQIQKIO+a6+pHi0Ic=;
	b=JYL90U1QMAwQaauzAwPw6hX5Oql2J5eaaqXBrMauecusRhaFY+NAT+PQRAHKp3hIu2
	YPWkx1u8CBskWOXBa83RiVVgDXwnJk6wF3J0nTN1zjtXo1CRgtad+BmCXNMSVwtINtOi
	u9oMy0ih4zinpLrp3cg7m8Fobgx5sGTGFw5udk/bTWg525/5wOruu05gHQkfVyv49xm7
	eFLJYxTzTKXI8ZxBMaFS14sLBRBgBPJ4fWYZGoo4+PZbxZtpk9C56V5poxbh6gvOyiXv
	RHDxDshZhL3V4vNCxGDekKICwkOmTw5rJeZmwUAtPVeQl1d+AaPcvev7k4ee48fPmWvc
	ilHg==
X-Gm-Message-State: AMCzsaXBscXFJ+qe2IOGW8fU1i2do9p9F1TYhiQuk0t8MG55ThUEuuI4
	x8/g2U6xhAaSa0amg1nQDaJl
X-Google-Smtp-Source: AOwi7QDlyQPY21nTWEjUoQx182bYqVuzTILprJlDWc1rkBHfIE8tqcmxfeVOw32/+WK07e3mHERaJg==
X-Received: by 10.84.235.76 with SMTP id g12mr5068875plt.338.1507394295758;
	Sat, 07 Oct 2017 09:38:15 -0700 (PDT)
Received: from ?IPv6:2601:644:8780:2b00:a5df:2c7e:333c:5534?
	([2601:644:8780:2b00:a5df:2c7e:333c:5534])
	by smtp.gmail.com with ESMTPSA id
	o123sm8284653pfb.53.2017.10.07.09.38.15
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 Oct 2017 09:38:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Bill Jenkins <bill@korgrd.com>
In-Reply-To: <E3B6A24B-9451-416D-A59E-B66326392FAE@korgrd.com>
Date: Sat, 7 Oct 2017 09:38:14 -0700
Message-Id: <5F898581-28EB-49A4-ABE1-0FFD67417094@korgrd.com>
References: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
	<CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
	<D0360C9B-BCE0-4335-B0DC-5C43DEB92463@korgrd.com>
	<CAMKF1spsgUEMnGTht1z2AO6moLSYuid0ZY2BednYR4pnp5bTvA@mail.gmail.com>
	<E3B6A24B-9451-416D-A59E-B66326392FAE@korgrd.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry-pi] needing newer or patched version of g++
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
X-List-Received-Date: Sat, 07 Oct 2017 16:38:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Sep 15, 2017, at 8:02 AM, Bill Jenkins <bill@korgrd.com> wrote:
>=20
>=20
>> On Sep 15, 2017, at 7:43 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>> On Fri, Sep 15, 2017 at 7:35 AM, Bill Jenkins <bill@korgrd.com> =
wrote:
>>>=20
>>>> On Sep 15, 2017, at 6:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>=20
>>>> On Thu, Sep 14, 2017 at 10:14 PM, Bill Jenkins <bill@korgrd.com> =
wrote:
>>>>> After creating an SDK for a 32-bit Raspberry Pi3 target, I ran =
into the following compiler error when
>>>>> compiling an application using the SDK:
>>>>>=20
>>>>> internal compiler error: Max. number of generated reload insns per =
insn is achieved (90)
>>>>>=20
>>>>> It turns out that a patch was submitted for g++ early last year =
for the above problem,
>>>>=20
>>>> We need to backport the patch to 6.3.0 and regenerate SDK. If you =
can
>>>> point to patch that will be helpful.
>>>=20
>>> Thanks Khem, here's a link to the commit:
>>>=20
>>> =
https://github.com/gcc-mirror/gcc/commit/4fe01ba94e99e792ebe9da2ccb3b071aa=
1bac388#diff-af18d9175d034b2b3726f1ddc05fae55
>>>=20
>>=20
>> OK and which release are you on ?
>=20
> I've been building in the pyro branch. DISTRO_VERSION reports 2.3.2.

I hadn't heard any news on this. Is there any more information required?
Will it be possible to backport that patch to gcc 6.3.0?

Cheers,
Bill

>=20
>>=20
>>>> but apparently that
>>>>> patch is not in the 6.3.0 version within the SDK. When I try to =
specify a newer version,
>>>>> (by using PREFERRED_VERSION_gcc-cross-${TARGET_ARCH}) bitbake =
reports that only 5.4.0 or 6.3.0
>>>>> are available. Any suggestions on how to resolve this? (i.e. is =
there some way to use a newer g++ or to
>>>>> apply the patch?)
>>>>>=20
>>>>> Thanks,
>>>>> Bill
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>=20


