Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9A61E00931; Wed, 23 Mar 2016 05:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ECA7E00920
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 05:17:17 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id l68so193004323wml.0
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 05:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=z1PQGwOpOpI8kecYcN3RaEddsGS9IaIyKTi24wc56JQ=;
	b=s31+M0sQK1rSFPcfkcySZqEVrLbkyIEgFLe8dxhruc8+tP7JC+d40Abw+ycQtfbxbD
	Rrgy4K48FdyrBFHY+It9Z6GxLd/gXxnYNWocXSd+rITH1p/miZGkEtQWGP91jt8WIy0g
	cWz2dNp4ggTDb/DVMMs2cSWatp49ciymIS9VExpJTpu7rHUW7CmpWBd1NedlUAjkuUht
	GX2Jc7kIuoGre6lOuuITus9Tox9lmkh7wPWmr/UZZGZ1L87tUQ+I9yltyp71Oe3iTUUe
	BZXTy08G/hnbg4sVNv8sZBJyWnA5QAcQcJ7wbf7AxFxCtKqlNy01EDXSFDKdl8OqUdc+
	gDYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=z1PQGwOpOpI8kecYcN3RaEddsGS9IaIyKTi24wc56JQ=;
	b=bXBoN26OGarR8kCGJzWZgyFp4yRhtv4o7LbLpR4NvEzilw13AzilxIogFGhIepQgo/
	+YdnrbR8Vnd5qYR2ZdmXBAKx12s+W+Bo7aNp8mGvMknKD2b1lt4l7p5g/lO1LsUShGHS
	A6MTx2QvynWsOcXXbLdareP0t1GYrDH4lu6813dpUET4reaYEHVwTpu3DqPTKn6B924E
	DwLLslQrNy5mjPMfbUV80FhvEU9I0NSBh6H2jblxhF7O76e+Iq58jDqP9PbsCB44ElxP
	Zz5QFLtm+xQf2CvIcsdNyHEIi6z2PtT5hZiAOgE3x8LCWd3I4UtCUroKo4oMeIzhF/8J
	rRmg==
X-Gm-Message-State: AD7BkJKunOjcVYcaEeDER3Sxf++xYrv3xZ5poH0/kKvjpYq6flUF0Ji/lBVK+KK+ow6oQw==
X-Received: by 10.28.224.132 with SMTP id x126mr3755362wmg.88.1458735436508;
	Wed, 23 Mar 2016 05:17:16 -0700 (PDT)
