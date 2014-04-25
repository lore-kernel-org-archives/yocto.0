Return-Path: <elvis.dowson@gmail.com>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB6C3E00C27
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 12:33:07 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id d49so3091391eek.13
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 12:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=JKDectoC22gZdGmZ+mCEOBAWHHpPIJhDrl/U/dkP+xM=;
	b=v9kB5DdmvsyuQfl2XaYSD/AxmVc59IdBDK0RATd22HH1lEk8uBrRpUw2yN9x1rn61c
	uRgmziXZqbX+s+zDDpZ5HqPChTaqVxXbVTFg6iBCeIASSi5irydRwwA18ZWCoqmYrTaW
	Co5FN5TWICms6l2pmONjWHe2j5tksrhwvKBaBZpZpYbduV5M1/26hVu7TvMkd9lOL266
	IRluoM7hTpYWF3joUqiddxBJuOl3A+HOY4jC1EnPv7hk10bOGDC2kziMEWxpq4kkPQMx
	nvSMFb74WB4feOasuZavZmHAlce4/llU+b9GVBuJTBMOo63copzG/BxKXFT5MVJ7hEbT
	g47g==
X-Received: by 10.15.98.68 with SMTP id bi44mr2392584eeb.97.1398454385664;
	Fri, 25 Apr 2014 12:33:05 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.15])
	by mx.google.com with ESMTPSA id
	z48sm27187107eel.27.2014.04.25.12.33.03 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 25 Apr 2014 12:33:04 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <6FCD110A-F7F1-442D-9582-838D585EC4B2@gmail.com>
Date: Fri, 25 Apr 2014 23:32:57 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.0\))
X-Mailer: Apple Mail (2.1878)
Subject: [poky] Build failure gcc-4.8
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
X-List-Received-Date: Fri, 25 Apr 2014 19:33:08 -0000
X-Groupsio-MsgNum: 19218
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C5E9805F-5912-4D81-957C-2795D0B18CD2";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_C5E9805F-5912-4D81-957C-2795D0B18CD2
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C669D887-EABB-45EC-B4D9-FE891B213B0A"

--Apple-Mail=_C669D887-EABB-45EC-B4D9-FE891B213B0A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

I just updated to the latest poky master, and encountered a build =
failure with gcc patch#0030 failing to apply.

Build Configuration:
BB_VERSION        =3D "1.23.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.10"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "zc706-zynq7"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.6+snapshot-20140425"
TUNE_FEATURES     =3D " armv7a vfp neon zynq"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "master:c446d4edca3b4edfcdee48247391bfb306aab4c2"
meta-xilinx       =3D "master:62c97f8bd8205b0526a1698f8888e6844266a98f"
meta-xilinx-community =3D =
"master:3a03b207084cbbdbd88a5691c3c2c16ad50be7df"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Command Error: exit status: 1  Output:
File series fully applied, ends at patch =
0029-Define-GLIBC_DYNAMIC_LINKER-and-UCLIBC_DYNAMIC_LINKE.patch
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: =
/tool/yocto/build/zc706/tmp/work-shared/gcc-4.8.2-r0/temp/log.do_patch.324=
69
ERROR: Task 691 =
(/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.8.bb, do_patch) =
failed with exit code '1'
NOTE: Tasks Summary: Attempted 628 tasks of which 3 didn't need to be =
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.8.bb, do_patch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.

real	3m13.888s
user	12m59.532s
sys	2m4.204s

Some of the recent commits beyond the following one has caused this =
breakage,=20

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D7f138d64f09361=
0a03f2333ae31b48edfa3553ff

Regards,

Elvis Dowson

