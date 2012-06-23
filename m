Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82AC1E0070B
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 01:14:50 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so5401243pbb.35
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 01:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=ueZIHJ5WqcC+S/RGSfmp9ONDuINmHM7lEPtaZN/KPy4=;
	b=HQA+6pFgI5JC5rM1FeQhMNqPjMWNQktPb94bBIT/bdpq/qWRKnL6T+yGeJH9Cc+a/5
	gzWQyQuuq2C9M6AeczQxhA1bK242K/9pwzxPQLdqeuyB4iVjDmv0rim0lCa4RS2dymu/
	XGy88Kb1zd8oLy3lhwmqGzyh6BSaCwHYAFTsFdMPGV5fid+w/MAdirB3sR12Poxomc8I
	q2GKVAl/d9cqAuZQAmXssnP71PEvyaD0K95V3HVPjD75SKAjdMpcrj/ecjS+2JVi7gvy
	pt9+5dfwhKQTBhBdASe8ogblu95REX3+jOni2knOGrG9kRwWZ6ANEAiIL8H30SEMsVwP
	IkiQ==
Received: by 10.68.234.104 with SMTP id ud8mr17583189pbc.163.1340439290333;
	Sat, 23 Jun 2012 01:14:50 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id b10sm1686194pbr.46.2012.06.23.01.14.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 23 Jun 2012 01:14:49 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
Date: Sat, 23 Jun 2012 12:14:45 +0400
Message-Id: <8EF6158B-AE47-4D70-B2FF-0395A701DB29@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
	<42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
	<CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
	<6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: SRCREV spec not working for kernel git recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 23 Jun 2012 08:14:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Jun 23, 2012, at 11:57 AM, Elvis Dowson wrote:

> Hi Khem,
>=20
> On Jun 23, 2012, at 11:29 AM, Khem Raj wrote:
>=20
>>> I found out that if I specify SRCREV_pn-${PN}, it works and picks up =
the correct commit id, as follows:
>>>=20
>>> SRCREV_pn-${PN} =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"
>>>=20
>>> However, if you simply specifying SRCREV =3D  =
"a5556fb251253ccb674bd22d9703c37f6f8807a8", it has no effect and it =
always picks up the latest commit from the git repository.
>>>=20
>>> It would be great if someone could please explain why this is so, =
because I search through the Yocto documentation and it isn't mentioned =
anywhere. The OE classic way of doing things, it used to pick up the =
correct commit by just specifying SRCREV. Now I find that you have to =
specify SRCREV_pn-${PN} to get it to work.
>>>=20
>>> Is this documented somewhere?
>>=20
>> ?
>> can you port bitbake -e virtual/kernel output with and without change
>> somewhere ?
>=20
>=20
> The output files are rather large.=20
>=20
> <SRCREV_pn-.txt><SRCREV.txt>
>=20
> BTW, I do not have a PROVIDES +=3D "virtual/kernel" entry in the =
linux-xilinx kernel recipes. Is that necessary to get SRCREV to work?
>=20

Even adding a PROVIDES +=3D "virtual/kernel" entry to the linux-xilinx =
recipe did not change the behavior. So for the moment, SRCREV doesn't =
seem to have any effect, but  SRCREV_pn-${PN} works.

Best regards,

Elvis Dowson


