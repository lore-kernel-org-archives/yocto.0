Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13611E00824; Wed, 20 Aug 2014 03:54:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AA5E00814
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 03:54:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 20 Aug 2014 03:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,901,1400050800"; d="scan'208";a="579247634"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2014 03:53:54 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.112]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.24]) with mapi id
	14.03.0195.001; Wed, 20 Aug 2014 11:53:53 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto-autobuilder] buildsteps/RunOeSelftest.py: change the
	way oe-selftest is called
Thread-Index: AQHPvGTT4mYD+eXnX0G8v/fJQADH4JvZUO6w
Date: Wed, 20 Aug 2014 10:53:52 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B23C468A5@IRSMSX103.ger.corp.intel.com>
References: <1408539450-17081-1-git-send-email-corneliux.stoicescu@intel.com>
In-Reply-To: <1408539450-17081-1-git-send-email-corneliux.stoicescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder] buildsteps/RunOeSelftest.py: change the way oe-selftest is called
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
X-List-Received-Date: Wed, 20 Aug 2014 10:54:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This patch is regarding the recent oe-selftest failures on the AB, such as:

https://autobuilder.yoctoproject.org/main/builders/nightly-oe-selftest/buil=
ds/16/steps/Running%20oe-selftest/logs/stdio

Regards,
Corneliu

> -----Original Message-----
> From: Stoicescu, CorneliuX
> Sent: Wednesday, August 20, 2014 3:58 PM
> To: yocto@yoctoproject.org
> Cc: Stoicescu, CorneliuX
> Subject: [yocto-autobuilder] buildsteps/RunOeSelftest.py: change the way
> oe-selftest is called
>=20
> A recent patch went in poky master that added command line parsing and
> options to the oe-selftest script.
> Changing the way oe-selftest is called by the autobuilder to account for
> these changes.
>=20
> Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py | 2 =
+-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-
> packages/autobuilder/buildsteps/RunOeSelftest.py
> index 0efddd7..3d95583 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> @@ -22,5 +22,5 @@ class RunOeSelftest(ShellCommand):
>          self.description =3D "Running oe-selftest"
>          self.timeout =3D 100000
>          kwargs['timeout']=3Dself.timeout
> -        self.command =3D "if [ -d meta-selftest ]; then . ./oe-init-buil=
d-env; oe-
> selftest; else echo 'Skipping step - no meta-selftest layer here'; fi"
> +        self.command =3D "if [ -d meta-selftest ]; then . ./oe-init-buil=
d-env; oe-
> selftest --run-all-tests; else echo 'Skipping step - no meta-selftest lay=
er here';
> fi"
>          ShellCommand.__init__(self, **kwargs)
> --
> 1.8.3.2


