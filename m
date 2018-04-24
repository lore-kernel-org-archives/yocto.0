Return-Path: <john-s-84@gmx.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28EF3E009DB; Tue, 24 Apr 2018 11:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john-s-84[at]gmx.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Apr 2018 11:09:36 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4030E009DB
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 11:09:35 -0700 (PDT)
Received: from [84.185.111.136] ([84.185.111.136]) by
	3c-app-gmx-bs52.server.lan (via HTTP); Tue, 24 Apr 2018 20:04:32 +0200
MIME-Version: 1.0
Message-ID: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
From: "John Smith" <john-s-84@gmx.net>
To: yocto@yoctoproject.org
Date: Tue, 24 Apr 2018 20:04:32 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:1lhduqy3n5wFzigSvJdbi8rjpMFjQEvLomEsmh5+71g
	YumHVkzUi1Cy9RVX+pyHS18PAUhBCM93VBl6eDws0mwKcbAH8o
	97wav08G9EB58/owzS5E5a5PNgJ7hqezmNT7nQ+mlxZypoE/ya
	rWVcJbywPjESG8+19DtiawLU7tKmSPZop5TyDsFH95iCS22QDO
	T4YZoQGNT1+UVZLS3GtMz4DcCcu0PmLg1fpQ4qN4/FXZ6LuzJB
	sLNNjsyMQTGzDVbupF8tL5wi4SOH4OtvU6qC+BLsCBXU1ll0SV Gjny8Y=
X-UI-Out-Filterresults: notjunk:1;V01:K0:r5S5jaF5Rpo=:IW7pqC+szb0jQlUrXhpxWj
	/KU0uz4uL8vXGQiqT68ikUJhro+37AhEBj9zXHcPzv6Y/iNpiKKnMGaD3LySrfeJnX6AJbFKA
	2QWZXjeXQUKyB6kl8yPqQHPOE/CZoXRIwziD7Y5XnAtFOpz+1zFT2gfNr7snVNGzpX+pFuHBq
	oN8MgvThm+bFb7Z36OElivjomsXoSa5vjnTR2X8SZ7ZyMQ42GmT8JritQpgN4aYYQ8WbX7kWo
	SvjeUbP4nUCCt726GYYX1qV1UPqDrFR8IMRd2ISuUEbZGJdIBZFOc8dZ1CS1Xcfrr+gwjg/JS
	mY0nIPPJaz/wUcZwtypx5klwHRqc/Miu5MAvdCIWp7tBwu/DfCUFDAs1vCsyzMrt1jkeINevY
	4a/MmU6Fs3Ns3zCkFqnQh1+Gfg817c2wbdASs8RdKyz/IPdTXrNpQol/vrfZFTVPd2sOyTUzK
	WvSgR6A+/XwKFvBTu09LZfJ+il9Udew1SNMs9H570vWT7CDYPwhP
Subject: building recipe with buildtools, causes sanity error: Your system needs to support the en_US.UTF-8 locale.
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
X-List-Received-Date: Tue, 24 Apr 2018 18:09:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

bitbake stops with this error message: "Your system needs to support the en=
_US=2EUTF-8 locale=2E"

export LC_ALL=3Den_US=2EUTF-8 has no effect=2E Do you know how to fix that=
 error?

What I ve done:
- installed buildtools from http://downloads=2Eyoctoproject=2Eorg/releases=
/yocto/yocto-2=2E4=2E2/buildtools/
=C2=A0 under /opt/poky/2=2E4=2E2

> cd poky
> =2E oe-init-build-env
> =2E /opt/poky/2=2E4=2E2/environment-setup-x86_64-pokysdk-linux
> bitbake <ANY RECIPE>



https://git=2Eyoctoproject=2Eorg/cgit=2Ecgi/poky/plain/meta/classes/sanity=
=2Ebbclass
def sanity_check_locale(d):
    """
    Currently bitbake switches locale to en_US=2EUTF-8 so check that this =
locale actually exists=2E
    """
    import locale
    try:
        locale=2Esetlocale(locale=2ELC_ALL, "en_US=2EUTF-8")
    except locale=2EError:
        raise_sanity_error("Your system needs to support the en_US=2EUTF-8=
 locale=2E", d)

