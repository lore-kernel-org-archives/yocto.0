Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A18B6E00D0D; Wed, 18 Oct 2017 01:52:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA49E00CEC
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 01:52:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2094335CE17;
	Wed, 18 Oct 2017 08:52:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id rDkgmvt0woXj; Wed, 18 Oct 2017 08:52:24 +0000 (UTC)
Received: from [10.173.209.157] (92.40.249.224.threembb.co.uk [92.40.249.224])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B7AB635C150;
	Wed, 18 Oct 2017 08:52:24 +0000 (UTC)
Mime-Version: 1.0 (1.0)
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: iPhone Mail (15A421)
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F094B742@IR-CENTRAL.corp.innerrange.com>
Date: Wed, 18 Oct 2017 09:52:20 +0100
Message-Id: <F0259533-8DD0-4954-9AFF-DA33AB2B7753@dynamicdevices.co.uk>
References: <5500469A22567C4BAF673A6E86AFA3A40295F094B710@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F094B742@IR-CENTRAL.corp.innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-mono 5.2.x recipe and pdb files
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
X-List-Received-Date: Wed, 18 Oct 2017 08:52:37 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On 18 Oct 2017, at 07:22, Craig McQueen <craig.mcqueen@innerrange.com> wro=
te:
>=20
> I wrote:
>>=20
>> I'm trying to upgrade from mono 4.6.x to 5.2.x. I see resulting image siz=
e
>> increases by about 10 MB in my usage. It appears that a significant
>> contributing factor is the presence of *.pdb files in 5.2.x which weren't=
 in
>> 4.6.x.
>>=20
>> * Are the *.pdb files necessary?
>> * What can  be done to exclude them?
>=20
> Seeing how the recipe handles *.mdb files, I made a bbappend file containi=
ng:
>=20
> FILES_${PN}-dbg    +=3D "${libdir}/mono/*/*.pdb ${libdir}/mono/*/*/*.pdb $=
{libdir}/mono/gac/*/*/*.pdb"
>=20
> That seems to do it. This should probably be added to the mono recipe file=
s for mono >=3D 5.0.x.
>=20


Sounds good. I=E2=80=99ll take a look at this in the next couple of days.

Cheers,

Alex

> --=20
> Craig McQueen
>=20


