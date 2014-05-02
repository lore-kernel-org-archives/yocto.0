Return-Path: <elvis.dowson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11DFEE00AB5; Fri,  2 May 2014 12:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (elvis.dowson[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D677E009BA
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 12:06:53 -0700 (PDT)
Received: by mail-ee0-f41.google.com with SMTP id d49so692769eek.28
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 12:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version;
	bh=+KyjcQ2ihRAvJiiskhcJQBj55yOfi5Hidf5f/zwZHks=;
	b=Yq7gUH60r/Y6geiSfRzDyfcFLAbxl8X/OtMJFN6k6ez1+gMjuVEthIjd7qYVuSicYW
	Fh0vg0b4/64Z5um31uXxrDij7nKFt+zAGtXASlGDVkO9jFx2Rx3Tb2KGZX6qpEemm+Aq
	rWfdz/mblSHTXqIaNEOFARrJiZ10KcCzERhfkqz94ACo8+yPWgJzVkDp101I3h9fofYU
	P7CtNeNB1FS1WZAe41PoJyCfTp3bfVNIoUkOzLFjAvqemur7vDc/mnu/Djp5DaLxwgmF
	T14HK3NedS3GNdNKKkjRM9CUIq5TrEiEcIH+UFlBT3BILtx/njffAt075MtBdVJlYLML
	h0cg==
X-Received: by 10.15.34.197 with SMTP id e45mr9231097eev.112.1399057612369;
	Fri, 02 May 2014 12:06:52 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.15])
	by mx.google.com with ESMTPSA id q49sm6697124eem.34.2014.05.02.12.06.49
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 02 May 2014 12:06:50 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 2 May 2014 23:06:44 +0400
Message-Id: <14A30120-E178-40D2-B950-115746B8CF3F@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
X-Mailer: Apple Mail (2.1878.2)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: [poky] Error patching gcc-4.8.2
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
X-List-Received-Date: Fri, 02 May 2014 19:06:57 -0000
X-Groupsio-MsgNum: 19338
Content-Type: multipart/signed;
	boundary="Apple-Mail=_73A3F656-960A-42BD-8F02-1E2D0C42EBA1";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_73A3F656-960A-42BD-8F02-1E2D0C42EBA1
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_83B968A6-5485-47D4-8097-8E77EDB54AE5"

--Apple-Mail=_83B968A6-5485-47D4-8097-8E77EDB54AE5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi Khem,

I=92m getting an error with poky master branch, when it attempts to =
patch gcc-cross-4.8.2.

Have you seen this happen earlier at your end?

Build Configuration:
BB_VERSION        =3D "1.23.1"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.10"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "zc702-zynq7"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.6+snapshot-20140502"
TUNE_FEATURES     =3D " arm armv7a vfp neon zynq"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "master:f7bbe9ce7679714c3dc464d0c382ef9ee2d7ce77"
meta-xilinx       =3D "master:869cba51d3db7909077ad0f066b784ebfd3b092d"
meta-xilinx-community =3D =
"master:44187a45f0f0c904fc385f12347ae01c669ba7f2"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Command Error: exit status: 1  Output:
File series fully applied, ends at patch 0031-Disable-sdt.patch
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: =
/tool/yocto/build/zc702/tmp/work-shared/gcc-4.8.2-r0/temp/log.do_patch.209=
54
ERROR: Task 424 =
(/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.8.bb, do_patch) =
failed with exit code '1'
NOTE: Tasks Summary: Attempted 692 tasks of which 3 didn't need to be =
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.8.bb, do_patch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.

real	2m18.089s
user	11m16.352s
sys	1m20.140s

Regards,

Elvis Dowson



--Apple-Mail=_83B968A6-5485-47D4-8097-8E77EDB54AE5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><div>Hi Khem,</div><div><br></div><div>I=92m getting =
an error with poky master branch, when it attempts to patch =
gcc-cross-4.8.2.</div><div><br></div><div>Have you seen this happen =
earlier at your end?</div><div><br></div><div><div>Build =
Configuration:</div><div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"1.23.1"</div><div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"x86_64-linux"</div><div>NATIVELSBSTRING &nbsp; =3D =
"Ubuntu-12.10"</div><div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"arm-poky-linux-gnueabi"</div><div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; =3D "zc702-zynq7"</div><div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "poky"</div><div>DISTRO_VERSION &nbsp; &nbsp;=3D =
"1.6+snapshot-20140502"</div><div>TUNE_FEATURES &nbsp; &nbsp; =3D " arm =
armv7a vfp neon zynq"</div><div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"vfp-neon"</div><div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</div><div>meta-yocto &nbsp; &nbsp; &nbsp; =
&nbsp;</div><div>meta-yocto-bsp &nbsp; &nbsp;=3D =
"master:f7bbe9ce7679714c3dc464d0c382ef9ee2d7ce77"</div><div>meta-xilinx =
&nbsp; &nbsp; &nbsp; =3D =
"master:869cba51d3db7909077ad0f066b784ebfd3b092d"</div><div>meta-xilinx-co=
mmunity =3D =
"master:44187a45f0f0c904fc385f12347ae01c669ba7f2"</div><div><br></div><div=
>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene =
Tasks</div><div>NOTE: Executing RunQueue Tasks</div><div><font =
color=3D"#ff2600">ERROR: Command Error: exit status: 1 =
&nbsp;Output:</font></div><div><font color=3D"#ff2600">File series fully =
applied, ends at patch 0031-Disable-sdt.patch</font></div><div><font =
color=3D"#ff2600">ERROR: Function failed: =
patch_do_patch</font></div><div><font color=3D"#ff2600">ERROR: Logfile =
of failure stored in: =
/tool/yocto/build/zc702/tmp/work-shared/gcc-4.8.2-r0/temp/log.do_patch.209=
54</font></div><div><font color=3D"#ff2600">ERROR: Task 424 =
(/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.8.bb, do_patch) =
failed with exit code '1'</font></div><div>NOTE: Tasks Summary: =
Attempted 692 tasks of which 3 didn't need to be rerun and 1 =
failed.</div><div>Waiting for 0 running tasks to =
finish:</div><div><br></div><div>Summary: 1 task =
failed:</div><div>&nbsp; =
/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.8.bb, =
do_patch</div><div>Summary: There was 1 WARNING message =
shown.</div><div>Summary: There were 2 ERROR messages shown, returning a =
non-zero exit code.</div><div><br></div><div>real<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>2m18.089s</div><div>user<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>11m16.352s</div><div>sys<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>1m20.140s</div></div><div><br></div><div>Regards,</div><div><br></d=
iv><div>Elvis Dowson</div><div><br></div><div><br></div></body></html>=

