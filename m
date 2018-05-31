Return-Path: <david@lapinbilly.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBFC2E00C9B; Thu, 31 May 2018 01:49:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3D59E00A0C
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 01:49:10 -0700 (PDT)
Received: from sogo5.bi1.0x35.net (sogo5.bi1.0x35.net [10.150.1.75])
	(Authenticated sender: david@lapinbilly.eu)
	by relay11.mail.gandi.net (Postfix) with ESMTPA id 8AB42100011
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 10:49:09 +0200 (CEST)
In-Reply-To: <CAMKF1spPOpiSrq0rJzK5LWWwhBmqQgmYFMgo3uddC2N1ED=ksg@mail.gmail.com>
From: =?utf-8?q?david=40lapinbilly=2Eeu?= <david@lapinbilly.eu>
X-Forward: 92.103.208.197, 10.150.1.6
Date: Thu, 31 May 2018 10:49:09 +0200
To: yocto@yoctoproject.org
MIME-Version: 1.0
Message-ID: <3320-5b0fb700-7-736eea80@6262269>
User-Agent: SOGoMail 3.2.10
Subject: Re: ?==?utf-8?q? [Rocko] conflicts with clang libraries
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
X-List-Received-Date: Thu, 31 May 2018 08:49:11 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wednesday, May 30, 2018 22:21 CEST, Khem Raj <raj.khem@gmail.com> wr=
ote: 
 
> are you using rocko branch of meta-clang as well ?
> 

Yes:

Build Configuration:
BB=5FVERSION           =3D "1.36.0"
BUILD=5FSYS            =3D "x86=5F64-linux"
NATIVELSBSTRING      =3D "universal-4.8"
meta                 
meta-poky            
meta-yocto-bsp       =3D "rocko:90414ecd5cf72995074f3dc6b05cfbee0a1dab6=
7"
meta-intel           =3D "rocko:f66ce51d059d291a441d896854be8db70de5a55=
4"
meta-clang           =3D "rocko:a4c0cd28de9c3d5823be43150a76d221b08896d=
6"
meta-oe              
meta-python          
meta-networking      =3D "rocko:dacfa2b1920e285531bec55cd2f08743390aaf5=
7"
meta-beignet         =3D "ross:c60b0045d5096ec696deab0c79e89117febbf2db=
"
...



Regards, 
-- 
David Marec


