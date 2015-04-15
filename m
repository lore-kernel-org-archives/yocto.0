Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7856CE009BE; Wed, 15 Apr 2015 06:11:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74C7E009B8
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 06:11:42 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so50705114pab.2
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 06:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:openpgp:content-type;
	bh=tWiltEQizOofgYJcGGgrSvG0CBuY+25kqiol6XuIl3E=;
	b=LVuCUJ45+/SOOmN+Qm87dFHOHY/ctcUiBrKmwwqY1b908S6v4v33WGZpUgOavcamub
	JZGSRmDlHyF/R6zqEbYJSt4mDEFB+fuh7Iwa+y0a4fQOnl/0z6o/okZK/F2EYDsCTcAs
	5O+q8Fk7NWl5tKvN/ZdvKOld3EnesjaWRrI6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:openpgp:content-type;
	bh=tWiltEQizOofgYJcGGgrSvG0CBuY+25kqiol6XuIl3E=;
	b=gnrI1p3fVDt6//y2jxXrNIwNRVqbv0lmq9BA6q2hMarQhyAahz2l2oEYbPD7/Xrezx
	Z+AS06naL69aIDcspXRode3+prco6pO/7Q7J0mQAzb/suGz/Tjs9svA7Tv9L1azHFubx
	BICcvWwyS9TRZDfRSN2iqD6ccWP9Ti4JByLQy6DF4BwexKR5KhDchPpOUA64uOiZsVe9
	BII0F1CM2XcLqf2gqObuy+/5O3UDuJrusqemxNeDPfY9ub95qS6ubSmeoDA+4Ry/oHfN
	DLhQ64Ye42HoQvFUVeIOQXYg1zyCh1G2E+sVIqBFHlENu513R4emx3uK/xRcxGskaufk
	62KQ==
X-Gm-Message-State: ALoCoQlit6+w7GrCkt8EZglNwmD7rIySvvXVZbwVpH+QA/zxG7vmHqsWAJroaOL1eIR72DTbdEgd
X-Received: by 10.70.5.101 with SMTP id r5mr46181621pdr.139.1429103502462;
	Wed, 15 Apr 2015 06:11:42 -0700 (PDT)
Received: from [192.168.17.102] (static-50-43-13-43.bvtn.or.frontiernet.net.
	[50.43.13.43]) by mx.google.com with ESMTPSA id
	cp10sm4165787pdb.44.2015.04.15.06.11.41
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Apr 2015 06:11:41 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <552E6388.70907@yoctoproject.org>
Date: Wed, 15 Apr 2015 06:11:36 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com>	<552DDC1C.3090401@windriver.com>
	<CAPhnLPB+zxYDc2UFkPNKh6xMPbsLE9AgTqy0=HjPf_0=QEyANA@mail.gmail.com>
	<552E578A.7000904@yoctoproject.org>
In-Reply-To: <552E578A.7000904@yoctoproject.org>
OpenPGP: id=D1F2407285E571ED12A407A73373170601861969
Subject: Re: 1.7.1 ADT-installer errors
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
X-List-Received-Date: Wed, 15 Apr 2015 13:11:45 -0000
X-Groupsio-MsgNum: 24466
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="bLMqM7dTp2AdcGseCi1lWTXeHWS7LJPvL"

--bLMqM7dTp2AdcGseCi1lWTXeHWS7LJPvL
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The sync is complete and broken symlinks are restored. I've also taken
the opportunity to clean up absolute symlinks at the source so this
issue cannot happen again even if the chroots aren't set properly.

Michael Halstead
Yocto Project / SysAdmin

On 04/15/2015 05:20 AM, Michael Halstead wrote:
> A change in the rsync configuration caused all symlinks to break during=

> the most recent sync to the mirror front ends. The error has been
> corrected and the adtrepo links will be restored from the source shortl=
y.
>
> Michael Halstead
> Yocto Project / SysAdmin
>
> On 04/15/2015 04:50 AM, Flanagan, Elizabeth wrote:
>> On 15 April 2015 at 04:33, Yi Zhao <yi.zhao@windriver.com> wrote:
>>> Hi,
>>>
>>> I can confirm it is an issue.  I got  a 404 not found error when I tr=
ied to
>>> download the core-image-sato-sdk-qemux86.tar.bz2 from
>>> http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/. Looks like the=

>>> symbolic link is broken.
>>>
>>> Beth,
>>> Would you please have a look at this and fix it ?
>>>
>> Sure, it'll take me a bit to get access to the infrastructure but I'll=

>> get to it when I have access.
>>
>> -b
>>
>>> Thanks,
>>> Yi
>>>
>>>
>>> =E5=9C=A8 2015=E5=B9=B404=E6=9C=8814=E6=97=A5 16:24, heli Atck =E5=86=
=99=E9=81=93:
>>>
>>> Hi, I'm new to Yocto (and embedded Linux for that matter). I was foll=
owing
>>> the ADT manual to get started with application development. I tried u=
sing
>>> the ADT-installer script, but ran into some errors.
>>>
>>> Here's the relevant part of the installer log file:
>>>
>>> Creating directory /home/spe/test-yocto/qemux86...
>>> Extracting rootfs: core-image-sato-sdk-qemux86.tar.bz2, using pseudo.=
=2E.
>>> tar (child): ./download_image/core-image-sato-sdk-qemux86.tar.bz2: Ca=
nnot
>>> open: No such file or directory
>>> tar (child): Error is not recoverable: exiting now
>>> tar: Child returned status 2
>>> tar: Error is not recoverable: exiting now
>>>
>>> There are no files in my /download_image directory so I guess they ha=
ve not
>>> been properly retrieved from the repository. I looked at the reposito=
ry for
>>> 1.7.1 at http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/ and so=
me of
>>> the relevant files seem to be missing.
>>>
>>> Or did I mis a step somewhere?
>>>
>>> Sammy
>>>
>>>
>>>
>>
>



--bLMqM7dTp2AdcGseCi1lWTXeHWS7LJPvL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVLmOIAAoJEH9hAclg9EfIK80H/jp10gXEyOwhKdBaqXO5qcYd
Q6LgSnY68oOfK1eq4jkDxTun1q8VDta5iCfR0ssS+7zbvohU9ZqQqyJYA4ANpK5u
VQOvT2TFb9PQjFCROQ7AvhypkpT5c9+k8NdClYS4bjPhheGaM2J1rYfMKp2PJFEy
Ca17b89XV67w37tOVUT6V5G5cVb/TPlFDB2bs9ixCXWyC0qb5SAf5uoTDgunxPVp
AgX0WRKL2+joPSE7AIxs6R3Ap25gI8Vc83hxsqgBn3sApq9GRxMOmeccDfYFsBNh
dnnq5IcrLsC3uGisGRJWPQNPlAOQBonQwiKhKY78c4QfPcIeVHocMj8Zg5kJr1o=
=Hodq
-----END PGP SIGNATURE-----

--bLMqM7dTp2AdcGseCi1lWTXeHWS7LJPvL--