--Apple-Mail=_83B968A6-5485-47D4-8097-8E77EDB54AE5--

--Apple-Mail=_73A3F656-960A-42BD-8F02-1E2D0C42EBA1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQQcBAEBCgAGBQJTY+zEAAoJENajI+UwiZtE0B4f/2h/8//J3Zrzoa2q8qeOKXIh
SwucA0zd66wbMzQcKEjblBOIGpsYdpNurMJa+IVy+csh1GsXMM4ISREl4H5dGfHN
vw/pL1VO7AhzEvm7x/Iz9L6GUfHO8DMEmgRiGgUbo/1GpO7KfHYrANln5CX4P4MA
2CsfxXMF17Xyt9Bwi4AdyZEFxKTLAyNKkre6pichD0dfT3cMsQPzlQ/nU34VBAwr
V1gz19rWI7zzstKYYAacTVx1eLNu2O+Yr1vmEQAVRKJ7tgqOHO4U/W9+aYbdQDq8
0Woo1MqOTM7L1La8y73cIuth17ps3jjQ7f7rzD+pS73jBEi+5cRi0HIeVjQAKmch
miqrXKspwaqx8wUWv6xNzmVa24BKFsToyRgGme2B5kDxpwx32R7dWpbugmGYxpXw
VpB4FEcipZaCkL9U/asIy0Rkt32PgqoLv/yXEHuVyHdsX4s0ZGHY5Z2a2c6k3aUY
ougR/BRvPXlBzhEQ9XBgp3Dt1v060bTOXqKsz33Vf+rcW+X70+tvD5+ebZPpoa+P
WgNJYc3AjhEdrqBvIfssGt6BC1Oe8urMXjXsW+pp8Wm1iCdrpOyWyuNRtCVfH30j
QOWB0p4Y1naCuvKhB1H+qNo5TDkp/VKFIAVnC8aMtHvZA1c6DtRLeH5gTF/UWGo3
QJTuAzsJbYWj6iIDZ4sHko1Yq4Xy3CfTkkx29Qt0faFkMVnRJ3rGaBqkYbOT3TXE
Y4f031dl47N5N9Hr6I5H/yOD3iL+leqkJSHsXJvwq7V5B1IwZnttBScCzQLaAD7A
U0twSSA1PT/s/1oazsu/5lHj9Q+bhMBwTIqCTlBkZMwnN8iWZZ8HYtKi+n/77yKQ
STN+W7uc0voXsNTgoHb3NHVeymD2TXQ5vt8PtM7rrXazKBE6iIE23Kt3Ev/0X/4u
it/L54vLi0vdDfePvWQ1bhCyAwJeV549O3o8069D5uEHkYMgsDJMQLgqKXAVNXA+
gL04SH3xWBUk6Bz+q5L7VMA+gedpDXg4+V2yNoY+N73TFTuEHjDbUG7FcdWQeP4m
u6d9lkA1FXZ7tTlGu2J9yR2VRkRGFhg2reOvRKVLl426pPTd4VqdC75qQLZHXFH1
W5zW20unvdP1mHXBsiKRwdqPoZAxHaSGqgEw5MJWu/1x8OvUc5+J4xTxdEuyTs4K
JJMZVYygNKyO9sZ2nCVd/ldztNE4/xd+wljtAHCtuav7e2K5fnpKzgGSYAV2G7fE
e44QNxWLN+AQzTogqkBZ8wLZnOgivcmlrnAGrtdo+VRlzKh9rLO4IvvpAegOIsrx
x+p+glImq7gVXKUp7Ta24/vU2C0AhqgNZH1pAB+TPFMARB/kT0YTPJkrL2SqDzY=
=eVN+
-----END PGP SIGNATURE-----

--Apple-Mail=_73A3F656-960A-42BD-8F02-1E2D0C42EBA1--
