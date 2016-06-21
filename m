Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19E9AE00984; Tue, 21 Jun 2016 07:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [82.130.75.186 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from edge10.ethz.ch (edge10.ethz.ch [82.130.75.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E3A2E00948
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:29:07 -0700 (PDT)
Received: from CAS20.d.ethz.ch (172.31.51.110) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Tue, 21 Jun 2016 16:29:02 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS20.d.ethz.ch ([fe80::2cd8:4907:7776:c56d%10]) with mapi id
	14.03.0266.001; Tue, 21 Jun 2016 16:29:05 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto 2.1 perl problem
Thread-Index: AdHLvNR7cxzv77rzRP67xRQlJO9sav//8I0AgAAm3zY=
Date: Tue, 21 Jun 2016 14:29:05 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F4CFB7@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch>,
	<a2cff31a-909e-988c-562b-29289f8c79c9@linux.intel.com>
In-Reply-To: <a2cff31a-909e-988c-562b-29289f8c79c9@linux.intel.com>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Re: Yocto 2.1 perl problem
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
X-List-Received-Date: Tue, 21 Jun 2016 14:29:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F4CFB7MBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F4CFB7MBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ah, I have even deleted everything (repo, downloads, build dir)
and started from scratch.:
  git clone -b krogoth git://git.yoctoproject.org/poky.git
  add my meta-gfa/*
  source oe-init-build-env
  adjust local.conf + bblayers.conf
  bitbake core-image-psi-gfa-cmd --continue

simple everything from scratch:

and everything builds except:

ERROR: perl-5.22.1-r0 do_package: objcopy failed with exit code 256 (cmd wa=
s 'powerpc64-poky-linux-objcopy' --only-keep-debug '/home/anicic/yocto-2.1-=
all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/=
usr/lib64/perl/ptest/generate_uudmap' '/home/anicic/yocto-2.1-all/build/ppc=
64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/per=
l/ptest/.debug/generate_uudmap'):
powerpc64-poky-linux-objcopy: Unable to recognise the format of the input f=
ile `/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-l=
inux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'
ERROR: perl-5.22.1-r0 do_package: Function failed: split_and_strip_files
ERROR: Logfile of failure stored in: /home/anicic/yocto-2.1-all/build/ppc64=
e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/temp/log.do_package.423=
7
ERROR: Task 1691 (/home/anicic/yocto-2.1-all/poky/meta/recipes-devtools/per=
l/perl_5.22.1.bb, do_package) failed with exit code '1'

Any suggestions?


--_000_DB23C91B06C303459B24BC3208AF424A20F4CFB7MBX214dethzch_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body ocsi=3D"0" fpstyle=3D"1" bgcolor=3D"#FFFFFF">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Ah, I have even deleted everything (repo, downloads, build dir)<br>
and started from scratch.:<br>
&nbsp; git clone -b krogoth git://git.yoctoproject.org/poky.git <br>
&nbsp; add my meta-gfa/*<br>
&nbsp; source oe-init-build-env<br>
&nbsp; adjust local.conf &#43; bblayers.conf<br>
&nbsp; bitbake core-image-psi-gfa-cmd --continue<br>
<br>
simple everything from scratch:<br>
<br>
and everything builds except:<br>
<br>
ERROR: perl-5.22.1-r0 do_package: objcopy failed with exit code 256 (cmd wa=
s 'powerpc64-poky-linux-objcopy' --only-keep-debug '/home/anicic/yocto-2.1-=
all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/=
usr/lib64/perl/ptest/generate_uudmap'
 '/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linu=
x/perl/5.22.1-r0/package/usr/lib64/perl/ptest/.debug/generate_uudmap'):<br>
powerpc64-poky-linux-objcopy: Unable to recognise the format of the input f=
ile `/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-l=
inux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'<br>
ERROR: perl-5.22.1-r0 do_package: Function failed: split_and_strip_files<br=
>
ERROR: Logfile of failure stored in: /home/anicic/yocto-2.1-all/build/ppc64=
e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/temp/log.do_package.423=
7<br>
ERROR: Task 1691 (/home/anicic/yocto-2.1-all/poky/meta/recipes-devtools/per=
l/perl_5.22.1.bb, do_package) failed with exit code '1'<br>
<br>
Any suggestions?<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F4CFB7MBX214dethzch_--
