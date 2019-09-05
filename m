Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6015E00E0D; Thu,  5 Sep 2019 04:57:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [68.232.129.153 listed in list.dnswl.org]
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04FECE003E1
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2019 04:57:10 -0700 (PDT)
IronPort-SDR: 0wjgQGuJ9e0XIu6vQfrB0tx/tF/nJUK+Jb7+3eE0Lpi2hyO1gdFmsw5pppRlfMCPyOVmqhurax
	6ekfDspySclpzS6w2SgF+ImOENB3+1/jEwLKt5hdpEmFYPPLSbPZZ35R55C/P2ksd+CfWfCIF/
	b6HFw3wgU7gE+4fO5C4BVe4DhH5LgDz6VT0FAbBBHDpUOH/nZyR9Lo6a/st7P7Fml6WREDvXbC
	Qyp19P0XRz34KHTggc9MCvUUsbduemXprvwfV43dK5JbwTXioPaLfVqa1SE8halLO1VHSMNDlP
	xtM=
X-IronPort-AV: E=Sophos;i="5.64,470,1559548800"; 
	d="asc'?scan'208";a="42880577"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
	by esa1.mentor.iphmx.com with ESMTP; 05 Sep 2019 03:57:10 -0800
IronPort-SDR: 3vvgEI8y2s3O4JDze3/kteMydZNHux0uvVtRU6W4qV+rT5vcLMU2JHPvthAyANLS8q7uv0rm7G
	Gd5syalsBexywzD2BOQGpVNc8KPZPBJToAI6SeudafLxvsb1UGhK+36MA6z0fl7bQgklfTcahd
	0wuyL2cCcaxefKhIeqbT9vTrRg1pAhKIb0K1iDblyIMSvHSDtWka0UHATlHZAWuKtK7+Vr31ho
	9p1wiygpTIxs5aMI1rpMbZ2iCS62CyXy33K+eNkQokCcB4jYukYQ9eXcTadsU+R2WhrpJ70RT9
	g9c=
Date: Thu, 5 Sep 2019 07:57:06 -0400
From: Joe MacDonald <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190905115704.GA37987@deserted.net>
References: <1567673824-29926-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1567673824-29926-1-git-send-email-yi.zhao@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode before relabel
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
X-List-Received-Date: Thu, 05 Sep 2019 11:57:11 -0000
X-Groupsio-MsgNum: 46525
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline

--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode before r=
elabel] On 19.09.05 (Thu 16:57) Yi Zhao wrote:

> The commit b0d31db104d9a4e94bc1409c2ffcc1d82f4a780f introduced an issue
> when first boot with bootparams=3D"selinux=3D1 enforcing=3D1". At first b=
oot,
> all files are unlabeled including /sbin/fixfiles. The relabel operation
> is not permitted under enforcing mode. Set /sys/fs/selinux/enforce to 0
> to ensure the enforcing mode is disabled before relabel.

Did you try this with '/usr/sbin/setenforce 0' instead?  The rationale
makes sense but going straight at sysfs like that isn't the right
approach intuitively.  If that's not working, please just include a bit
of an explanation for why this is the best option.

Thanks.
-J.

>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorel=
abel.sh b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.=
sh
> index 154dad1..cb40971 100644
> --- a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
> +++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
> @@ -13,6 +13,7 @@ fi
>  # If /.autorelabel placed, the whole file system should be relabeled
>  if [ -f /.autorelabel ]; then
>  	echo "SELinux: /.autorelabel placed, filesystem will be relabeled..."
> +	echo "0" > /sys/fs/selinux/enforce
>  	${FIXFILES} -F -f relabel
>  	/bin/rm -f /.autorelabel
>  	echo " * Relabel done, rebooting the system."
> --=20
> 2.7.4
>=20

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXXD36AAKCRDAW9yWWiDR
fEx9AJ9CnwjDKuQMYR6jBA0hbyNYEvKiYwCgmPxw8axSVGW/GmHoLp1DsXcG0zA=
=npgx
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--