--Apple-Mail=_C669D887-EABB-45EC-B4D9-FE891B213B0A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">Hi,<div><br></div><div>I just updated to the latest =
poky master, and encountered a build failure with gcc patch#0030 failing =
to apply.</div><div><br></div><div><span style=3D"font-family: Monaco; =
font-size: x-small;">Build Configuration:</span><br style=3D"font-family: =
Monaco; font-size: x-small;"><span style=3D"font-family: Monaco; =
font-size: x-small;">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"1.23.0"</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"x86_64-linux"</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">NATIVELSBSTRING &nbsp; =3D "Ubuntu-12.10"</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">TARGET_SYS &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "arm-poky-linux-gnueabi"</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">MACHINE &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "zc706-zynq7"</span><br style=3D"font-family: =
Monaco; font-size: x-small;"><span style=3D"font-family: Monaco; =
font-size: x-small;">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"poky"</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">DISTRO_VERSION &nbsp; &nbsp;=3D =
"1.6+snapshot-20140425"</span><br style=3D"font-family: Monaco; =
font-size: x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">TUNE_FEATURES &nbsp; &nbsp; =3D " armv7a vfp neon =
zynq"</span><br style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">TARGET_FPU &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "vfp-neon"</span><br style=3D"font-family: =
Monaco; font-size: x-small;"><span style=3D"font-family: Monaco; =
font-size: x-small;">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">meta-yocto&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">meta-yocto-bsp &nbsp; =
&nbsp;=3D "master:c446d4edca3b4edfcdee48247391bfb306aab4c2"</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">meta-xilinx &nbsp; =
&nbsp; &nbsp; =3D =
"master:62c97f8bd8205b0526a1698f8888e6844266a98f"</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">meta-xilinx-community =
=3D "master:3a03b207084cbbdbd88a5691c3c2c16ad50be7df"</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">NOTE: Preparing =
runqueue</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: x-small;">NOTE: =
Executing SetScene Tasks</span><br style=3D"font-family: Monaco; =
font-size: x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">NOTE: Executing RunQueue Tasks</span><br style=3D"font-family: =
Monaco; font-size: x-small;"><span style=3D"font-family: Monaco; =
font-size: x-small;">ERROR: Command Error: exit status: 1 =
&nbsp;Output:</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: x-small;">File =
series fully applied, ends at patch =
0029-Define-GLIBC_DYNAMIC_LINKER-and-UCLIBC_DYNAMIC_LINKE.patch</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">ERROR: Function =
failed: patch_do_patch</span><br style=3D"font-family: Monaco; =
font-size: x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">ERROR: Logfile of failure stored in: =
/tool/yocto/build/zc706/tmp/work-shared/gcc-4.8.2-r0/temp/log.do_patch.324=
69</span><br style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">ERROR: Task 691 =
(/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.8.bb, do_patch) =
failed with exit code '1'</span><br style=3D"font-family: Monaco; =
font-size: x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">NOTE: Tasks Summary: Attempted 628 tasks of which 3 didn't =
need to be rerun and 1 failed.</span><br style=3D"font-family: Monaco; =
font-size: x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">Waiting for 0 running tasks to finish:</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">Summary: 1 task =
failed:</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">&nbsp; =
/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.8.bb, =
do_patch</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">Summary: There was 1 WARNING message shown.</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">Summary: There were 2 =
ERROR messages shown, returning a non-zero exit code.</span><br =
style=3D"font-family: Monaco; font-size: x-small;"><br =
style=3D"font-family: Monaco; font-size: x-small;"><span =
style=3D"font-family: Monaco; font-size: x-small;">real</span><span =
class=3D"Apple-tab-span" style=3D"font-family: Monaco; font-size: =
x-small; white-space: pre;">	</span><span style=3D"font-family: =
Monaco; font-size: x-small;">3m13.888s</span><br style=3D"font-family: =
Monaco; font-size: x-small;"><span style=3D"font-family: Monaco; =
font-size: x-small;">user</span><span class=3D"Apple-tab-span" =
style=3D"font-family: Monaco; font-size: x-small; white-space: pre;">	=
</span><span style=3D"font-family: Monaco; font-size: =
x-small;">12m59.532s</span><br style=3D"font-family: Monaco; font-size: =
x-small;"><span style=3D"font-family: Monaco; font-size: =
x-small;">sys</span><span class=3D"Apple-tab-span" style=3D"font-family: =
Monaco; font-size: x-small; white-space: pre;">	</span><span =
style=3D"font-family: Monaco; font-size: =
x-small;">2m4.204s</span></div><div><span style=3D"font-family: Monaco; =
font-size: x-small;"><br></span></div><div>Some of the recent commits =
beyond the following one has caused this =
breakage,&nbsp;</div><div><br></div><div><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D7f138d=
64f093610a03f2333ae31b48edfa3553ff">http://git.yoctoproject.org/cgit/cgit.=
cgi/poky/commit/?id=3D7f138d64f093610a03f2333ae31b48edfa3553ff</a></div><d=
iv><br></div><div>Regards,</div><div><br></div><div>Elvis =
Dowson</div></body></html>=

