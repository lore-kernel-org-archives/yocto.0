Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDEF1E00B97; Wed, 23 Mar 2016 01:57:43 -0700 (PDT)
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
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A999E0092C
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 01:57:31 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id l68so224006684wml.0
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 01:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=w0qrlpHlxIvPfVdC3HecTOQM5Yd5RboxFN//OVCJz/o=;
	b=xyLNDdVc3W/1WR6JCv/iikDDfQVnrXjwGDsNuuRTn3pLISimaVQzXc+NIUygEMkW8X
	CV+x0Pj/Abcsbca5sTg2rb+fU03qZOif39O9HOM+k/K+TqyLP988+sxjq+r5ojCgQ8P9
	WRliUSr0+/fJsJe6/lsMhuWh+dbHx43axi1m6jPQzGBnOGrjfsAIz9Ra5mHdch5eeIhu
	Xj6lnYncEIaKiNXoTHhnRSWAD15Kp90V574m0Be01YBuHwvKNqcF51PYUx2HQpVFBZMz
	n6zvfbjzy5/L1BLbhYpYzyZtO3hXxSi0771hpag9MLUnUdaCIF2iKQdMoIgSmONYcPka
	LEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=w0qrlpHlxIvPfVdC3HecTOQM5Yd5RboxFN//OVCJz/o=;
	b=bigxuWShaet6krXrW/a0MZSzyHP+0WVtLxYDzURkAmqluuuthd1UVj6Yk4PhFpJDNZ
	pA1BDyYH74EruXXKb0SBOveeNETmj6QEdueecNcpKQo1Gjf75kpBthHV5OA9BvXBhOcE
	Ue32p0kQk9SGYoPpTH8FWLPbba5a5unE0iZ6+XmhFG6NiQIL4i1qwFh2c8NgXVaf/Wij
	fnT3XBqK3y7deskBZsUPvC7vx1LrHqatAwQtZ51WJ1BmmUe+yXvIGdqYo9T5G/E4GhnM
	6dWRFiQ49ApT2R1v5mt4B9rg/kpaahMmG5CAiD83wU4mMmPTxgJFtlIUZYO3m/Zd7Z7/
	GsGQ==
X-Gm-Message-State: AD7BkJIouC81ex02nCjTonI9WzeGkSNvsHEVInxvw4nPcUvH1ddWt9/TwL5AQ89zYSf4Fg==
X-Received: by 10.28.4.147 with SMTP id 141mr2380556wme.44.1458723450573;
	Wed, 23 Mar 2016 01:57:30 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	k125sm21046872wmb.14.2016.03.23.01.57.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2016 01:57:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <56F2568B.2050105@mlbassoc.com>
