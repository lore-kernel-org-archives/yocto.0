Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6515DE01376; Thu, 14 Jun 2018 16:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F62E0120F
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 16:11:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 9BECE189D0;
	Fri, 15 Jun 2018 01:11:10 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id T90Inw6iuZSX; Fri, 15 Jun 2018 01:11:09 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 9A7A1189C6;
	Fri, 15 Jun 2018 01:11:09 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 829201E07A;
	Fri, 15 Jun 2018 01:11:09 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 741181E077;
	Fri, 15 Jun 2018 01:11:09 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Fri, 15 Jun 2018 01:11:09 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by seth.se.axis.com (Postfix) with ESMTP id 663202A9F;
	Fri, 15 Jun 2018 01:11:09 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Fri, 15 Jun 2018 01:11:09 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1365.000; Fri, 15 Jun 2018 01:11:09 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Tim Hammer
	<tdhammer99@gmail.com>
Thread-Topic: [yocto] devtool finish & patch order
Thread-Index: AQHUA5SJPc8XwKUZd06zZnJXeJVK26RfM+YAgAEf8OA=
Date: Thu, 14 Jun 2018 23:11:09 +0000
Message-ID: <3d30eca24f6f4709aa81cc5bf31c5850@XBOX02.axis.com>
References: <CALh9vaXCbqBe_49fi3OFs_Cj56s=J7Bvdv6f8BfWz9QMhmJQUw@mail.gmail.com>
	<CANNYZj9bbraOoEJChm2X7Ws1+h9+K86Kissdh2dWaPtr1PiOEw@mail.gmail.com>
In-Reply-To: <CANNYZj9bbraOoEJChm2X7Ws1+h9+K86Kissdh2dWaPtr1PiOEw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Paul Eggleton
	\(paul.eggleton@linux.intel.com\)" <paul.eggleton@linux.intel.com>
Subject: Re: devtool finish & patch order
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
X-List-Received-Date: Thu, 14 Jun 2018 23:11:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Alexander Kanavin
> Sent: den 14 juni 2018 09:07
> To: Tim Hammer <tdhammer99@gmail.com>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] devtool finish & patch order
>=20
> 2018-06-14 7:02 GMT+03:00 Tim Hammer <tdhammer99@gmail.com>:
> >
> > My changes for U-Boot are not working as expected. I am wondering-
> did I use
> > devtool incorrectly?
> >
> > I used 'devtool modify' to create a working copy of the vendor's u-
> boot and
> > copied & modified files to add support for my custom board. I did my
> work in
> > 3 distinct and commitable steps, resulting in 3 patch files in my
> layer when
> > I ran 'devtool finish'.
> >
> > When I pulled the changes into another clone for validation, it
> appears to
> > be applying patches in reverse order! It is attempting to apply patch
> 003
> > but cannot find the file to modify. That file was created in patch
> 001. None
> > of the files created in patch 001 are in my working directory.
> >
> > I reversed the order of the patch files in the .bbappend file and it
> worked
> > fine.
> >
> > Do I need to use the tool differently to get the patches correctly
> applied?
>=20
> Devtool should add newly added patches to the recipe in the same order
> as the commits you created in workdir repo. If that is not the case,
> please provide the steps that reproduce the issue.
>=20
> Alex

It should, but there does not seem to be a guarantee that it does.=20
To (hopefully) reproduce the problem, here is what I did:

* `devtool modify -w <some simple package>`
* Modify some file, e.g., add some comment to the Makefile.
* Commit it with subject "Change 1"
* Repeat the two steps above two more times, increasing the number in=20
  the subject each time.
* `devtool finish <some simple package> <layer where the recipe is>`
* Examine the updated recipe. In my case the patches were in the correct=20
  order after this step:

SRC_URI =3D "<original URI> \
           file://0001-Change-1.patch \
           file://0002-Change-2.patch \
           file://0003-Change-3.patch \
           "

* Not to be discouraged, I started over (using the existing source dir):
* `devtool modify -n <some simple package>`
* `git rebase -i 'HEAD~3'` (in workspace/sources/<some simple package>)
* Use "reword" on the last two commits and change their subject lines=20
  to "Another change" and "Some third change".
* `devtool finish <some simple package> <some other layer than where the re=
cipe is>`
* Now I ended up with the following in the new .bbappend file:

SRC_URI +=3D "file://0002-Another-change.patch file://0003-Some-third-chang=
e.patch file://0001-Change-1.patch"

Also noteworthy is the different formattings used when updating the=20
SRC_URI in the original recipe vs the bbappend file. The format=20
used in the bbappend file is not one I would have chosen (personally=20
I prefer to use SRC_URI +=3D "..." for each patch, so that no other=20
lines need to be modified when adding the first patch or removing=20
the last one).

//Peter


