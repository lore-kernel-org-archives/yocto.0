Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E890AE00BDA
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 01:55:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Apr 2014 01:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,942,1389772800"; d="scan'208";a="522253844"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.122.52])
	by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2014 01:55:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Apr 2014 09:55:07 +0100
Message-ID: <1601429.lthDfqCfEQ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <B5D983FF-3763-41F5-ADD7-E56C1CA5B697@techne-dev.se>
References: <9E5EB55B-A539-4A2C-AD5C-719137E4C1C9@techne-dev.se>
	<B5D983FF-3763-41F5-ADD7-E56C1CA5B697@techne-dev.se>
MIME-Version: 1.0
Subject: Re: Modify RFS before final image is created
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
X-List-Received-Date: Mon, 28 Apr 2014 08:55:13 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Tobias,

On Friday 25 April 2014 11:16:20 Tobias Blom wrote:
> On 25 apr 2014, at 09:22, Tobias Blom <tobias.blom@techne-dev.se> wro=
te:
> > I have run into a problem that I=E2=80=99m not able to figure out h=
ow to solve,
> > and turn to the list to ask for general directions.
> >=20
> > I need to modify my root FS just before the final image is created.=
 The
> > problem is that I do now know where to implement my code.
> >=20
> > More specific, I want to copy a couple of RPM-packages to the final=
 RFS,
> > packages that have just been installed. The reason is to be able to=

> > perform a rollback later on.
>
> I=E2=80=99ll answer my own question. It seem ROOTFS_POSTPROCESS_COMMA=
ND or
> ROOTFS_POSTINSTALL_COMMAND is the way to go.

Yep, adding to ROOTFS_POSTPROCESS_COMMAND is the expected way to do thi=
s.
=20
> I did however run into a problem when running my script. Using variab=
le ${D}
> in my ROOTFS_POSTINSTALL_COMMAND gives the =E2=80=9Cwrong=E2=80=9D pa=
th - it points to
> =E2=80=A6/image and I=E2=80=99d expect it to contain the path to =E2=80=
=A6/rootfs. It seem the
> variable is replaced before my function is executed.
>=20
> I solved this by using variable ${IMAGE_ROOTFS} instead.

Right, IMAGE_ROOTFS is the variable that points to the directory struct=
ure=20
being created for the image.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

