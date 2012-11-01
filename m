Return-Path: <josh@hipro.co.in>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFC1E006C1
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 00:46:39 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so1620127pab.35
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2012 00:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:organization:content-type:x-mailer
	:mime-version:x-gm-message-state;
	bh=Gyglzwp3MAoieBGApx6bieoleMD0rB6XLjTULvPDmbI=;
	b=jklTCzwV5V1Tf6s6x0QFv9tvTlK8Vovng5QsF6EzH3k7jkotZuV2kNMGxgLCABaE7s
	XtTGyq56QGg5VPqYm/Gq5iNCwKja2qpdmBkmSTaL6mYSSh/vYxWSgBbQGaI29wmvj7Mv
	Bdjyv2UgL7oLGekI4HaasQWK8OyRAqKPRIpW5v8VqIyqC0zDELzTH9MgT7380WMVL0MX
	33WFU+spTuZ6+wLHbmy+eFZcdzl2hDHRHPvxJk/9LnxGcLAFgspWqcz79mX1tHJh67M1
	gq6dgq2OoyNXuDujQtjEQC+aLE6iIC1jolEMPFuIkVmq/UL7rpi/+fVMjF3e20IK1kg9
	YBPw==
Received: by 10.68.189.233 with SMTP id gl9mr118505453pbc.166.1351755998876;
	Thu, 01 Nov 2012 00:46:38 -0700 (PDT)
Received: from [192.168.50.101] ([59.99.251.45])
	by mx.google.com with ESMTPS id ve6sm3632237pbc.58.2012.11.01.00.46.34
	(version=SSLv3 cipher=OTHER); Thu, 01 Nov 2012 00:46:37 -0700 (PDT)
Message-ID: <1351755981.5181.14.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 01 Nov 2012 13:16:21 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnZuIwEcBxrbyeodVMkIXFWg9hwEMdloYXSJ5bBaszA3gbrWow7KoU3cgY0TClF6OVsF+Qo
Subject: how to add a task via anonymous python function
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Nov 2012 07:46:39 -0000
X-Groupsio-MsgNum: 10425
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-5S3AYlTlMk7ssJNoZWlM"

--=-5S3AYlTlMk7ssJNoZWlM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I want to do the following in anonymous python function

        addtask some_task after do_compile before do_install

Getting some clue from externalsrc.bbclass I did the following

        python __anonymous () {
            tasks =3D d.getVar('__BBTASKS')
            tasks.insert(tasks.index('do_install'), 'do_some_task')
            d.setVar('__BBTASKS', tasks)
            d.setVarFlag('do_some_task', 'deps', 'do_compile')
            d.setVarFlag('do_install', 'deps', 'do_some_task')
            tasklist =3D filter(lambda k: d.getVarFlag(k, "task"),
        d.keys())
            print tasklist
        }
       =20
The above printed tasklist doesn't contain 'do_some_task'. I am able to
run the task manually via

        bitbake -c some_task <recipe_name>
       =20
But, the task doesn't gets executed automatically after the do_compile
task. Is there anything else that should be done?

--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-5S3AYlTlMk7ssJNoZWlM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAlCSKM0ACgkQWw85XwuSFMKaogCgvECG0DVt6qupE5Tzti4uZ8qP
6EMAnj8cqUsNlu/jRtzkoeMHEsKu4Hxe
=7S/I
-----END PGP SIGNATURE-----

--=-5S3AYlTlMk7ssJNoZWlM--
