Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CFBDE0086E; Thu, 12 Mar 2015 09:39:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71AD1E00858;
	Thu, 12 Mar 2015 09:39:10 -0700 (PDT)
Received: by padet14 with SMTP id et14so21924182pad.0;
	Thu, 12 Mar 2015 09:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=zE1gnfm6si4jxvdTlBuSvV5zE7+57DCVrgj55kL7Ios=;
	b=feWmtVeDLniTWMIe5GSL2woq3CIy3oiKAStG6eFJA+iVhWXW2ezLzcivfKgbZtiGKw
	BcytwuRhrt0YGmV5p2GzoBcJWi97DAubj0UQ+6uk79Q7kBkB2OnQ7txEh1OXkUFLE9o4
	jeAffHAPUyWjtVvr7x2u+piMzWRsukYP2KAghtSMPLBWuq7kSHJJb0xT7bBI9VRWuQtk
	TwCY4I+gm3kQts8rw2Jo0DnCRjfi71Ywck5JL15xv1ZYYwcyWSnurTvX1ofbsLfHV4zw
	PYErmm/IJw9DZ971dmwAgvnSlvChKfAjmATH0zk7216ivS0KSWEuvFeqDJ/zIOh31ANE
	ZOtA==
X-Received: by 10.70.96.204 with SMTP id du12mr83253377pdb.151.1426178350366; 
	Thu, 12 Mar 2015 09:39:10 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:6441:f9ec:3c66:8850?
	([2601:9:3580:84c:6441:f9ec:3c66:8850])
	by mx.google.com with ESMTPSA id
	b15sm11697482pdk.69.2015.03.12.09.39.09
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Mar 2015 09:39:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
Date: Thu, 12 Mar 2015 09:39:08 -0700
Message-Id: <ABE636ED-DDB7-4561-8FA7-490D57CCCCC0@gmail.com>
References: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
To: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	yocto@yoctoproject.org
Subject: Re: Linking of external libraries in the recipe
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
X-List-Received-Date: Thu, 12 Mar 2015 16:39:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Mar 12, 2015, at 5:30 AM, Priya Agarwal =
<priya_agarwal@students.iitmandi.ac.in> wrote:
>=20
> Hello,
>=20
> I have taken a recipe for the package squid from OpenEmbedded.org and =
have built it along with the kernel image.=20
>=20
> Now I want to edit its recipe so that it will include some external =
libraries.
> But these libraries are the ones that are generated during the build. =
So how do I edit the recipe to include those libraries?
>=20
> Location of library:  =
../yocto/<build-directory>/=E2=80=A6=E2=80=A6=E2=80=A6=E2=80=A6/libusdpaa.=
a

You need to write another recipe which is packaging/building these =
libraries and installing them into ${libdir}
then you will create a DEPENDS +=3D =E2=80=9Cthe new recipe name=E2=80=9D =
in a bbappend for squid bb file.
then you will modify squid accordingly to consider linking these new =
libs may be via modifying LDFLAGS or going into the squid makefile =
system
and adding it there.=20


