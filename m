Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16965E00DF8; Fri, 25 Nov 2016 20:12:28 -0800 (PST)
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
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3BDEE00CC3
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 20:12:24 -0800 (PST)
Received: by mail-pg0-f53.google.com with SMTP id f188so35241331pgc.3
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 20:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oJ3qJsf+qCBBrtWUq3LC4LpNkW5bh4CescfzhVjfbZE=;
	b=Ag3w3A2jUwuN897yqx2Elz+lMyAsoGJb+zVgkRYXDRcjwMYT0c7+blzrD9sj1bjARE
	NLW3Juox2FNq9MBTuDo5W0ClJxGkRUb9Iygt5m2D71MxELIJ5XTDrdCLROmOYcLUCeIG
	BEzc27SPDfOOvjKAvRGPzQ+EEeyqKrAnkaWe5IgY8WOlw9bua8b1AIe4BndF7B1ZTz0G
	wVTnwBzMYlGGnCl8HT64Zok+HqTTs9NzdrQwY0QYMzk/zqFsMRfHsbI/MkCweqXSVgJm
	75xJPHT0SIgRXjASXsWuwxBGVJFpduUCwcwdsBCuB9BzB4mfkDDo3NE6uwNzfKZxa7Bs
	IiWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oJ3qJsf+qCBBrtWUq3LC4LpNkW5bh4CescfzhVjfbZE=;
	b=bch0wNfHCA9EPEEf7K00CH0Rkf+4YSjX9crB6Ui6xkTqZ4KPOPlX3XLSrj2fvnhap9
	z+uulNpOAQHV9vJ5iS/ZyTM00zUdHdkOaF6SRDUYywrbal0I/ck/l3/IDEKzkkowNfOp
	Rbzs7CwZOVP/jJzyi/Gh4vSaHjDPR6gmth9fXTgeaOjH/puXDdBT9906ZRJ7crh0+SXH
	kDYMkRQUK/EIVUcp6eD4mmRlpIlUumm1f+uqZr1Z8zHRG4CgDinnQYy8OQUws96oTyFh
	ocw3Zat6+jeszciHODcBO+Sorm+5xlOTugBtqylbLtZtVBrY/w2FlcT25ydFK3CWbAUu
	J6Mw==
X-Gm-Message-State: AKaTC01Es6CldS7plaSuJaGAOan1CqpUG+r/pcRxgYYt4QN+hSx5OFZFcLlTUKXYhWLrZg==
X-Received: by 10.99.0.194 with SMTP id 185mr20314030pga.111.1480133544478;
	Fri, 25 Nov 2016 20:12:24 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:38de:4871:ed5d:b69f?
	([2601:646:8882:b8c:38de:4871:ed5d:b69f])
	by smtp.gmail.com with ESMTPSA id
	x90sm70865859pfk.73.2016.11.25.20.12.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Nov 2016 20:12:24 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAF3SDA6xsm6YaFYjb3UiEmTS8=uzk1kCrTQpwMFChRL0bHLi8g@mail.gmail.com>
Date: Fri, 25 Nov 2016 20:12:23 -0800
Message-Id: <1DAAFDD0-4691-4EB5-B79A-948B0E9BE705@gmail.com>
References: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
	<CABcZANk0XfQTA5dio2NQvRnV+cSF3dLF+Rpv8+3RY-kUO=0y=w@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3E7F626B@AZ-FFEXMB01.global.avaya.com>
	<CAF3SDA5ObWo1siH9-S65kLy85imC+ww6F4tTMih1d7iw5HrDkg@mail.gmail.com>
	<CAF3SDA6xsm6YaFYjb3UiEmTS8=uzk1kCrTQpwMFChRL0bHLi8g@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
X-Mailer: Apple Mail (2.3251)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extracting PV & PR from Makefile at compilation time.
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
X-List-Received-Date: Sat, 26 Nov 2016 04:12:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Nov 24, 2016, at 11:06 AM, Daniel. <danielhilst@gmail.com> wrote:
>=20
> Instead of using SVN revision as version I'm trying to use a timestamp =
like:
>=20
> PV =3D "${@time.strftime("%Y%m%d", time.gmtime())}"
>=20
> Does anybody can tell me if this would taint the sstate at each day,
> making yocto compile it again? Is this safe at all?

