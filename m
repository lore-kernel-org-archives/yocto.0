Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08413E005B3
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 06:47:40 -0700 (PDT)
Received: by mail-pd0-f176.google.com with SMTP id t12so5244104pdi.35
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 06:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=Xzj2CQLCTLhDLjx8q9ZUEbawu8CXVBZ7RDbARpzlH90=;
	b=bwmMSyXMlWtsVZ8WT3wdi6+XKaOOkpETI+LTeApgjipaJP9oXTwGdQIhi7wPFsSSpG
	hMzn7+cquYq/5sky1lJ6tm1Do10ZWJaPET0Qhua6lkeox0a3aNBE8xhtuYg3nagRJYFe
	2MeCO3QAZiNV3ebuBBN/Jvl+SYMXSnzmiiHvcsuBAOA5GFKEBVB0OOJSPvevQ4n4RlHz
	iq6lCOzqdccQrjbFSG0bp8SAQ5mcrXpidrCSd1nHgNUv35GLJjBNSY3+Uiu3PFKtTf6n
	VTgLBr9RNW0X3mp7MynM9YpLRrZG1TOleUXFMee8Bb8Mbi7bT1BI1WfgEXg4ykpsRMMg
	fh0A==
X-Received: by 10.68.216.161 with SMTP id or1mr26284721pbc.147.1373377659920; 
	Tue, 09 Jul 2013 06:47:39 -0700 (PDT)
Received: from sa-nc-spg-194.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	bs3sm28354189pbc.42.2013.07.09.06.47.38 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 09 Jul 2013 06:47:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CE01D0ED.2D874%belen.barros.pena@intel.com>
Date: Tue, 9 Jul 2013 06:47:36 -0700
Message-Id: <CC9FA643-3294-4292-885F-75FE73E00065@gmail.com>
References: <CE01D0ED.2D874%belen.barros.pena@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: naming .bb files
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
X-List-Received-Date: Tue, 09 Jul 2013 13:47:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 9, 2013, at 6:45 AM, "Barros Pena, Belen" =
<belen.barros.pena@intel.com> wrote:

> On 09/07/2013 11:35, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>=20
>> On 9 July 2013 11:27, Barros Pena, Belen =
<belen.barros.pena@intel.com>
>> wrote:
>>> Thanks Ross!
>>>=20
>>> I've tried a .bb file name with capital letters and Hob is not =
liking it
>>> at all. So it looks like uppercase might also be a problem.
>>>=20
>>=20
>> This is from memory and a month or so back but I think the problem
>> with capital letters is that opkg rejects .ipk files with capital
>> letters. I didn't have any problems with it when producing .deb =
files.
>=20
> It sounds like the safe thing for Hob to do is to reject uppercase =
letters
> in .bb file names (just in case).

not only names but also in PR string if it has letters in it.

>=20
>=20
> Thanks!=20
>=20
>=20
>>=20
>> --
>> Paul Barker
>>=20
>> Email: paul@paulbarker.me.uk
>> http://www.paulbarker.me.uk
>=20
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>=20
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


