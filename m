Return-Path: <Noor_Ahsan@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D94E005B3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 23:31:32 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Upusa-00007x-BE from Noor_Ahsan@mentor.com ;
	Thu, 20 Jun 2013 23:31:28 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 20 Jun 2013 23:31:28 -0700
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.178]) by
	SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) with mapi id
	14.02.0247.003; Fri, 21 Jun 2013 07:31:27 +0100
From: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
To: Florin Sarbu <florin.sarbu@windriver.com>
Thread-Topic: [PATCH] ecryptfs-utils: create symlinks for mount file in
	expected path
Thread-Index: AQHObkX51KPy5kqQvEWfD549DR5+Dpk/tQKQ
Date: Fri, 21 Jun 2013 06:31:26 +0000
Message-ID: <365E1805BC95084CBE82381A0B869994DE4C6B9E@EU-MBX-01.mgc.mentorg.com>
References: <1371639256-3760-1-git-send-email-noor_ahsan@mentor.com>
	<51C3EE24.6090802@windriver.com>
In-Reply-To: <51C3EE24.6090802@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
X-OriginalArrivalTime: 21 Jun 2013 06:31:28.0741 (UTC)
	FILETIME=[F630B150:01CE6E48]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] ecryptfs-utils: create symlinks for mount file in expected path
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
X-List-Received-Date: Fri, 21 Jun 2013 06:31:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Thanks for taking care of this. I was looking at meta-ivi/4.0.

Noor

-----Original Message-----
From: Florin Sarbu [mailto:florin.sarbu@windriver.com]=20
Sent: Friday, June 21, 2013 11:10 AM
To: Ahsan, Noor
Cc: holger.behrens@windriver.com; yocto@yoctoproject.org
Subject: Re: [PATCH] ecryptfs-utils: create symlinks for mount file in expe=
cted path

Hi,
thanks for pointing this out. I've changed the configure flags for this to =
be fixed, rather than modifying the do_install. Please update the
master/4.0 branch, the fix for this issue is there now.

Florin

On 06/19/2013 01:54 PM, Noor, Ahsan wrote:
> From: Noor <noor_ahsan@mentor.com>
>
> * mounting ecryptfs drive was failing because it was looking for mount.ec=
ryptfs
>    binary in /sbin/ however in our file-system, it was present in /usr/sb=
in/. So,
>    create symlinks of required binaries in /sbin/ as well
>
> Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
> ---
>   .../ecryptfs-utils/ecryptfs-utils_100.bb           |    4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb=20
> b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
> index e23f32c..c05cd84 100644
> --- a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
> +++ b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
> @@ -40,4 +40,8 @@ do_install_append() {
>           install -d ${D}${systemd_unitdir}/system/
>           install -m 0644 ${WORKDIR}/ecryptfs.service ${D}${systemd_unitd=
ir}/system
>       fi
> +
> +    install -d ${D}${base_sbindir}
> +    ln -sf ${sbindir}/mount.ecryptfs ${D}${base_sbindir}/
> +    ln -sf ${sbindir}/umount.ecryptfs ${D}${base_sbindir}/
>   }


