Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4540.1582200891611228300
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 04:14:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iohO10Ku;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75862E015FF; Thu, 20 Feb 2020 04:14:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0949DE015BD
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 04:14:49 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id z7so4302576wrl.13
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 04:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TrgCe9fftLKmlN3sy8ChtR3ayTQnwf7zkJLF66spWlk=;
        b=iohO10KuPty1S5eYbhejkjCbF9XF51hkL+d+2uUuh36R/t2TlCAQ2gBhMvPT7xddIN
         uYEOv9st8VeFjiK6153A59Qxd3HLbWLbTmtZNtzN797xA97t/KLmDX72oyIycAQ8zxHd
         yw8LoqZS4k4uNT0zKnzBSyDNpkMBsMZzfxyU/TQnTaE4pzsLtj2F9uqaEeGXqTnTZWz3
         xZEhOSV8+nWV3g80E6pQImiHx5K72BzrpxWrnoPG4eJTdICSnjio5SnQlP+ZUbhwPp1E
         kUuy6Z07xJTR+77N2iT6rRcMp8AdI9gcH8HewuwFARjQwAGpzf8P8d1971c7bNzDCfrd
         yxOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TrgCe9fftLKmlN3sy8ChtR3ayTQnwf7zkJLF66spWlk=;
        b=KVEHKC4IcxemI9+9mnIUTjuvt+1R+u/l9jtyXz6kxyCstbDa9TL9GEuOpIgijmh2Ag
         LQN6HzCMZmhgf6V1Zi9rl/Ea8skGrpg3OyYWTRoBIWVFThjvquwsC85qQWA8DcrEK7hW
         qw/URGXPwOT/HBEinEgDsfmBSGSdkwBDoe7axQHNCCnUPJySoYplM4b5pzf7MdqkLqnX
         8ZbMPPVU7cDYhUxSFdbLM0+CTwYsVs7hAvgW2eNvuWNpX3VqNlHmIzbEmey8swQ+FsyG
         1mzZkupTO+bJF34AcJiP6AprvrA6sSOqnsErIQL54INRiYqHwTA2Xk1Tdznx9wrEFmlf
         PnVQ==
X-Gm-Message-State: APjAAAVp8+cX91jsJ9XF8aCcq+UlQkT3K3znKKi/Tr0rjmzm6WWIQju4
	Dvodq4ACzI5kdUDyFQJbhGA=
X-Google-Smtp-Source: APXvYqxpCZLgzrw8RxOvyVazril6vnRdDuDQxf9WgyFJtOCzWWzyfiiamxAEJZ+qKYlwdI/saRAgeA==
X-Received: by 2002:a05:6000:12c7:: with SMTP id l7mr40130403wrx.136.1582200889056;
        Thu, 20 Feb 2020 04:14:49 -0800 (PST)
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id h18sm4438180wrv.78.2020.02.20.04.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 04:14:48 -0800 (PST)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 20 Feb 2020 13:14:47 +0100
To: Paul Barker <pbarker@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] Bitbake returning non-zero due to sstate errors
Message-ID: <20200220121447.dnkzxynxucoplc3s@jama>
References: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 48533
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mdaooyb5azacadc5"
Content-Disposition: inline

--mdaooyb5azacadc5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2020 at 11:26:54AM +0000, Paul Barker wrote:
> In my new CI setup I'm using an sstate mirror which seems to have some
> occasional download issues. This results in the setscene task failing.
> For example:
>=20
> ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
> do_package_write_ipk_setscene: Fetcher failure: Unable to find file
> file://fd/sstate:qt3d:armv7at2hf-neon-linux-gnueabi:5.13.2+gitAUTOINC+933=
61f1a59:r0:armv7at2hf-neon:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6=
a1df6befc4230e0a74_package_write_ipk.tgz;downloadfilename=3Dfd/sstate:qt3d:=
armv7at2hf-neon-linux-gnueabi:5.13.2+gitAUTOINC+93361f1a59:r0:armv7at2hf-ne=
on:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1df6befc4230e0a74_packa=
ge_write_ipk.tgz
> anywhere. The paths that were searched were:
>     /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
>     /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
> ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
> do_package_write_ipk_setscene: No suitable staging package found
> ERROR: Logfile of failure stored in:
> /builds/SanCloudLtd/sancloud-arago/build/tmp/work/armv7at2hf-neon-linux-g=
nueabi/qt3d/5.13.2+gitAUTOINC+93361f1a59-r0/temp/log.do_package_write_ipk_s=
etscene.10524
> NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
> do_package_write_ipk_setscene: Failed
> WARNING: Setscene task
> (/builds/SanCloudLtd/sancloud-arago/sources/meta-qt5/recipes-qt/qt5/qt3d_=
git.bb:do_package_write_ipk_setscene)
> failed with exit code '1' - real task will be run instead
>=20
> As indicated in the final warning message there the real tasks run
> since no sstate artifact is available. These tasks succeed:
>=20
> NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
> do_package_write_ipk: Succeeded
>=20
> The result is a successful build of the desired images. However, the
> build is marked as a failure due to those sstate errors:
>=20
> Summary: There were 11 ERROR messages shown, returning a non-zero exit co=
de.
>=20
> Is this the expected behaviour? The final images are built correctly.
> I can't see any simple way to mask those setscene errors but I might
> be missing something.
>=20
> The full log can be seen at
> https://gitlab.com/SanCloudLtd/sancloud-arago/-/jobs/443901140/raw.
> I'm on the zeus branch here, I'll try to re-test on master later if I
> can.

See this previous discussion which includes patches for bitbake and
oe-core to change them to warnings:
https://marc.info/?l=3Dopenembedded-core&m=3D150403687120408&w=3D2

Because it was rejected I'm parsing the bitbake output to see if all
ERROR: messages were only about setscene tasks as mentioned in the same
thread much later:
https://marc.info/?l=3Dopenembedded-core&m=3D157504616302317&w=3D4

--mdaooyb5azacadc5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXk54NgAKCRA3VSO3ZXaA
HOMFAJ42127fkR6zdEElctK2N09h+FOf9ACgtkyrQ0ODC2cjx9dqnwSqIkTfA/c=
=E49R
-----END PGP SIGNATURE-----

--mdaooyb5azacadc5--