I would recommend against it. Use PR server is better.=20

>=20
> Regards,
>=20
> 2016-11-24 13:48 GMT-02:00 Daniel. <danielhilst@gmail.com>:
>> 2016-11-23 12:01 GMT-02:00 Bipnesh, Abhinav (Abhinav)
>> <abhinavbipnesh@avaya.com>:
>>> One quick way would be to use environment variables in both places. =
So you
>>> can export them before starting a build.
>>>=20
>>>=20
>>>=20
>>> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
>>> On Behalf Of Christopher Larson
>>> Sent: Wednesday, November 23, 2016 19:13
>>> To: Daniel.
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Extracting PV & PR from Makefile at compilation =
time.
>>>=20
>>>=20
>>>=20
>>>=20
>>>=20
>>> On Wed, Nov 23, 2016 at 6:26 AM, Daniel. <danielhilst@gmail.com> =
wrote:
>>>=20
>>> I have a Makefile with this header
>>>=20
>>>=20
>>>=20
>>> major =3D 1
>>>=20
>>> minor =3D 0
>>>=20
>>> patch =3D 10
>>>=20
>>> release =3D -beta
>>>=20
>>> Which compilates someting like libmylib.so.1.0.10-beta shared =
object.
>>>=20
>>> On recipe I duplicate this information:
>>>=20
>>> PV=3D"1.0.10"
>>>=20
>>> PR=3D"-beta"
>>>=20
>>>=20
>>>=20
>>> Is there anyway to grab that information from Makefile and setting =
PV & PR
>>> according to it? At compilation time? So that I only have to change =
at one
>>> place?
>>>=20
>>>=20
>>> bitbake wants to know pv/pr at parse time, long before the sources =
have been
>>> fetched and unpacked.
>>> --
>>>=20
>>> Christopher Larson
>>> clarson at kergoth dot com
>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>> Maintainer - Tslib
>>> Senior Software Engineer, Mentor Graphics
>>=20
>> Thanks guys for the reply.
>>=20
>> Christopher, now I understands. It's an egg/chicken problem. So what
>> I'm asking is a bit non-sense.
>>=20
>> My case is something like this:
>>=20
>> We have custom board.
>> At this board some peripherals reside.
>> Some libraries sit over that peripherals.
>> I want to be able to get version of that libraries from a running
>> environment when needed. This wouldn't done by my self, but by other
>> people that have no good linux knowledge, so that need to be simple
>> like a "run this command".
>> I want to be able to get the right source code from version number.
>> I want to made package updates avaible from package feed, so that
>> running images can be updated by package manager instead of burning
>> every new image. This would make my development cycle more
>> incremental.
>>=20
>> Before the first e-mail I was keeping version at makefile and
>> generating libsomething.so.X.Y.Z-release. This make it easy to grasp
>> version from library file name. But at each version the proper =
recipes
>> had to be edited. This is boring and error prone. I'd already build
>> packages like libsomething-1.2.3.rpm that ships =
libsomething-1.2.4.rpm
>> because I forgot to update the recipe.
>>=20
>> So now I'm using no revision from SRC_URL (I'm using SVN). And =
setting
>> things like below.
>>=20
>> SRCREV =3D "${AUTOREV}"
>> PV =3D "${SRCPV}"
>> PR =3D "r0"
>>=20
>> So that recipe editing can be avoided. Since I'm using SVN the
>> revision number aways increase and I can get system update working
>> properly.
>>=20
>> I'm about to read about PR service since using SVN revision as =
version
>> seems not a good idea for me. The libraries are only used internally
>> so I do not have to bother about versining API changes. Anyway, =
thanks
>> for the feedback
>>=20
>> Best regards,
>>=20
>> --
>> "Do or do not. There is no try"
>>  Yoda Master
>=20
>=20
>=20
> --=20
> "Do or do not. There is no try"
>  Yoda Master
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