Received: from ernie.rdm.local ([46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	w133sm2707196wmd.3.2016.03.23.05.17.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2016 05:17:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <56F28707.5070501@mlbassoc.com>
Date: Wed, 23 Mar 2016 13:17:07 +0100
Message-Id: <3F266E14-B836-4966-B047-A2765BB3DDE8@gmail.com>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
	<5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
	<56F25D38.1020302@mlbassoc.com>
	<BB452600-8B65-4332-AF41-CF834000B14C@gmail.com>
	<D4D8BD30-C54F-4979-AA46-80F4709DBE85@gmail.com>
	<56F27865.8060303@mlbassoc.com>
	<367137C3-C1A0-46FF-8961-2B05370BA030@gmail.com>
	<56F28707.5070501@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: perl 5.22 and 32 bit targets
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
X-List-Received-Date: Wed, 23 Mar 2016 12:17:22 -0000
X-Groupsio-MsgNum: 29152
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0CFB182E-9156-49B8-BDF5-BF8D94A1D0A5";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_0CFB182E-9156-49B8-BDF5-BF8D94A1D0A5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> Am 23.03.2016 um 13:07 schrieb Gary Thomas <gary@mlbassoc.com>:
>=20
> On 2016-03-23 12:43, Jens Rehsack wrote:
>>=20
>>> Am 23.03.2016 um 12:05 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>=20
>>> On 2016-03-23 10:48, Jens Rehsack wrote:
>>>>=20
>>>>> Am 23.03.2016 um 10:14 schrieb Jens Rehsack <rehsack@gmail.com>:
>>>>>=20
>>>>>>=20
>>>>>> Am 23.03.2016 um 10:09 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>>>>=20
>>>>>> On 2016-03-23 09:57, Jens Rehsack wrote:
>>>>>>>=20
>>>>>>>> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>>>>>>=20
>>>>>>>> On 2016-03-23 09:09, Gary Thomas wrote:
>>>>>>>>> On 2016-03-23 06:36, Khem Raj wrote:
>>>>>>>>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas =
<gary@mlbassoc.com> wrote:
>>>>>>>>>>> I hope this is the correct place to discuss this problem.  =
It
>>>>>>>>>>> is all about a difference in behavior between a program =
built
>>>>>>>>>>> using bitbake/OE (only OE-core is needed) vs building the =
program
>>>>>>>>>>> on the target hardware itself.
>>>>>>>>>>>=20
>>>>>>>>>>> I've been struggling with this problem since perl was =
upgraded
>>>>>>>>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland =
Archive
>>>>>>>>>>> tool) which is written primarily in perl and uses swig =
interfaces
>>>>>>>>>>> to access native C functions.  This code works great when =
using
>>>>>>>>>>> the previous perl (5.20.x) but fails on all 32 bit targets =
with
>>>>>>>>>>> perl 5.22
>>>>>>>>>>>=20
>>>>>>>>>>> The interesting thing is that if I build Amanda on my target
>>>>>>>>>>> directly (using SDK tools), it works perfectly even with =
perl
>>>>>>>>>>> 5.22, so it seems that there is some [subtle] difference =
between
>>>>>>>>>>> building using bitbake/OE than when built on the self-hosted
>>>>>>>>>>> target.  I've compared the builds and the only thing I could
>>>>>>>>>>> find (from the output of configure) is a difference in =
sizeof(off_t)
>>>>>>>>>>> Sadly, when I tried to adjust this in the OE build, it =
didn't
>>>>>>>>>>> make any difference, but perhaps I didn't make this change
>>>>>>>>>>> correctly or completely.
>>>>>>>>>>=20
>>>>>>>>>> do you have largefile support turned on ? if you do then it =
might
>>>>>>>>>> be detecting it wrongly during configure since we cache it to =
a
>>>>>>>>>> non-largefile case
>>>>>>>>>>=20
>>>>>>>>>> so try to add something like
>>>>>>>>>>=20
>>>>>>>>>> EXTRA_OECONF +=3D "${@bb.utils.contains('DISTRO_FEATURES', =
'largefile',
>>>>>>>>>> 'ac_cv_sizeof_off_t=3D8', '', d)}"
>>>>>>>>>>=20
>>>>>>>>>> while building perl or the affected program and see if that =
helps
>>>>>>>>>=20
>>>>>>>>> Thanks for the idea, but that didn't help.  I also forced some =
CFLAGS
>>>>>>>>> to match, in particular:
>>>>>>>>>  -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64
>>>>>>>>> but this didn't make any difference either.
>>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> On a whim I just tried a little experiment where I took the *.o =
files
>>>>>>>> from the perl subdirectory (where all the swig shims live) from =
a working
>>>>>>>> (self-hosted) build and moved them to my bitbake/OE build.  I =
then touched
>>>>>>>> all the *.o and *.lo files in the perl tree to force a relink. =
I then ran
>>>>>>>> % bitbake amanda -C compile && bitbake core-image-base
>>>>>>>> to my surprise, amanda works!  So the culprit lies somewhere =
within the
>>>>>>>> swig generated glue.  I've tried comparing these files before =
and I didn't
>>>>>>>> find anything other than cosmetic differences (mostly comments =
about the
>>>>>>>> name of the file processed, etc).  I've added this subtree to =
"results"
>>>>>>>> in my github layer in case someone can see what might be =
relevant.
>>>>>>>>=20
>>>>>>>> Any ideas what might be different and make this swig generated =
glue fail?
>>>>>>>> Note that the swig interface files are rebuilt as part of the =
build process
>>>>>>>> and both bitbake/OE and self-hosted are using the same swig =
version.
>>>>>>>=20
>>>>>>> I digged a bit through your layer (while my up2date scanner over =
meta-cpan
>>>>>>> blocks my build chain :P) and realized that you use perl-5.20.0 =
as it was
>>>>>>> in poky. A "simple" downgrade would be more reasonable ... if =
reason applys
>>>>>>> here in general :)
>>>>>>=20
>>>>>> In practice, I am doing that.  However, I want to understand why =
perl 5.22
>>>>>> breaks things and get it fixed.
>>>>>=20
>>>>> I did a diff between your 5.20 and poky's 5.22 and realize some =
fixes applied
>>>>> in 5.22 regarding library path's aren't applied in your copy. =
Maybe swig relies
>>>>> on wrong library locations and when we know, we can fix.
>>>>>=20
>>>>> So it's maybe not a 5.20 vs. 5.22 problem, it's maybe a weird swig =
setup problem.
>>>>>=20
>>>>>>> When you fail on cross-build and succeed in target build, try to =
compare the
>>>>>>> C files and includes (even swig libraries) used.
>>>>>>>=20
>>>>>>> It smells more like a "wrong source" than a "perl problem" (and =
even when
>>>>>>> I never would read any python thread, the same problem would =
likely occur
>>>>>>> there, too ^^).
>>>>>>>=20
>>>>>>> Which perl headers are used in your build? To dig down, more =
logs would
>>>>>>> be reasonable ...
>>>>>>=20
>>>>>> Everything comes from the same sources, same revisions, etc, as =
I'm using
>>>>>> either a bitbake/OE build or the embedded (self-hosted) version =
from the
>>>>>> same build plus SDK tools.
>>>>>=20
>>>>> And your SDK does not include any host tools? Did you prove the =
intermediate
>>>>> amanda build files (eg. generated by SWIG) for relicts from wrong =
source?
>>>>> Did you check the logs which include directories had been used?
>>>>=20
>>>> I give it a quick shot and got:
>>>>=20
>>>> ../../arm-poky-linux-gnueabi-libtool  --tag=3DCC   --mode=3Dcompile =
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -marm  -mthumb-interwork =
-mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 =
--sysroot=3D/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-e=
ine-freude-machen/tmp/sysroots/curie -DHAVE_CONFIG_H -I. -I../../config =
-I../../common-src -I../../common-src -I../../xfer-src -I../../gnulib =
-I../../ndmp-src =
-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude=
-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE   =
-fno-strict-aliasing -D_GNU_SOURCE -pthread =
-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude=
-machen/tmp/sysroots/curie/usr/include/glib-2.0 =
-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude=
-machen/tmp/sysroots/curie/usr/lib/glib-2.0/include -DSWIG  -O2 -pipe -g =
-feliminate-unused-debug-types -fipa-pta -ftree-partial-pre =
-ftree-loop-distribution -ftree-loop-distribute-patterns -fgcse-af
> t
> e
>>> r
>>> -reload -fgcse-sm -fgcse-las  -fno-strict-aliasing  -c -o =
xferwrap.lo xferwrap.c
>>>>=20
>>>> Do you see the =
"-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freud=
e-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE" =
?
>>>>=20
>>>> Any further blames of perl-5.22? :)
>>>=20
>>> I'm not sure what you are getting at here.  Indeed it is supposed to =
be
>>> using perl-5.22.1 for everything.  The version 5.22.0 in meta-amanda =
layer
>>> is just for testing and should not be used at the moment.
>>=20
>> Please compare word wise ...
>>=20
>> =
-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude=
-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE
>> =
-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude=
-machen/tmp/sysroots/curie/usr/include/glib-2.0
>>=20
>> Probably this helps getting my point:
>>=20
>> $ ls -l tmp/work
>> total 149
>> drwxrwxr-x  54 sno sno  54 Mar 22 23:49 all-poky-linux
>> drwxrwxr-x 269 sno sno 269 Mar 22 23:49 arm926ejse-poky-linux-gnueabi
>> drwxrwxr-x   3 sno sno   3 Mar 22 23:48 bohr-nand-poky-linux-gnueabi
>> drwxrwxr-x  19 sno sno  19 Mar 22 23:49 bohr-poky-linux-gnueabi
>> drwxrwxr-x   9 sno sno   9 Mar 22 21:38 =
cortexa9hf-vfp-neon-mx6qdl-poky-linux-gnueabi
>> drwxrwxr-x 326 sno sno 326 Mar 23 11:28 =
cortexa9hf-vfp-neon-poky-linux-gnueabi
>> drwxrwxr-x   3 sno sno   3 Mar 22 21:37 curie-emmc-poky-linux-gnueabi
>> drwxrwxr-x  29 sno sno  29 Mar 22 21:50 curie-poky-linux-gnueabi
>> drwxrwxr-x 196 sno sno 196 Mar 23 11:28 x86_64-linux
>>=20
>>> All of my comparisons and testing (see instructions in the README) =
are
>>> for perl-5.22.1 only and in fact I've only been using the bits from =
bitbake/OE
>>> and not building that any more (I found that it wasn't necessary - =
one only
>>> needs to build amanda on the target)
>>>=20
>>> Sorry for the confusion.
>>=20
>=20
> Huzzah!  This seems to be on the right track.  I adjusted the PERL_INC
> value in perl/Makefile (the *.h files used by the swig interfaces) to
> point to the target ones and not the perl-native ones and now it works =
:-)
>=20
> I'm not sure what's different between the two sets of include files, =
and
> more interestingly why it worked with previous versions of perl, but =
this
> does seem to be the culprit.
>=20
> Now I just need to figure out how to convince the 'configure' process =
to
> do it correctly.

