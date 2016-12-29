Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34558E0071C; Thu, 29 Dec 2016 10:32:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2166E006E3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:32:41 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id c85so29437543wmi.1
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/ZEoB19T4jkdXYXoV2BiUpgslQOWW5sWon1UuKxqQnU=;
	b=uaaAB03/oqUiHJWL+OF3ifURO7mPIiCskBGn+PEErqxTDJAb6Yg45bU9Xrp80ZV5+C
	5S5DSbGzgytM3iIhZaLbmg02rlu6SMXNC4ap9Hm/gJVgFpmCxNUxjJJ+FeCh6+mhuDQ0
	+yAK5xYRVs8tubdVLg1ZTyKF8oZeL+30+U9IxS4QjXQ7qXKkUH5r5d/CiuDIfvmyA3wv
	m7upfHyFA1UXcFbh344TCNVU9f3lVqr0cOQbe0FFtmWk66judGubMLp0EBA5b9UAbg9R
	P0U/zFfy88H74Rq7OSi+c+KSmbWEnfYPgpJK/TZ38bZ+Q80y/Gyo6HJNsfBZs5pO3Ut6
	8+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/ZEoB19T4jkdXYXoV2BiUpgslQOWW5sWon1UuKxqQnU=;
	b=Cqz5JCeYTltsBtEB+x5sOlzdAprAakns09kbNvEPe6LsInmyY2LS3iSlKZIDDVMjoY
	ZOrHLZzrbAFass0tXZrcf4YVHXF8ENcYKUyFBJMZq33/uHzRMa/zEtJtsbLPBymC86nY
	jv9UVFX3Omv9iABnvzkpGsCvtbp/NLQIcaXyduxOvc972URRVcPlR36jR+HM3GSLF1dP
	kBAZLP4QNqtrsvMXiWqWF4UpyyzLspdKdyBS3KEDsSdV8z1eN+lM5PbYg9u0oAlGqQbh
	GErCe5xCD05iZ9DkH+rwDHeEAjLV+73LInfZQTxSQiNd3eicS1Oc3E5D2sUUGommTXvy
	ZyVQ==
X-Gm-Message-State: AIkVDXLhR2IjZOegWMyCWJr6KF29iNZZrFsLwivy6GWwA3aJrYvn6toPljrOXF0wzG4rtA==
X-Received: by 10.28.57.193 with SMTP id g184mr36252110wma.122.1483036360962; 
	Thu, 29 Dec 2016 10:32:40 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	f10sm69909447wjl.28.2016.12.29.10.32.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Dec 2016 10:32:39 -0800 (PST)
Date: Thu, 29 Dec 2016 18:32:37 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20161229183237.GF26059@carbonA>
References: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
	<CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
	<7a0cc3acfeddd7ccc0de8c3b465d9f52@technux.se>
	<CALbNGRQ9s_9wYs-ytD8WZm6OhJNXJ31gWzgKi9OeSOcsHqUeRg@mail.gmail.com>
	<5881aaa6fd0724ed9101d0e6a79f814c@technux.se>
	<480c2bae1103c9de6d2aca4368022175@technux.se>
MIME-Version: 1.0
In-Reply-To: <480c2bae1103c9de6d2aca4368022175@technux.se>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: remove version hack
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
X-List-Received-Date: Thu, 29 Dec 2016 18:32:45 -0000
X-Groupsio-MsgNum: 33597
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kbCYTQG2MZjuOjyn"
Content-Disposition: inline

