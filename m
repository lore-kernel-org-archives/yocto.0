Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66DC8E00931; Wed, 23 Mar 2016 02:14:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8DBFE00863
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 02:14:51 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id l68so186220134wml.0
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 02:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=RNqnmeQLE1wGwyo9TpVmlNby9md8MkapNvJtQ4xZBr8=;
	b=Sk+PWXqdC2ittpaqcFK5qPwmJ4g7eJXQ93mR3P1S+FdQJ/LEuWZGZscvjiBv4BEOzx
	aSGSAgyXzSRhemdR1U63lpkHDGuYYmyF3m6VhJ1p4TiJwOCTeb9FB5qeV5BlHx29ouLA
	Lt8QzGY4jXdR9t6dUuGPXl3cp53GN7A5+S7NL6c3l7l6/FRPIxYd420ui8lu+7cYDw7n
	n/el16Q1Qgb1A/KI1Mt7DXFw39zmpxjkThblbFlVeIJoirrKT7lLyDJxfGLH2/yq6uCQ
	NMm5wq8gF/D6ap3xFsJz9a5URy8BjxSgAsPxoH6+N2GiGDDoWoaxKMP15b42Lf2zi8Ca
	niEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=RNqnmeQLE1wGwyo9TpVmlNby9md8MkapNvJtQ4xZBr8=;
	b=He/WNB3rGSf2JIB7ixM/P+6rKXl5vLNu4l/+7JNSG8YqdTysrbTyq3Bt547icC0gYV
	xK8q86ASY7+fSZQycNQwjslwhoCyt9XMOF3TjGHxkkbFjE79vd7Pnz2KTpuvGtIn7+df
	ZsKvUlGLZsV2p2gB3lznVxxEcLEY+4rPjsMH3Ain/pL591u2N4/vIAzSRvSAGBKQ8heO
	FKQf5nqv6nA6uvsXtUMSt7IvzFSpJBZ78j3qbrmA3b7k1gu7XktheFSvoz4CbW2Lcj49
	pCW9+tMclqW1FMFgZAGxbmayb84Czt2RPc0h3AqeEw3wYZt3h7iD2nw+X0203wrBL6ap
	A4uQ==
X-Gm-Message-State: AD7BkJJ2wZ3F1lYYRcgKKlcvnhKKoIKh3uonEu3dauFzPlnNiwXFDfBzG/4Z8J9errXnrA==
X-Received: by 10.28.232.87 with SMTP id f84mr2660275wmh.56.1458724490330;
	Wed, 23 Mar 2016 02:14:50 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	s66sm21350368wmb.6.2016.03.23.02.14.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2016 02:14:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <56F25D38.1020302@mlbassoc.com>
Date: Wed, 23 Mar 2016 10:14:48 +0100
Message-Id: <BB452600-8B65-4332-AF41-CF834000B14C@gmail.com>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
	<5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
	<56F25D38.1020302@mlbassoc.com>
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
X-List-Received-Date: Wed, 23 Mar 2016 09:14:53 -0000
X-Groupsio-MsgNum: 29146
Content-Type: multipart/signed;
	boundary="Apple-Mail=_819A8488-7FE9-485F-9392-0A0C71A46BA0";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_819A8488-7FE9-485F-9392-0A0C71A46BA0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> Am 23.03.2016 um 10:09 schrieb Gary Thomas <gary@mlbassoc.com>:
>=20
> On 2016-03-23 09:57, Jens Rehsack wrote:
>>=20
>>> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>=20
>>> On 2016-03-23 09:09, Gary Thomas wrote:
>>>> On 2016-03-23 06:36, Khem Raj wrote:
>>>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> =
wrote:
>>>>>> I hope this is the correct place to discuss this problem.  It
>>>>>> is all about a difference in behavior between a program built
>>>>>> using bitbake/OE (only OE-core is needed) vs building the program
>>>>>> on the target hardware itself.
>>>>>>=20
>>>>>> I've been struggling with this problem since perl was upgraded
>>>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland =
Archive
>>>>>> tool) which is written primarily in perl and uses swig interfaces
>>>>>> to access native C functions.  This code works great when using
>>>>>> the previous perl (5.20.x) but fails on all 32 bit targets with
>>>>>> perl 5.22
>>>>>>=20
>>>>>> The interesting thing is that if I build Amanda on my target
>>>>>> directly (using SDK tools), it works perfectly even with perl
>>>>>> 5.22, so it seems that there is some [subtle] difference between
>>>>>> building using bitbake/OE than when built on the self-hosted
>>>>>> target.  I've compared the builds and the only thing I could
>>>>>> find (from the output of configure) is a difference in =
sizeof(off_t)
>>>>>> Sadly, when I tried to adjust this in the OE build, it didn't
>>>>>> make any difference, but perhaps I didn't make this change
>>>>>> correctly or completely.
>>>>>=20
>>>>> do you have largefile support turned on ? if you do then it might
>>>>> be detecting it wrongly during configure since we cache it to a
>>>>> non-largefile case
>>>>>=20
>>>>> so try to add something like
>>>>>=20
>>>>> EXTRA_OECONF +=3D "${@bb.utils.contains('DISTRO_FEATURES', =
'largefile',
>>>>> 'ac_cv_sizeof_off_t=3D8', '', d)}"
>>>>>=20
>>>>> while building perl or the affected program and see if that helps
>>>>=20
>>>> Thanks for the idea, but that didn't help.  I also forced some =
CFLAGS
>>>> to match, in particular:
>>>>   -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64
>>>> but this didn't make any difference either.
>>>>=20
>>>=20
>>> On a whim I just tried a little experiment where I took the *.o =
files
>>> from the perl subdirectory (where all the swig shims live) from a =
working
>>> (self-hosted) build and moved them to my bitbake/OE build.  I then =
touched
>>> all the *.o and *.lo files in the perl tree to force a relink. I =
then ran
>>>  % bitbake amanda -C compile && bitbake core-image-base
>>> to my surprise, amanda works!  So the culprit lies somewhere within =
the
>>> swig generated glue.  I've tried comparing these files before and I =
didn't
>>> find anything other than cosmetic differences (mostly comments about =
the
>>> name of the file processed, etc).  I've added this subtree to =
"results"
>>> in my github layer in case someone can see what might be relevant.
>>>=20
>>> Any ideas what might be different and make this swig generated glue =
fail?
>>> Note that the swig interface files are rebuilt as part of the build =
process
>>> and both bitbake/OE and self-hosted are using the same swig version.
>>=20
>> I digged a bit through your layer (while my up2date scanner over =
meta-cpan
>> blocks my build chain :P) and realized that you use perl-5.20.0 as it =
was
>> in poky. A "simple" downgrade would be more reasonable ... if reason =
applys
>> here in general :)
>=20
> In practice, I am doing that.  However, I want to understand why perl =
5.22
> breaks things and get it fixed.

I did a diff between your 5.20 and poky's 5.22 and realize some fixes =
applied
in 5.22 regarding library path's aren't applied in your copy. Maybe swig =
relies
on wrong library locations and when we know, we can fix.

So it's maybe not a 5.20 vs. 5.22 problem, it's maybe a weird swig setup =
problem.

>> When you fail on cross-build and succeed in target build, try to =
compare the
>> C files and includes (even swig libraries) used.
>>=20
>> It smells more like a "wrong source" than a "perl problem" (and even =
when
>> I never would read any python thread, the same problem would likely =
occur
>> there, too ^^).
>>=20
>> Which perl headers are used in your build? To dig down, more logs =
would
>> be reasonable ...
>=20
> Everything comes from the same sources, same revisions, etc, as I'm =
using
> either a bitbake/OE build or the embedded (self-hosted) version from =
the
> same build plus SDK tools.

And your SDK does not include any host tools? Did you prove the =
intermediate
amanda build files (eg. generated by SWIG) for relicts from wrong =
source?
Did you check the logs which include directories had been used?

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_819A8488-7FE9-485F-9392-0A0C71A46BA0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW8l6IAAoJEESZlq7c5QqdttkP/3V5Ivp2FMNnLPe7ceEsKnz6
qk57ISPdR+Nr/uNxSsWFmeNOOvffIVHBNi94cZyWCKrBwKysl/qlsKnuK943qD2c
LopXqsp5FovgpxTaRy5UIAvZXdlZt6ezfcJnPvedCanvAxxqhszhx4O31YK36fEC
JON/pawwIf3whm7XjplrdpmgymkDiDzMJRmsEV7cITXzF2R62q8iECoyPV+8un0M
BH8Q1vDdaTAeG9UlyNxOF0PppOMGn160ddetSyf/ntVoMnFwO2uznOxg967qHbCz
KX/8sWlZqDQ/xCdltIV+BgxFflHIL/v6ahJZBpIqxvy3NTUalR5AVO5w8SjpbRRE
y/Jzu7g1D8JqLgFA4hF4IX8FGx1MBFfFPA5XtOTm1V42FdLXX4zQLGkFLx76xNJ1
EI5nvPxv9iiSmoYAeCPLXaC2YOUuCP01m6LKEDjq8tpj5Z0XNnqfj58PwGVtFLgO
H5cMhdfSyxJEFQMmW/F9lO03WgSVTMsNPRGAVhWKBlTIB7y7qkt1yAxsjOkfCXe6
D2aNKYir6j3vo3F0FRWdpip/9ofISEeYdJv6helqAj4nUDD7VVC7RuHt/H3wfOrY
Lurxw3/XzBUgOY0mLO5b8s33wmYgiZ1yMCOpjDgEdTqfo5Keas7WV0xkE3AylRAi
4tGcK73vgGwzvJXLLnz0
=UfGO
-----END PGP SIGNATURE-----

--Apple-Mail=_819A8488-7FE9-485F-9392-0A0C71A46BA0--