Date: Wed, 23 Mar 2016 09:57:28 +0100
Message-Id: <5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
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
X-List-Received-Date: Wed, 23 Mar 2016 08:57:43 -0000
X-Groupsio-MsgNum: 29143
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1ECAD9C6-A04E-4A23-9B3C-C227E87A33E3";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_1ECAD9C6-A04E-4A23-9B3C-C227E87A33E3
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
> 
> On 2016-03-23 09:09, Gary Thomas wrote:
>> On 2016-03-23 06:36, Khem Raj wrote:
>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>> I hope this is the correct place to discuss this problem.  It
>>>> is all about a difference in behavior between a program built
>>>> using bitbake/OE (only OE-core is needed) vs building the program
>>>> on the target hardware itself.
>>>> 
>>>> I've been struggling with this problem since perl was upgraded
>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland Archive
>>>> tool) which is written primarily in perl and uses swig interfaces
>>>> to access native C functions.  This code works great when using
>>>> the previous perl (5.20.x) but fails on all 32 bit targets with
>>>> perl 5.22
>>>> 
>>>> The interesting thing is that if I build Amanda on my target
>>>> directly (using SDK tools), it works perfectly even with perl
>>>> 5.22, so it seems that there is some [subtle] difference between
>>>> building using bitbake/OE than when built on the self-hosted
>>>> target.  I've compared the builds and the only thing I could
>>>> find (from the output of configure) is a difference in sizeof(off_t)
>>>> Sadly, when I tried to adjust this in the OE build, it didn't
>>>> make any difference, but perhaps I didn't make this change
>>>> correctly or completely.
>>> 
>>> do you have largefile support turned on ? if you do then it might
>>> be detecting it wrongly during configure since we cache it to a
>>> non-largefile case
>>> 
>>> so try to add something like
>>> 
>>> EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'largefile',
>>> 'ac_cv_sizeof_off_t=8', '', d)}"
>>> 
>>> while building perl or the affected program and see if that helps
>> 
>> Thanks for the idea, but that didn't help.  I also forced some CFLAGS
>> to match, in particular:
>>   -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
>> but this didn't make any difference either.
>> 
> 
> On a whim I just tried a little experiment where I took the *.o files
> from the perl subdirectory (where all the swig shims live) from a working
> (self-hosted) build and moved them to my bitbake/OE build.  I then touched
> all the *.o and *.lo files in the perl tree to force a relink. I then ran
>  % bitbake amanda -C compile && bitbake core-image-base
> to my surprise, amanda works!  So the culprit lies somewhere within the
> swig generated glue.  I've tried comparing these files before and I didn't
> find anything other than cosmetic differences (mostly comments about the
> name of the file processed, etc).  I've added this subtree to "results"
> in my github layer in case someone can see what might be relevant.
> 
> Any ideas what might be different and make this swig generated glue fail?
> Note that the swig interface files are rebuilt as part of the build process
> and both bitbake/OE and self-hosted are using the same swig version.

I digged a bit through your layer (while my up2date scanner over meta-cpan
blocks my build chain :P) and realized that you use perl-5.20.0 as it was
in poky. A "simple" downgrade would be more reasonable ... if reason applys
here in general :)

When you fail on cross-build and succeed in target build, try to compare the
C files and includes (even swig libraries) used.

It smells more like a "wrong source" than a "perl problem" (and even when
I never would read any python thread, the same problem would likely occur
there, too ^^).

Which perl headers are used in your build? To dig down, more logs would
be reasonable ...

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_1ECAD9C6-A04E-4A23-9B3C-C227E87A33E3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW8lp4AAoJEESZlq7c5Qqdf0wQAKnYhdBFA3G5GaTOTy06ufeA
zoGEg5e+8NfjcqD3anVOSKSH0i41UZMJdKg1naWkx3rGmR1iakbTSLrgVAXAGaB2
EVpqC5hdmvv9B4NXrWv6nyL9hG+mJYbO9a09mB8QHAvV6aFM4trwvwLVScCC779l
EOCNUx3hQrNA0z5HPFby8yyCFILXhzaFS7bS54YASugkvkpTQWHeOSocCIUvfXL8
+Wvi8ZQde3WP4mYmWcCtLwJ5YHoYcBbhJ/UhCry31kReAfv8eZQCWQHNbTYnIGhJ
UzICg4aRFAt1RsEQxfL5Ni2tPnBKRnCgTnGVlUU9Enhody/mWA5uOg4R0bznb9BG
+fYAZW2VzXPZ2D7BVcwgCLf68hQAPXzPEJAT/u4ZiZxSFyL1hpbB4G5hVc3TCtci
z1vzFLPUs6XhJTLerLWGHn7D22xmLXviySpGzNatmTR840r1dUaImbmHGMFSK4lY
n2u+bqzOwiNZUaJ0hjusvCg4JxYkxi4ZVDQwnJqHlK5sCmab5TA9SY8v7tmz6t+n
wdZipZ+vn9ZsNjrBq+OsBLf1DRnUCUNcPuPMNa0MFxKTvhcIGccMBSomKgboiFGr
QCVOhDCheR4IvQ5YPfbafhKmt53LewUEzs9qt1Na2ZQ+LPlcAdTHxaA6Th50Adeq
i9ldd1pF2x9M6tYDH/+G
=71gX
-----END PGP SIGNATURE-----

--Apple-Mail=_1ECAD9C6-A04E-4A23-9B3C-C227E87A33E3--