--kbCYTQG2MZjuOjyn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 15, 2016 at 06:11:33AM +0100, Petter Mab=E4cker wrote:
>
>
> 2016-12-13 06:39 skrev Petter Mab=E4cker:
>
> > 2016-12-13 00:55 skrev
> Andreas M=FCller:
> >
> >> On Mon, Dec 12, 2016 at 11:33 PM, Petter Mab=E4cker
> <petter@technux.se> wrote:
> >>
> >>> 2016-12-12 06:21 skrev Khem Raj: On
> Thu, Dec 8, 2016 at 2:40 AM, Andreas M=FCller
> <schnitzeltony@googlemail.com> wrote: * no more required (version > 3.17
> | > 4.3.x | > 4.4.5) * causes error with rt kernel I think this is ok to
> apply now. Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> --- classes/linux-raspberrypi-base.bbclass | 15 --------------- 1 file
> changed, 15 deletions(-) diff --git
> a/classes/linux-raspberrypi-base.bbclass
> b/classes/linux-raspberrypi-base.bbclass index 3a6e33d..dc2330a 100644
> --- a/classes/linux-raspberrypi-base.bbclass +++
> b/classes/linux-raspberrypi-base.bbclass @@ -14,21 +14,6 @@ def
> get_dts(d, ver=3DNone): from the kernel staging ''' ver =3D
> get_kernelversion_file(staging_dir) - if ver is not None: - min_ver =3D
> ver.split('.', 3) - else: - return dts - - # Always turn off device tree
> support for kernel's < 3.18 - try: - if int(min_ver[0]) >=3D 4: - if
> (int(min_ver[1]) < 4) or (int(min_ver[1]) =3D=3D 4 and int(min_ver[2]) < =
6):
> - dts =3D ' '.join([(re.sub(r'(.*).dtbo$', r'1-overlay.dtb', x)) for x in
> dts.split()]) - elif int(min_ver[1]) < 18: - dts =3D "" - except
> IndexError: - min_ver =3D None - return dts -- 2.7.4 --
> _______________________________________________ yocto mailing list
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
> [1]
> >>
> >>> I think you should go even one step further and revert the
> entire commit merging this obsolete functionality: "git revert
> 4a4373c02d3d8355a2e5faa10af61450e5b093d8" .
> >> BR Petter
> >>
> >> To be
> honest: I have forked meta-raspberrypi and don't use it any
> >> more.
> Just wanted to be a good boy. So maybe you want to send the
> >> revert
> here?
> >>
> >> Andreas
> >>
> >>>
> >
> > Oh I see. Sure, I can send something
> up.
> >
> > Petter Mab=E4cker
> >
> > Technux <petter@technux.se>
> >
> www.technux.se
>
> This wasn't as easy that I first thought. I totally
> forgot about that Device Tree Overlays are assumed to be suffixed by
> '-overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+). So it's not possible to
> just revert the commit and handle some simple conflicts..
>
> Andrei: I
> think you can go ahead and merge this patch when fully verified. Then I
> instead will see if I can do some cleanup in a later step. But at least
> this patch simplifies things and solves the rt-issue.
>
> BR Petter
>

I agree. Let's merge it and continue to fix it afterwards. Merged to
master. Thanks.
--
Andrei Gherzan

--kbCYTQG2MZjuOjyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYZVbFAAoJEHO76Gt+erfPU8sP/1xzRHcpYaC9+p+ByTpCpY/w
/F9v14FKMoNEL/ZAonkasUpjSxCqIJzykHRn1HPeYZuWHAUoGQmEsA3JkrjoAx9o
+gtD1hLpKlX0fy1mU79J2GNorOi3V/WrdeST12iVN4mOX41gYUW8fUwRykgN2WWA
Jw1KcXFkdZ9JryDF2ylcn8gTii3TadSgSVTcq1RCW+Id9x5gX4DUp8SKb0tQ0KVH
7Chg3Xmz+RoIatjbvZ9zD9IkDExYJyJgnne5QTcKife6n+r5HJ3XbsQqj3EoRY7J
R45yxhAr/Cq9om/5cBJiOhe2HNFWtCOVaEQmVv8IqJG0t8hU6/fKUw+2f2DAQU68
mRU94WEygKX3fmYMqYtzzp8+3VLNdZUizmilnJ1BXSpqwZiF6uaLnQOorqPhxJL1
No0GcdkPe2/9rcmyUherAbn9dvBI6mwsmP6Eh+AttuDExtQ8MZXLROfxpIGpDhJn
Q09+nsy3Ny0geyyM9ff3IE+/U7DefQepeKmUCURG8CPmPoG3VvLW9zlZIW5B5HgT
W5VITIDQKd6fbktZsBD9rN5F43GACKhFBuBXM7q8+kfnoUhuMsk1kr5IKC3ZxFgd
wjPKWzOM9/2AibEuTVFFsT/Iqyk2BfZCE3YqChx4q48IELKlpvg3Cly/2bILipfg
D4BY4ppzA9CI6jd1dfTK
=beF9
-----END PGP SIGNATURE-----

--kbCYTQG2MZjuOjyn--
