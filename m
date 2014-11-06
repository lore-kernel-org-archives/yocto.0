Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A144E00872; Thu,  6 Nov 2014 02:16:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3727EE0080D
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 02:16:14 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 06 Nov 2014 02:16:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="412341769"
Received: from ckithala-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.65])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Nov 2014 02:07:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
Date: Thu, 06 Nov 2014 10:16:12 +0000
Message-ID: <1950865.LtTncEkeGK@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E668C086FFA4@kihagwinex01.int.kistler.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE6521910377984115B37B@AZ-US1EXMB03.global.avaya.com>
	<91B4C1B91AAEFD42AC985EA0F3D4E668C086FFA4@kihagwinex01.int.kistler.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Thu, 06 Nov 2014 10:16:19 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 06 November 2014 07:59:15 Isak Lichtenstein wrote:
> Hi Martin,
>=20
> > -----Urspr=FCngliche Nachricht-----
> > Von: yocto-bounces@yoctoproject.org
> > [mailto:yocto-bounces@yoctoproject.org]
> > Im Auftrag von Vuille, Martin (Martin)
> > Gesendet: 05 November 2014 17:39
> > An: Paul Eggleton
> > Cc: yocto@yoctoproject.org
> > Betreff: Re: [yocto] Added package to RDEPENDS in packagegroup, ima=
ge that
> > IMAGE_INSTALLs packagegroup not rebuilt
> >=20
> > > -----Original Message-----
> > > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > > Sent: November 05, 2014 11:04 AM
> > >=20
> > > OK, so this kind of explains it. To be perfectly honest the bitba=
ke
> > > memory resident functionality (which Toaster uses behind the scen=
es)
> > > does have some holes in picking up changes, but I hadn't realised=
 it
> > > would manifest in this particular manner. It seems like at the mo=
ment
> > > you'd need to stop and restart Toaster to be sure that the change=
 gets
> > > picked>=20
> > up.
> >=20
> >=20
> > - Stopped Toaster
> > - Removed the two cache directories
> > - bitbake <packagegroup>
>=20
> I've spent yesterday morning trying to debug a similar problem. I had=

> INHERIT +=3D "rm_work" enabled in my local.conf file, and when removi=
ng it, I
> go the following error.: ERROR: No such task: do_rm_work
> ERROR: Task 10
> (/home/user/branches/dev/yocto/meta-libtest/recipes-support/libtest/l=
ibtest
> _1.0.bb, do_rm_work) failed with exit code '1'.
>=20
> bitbake -e libtest | grep INHERIT showed me that rm_work was still ar=
ound
> despite having removed it from my local.conf . INHERIT=3D" rm_work
> own-mirrors buildhistory toaster poky-sanity package_ipk image-mklibs=

> image-prelink debian devshell sstate license blacklist sanity toaster=

> buildhistory"
>=20
>=20
> Eventually I worked out that it was because I had Toaster running tha=
t the
> changes in local.conf where only partially picked up, and that's what=

> created the error.
>=20
> I'm not sure if this bug is related to the one you're seeing, but in =
case it
> is, it's definitely easier to reproduce than deleting/renaming the ca=
che
> directories.

This is a slightly different symptom of the same underlying problem, ye=
s.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

