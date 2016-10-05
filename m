Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C075E00A85; Wed,  5 Oct 2016 12:48:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7116E00756
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 12:48:45 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id cd13so9841875pac.3
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 12:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=r6Us/WNsOZKi122n1SxTCcXH0Xp47sBmkuETum5y3K8=;
	b=TfHOHLoviZLXvVVWDx6TUBc1wsPRhz9UJOSUOvmTeudkzR0ESM1DMAUZfFE3VBdBmn
	13CkEXZorIHG8o1OTt1FdFbSQ6/LQiurzwmaXrcujEMyB1s8BmMdTVAdiRJzYTBKFdDC
	mTnUGAaM1wauSApSnzWfdzZ2mZgHPstHIzxewu1lQaMXQo8zWotXAHgMH0W3gVZ6m9qM
	+h3wiwUTgmuswcRnxdAAcEga/Uqh6+mf3XjUddsbj/yqcSbI5iGk5wLUv1aphBCHIZFQ
	4up2uPaaNZhA2+xd6YZlaWxvs+eVzczt36ottUWOpZLxkw9Dj0C4E0OLEq5OD2dulzGA
	iRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=r6Us/WNsOZKi122n1SxTCcXH0Xp47sBmkuETum5y3K8=;
	b=KOObN0IOlQn9wxeiFOTeVhai/md2coTPRTRTrz2mXWHOR8WqJNXzpxiSG1ffS7Qmt2
	RprOamKMtKuvTgb235aFrxlfV0ME5xm1MmtOOuJ/syNVDihKXt8hSiO+gZz1VKhQlwVG
	UcvHZ1IgJQP5LCNBiqE05SbS5MyJXQU5XKb9n2Dl/A6+qRNDCFDsALTPqPa0i+h15vaA
	argJSBv43+/8RbBIIo1cnvUp5nOAfbTr8YdEwZxi5SFchcqLUHd2Nz2l70t7WBrQv9SC
	ShRze9JtC0msJR8O6lBEqKckHLkauNTENMsVv5183AGRdfTBz9vaxEt9fMWJXaSBFVWx
	OdOA==
X-Gm-Message-State: AA6/9Rl6xTLa3cDI5tqbz2IUlBtm/hxMdXBXGQR8MW5z2ndz4o6btDi7ozx/pDZRT6btPQ==
X-Received: by 10.66.235.37 with SMTP id uj5mr15744238pac.176.1475696925139;
	Wed, 05 Oct 2016 12:48:45 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:9493:d409:7596:c705?
	([2601:646:8882:b8c:9493:d409:7596:c705])
	by smtp.gmail.com with ESMTPSA id v6sm17235711pfv.8.2016.10.05.12.48.43
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 05 Oct 2016 12:48:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1617F406-039C-42B2-8739-84169A7B0F3C@cisco.com>
Date: Wed, 5 Oct 2016 12:48:37 -0700
Message-Id: <41EB2D7C-888A-4E8F-8170-5777B3EE942E@gmail.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
	<20161005163020.GC2084@csclub.uwaterloo.ca>
	<16724416-E2A7-4179-B927-1ABCEC8C4C41@cisco.com>
	<CA6374AA-A2F0-4FBF-85C0-3F37E3282626@gmail.com>
	<1617F406-039C-42B2-8739-84169A7B0F3C@cisco.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
