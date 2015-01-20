Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50171E0083A; Tue, 20 Jan 2015 03:10:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8FC85E00872
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 03:10:11 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Tue, 20 Jan 2015 12:10:07 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Qian Lei <qianl.fnst@cn.fujitsu.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 0/2] cluster: Fix some error and format
Thread-Index: AQHQM8/zpcWNqbZFuke4vfyRzUT95JzHTvjwgAAHvQCAAYNzQA==
Date: Tue, 20 Jan 2015 11:10:07 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D782E91@SESTOEX04.enea.se>
References: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D77B0BA@SESTOEX04.enea.se>
	<20150119205758.1ff97d78@Fedora>
In-Reply-To: <20150119205758.1ff97d78@Fedora>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.189]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 0/2] cluster: Fix some error and format
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
X-List-Received-Date: Tue, 20 Jan 2015 11:10:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes but openldap is a dependency brought up by the cluster recipe.
Proof:
DEPENDS =3D "corosync dbus openldap openais libxml2 ncurses perl zlib"

Lei Maohui did you experience this error when you tested the recipe?


Alex Vaduva

-----Original Message-----
From: Qian Lei [mailto:qianl.fnst@cn.fujitsu.com]=20
Sent: Monday, January 19, 2015 2:58 PM
To: Alexandru Vaduva
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-cgl][PATCH 0/2] cluster: Fix some error and form=
at

On Mon, 19 Jan 2015 11:32:35 +0000
Alexandru Vaduva <Alexandru.Vaduva@enea.com> wrote:

> Does this fix the error I encounter when building the package.
> The log is attached to this email and is also available in the=20
> bugzilla
> issue: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7176

Actually no. This patch use the kernel source in bitbake world instead of t=
hat on the host. This error only appeared on my build enviroment.=20

But your error is to build openldap, not cluster.



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Qian Lei Sent: Monday, January 19, 2015 12:08 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-cgl][PATCH 0/2] cluster: Fix some error and=20
> format
>=20
> Use KERNEL_SRC instead of hardcode path in configure. Also fix license fo=
rmat.
>=20
> *** BLURB HERE ***
>=20
> Qian Lei (2):
>   cluster: Fix license format
>   cluster: Add a patch to fix the path of kernel source
>=20
>  .../cluster/0001-Fix-the-kernel-source-patch.patch | 38
> ++++++++++++++++++++++ .../recipes-cgl/cluster/cluster_3.2.0.bb          =
 |
> 5 +-- 2 files changed, 41 insertions(+), 2 deletions(-)  create mode=20
> 100644=20
> meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source
> -patch.patch
>=20
> --
> 1.8.3.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
Qian Lei

