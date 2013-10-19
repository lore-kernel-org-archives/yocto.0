Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E945AE016E8
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2013 05:59:51 -0700 (PDT)
Received: by mail-qe0-f52.google.com with SMTP id w7so2680456qeb.39
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2013 05:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SqspY6tI+uZKjONz9Y0B8UgdYsSUcvyi4R1cWJl8SuI=;
	b=B56hLj7gdPPO9nHHidqmCfbAlWbidzkblmkpLkcg3LUkMXVSTqVdNRYGgmRqPBgMoF
	VYUA4K07EO+SJ2MHD7tOBD6thS5ZKnF1DRmNZujU5SoRBMhrWj7IyLqkJyv9J81/DwGt
	YkgUYbR/7+E1ucQaL9Oa2yGVS3WMZv/Y2/lQ55XvtDS088dYGCSRz6ZU0zG7FHFQLuiS
	yMCTGYiY/tbpuNNKMOL7oua04bMWH/jFPzhsx09erK4o2hhLnWeMYHc9UT2zhF4om2I0
	gm3UYsATqikDlLZhpDP4DRX37XYSQmgwd+P+iqHxscQYohyPSuiin3cvuEGEF/HmOvk0
	8hrQ==
MIME-Version: 1.0
X-Received: by 10.224.44.1 with SMTP id y1mr11171129qae.35.1382187590348; Sat,
	19 Oct 2013 05:59:50 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Sat, 19 Oct 2013 05:59:50 -0700 (PDT)
Date: Sat, 19 Oct 2013 06:59:50 -0600
Message-ID: <CANwz6nzVxrMqvM19MfT8AFD0NvWCuYDitSQTJon-YHMZ_8d01Q@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: threads set in local.conf
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
X-List-Received-Date: Sat, 19 Oct 2013 12:59:55 -0000
Content-Type: multipart/alternative; boundary=047d7bdc96be55f2d804e917a058

--047d7bdc96be55f2d804e917a058
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
Is this loading what others on a similar system are experiencing (see
below)?

I first was setting my threads to 6 on a AMD 6 core system.
In the mega-manual i found
5.4. Configuring the local.conf File

Briefly, set BB_NUMBER_THREADS and PARALLEL_MAKE to twice your host
processor's number of cores.

I am creating an image with 8017 tasks for the beagleboard.
I set threads to 12 and now the build is proceeding much more rapid than
when threads were set to 6.  In 30 minutes the build has completed 2435
tasks or about 25%.
I am seeing a fairly high load 35. 30. 24 and the fan is been at high speed
since the build  started.  The system has 8G of memory and now it is using
and it was using about  13800 of swap space.

Any and all help will be appreciated.
Thanks

--047d7bdc96be55f2d804e917a058
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello all,<br>Is this loading what others o=
n a similar system are experiencing (see below)?<br></div><br>I first was s=
etting my threads to 6 on a AMD 6 core system.<br></div>In the mega-manual =
i found <br>
<h3 class=3D"">5.4.=A0Configuring the local.conf File</h3><p>Briefly, set <=
a class=3D"" target=3D"_top"><code class=3D"">BB_NUMBER_THREADS</code></a>
            and <a class=3D"" target=3D"_top"><code class=3D"">PARALLEL_MAK=
E</code></a> to
            twice your host processor&#39;s number of cores.=A0</p><p>I am =
creating an image with 8017 tasks for the beagleboard.</p>I set threads to =
12 and now the build is proceeding much more rapid than when threads were s=
et to 6.=A0 In 30 minutes the build has completed 2435 tasks or about 25%.<=
br>
</div><div>I am seeing a fairly high load 35. 30. 24 and the fan is been at=
 high speed since the build=A0 started.=A0 The system has 8G of memory and =
now it is using and it was using about=A0 13800 of swap space.<br></div><di=
v>
<br></div><div>Any and all help will be appreciated.<br></div><div>Thanks<b=
r></div><div><br></div><br><br></div>

--047d7bdc96be55f2d804e917a058--
