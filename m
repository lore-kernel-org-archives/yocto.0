Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A00A3E007B3
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2013 04:02:25 -0800 (PST)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VnSCk-0004bi-23; Mon, 02 Dec 2013 13:02:22 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id D94D57ED5D;
	Mon,  2 Dec 2013 13:02:21 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Mon, 02 Dec 2013 13:02:21 +0100
Message-ID: <8575983.IvbszYPS8i@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-13-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <11848834.gRVeh0UGRN@helios>
References: <22354788.5R15oKMmSW@koontz> <11848834.gRVeh0UGRN@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto .gitignore
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
X-List-Received-Date: Mon, 02 Dec 2013 12:02:28 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Mandag den 2. december 2013 11:57:35 skrev Paul Eggleton:
>=20
> I presume you mean the .gitignore in the poky repository. Any additio=
nal
> custom layers shouldn't be part of the poky repository, they should b=
e in
> separate repositories.

That's right. But how would you put "build/*" and my own "meta-*" in a=20=

seperate repo. Pulling them in as submodules seems painfull and having =
the=20
yocto-repo included as a submodule in another repo seems backwards too.=


Do you have a proposed "best-practice"-way of maintaining own layers?

--=20
S=F8ren Holm

