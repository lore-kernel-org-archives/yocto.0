Return-Path: <sebastian.brand@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70E3FE00DB1; Mon, 13 May 2019 06:07:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14C5E00D52
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 06:07:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 5E75018415;
	Mon, 13 May 2019 15:07:26 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id BT0dHQayeN28; Mon, 13 May 2019 15:07:25 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 6C79318409;
	Mon, 13 May 2019 15:07:25 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 422C01A06D;
	Mon, 13 May 2019 15:07:25 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 363A11A069;
	Mon, 13 May 2019 15:07:25 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Mon, 13 May 2019 15:07:25 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by seth.se.axis.com (Postfix) with ESMTP id 29D98FDA;
	Mon, 13 May 2019 15:07:25 +0200 (CEST)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Mon, 13 May 2019 15:07:24 +0200
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%22]) with mapi id
	15.00.1365.000; Mon, 13 May 2019 15:07:24 +0200
From: Sebastian Brand <sebastian.brand@axis.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] File synchronization on ubifs/xfs
Thread-Index: AQHU84YucEUJJZbSQUuVV9NOFu4bWqZpGdyAgAAXSps=
Date: Mon, 13 May 2019 13:07:24 +0000
Message-ID: <1557752844487.57923@axis.com>
References: <1555331491145.40864@axis.com>,
	<58aae8f8-9061-c28f-702d-36981abff1f2@topic.nl>
In-Reply-To: <58aae8f8-9061-c28f-702d-36981abff1f2@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: File synchronization on ubifs/xfs
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
X-List-Received-Date: Mon, 13 May 2019 13:07:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> An application like "sed" does a rename after write, but that's totally=
=0A=
> unrelated to your issue. Sed does that because it cannot write to the fil=
e=0A=
> it's also reading from.=0A=
=0A=
It might be the reason behind the rename, but you can also argue that=0A=
it is expected that a program that edits a file either leaves it as it was=
=0A=
or changed, but not empty, if the system crashes. (But you can also argue t=
hat=0A=
a power fail is undefined behavior.)=0A=
=0A=
> If someone were to patch sed to insert an "fsync"=0A=
> before the rename, people would get very very angry at that person for ma=
king=0A=
> their build servers horrendously slow and draining their laptop batteries=
 or=0A=
> something to that effect.=0A=
=0A=
On ext3 (with mode data=3Dordered) it would indeed make the systems horrend=
ously=0A=
slow. But on other file systems the impact should be much more reasonable.=
=0A=
=0A=
> In the sed case, the proper thing to do is to direct sed's output to anot=
her=0A=
> file and then take care of syncing and renaming yourself.=0A=
=0A=
That would be the preferable solution. If sed was not already heavily used =
to=0A=
update configuration files, and if many developers didn't "know" that sed -=
i=0A=
can be used for power-fail safe file updates.=0A=
=0A=
=0A=
The reason why I though that it might be interesting for other people using=
=0A=
Yocto is that this is a problem for many file systems that are used in=0A=
embedded systems. And it becomes a problem as soon as there is someone=0A=
that thinks that "sed -i" is safe on their system, since it is safe on ext4=
.=0A=
And for me it was more reasonable to implement a busybox feature than the=
=0A=
alternative solutions.=0A=
=0A=
=0A=
Cheers,=0A=
Sebastian=0A=
________________________________________=0A=
From: Mike Looijmans <mike.looijmans@topic.nl>=0A=
Sent: Monday, May 13, 2019 1:39 PM=0A=
To: Sebastian Brand; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] File synchronization on ubifs/xfs=0A=
=0A=
An application like "sed" does a rename after write, but that's totally=0A=
unrelated to your issue. Sed does that because it cannot write to the file=
=0A=
it's also reading from. If someone were to patch sed to insert an "fsync"=
=0A=
before the rename, people would get very very angry at that person for maki=
ng=0A=
their build servers horrendously slow and draining their laptop batteries o=
r=0A=
something to that effect.=0A=
=0A=
When they tell you to fix "the application", they mean YOUR application, no=
t=0A=
all the programs in the world that happen to call rename.=0A=
=0A=
In the sed case, the proper thing to do is to direct sed's output to anothe=
r=0A=
file and then take care of syncing and renaming yourself.=0A=
=0A=
=0A=
=0A=
On 15-04-19 14:31, Sebastian Brand wrote:=0A=
> Hi all,=0A=
>=0A=
> I stumbled into an file synchronization problem, and I am curious if ther=
e are more people using  Yocto and ubifs/xfs/similar that have an interest =
of "fsync before rename"?=0A=
>=0A=
> When trying to atomically update a file a common flow is "create copy, ed=
it copy, rename copy->original", but this does for some file systems not gu=
arantee that the file is not empty after a power fail. A more correct flow =
is "create copy, edit copy, fsync copy, rename copy->original", at least ac=
cording to file system developers. This has been discussed a lot and the ge=
neral status seems to be that many file system developers think that applic=
ations that does not fsync before rename are broken, and many application d=
evelopers think that fsync is implied at rename and this needs to be fixed =
in the file systems. (I am (trying to) not picking a side, and just trying =
to solve my problems :) )=0A=
>=0A=
> Since some file systems common in embedded systems (UBIFS, XFS) does not =
implement automatic fsync before rename, this becomes a bit of a problem if=
 applications in Yocto does not sync "correctly". One of these applications=
 is sed (in-place edit), and I am currently working on a patch to add fsync=
 before rename (as a feature). Busybox are not interested in the feature (a=
s they are of the opinion that this should be solved in the file system), b=
ut I am curious if there is any interest in these kind of features in Yocto=
?=0A=
>=0A=
> Regards,=0A=
> Sebastian=0A=
>=0A=
=0A=

