Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54926E00D4D; Tue, 29 Sep 2015 10:22:25 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70FB0E00A9C
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 10:22:22 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so11693924pad.1
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 10:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=XchJA1mRk3JizurCuzRoV2tzScB2fl2711xiRXZdRQY=;
	b=KIxPJg0D+gKDL8FVxJJLl4GSKOTIJ9sKyhTFy3nd/65PY1TwN8TkKi6xBQ/konizg3
	3V9bRMQh+eu7U9dAxukrjq0EppMsDvclYBZx/QCMB0KOUtxTdSYxj/drV5h5FPnfg8xl
	u/YrlJWGBR46x6GmFNlMiSi7ZLmNzo24lkwteKvB5kqg3e8DmxvJDDq3jmao2lYRpUQ3
	vGlC7aFEr466RuHXEENYjRtNfWmZvpjjGvfmpblunt4I1EdHIrrq904pqmnlDQ4sxXd4
	0DMzJKqNChEsKsnc1qA4/rJb7p3t/N//dTSEiIdE8ClN2nhQ1s3VDpR9jc1emD4DnOa7
	AijA==
X-Received: by 10.66.216.105 with SMTP id op9mr33911658pac.60.1443547341720;
	Tue, 29 Sep 2015 10:22:21 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:f90b:6fa0:21f7:85bc?
	([2601:646:8601:4580:f90b:6fa0:21f7:85bc])
	by smtp.gmail.com with ESMTPSA id
	zk9sm26787863pac.7.2015.09.29.10.22.20
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 29 Sep 2015 10:22:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <2DCC166D4F5C8443941662E1E67FD5C17871C98D@LEICESTER.internal.datapath.co.uk>
Date: Tue, 29 Sep 2015 10:22:20 -0700
Message-Id: <4B150E5B-2FB2-4E06-8A5C-E5B22F6B2705@gmail.com>
References: <mailman.7.1443466802.26370.yocto@yoctoproject.org>
	<2DCC166D4F5C8443941662E1E67FD5C17871C98D@LEICESTER.internal.datapath.co.uk>
To: Stuart Weaver <Stuart.Weaver@datapath.co.uk>
X-Mailer: Apple Mail (2.3094)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 60, Issue 78
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
X-List-Received-Date: Tue, 29 Sep 2015 17:22:25 -0000
X-Groupsio-MsgNum: 26607
Content-Type: multipart/signed;
	boundary="Apple-Mail=_70C2F7D5-C1D0-4AC9-A765-9F375054FE86";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_70C2F7D5-C1D0-4AC9-A765-9F375054FE86
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 29, 2015, at 2:38 AM, Stuart Weaver =
<Stuart.Weaver@datapath.co.uk> wrote:
>=20
> Many thanks for your answers Gary/Daniel,
>=20
> Gary- I've tried:
> 		 SRC_URI_append_image-name2 =3D "file://XYZ.patch=E2=80=9D=


the override you are deploying is wrong so this assignment in effect is =
noop.

SRC_URI_append =3D =E2=80=9C file://XYX.patch=E2=80=9D is what will =
work. you can place this in a bbappend in your own layer
or you can add the same to main recipe as a patch on top. if you need to =
use overrides then make sure

SRC_URI_append_<override> is used and override is one of items in =
OVERRIDES variable to check the overrides you have
you can

bitbake -e busybox | grep -e =E2=80=9C^VERRIDES=3D=E2=80=9C

which should give you a list of overrides separated by =E2=80=98:=E2=80=99=



> 	But no luck, when building the image it seems to skip over it =
with no patching occurring. I can't use the ${MACHINE} variable as the =
two images will be for the same ${MACHINE}
>=20
>=20
> Daniel- with a .bbappend, to my knowledge I wouldn't be able to =
include it to just one image.
>=20
> My "perfect" solution would be to find a variable out there that will =
copy/refer to a current recipe and add the details into the new recipe =
with it's own ${S} etc... Of course I could just copy one to another, =
but then there's the problem of updating files later on. Therefore, =
unless there is another option that I haven't considered, I might look =
at refactoring everything into a .inc file and have two different  =
recipe names of which I can then include seperately in the respective =
images.
>=20
> Many Thanks,
> Stuart Weaver
>=20
>>=20
>> On 2015-09-28 11:59, Daniel. wrote:
>>> I think you're searching for .bbappend don't?
>>=20
>> Shouldn't be any need for that - it's his recipe, so he can modify it =
as he
>> wishes.
>> One uses .bbappend to made changes/additions to a recipe where you =
don't
>> want (or
>> can't) modify the original.
>>=20
>>>=20
>>> http://www.yoctoproject.org/docs/current/dev-manual/dev-
>> manual.html#us
>>> ing-bbappend-files
>>>=20
>>> Or, maybe, put all the common things in a .inc file, create the =
recipes,
>> include the files in recipes. There is also a lot of examples of =
this:
>>> =
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/hosta
>>> p/
>>>=20
>>> Cheers,
>>> - dhs
>>>=20
>>> 2015-09-28 12:46 GMT-03:00 Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>>:
>>>=20
>>>    On 2015-09-28 09:30, Stuart Weaver wrote:
>>>=20
>>>        Hi all,
>>>=20
>>>        I have a recipe for a package which builds well. I now need =
to add a
>> patch into certain builds. What is the best way to do this?
>>>=20
>>>        1.Is there a variable I can append the image name to (similar
>>> to:/SRC_URI_image-name/)?//
>>>=20
>>>        2.Is there a way of creating a new ?recipe 2? that obtains =
the details
>> from ?recipe 1? and applies a patch? This way I can then simply add =
the new
>> recipe into any builds I
>>>        want and
>>>        includes any future changes I make to ?recipe 1?. This =
solution also
>> means not having to continuously reconfigure/recompile the original =
recipe!
>>>=20
>>>        3.Do I have to do it the hard way and copy the whole .bb file =
into a new
>> one and make sure everything is in sync when future updates are =
applied?
>>>=20
>>>=20
>>>    If it's just a patch, the simplest way is to use something like =
this:
>>>       SRC_URI_append_XYZ =3D "file://XYZ.patch"
>>>    where XYZ is something which can identify the override.  One =
example
>>>    might be where XYZ is the name of a target board (${MACHINE})
>>>=20
>>>    There are many examples of this usage in the Poky/Yocto tree(s)
>>>=20
>>>    --
>>>    ------------------------------------------------------------
>>>    Gary Thomas                 |  Consulting for the
>>>    MLB Associates              |    Embedded world
>>>    ------------------------------------------------------------
>>>    --
>>>    _______________________________________________
>>>    yocto mailing list
>>>    yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>    https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>>>=20
>>>=20
>>>=20
>>> --
>>> /"Do or do not. There is no try"/
>>> ///*Yoda Master*/
>>>=20
>>>=20
>>=20
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>=20
>=20
>=20
> Regards,
> Stuart Weaver
>=20
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud =
service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_70C2F7D5-C1D0-4AC9-A765-9F375054FE86
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYKyMwACgkQuwUzVZGdMxS1xgCfWAcfwztMcU+Z8GqPwRthBDal
UMQAn2c22vvy9V/LbT3L5FNid0lC7+GJ
=JAiI
-----END PGP SIGNATURE-----

--Apple-Mail=_70C2F7D5-C1D0-4AC9-A765-9F375054FE86--