--Apple-Mail=_C669D887-EABB-45EC-B4D9-FE891B213B0A--

--Apple-Mail=_C5E9805F-5912-4D81-957C-2795D0B18CD2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQQcBAEBCgAGBQJTWrhpAAoJENajI+UwiZtECksgAJ4K/DZSHZY6NxcXnoSf2lJ6
u0e9nQltI0+332vSgEa1Nxw9vmEFyHThvUy8eohnnFQukIuUMMVrMEa2V6iTH6bw
M6lhAY7NB4tByc+yHsX0Phhjc73BQPFLmEyfp6rX5zQokKd418kksGm59Jb5X5Pr
GCzocNSxwpzCy5hQmtKGk7jCVh5Ybfj/9ABwOSQ0GdqC4PvGy4dLz5PJtul4uDrS
IlvLKDrhdMIQ+ha3sW6LsD8PiJZUlrSta4E9OtFDGAXpByCBN7tIsFxaOm7qqtxD
Q5FTy3PimInUpkt5FXpjHjd+zvcTxCnD7xfmo7O5sS1pPc5kEljpM0nuRu+GNZKn
8s9VSL5c4tyJHhatyEqW/i+JMEOXtqU9EWd3kyJJtCvWf2DHqO/VE/PoZD6fnfvY
vZ+gxoRcICHSAvTS54HCy/tHsGaWDrMS4YCThJ+Ij6w3hn9eTyYVM/oQezaeHAk8
cL9P+4Y/3APFkrYBvrBylfI5xi3HnzDVL+L0dEi/nG921KJVYxhfUnBVyErMt/mI
0b3Y13ieYdDx+p36MKdH2GRWp+b8Q7jdaQfA0AQ3BxVkjIWMKx8qDOrYLLqUiIQ6
jLPhgKL8DkrkBGSrREgH1ZTKZ6E0EXLvlQGGitIteJI/QUeBPFbXLUOafOud6dJ3
Wr6DkyD2h+E2B+cDzCVWYHeUequAsbUvIGJU28J9AZn/SOJFjPVqAqdtLBTigUmX
LKCNsrtHxXD1NU6C7fv/maPQzvxNgqWMZ3wF2mBk8vftMUNVjoh7aOwcPqWEtV5l
rnPzzvi0aeIiSpafErZXJds+JBg5Clcin0c43qhas3eLzKoCna3TihfdyapEN28O
DYZ06hUS2bhN3IL3pJVI2Q84lWrCbpmzNIn72SsV7mBi7MxSNq5CgFphyaITsX5+
nrol01Cbq2RnRnNz2K+KjAiTKj/z5ZiLh2NxggGDSxaZhfpC9X2zXV8drNyB7gou
g3umwBqG8E3EsAxSm1hwq/Fk9kr+RQiuPSkj90KsKOxXxPA1QFF7auG4B5NT5tKn
MhBlphpkCVNV2rUTO/O2QX+Z3TzOb79XPoVYZyeO/sM3ps2Bt7onDVCmf5LFEFj7
0Zt2kYHzMqShhwVszpUR5++1LCJ/q6i22C9h/O0/WT7B50b3o9heRLQv4MtY3h7C
i0IC9Thi4IoxG6E18QIYCGQGIAk6ZmCPCPIeItkhEBcbCa+n314Hc5DMhygSRXXe
vM198SXVVi8peDyhnpExtEJ/SVsUX34S5L+WcesSjEi/0hu0pQcryCw9lQWdGrK3
zVAbWKk8dUjZ5NtNaY3ObcEHL+BOKCyaQQnghv4AIlf/sL5XKGl1D+hN1zbEEP8=
=6RPE
-----END PGP SIGNATURE-----

--Apple-Mail=_C5E9805F-5912-4D81-957C-2795D0B18CD2--
