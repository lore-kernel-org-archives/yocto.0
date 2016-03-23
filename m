Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BCD8E00931; Wed, 23 Mar 2016 02:48:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0884E00920
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 02:48:41 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id l68so225803814wml.0
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 02:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=1T7CT5TKg4y+p0kRhIwcwLGk1+dp8b4pavIplGxNnQo=;
	b=hTnN/ZEcF9y/OoWNoQPH+pAC+QpzfppvemNFflLRwnUQXIoei2EH9jH0pI3voB3R+d
	O89pz7uIDbg12+7ZjkWI3Uc6KDEntVZhHl44Z3OJhrNIYcgaIDIqRjfjBW5cIzy33rY7
	Kj9EgkYSYqWeDqklFBjivjkjqw3oSS8zM6A3wHRm+XW8LavWsArQdW69kds/zwZBkmKw
	5LBGHmJEsoaGotSzyGICa61Kfh8Wvb7RadempLFpscNBYYB+bDoRFiTU66gj7hfyf62z
	5J5PqdbubK7DIKbuH0tVZ/lWlpfjfo1CqAKY9zrAp17C13u6+F4c7p5ILz2YviN65YvB
	7AMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=1T7CT5TKg4y+p0kRhIwcwLGk1+dp8b4pavIplGxNnQo=;
	b=b743EZGKgEUEkfDUlYCizcNNpdKWlDLnK0W0vreGGXQxXP/PwkaPGSO/JGgOmiOc8I
	jn+ncvIflrksINYcV+xzb5mDVHTUXQFgajxVLZkW9wRfKmie2rtNgBsxCJuIr3fHFZ0H
	bkD2skoU13ADequhcOcCWud86uE9HMxU+2FPae9mJ3VZw1xGAduoYzrEXNqSv7ChRTDc
	fj819eQluEFusC2OuPB+Y6hlbBx9bXshcQ8Cdc1DHZgOkom20j51KKPXmg0nihni2dRn
	vzpgenRx0ANWV34acjL5ZikaX1LmZgGy79CL4udR/8fYtEjY7m7ij6+J5H9zyKa1eIom
	ZNJg==
X-Gm-Message-State: AD7BkJK1TiNS1G5VofztGV0sRdYZ4icWeaK2aVArQT26D4lae27z2ayoOF7K+VMkKdADSw==
X-Received: by 10.194.60.145 with SMTP id h17mr2419796wjr.47.1458726520479;
	Wed, 23 Mar 2016 02:48:40 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id gt7sm1703239wjc.1.2016.03.23.02.48.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2016 02:48:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <BB452600-8B65-4332-AF41-CF834000B14C@gmail.com>
