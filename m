Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3184BE00BAB; Fri, 28 Aug 2015 05:25:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 99E21E00474
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 05:25:42 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Fri, 28 Aug 2015 14:25:40 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Josep Puigdemont <josep.puigdemont@enea.com>
Thread-Topic: [yocto] [PATCH 1/1] Enable iSCSI configs.
Thread-Index: AQHQ4N4RyBdk5VxVZE2ZaIGSNDTY954hK7mAgAAqZcA=
Date: Fri, 28 Aug 2015 12:25:40 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8E0AF5@SESTOEX04.enea.se>
References: <1440689671-5122-1-git-send-email-Alexandru.Vaduva@enea.com>
	<20150828114844.GA9463@iapetus.enea.se>
In-Reply-To: <20150828114844.GA9463@iapetus.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.168]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] Enable iSCSI configs.
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
X-List-Received-Date: Fri, 28 Aug 2015 12:25:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Josep,

I kind of agree with your opinion here.
The patch does seem to add a target support that it is not mandatory for CG=
L and together with it some pretty specific configurations that might need =
extra comments added before the patch would be merged upstream :D


Alex V.

-----Original Message-----
From: Josep Puigdemont [mailto:josep.puigdemont@enea.com]=20
Sent: Friday, August 28, 2015 2:49 PM
To: Alexandru Vaduva
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH 1/1] Enable iSCSI configs.

On Thu, Aug 27, 2015 at 05:34:31PM +0200, Alexandru.Vaduva wrote:
> From: Siva Borra <siva.borra@enea.com>
>=20
> Enable iSCSI target and supported devices.
>=20
> Signed-off-by: Siva Borra <siva.borra@enea.com>
> ---
>  .../recipes-kernel/linux/files/cfg/00023-open-scsi.cfg         | 10 ++++=
+++++-

Not that it is specific to this patch but, why are all configuration fragme=
nts prefixed with a serial number?

>  1 file changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git=20
> a/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg=20
> b/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
> index e5075cb..90d5b3f 100644
> ---=20
> a/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
> +++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.c
> +++ fg
> @@ -1,4 +1,12 @@
>  CONFIG_SCSI_ISCSI_ATTRS=3Dy
>  CONFIG_ISCSI_TCP=3Dy
>  CONFIG_ISCSI_BOOT_SYSFS=3Dy
> -
> +CONFIG_ISCSI_TARGET=3Dy
> +CONFIG_TARGET_CORE=3Dy
> +CONFIG_BE2ISCSI=3Dy
> +CONFIG_CNIC=3Dy
> +CONFIG_QLCNIC=3Dy
> +CONFIG_SCSI_QLA_ISCSI=3Dy
> +CONFIG_SCSI_CXGB4_ISCSI=3Dy
> +CONFIG_SCSI_BNX2_ISCSI=3Dy
> +CONFIG_SCSI_CXGB3_ISCSI=3Dy

Are the device drivers actually required? If so, would it be possible to ha=
ve them built as modules instead? I imagine not all users would want to hav=
e these drivers built in the kernel by default.

/Josep

