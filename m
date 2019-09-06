Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97D72E00DA5; Fri,  6 Sep 2019 10:05:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88017E00A93
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2019 10:05:36 -0700 (PDT)
IronPort-SDR: 32b0gBsANPjVXHq0myeLIersJX6zlDakv33nHTnTV0T72vzMoOyycA6aBFmE8bCdh7rEo5hnPI
	Vx5x3uAMuueO/oPua00jlmoGlx3sFH2D7cXZPIYdl11Luu8GNocy35Jvv8Cv0EZ6mRnAHpu0lg
	6CZSqcd6gYGaic/2SsUs/bUgZOtYSPRbWNVKTna2SOO4F3m12274a9ZzkUb5M0gfa0T72EUJ28
	49b5ydO60u0WEuYVaN2JDp4CRQ6fWwzFI3m3Y2+ln2z+wjEDWyaOK4Ar7Hwmh3iaFzwtkxMO4E
	/YM=
X-IronPort-AV: E=Sophos;i="5.64,473,1559548800"; 
	d="asc'?scan'208";a="42936311"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
	by esa1.mentor.iphmx.com with ESMTP; 06 Sep 2019 09:05:34 -0800
IronPort-SDR: t9UegqTQqT7+B1942GF0EpVVI5x6N41OINTUN25k+s8KzYG70kV6n4UZD+7WmQhLe7L7XyZJAW
	y+k/qTkTxqRgW+Y8nMw6QnOe6jIJ0jbD7wBkx3F9urXaravzVK6g6wSVmpthldRSD9lCyN+Map
	NUETEZsM9JtIHB+gxl4TWjyGX/5sypOXqpO29Xb039YTEDByQEqsiVri2fOcoy6Yje2yfpMt5n
	TUp8XKwink+jX7iX9ly8LOw73BBc5bhfX10mysF3A0zXimJszDUG39geqUBDlgEp4YTY2v6sr3
	M0Y=
Date: Fri, 6 Sep 2019 13:05:30 -0400
From: Joe MacDonald <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190906170528.GC37987@deserted.net>
References: <1567673824-29926-1-git-send-email-yi.zhao@windriver.com>
	<20190905115704.GA37987@deserted.net>
	<2606575f-1667-40b6-3611-74cdb8a78388@windriver.com>
MIME-Version: 1.0
In-Reply-To: <2606575f-1667-40b6-3611-74cdb8a78388@windriver.com>
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
X-List-Received-Date: Fri, 06 Sep 2019 17:05:37 -0000
X-Groupsio-MsgNum: 46536
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5QAgd0e35j3NYeGe"
Content-Disposition: inline

--5QAgd0e35j3NYeGe
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode befo=
re relabel] On 19.09.06 (Fri 11:31) Yi Zhao wrote:

>=20
> On 9/5/19 7:57 PM, Joe MacDonald wrote:
> > [[meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode befo=
re relabel] On 19.09.05 (Thu 16:57) Yi Zhao wrote:
> >=20
> > > The commit b0d31db104d9a4e94bc1409c2ffcc1d82f4a780f introduced an iss=
ue
> > > when first boot with bootparams=3D"selinux=3D1 enforcing=3D1". At fir=
st boot,
> > > all files are unlabeled including /sbin/fixfiles. The relabel operati=
on
> > > is not permitted under enforcing mode. Set /sys/fs/selinux/enforce to=
 0
> > > to ensure the enforcing mode is disabled before relabel.
> > Did you try this with '/usr/sbin/setenforce 0' instead?  The rationale
> > makes sense but going straight at sysfs like that isn't the right
> > approach intuitively.  If that's not working, please just include a bit
> > of an explanation for why this is the best option.
>=20
> It also works with setenforce.
>=20
> I referred to the selinux-autorelabel script on Fedora 30, it uses `echo =
"0"
> > /sys/fs/selinux/enforce` to disables enforcing mode:
>=20
> cat /usr/libexec/selinux/selinux-autorelabel
>=20
> [snip]
> =A0=A0=A0=A0 32 relabel_selinux() {
> =A0=A0=A0=A0 33=A0=A0=A0=A0 # if /sbin/init is not labeled correctly this=
 process is running
> in the
> =A0=A0=A0=A0 34=A0=A0=A0=A0 # wrong context, so a reboot will be required=
 after relabel
> =A0=A0=A0=A0 35=A0=A0=A0=A0 AUTORELABEL=3D
> =A0=A0=A0=A0 36=A0=A0=A0=A0 . /etc/selinux/config
> =A0=A0=A0=A0 37=A0=A0=A0=A0 echo "0" > /sys/fs/selinux/enforce
> =A0=A0=A0=A0 38=A0=A0=A0=A0 [ -x /bin/plymouth ] && plymouth --quit
> =A0=A0=A0=A0 39
> [snip]

Okay, but our version of the script is much less complex than the Fedora
one and we already have the precedent of calling fixfiles by full path
and variable, I'd rather keep the script consistent in style.  If you
want to propose replacing our selinux-autorelabel.sh with the one from
Fedora, please submit a patch for that, but for this patch I'd just
rather see the style remain consistent with what's already there.

Thanks.
-J.

>=20
>=20
> //Yi
>=20
>=20
> >=20
> > Thanks.
> > -J.
> >=20
> > > Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> > > ---
> > >   recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh=
 | 1 +
> > >   1 file changed, 1 insertion(+)
> > >=20
> > > diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-aut=
orelabel.sh b/recipes-security/selinux/selinux-autorelabel/selinux-autorela=
bel.sh
> > > index 154dad1..cb40971 100644
> > > --- a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabe=
l.sh
> > > +++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabe=
l.sh
> > > @@ -13,6 +13,7 @@ fi
> > >   # If /.autorelabel placed, the whole file system should be relabeled
> > >   if [ -f /.autorelabel ]; then
> > >   	echo "SELinux: /.autorelabel placed, filesystem will be relabeled.=
=2E."
> > > +	echo "0" > /sys/fs/selinux/enforce
> > >   	${FIXFILES} -F -f relabel
> > >   	/bin/rm -f /.autorelabel
> > >   	echo " * Relabel done, rebooting the system."
> > > --=20
> > > 2.7.4
> > >=20

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

--5QAgd0e35j3NYeGe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXXKR2AAKCRDAW9yWWiDR
fIa7AJ4n/xKQfByvEbvyb6Y3ENSj4Eq4qwCfZplfgWuFoNvK/CHHUqf1Yd+hgOM=
=XsxL
-----END PGP SIGNATURE-----

--5QAgd0e35j3NYeGe--
