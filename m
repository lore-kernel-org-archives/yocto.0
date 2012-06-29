Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A67E00723
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 11:03:10 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 29 Jun 2012 11:03:04 -0700
Received: by lbbgj3 with SMTP id gj3so4388424lbb.25
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 11:03:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=QT1iWH6E7aw648hsfsSLHtsi3GW9b/dk711duMrN7aQ=;
	b=Xq/RCGAkYN8V7kxcQ+pkCjQbqZDPPNncN8xh15gCK9nilYZYnWo8u5MhuAVQYF5lDn
	c37gD+4kcAP5/H9DN7tT1Cpwld9m++N3l8y9TXAeAvE1HorpnPYqArUsKx3jbh2PHZeV
	ZqsXRH2ITvRUdF7JbVKD2GZIJwqS3LF6bvVVEJtLlfNYKV5EjUK0dWMIhH7KeS5HLjeW
	UyldLWKgmPkhrvhzbn5dVFI5NE5cmTlN+jhNpYmU8UDzDnlbA89tVMFTdW+ed4wTk2X0
	3odb80ox0f0GHZnTmdBW2RyizPOf3KjT+dwYJaskwicfz62Wp1InqQF6ogk2amjcJacO
	/O4A==
MIME-Version: 1.0
Received: by 10.112.36.163 with SMTP id r3mr1678101lbj.87.1340992981214; Fri,
	29 Jun 2012 11:03:01 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Fri, 29 Jun 2012 11:03:01 -0700 (PDT)
Date: Fri, 29 Jun 2012 11:03:01 -0700
Message-ID: <CAPhnLPCzO2GXRYH6waJU2R2D53FxcTussVoAPdm-WKRBzAh+RA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQlQc+niY4Ng1cad/jgRfQpGMeN+1pjD4LP7z4SbxwfpSADytolSewyWZ622TQoqzk3racNy
Subject: [ANNOUNCEMENT] Yocto 1.3 Milestone 1 Released
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
X-List-Received-Date: Fri, 29 Jun 2012 18:03:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

We are pleased to announce the third milestone of the coming release
of Yocto 1.2. This milestone release is available at:

  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/poky-yocto-1.3-m1.tar.bz2
  or
  http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/poky-yocto-1.3-m1.tar.bz2

Additional tarballs for meta-qt3 and the eclipse plugin are available at:

  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/eclipse-poky-yocto-1.3-m1.tar.bz2
  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/meta-qt3-yocto-1.3-m1.tar.bz2

with mirror locations at:

  http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/eclipse-poky-yocto-1.3-m1.tar.bz2
  http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/meta-qt3-yocto-1.3-m1.tar.bz2

For information on 1.3 M1 test results see:

  http://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report

Thank you everyone for all the hard work.


Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

- --------------------
yocto-1.3-m1 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.3-m1
Branch:  1.3_M1
Tag:  1.3_M1.final
Hash:  49849f3d70fb05bfca76bf8be685f0531ceba908
md5:  7ee1876de459b25860b77083b3a5911b  eclipse-poky-yocto-1.3-m1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/eclipse-poky-yocto-1.3-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/eclipse-poky-yocto-1.3-m1.tar.bz2

Release Name: meta-qt3-yocto-1.3-m1
Branch:  1.3_M1
Tag:  1.3_M1.final
Hash:  f8475d5c5935695d4d1dfff1d7be30f49e162094
md5:  c93851e71cc9ffcf80b17dc383132937  meta-qt3-yocto-1.3-m1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/meta-qt3-yocto-1.3-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/meta-qt3-yocto-1.3-m1.tar.bz2

Release Name: poky-yocto-1.3-m1
Branch:  1.3_M1
Tag:  1.3_M1.final
Hash:  7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0
md5:  7c2d38265314f37ee88ff7fdc549b7de  poky-yocto-1.3-m1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/poky-yocto-1.3-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/poky-yocto-1.3-m1.tar.bz2

- --------------------
Features
- --------------------
- - GCC 4.7 update and integration.
- - Core bitbake fixes and incremental refactoring.
- - Fixes for incremental RPM image generation.
- - HOB 2 improvements and fixes.

- --------------------
Known Issues
- --------------------
Bug #2535: syslog is not started by default in background on BSPs


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJP7e0eAAoJEEyK+E/MEkQPAsEIAN2Q8y51iVZGKb82LjDW5FUB
QpsWtCEganCbA1gGFOMHh7uUOUoojjpkVSrmrhiLiNwsbL0taQqHb0IjNg8lNuSZ
jby20LELj0o3Bk0Q5AZlsW+eY/NJlwaVQakxC6Ep1WaAap12d4L3wBeAj4iXQgN+
OVmfIVhCvcasYeT/fnaov95dbUKmger8fipyv7kyCwuTSh5w6rzNdzE6fs+tou4s
akeTTnRdGp+bJ9nH89XmcI/bQqt+z3ak8KgiO0kBujaT5Kaw9irj0DizjqMogNFA
ew91ZhQaZig1AdqMff0+P0N4duFj/yKHX/bEE0Q1+N3UMZxc3iaGv38+w/XASak=
=aJUl
-----END PGP SIGNATURE-----