X-Mailer: Apple Mail (2.3124)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 19:48:47 -0000
X-Groupsio-MsgNum: 32224
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7EEBC7AB-D349-43F1-B983-E0719D6C2F95";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_7EEBC7AB-D349-43F1-B983-E0719D6C2F95
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 5, 2016, at 11:43 AM, Dinh Nguyen (dinhn) <dinhn@cisco.com> =
wrote:
>=20
>=20
>=20
>>> then it is just going to reuse the build artifacts from last builds =
and not checkout the sources etc.
>>> all those tasks will be skipped.
>=20
>>> why are looking for sources in a build tree ?
>=20
>=20
> Not only source under
> .. yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/git
>=20
> But other data such as such as the =
yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/image/* was also gone. The =
following image that I have it in the first place.

yes thats normal when package is re-used from sstate-cache
>=20
>=20
>=20
> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ ls -ltr
> total 1424
> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 datamodel_cache
> -rw-r--r-- 1 dinhn dinhn 187434 Oct  5 01:17 invoke
> -rw-r--r-- 1 dinhn dinhn 184961 Oct  5 01:17 invoke_b
> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 protocol_infra
> -rw-r--r-- 1 dinhn dinhn 191362 Oct  5 01:17 publisher
> -rw-r--r-- 1 dinhn dinhn 187084 Oct  5 01:17 rpc-register
> -rw-r--r-- 1 dinhn dinhn 179648 Oct  5 01:17 service
> -rw-r--r-- 1 dinhn dinhn 174518 Oct  5 01:17 subscriber
> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ cd ../lib
> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/lib$ ls -ltr
> total 856
> -rw-r--r-- 3 dinhn dinhn 872657 Oct  5 01:17 libmlib.so
>=20
>=20
> Thanks,
>  =E2=80=94Dinh
>=20
> On 10/5/16, 11:26 AM, "Khem Raj" <raj.khem@gmail.com> wrote:
>=20
>>=20
>>> On Oct 5, 2016, at 11:18 AM, Dinh Nguyen (dinhn) <dinhn@cisco.com> =
wrote:
>>>=20
>>>>> Are the files present in the image/packages?  Maybe it is just the
>>>>> bitbake cache skipping doing work it already did last time.
>>>=20
>>> If I don=E2=80=99t do the bitbake clean, and just do bitbake again, =
then yes.
>>>=20
>>>=20
>>> But if I do =E2=80=9Cbitbake -c clean c-mlib=E2=80=9D and bitbake =
again, the is where the problem.
>>=20
>>=20
>> well its using sstate cache here so when you do clean and rebuild and =
it notices no changes from previous builds
>> then it is just going to reuse the build artifacts from last builds =
and not checkout the sources etc.
>> all those tasks will be skipped.
>>=20
>> why are looking for sources in a build tree ?
>> I ask because if you want to hack on it then I would recommend =
following devtool workflow.
>> see
>> =
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-d=
evtool-in-your-workflow
>>=20
>>=20
>>>=20
>>> Thanks,
>>> =E2=80=94Dinh
>>>=20
>>>=20
>>>=20
>>>=20
>>> On 10/5/16, 9:30 AM, "Lennart Sorensen" =
<lsorense@csclub.uwaterloo.ca> wrote:
>>>=20
>>>> On Wed, Oct 05, 2016 at 04:06:25PM +0000, Dinh Nguyen (dinhn) =
wrote:
>>>>> Many thanks Paul. Your help is greatly appreciated.
>>>>>=20
>>>>> 1. >>> Like the other responder I would suggest you not set =
PACKAGES
>>>>>=20
>>>>> Yes, I did not set the PACKAGES, so -dev, -dbg and main packages =
were built as shown below:
>>>>>=20
>>>>> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ =
find tmp/deploy | grep =
c-mlibtmp/deploy/ipk/core2-64/c-mlib-dbg_1.1-r0_core2-64.ipk
>>>>> tmp/deploy/ipk/core2-64/c-mlib-dev_1.1-r0_core2-64.ipk
>>>>> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
>>>>> tmp/deploy/licenses/c-mlib
>>>>>=20
>>>>> 2. >>> FILES_${PN}-dev =3D "${includedir}=E2=80=9D
>>>>>=20
>>>>> I added that to .bb as you suggested so .so file doesn't end up in =
the ${PN}-dev
>>>>> Package =E2=80=94 No longer see the error mentioned in previous =
mail. Thx
>>>>>=20
>>>>> 3. >>> This is what I suspected would happen - these files would =
normally be part of
>>>>> the ${PN}-dbg package, but since you've removed that from =
PACKAGES, they are
>>>>> ending up unpackaged and that is not allowed.
>>>>>=20
>>>>> Did you mean the "install -m 0644 xxx yyy=E2=80=9D to remove those =
files from the PACKAGES? How do I copy .so and binaries from my target =
to the libdir or bindir?
>>>>>=20
>>>>> After changing the .bb to remove the PACKAGES setting and =
FILES_${PN}-dev =3D "${includedir}=E2=80=9D
>>>>> For the very first time, packages were built find, image were =
created under image directory and c-mlib source is still in the yp =
workspace as shown below:
>>>>>=20
>>>>> A.Packages were built
>>>>> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ =
find tmp/deploy | grep c-mlib
>>>>> tmp/deploy/ipk/core2-64/c-mlib-dbg_1.1-r0_core2-64.ipk
>>>>> tmp/deploy/ipk/core2-64/c-mlib-dev_1.1-r0_core2-64.ipk
>>>>> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
>>>>> tmp/deploy/licenses/c-mlib
>>>>>=20
>>>>> B. Source files and the c-mlib git directory still have all the =
sources (e.g just grep the mlib_api.c)
>>>>> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ =
find . -name "mlib_api.c"
>>>>> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/git/src/mlib_api.c
>>>>> =
./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/packages-split/c-mlib-dbg/usr=
/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
>>>>> =
./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/package/usr/src/debug/c-mlib/=
1.1-r0/git/src/mlib_api.c
>>>>> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$
>>>>>=20
>>>>> C. Image was built as well including binaries and libmlib.so
>>>>> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ ls -ltr
>>>>> total 1424
>>>>> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 datamodel_cache
>>>>> -rw-r--r-- 1 dinhn dinhn 187434 Oct  5 01:17 invoke
>>>>> -rw-r--r-- 1 dinhn dinhn 184961 Oct  5 01:17 invoke_b
>>>>> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 protocol_infra
>>>>> -rw-r--r-- 1 dinhn dinhn 191362 Oct  5 01:17 publisher
>>>>> -rw-r--r-- 1 dinhn dinhn 187084 Oct  5 01:17 rpc-register
>>>>> -rw-r--r-- 1 dinhn dinhn 179648 Oct  5 01:17 service
>>>>> -rw-r--r-- 1 dinhn dinhn 174518 Oct  5 01:17 subscriber
>>>>>=20
>>>>> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ cd ../lib
>>>>> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/lib$ ls -ltr
>>>>> total 856
>>>>> -rw-r--r-- 3 dinhn dinhn 872657 Oct  5 01:17 libmlib.so
>>>>>=20
>>>>> So it is all good for the first time, but thereafter that, if I do =
clean =E2=80=9Cbitbake -c clean c-mlib=E2=80=9D and =E2=80=9Cbitbake =
c-mlib=E2=80=9D again.
>>>>> All packages were build successful, but all data under c-mlib got =
was gone. Nothing there including .c/h files, image directory etc...
>>>>>=20
>>>>> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/git$ ls -ltr
>>>>> total 0
>>>>> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work=
/core2-64-poky-linux/c-mlib/1.1-r0/git$
>>>>>=20
>>>>> Please give me an idea why how to solve this? Sorry for a long =
email ;-))
>>>>=20
>>>> Are the files present in the image/packages?  Maybe it is just the
>>>> bitbake cache skipping doing work it already did last time.
>>>>=20
>>>> --
>>>> Len Sorensen
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20


--Apple-Mail=_7EEBC7AB-D349-43F1-B983-E0719D6C2F95
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf1WRoACgkQuwUzVZGdMxSZCwCeN57nUYpz21ZVZV8rkqe6Lqdr
KQYAniPsSUnEDCkAw2GXvsKY1z9gqn5g
=4Gcw
-----END PGP SIGNATURE-----

--Apple-Mail=_7EEBC7AB-D349-43F1-B983-E0719D6C2F95--
