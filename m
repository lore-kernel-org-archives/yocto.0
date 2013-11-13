Return-Path: <alexandru.damian@intel.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00EC0E01389
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 06:31:16 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id va2so512326obc.9
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 06:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=WtV2eGB0hPH3vd8pi+ntd+sOeCOaN5FTE1yyQ3Yk3rk=;
	b=SAoIBYObB2WV5TXZvxdbqIt2vr/mtoK9GckAw/K7pEKuUSGIFuT6jS/nOuEMNA3lu9
	0oSECHaJ1MV4jC/Agg2N4dLJ5UTYvXOKdZWOEOIN1ho7HO9Okaxmk4uyld7Mu9/53K2X
	zc8qlWMTUOWq0AEd5/1iwhrXL901gjinaqSSXJHdp7UZb/0ugd8k4gqlHdElEmUtcl93
	Xyb9inkEfdLu/yv5XjbdWPNS9grhVISBkQnVyjDPW9Pxb/XxYxI20/9wuexWg0t9SDX3
	BrOqcbFLK4FANLtQ2ufMSGYrQmRRrgRRptLznzq1nmrbk8QiweczFmAWhwx/CGG5+7Jz
	Dd7A==
X-Gm-Message-State: ALoCoQmk+h26FQdhKbZX4gOegHoAfzJXqEulP3PLcotKpnuu6drzG2Z7YN/y9bnqJ7H7MIyN2lOS
X-Received: by 10.182.102.2 with SMTP id fk2mr12598355obb.69.1384353075749;
	Wed, 13 Nov 2013 06:31:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.86.193 with HTTP; Wed, 13 Nov 2013 06:30:55 -0800 (PST)
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Wed, 13 Nov 2013 14:30:55 +0000
Message-ID: <CAJ2CSBuHkcwZRxXd2cGyjS3sGk_-EajpbQ+EcwW_DhPKh=O7nQ@mail.gmail.com>
To: "toaster@yoctoproject.org" <toaster@yoctoproject.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Wed, 13 Nov 2013 08:07:50 -0800
Subject: Build performance with Toaster analysis
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
X-List-Received-Date: Wed, 13 Nov 2013 14:31:22 -0000
Content-Type: multipart/alternative; boundary=089e013a042052f8dd04eb0fd19d

--089e013a042052f8dd04eb0fd19d
Content-Type: text/plain; charset=UTF-8

Hello,

Just to make sure that Toaster doesn't have a big performance impact, I've
ran a smoke test for a build with and without Toaster enabled.

For the test, I've ran a core-image-build with the default out-of-box
configuration on origin/dora-toaster, 4 parallel jobs and -j 8 for make.
Both builds were done on clean directories, on the same filesystem, after a
clean reboot, with no other tasks running on the machine. Timing was
measured with the time utility. A single build was ran for each
configuration. The comparison for the wall time is:

- without Toaster: 63m35
- with Toaster: 62m21

The difference is less than 2%, which I attribute to the noise in the
system, and shows that Toaster has no significant impact in build
performance at this point. To determine the true impact of Toaster, a
number of builds for each configuration needs to be run, and get the median
and average timing for each mode in order to get a reasonable conclusion.

Cheers,
Alex
-- 
Alex Damian
Yocto Project
SSG / OTC

--089e013a042052f8dd04eb0fd19d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>Just to make sure that Toaster doesn&#39;t h=
ave a big performance impact, I&#39;ve ran a smoke test for a build with an=
d without Toaster enabled.<br><br clear=3D"all"><div>For the test, I&#39;ve=
 ran a core-image-build with the default out-of-box configuration on origin=
/dora-toaster, 4 parallel jobs and -j 8 for make. Both builds were done on =
clean directories, on the same filesystem, after a clean reboot, with no ot=
her tasks running on the machine. Timing was measured with the time utility=
. A single build was ran for each configuration. The comparison for the wal=
l time is:<br>

<br></div><div>- without Toaster: 63m35 <br></div><div>- with Toaster: 62m2=
1<br></div><div><br></div><div>The difference is less than 2%, which I attr=
ibute to the noise in the system, and shows that Toaster has no significant=
 impact in build performance at this point. To determine the true impact of=
 Toaster, a number of builds for each configuration needs to be run, and ge=
t the median and average timing for each mode in order to get a reasonable =
conclusion.<br>

</div><div><br></div><div>Cheers,<br>Alex<br></div><div>-- <br><div dir=3D"=
ltr">Alex Damian<div>Yocto Project<br></div><div>SSG / OTC=C2=A0</div></div=
>
</div></div>

--089e013a042052f8dd04eb0fd19d--