IIRC, rrdtool is a good example to do it right. collectd had the same =
problem
as amanda had - wrong perl used ...
Maybe vice versa - I'm getting old and forget to remember :D

> Thanks for the help!

You're welcome.

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_0CFB182E-9156-49B8-BDF5-BF8D94A1D0A5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW8olEAAoJEESZlq7c5Qqd1zQP/3oOWg9yCuJny3L5MNbV30Ng
83D5vrywudhhYTE7LZq72mrzy/U9xvYkbxvAbNzyov3CcGl7pcloijfQDikez63L
cgoIIlPdBnry7F90yVBtjnc4Q0M1N4NHkr/ovNqNqsAMHKzAhwvFRKwJo+mp/MmM
+MirKC0ab3L9pgqT03+BUaK4uQRq93Sdt1nsXqI1rBXmWZYzcrA8vnkAA45PQiU1
OPa/t5KMi5S14TSdQmYGHft9K7DD+BoCwCIFdjcncYEYAyH5PDOPqjJcUda5rfmq
GnVEKGTTFsgzjTfuO3c4ZHmEa3R3QdNcC/YWE+xgiqeDnXoNe+3d6wpJWPkxxlEd
jYPIafXtKeESc8NA2KblTyEjJU7yq7o1YMeJtIbIXSk13Py3wusu78V41M8QYDC5
lER7WlAsRGP0r5cY0FeQR5G/L2mJ8RqiVemtYES8eQU2Mq11931mpiV1y3d7vpX5
9GNaV45JMg/E60E0SqqvKcR+TJBvGfHp5Tq0Xkmf5JmnryXxbRPoPIymdH9S36bz
2xeOjYFx/xVJsgqnHl6s3DV7b9ROH/AbgMQRYJihf1rAgi8z61KAgqlwkhPWKPAQ
l+Mbxn9VF0tL5Y89qGPXgUhRfc7emcbZKg/EY5D63o0Dq0OQuIUlztfBJ7zCxFTP
7xOALJoplrl1oCS5YEuj
=ZqmM
-----END PGP SIGNATURE-----

--Apple-Mail=_0CFB182E-9156-49B8-BDF5-BF8D94A1D0A5--