Date: Wed, 23 Mar 2016 10:48:38 +0100
Message-Id: <D4D8BD30-C54F-4979-AA46-80F4709DBE85@gmail.com>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
	<5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
	<56F25D38.1020302@mlbassoc.com>
	<BB452600-8B65-4332-AF41-CF834000B14C@gmail.com>
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
X-List-Received-Date: Wed, 23 Mar 2016 09:48:43 -0000
X-Groupsio-MsgNum: 29147
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8AC87EA9-12DE-4CEF-BF46-100168DB8C03";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_8AC87EA9-12DE-4CEF-BF46-100168DB8C03
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> Am 23.03.2016 um 10:14 schrieb Jens Rehsack <rehsack@gmail.com>:
>=20
>>=20
>> Am 23.03.2016 um 10:09 schrieb Gary Thomas <gary@mlbassoc.com>:
>>=20
>> On 2016-03-23 09:57, Jens Rehsack wrote:
>>>=20
>>>> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>>=20
>>>> On 2016-03-23 09:09, Gary Thomas wrote:
>>>>> On 2016-03-23 06:36, Khem Raj wrote:
>>>>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> =
wrote:
>>>>>>> I hope this is the correct place to discuss this problem.  It
>>>>>>> is all about a difference in behavior between a program built
>>>>>>> using bitbake/OE (only OE-core is needed) vs building the =
program
>>>>>>> on the target hardware itself.
>>>>>>>=20
>>>>>>> I've been struggling with this problem since perl was upgraded
>>>>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland =
Archive
>>>>>>> tool) which is written primarily in perl and uses swig =
interfaces
>>>>>>> to access native C functions.  This code works great when using
>>>>>>> the previous perl (5.20.x) but fails on all 32 bit targets with
>>>>>>> perl 5.22
>>>>>>>=20
>>>>>>> The interesting thing is that if I build Amanda on my target
>>>>>>> directly (using SDK tools), it works perfectly even with perl
>>>>>>> 5.22, so it seems that there is some [subtle] difference between
>>>>>>> building using bitbake/OE than when built on the self-hosted
>>>>>>> target.  I've compared the builds and the only thing I could
>>>>>>> find (from the output of configure) is a difference in =
sizeof(off_t)
>>>>>>> Sadly, when I tried to adjust this in the OE build, it didn't
>>>>>>> make any difference, but perhaps I didn't make this change
>>>>>>> correctly or completely.
>>>>>>=20
>>>>>> do you have largefile support turned on ? if you do then it might
>>>>>> be detecting it wrongly during configure since we cache it to a
>>>>>> non-largefile case
>>>>>>=20
>>>>>> so try to add something like
>>>>>>=20
>>>>>> EXTRA_OECONF +=3D "${@bb.utils.contains('DISTRO_FEATURES', =
'largefile',
>>>>>> 'ac_cv_sizeof_off_t=3D8', '', d)}"
>>>>>>=20
>>>>>> while building perl or the affected program and see if that helps
>>>>>=20
>>>>> Thanks for the idea, but that didn't help.  I also forced some =
CFLAGS
>>>>> to match, in particular:
>>>>>  -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64
>>>>> but this didn't make any difference either.
>>>>>=20
>>>>=20
>>>> On a whim I just tried a little experiment where I took the *.o =
files
>>>> from the perl subdirectory (where all the swig shims live) from a =
working
>>>> (self-hosted) build and moved them to my bitbake/OE build.  I then =
touched
>>>> all the *.o and *.lo files in the perl tree to force a relink. I =
then ran
>>>> % bitbake amanda -C compile && bitbake core-image-base
>>>> to my surprise, amanda works!  So the culprit lies somewhere within =
the
>>>> swig generated glue.  I've tried comparing these files before and I =
didn't
>>>> find anything other than cosmetic differences (mostly comments =
about the
>>>> name of the file processed, etc).  I've added this subtree to =
"results"
>>>> in my github layer in case someone can see what might be relevant.
>>>>=20
>>>> Any ideas what might be different and make this swig generated glue =
fail?
>>>> Note that the swig interface files are rebuilt as part of the build =
process
>>>> and both bitbake/OE and self-hosted are using the same swig =
version.
>>>=20
>>> I digged a bit through your layer (while my up2date scanner over =
meta-cpan
>>> blocks my build chain :P) and realized that you use perl-5.20.0 as =
it was
>>> in poky. A "simple" downgrade would be more reasonable ... if reason =
applys
>>> here in general :)
>>=20
>> In practice, I am doing that.  However, I want to understand why perl =
5.22
>> breaks things and get it fixed.
>=20
> I did a diff between your 5.20 and poky's 5.22 and realize some fixes =
applied
> in 5.22 regarding library path's aren't applied in your copy. Maybe =
swig relies
> on wrong library locations and when we know, we can fix.
>=20
> So it's maybe not a 5.20 vs. 5.22 problem, it's maybe a weird swig =
setup problem.
>=20
>>> When you fail on cross-build and succeed in target build, try to =
compare the
>>> C files and includes (even swig libraries) used.
>>>=20
>>> It smells more like a "wrong source" than a "perl problem" (and even =
when
>>> I never would read any python thread, the same problem would likely =
occur
>>> there, too ^^).
>>>=20
>>> Which perl headers are used in your build? To dig down, more logs =
would
>>> be reasonable ...
>>=20
>> Everything comes from the same sources, same revisions, etc, as I'm =
using
>> either a bitbake/OE build or the embedded (self-hosted) version from =
the
>> same build plus SDK tools.
>=20
> And your SDK does not include any host tools? Did you prove the =
intermediate
> amanda build files (eg. generated by SWIG) for relicts from wrong =
source?
> Did you check the logs which include directories had been used?

I give it a quick shot and got:

../../arm-poky-linux-gnueabi-libtool  --tag=3DCC   --mode=3Dcompile =
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
-ftree-loop-distribution -ftree-loop-distribute-patterns =
-fgcse-after-reload -fgcse-sm -fgcse-las  -fno-strict-aliasing  -c -o =
xferwrap.lo xferwrap.c

Do you see the =
"-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freud=
e-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE" =
?

Any further blames of perl-5.22? :)

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_8AC87EA9-12DE-4CEF-BF46-100168DB8C03
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW8mZ2AAoJEESZlq7c5Qqd0mkQAJGC3YBhSay/SG5Wxz+5sNcP
YxgeT7cHR4uPW7tH3fDp0pF2F+x5GfUinlAKBETEnjJ2eZWOyIfKreFCG4CtC41H
nVvAWkn0a99/RgJNsfvQtqw6eABRNxtzWtbRh+zNjuX45rDcDoj7pRVwwUpXVFyJ
QH14t8hkFA1SYehfchdvdexHfJ8D5g/xPPgKHPKOocEemDCbFjlJ4xniNFOpElR1
n87rjJUg42JC2766n9X8GJ+Cg/JRFMGqo/SGFN7R+xXYlGucHkrU+XFr4mB5up7m
ezFhXQvGMWXrWQJwzKtaxL6JGAoe+zIKkOPky1IUI+kJCYbUWnvpXfMI65Y2DF36
U37JWTSN2Zj6Mhy19eylhms1UpCbRf3JnB2m3x+0BTKTMWWpOg26gFafktG9rgj+
Nys3Kq3eQYXV5Jx/0xYYSIqEceG+etBIvriTQw4X6rKj5oHm6q3cS5ZZHyFdpZm/
VxwBuvhL/xG/NyKGTVHx8Npw5mqm0Vb/7cu1sRWD4KZVB0Olsx5Sng7BMBAqnSGF
dk+ZOxm1KZjmsTmctwQh5uxP1EO1hXTAWvEae64SsJm87k7SP1Gq5npex2bTiSZ9
GugCu+QngEHL147/utO+NeXWW1BomhIzXPVGMxsLgZTZ75Wqs26ElgGkThpgIZjn
DjgMvmK2WqZnwdEEnm9a
=Iiwu
-----END PGP SIGNATURE-----

--Apple-Mail=_8AC87EA9-12DE-4CEF-BF46-100168DB8C03--
