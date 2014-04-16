Return-Path: <elvis.dowson@gmail.com>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B6F9E00C03
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:29:04 -0700 (PDT)
Received: by mail-ee0-f41.google.com with SMTP id t10so9120972eei.0
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=PlgLy40r2F+S0J9+7u5eumTKxH5+tdFsNuGNqnRYw3k=;
	b=yDbUlZV+NtqMevUk5GKgPNg+Jdw6XjX5jRJOLNMX0R04SYbeSSSRS9oe4MIkKjWhW0
	ZQUPZ7LChjX2mwV9UsOsP91EcEwucrHfI7vDSmWhGtdktrS22/s3KxbvVovGbn/GoqK5
	VYPI5SNL7V9USmCy3IVHpKn1X56TvCFBxbOfcxAoHwnIFNCzg3eoMBx40A6NCn/pInje
	7YcYzvr6lmEI507UAjg1QlnJaF6pFLEv0F6rOhOr5aMcTTVsyPUooxDJgc5PwimTFWAf
	BMHVRFY1/33cZBA0X2h8qGeNy+ZzMySlsuvDzAKkpe7ZutfuVMdnTBy3JG/NBqZTyn5v
	rTFw==
X-Received: by 10.14.45.6 with SMTP id o6mr6327156eeb.24.1397665742896;
	Wed, 16 Apr 2014 09:29:02 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.106.15])
	by mx.google.com with ESMTPSA id m8sm59333364eeg.11.2014.04.16.09.29.00
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 16 Apr 2014 09:29:01 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <4ADBDA85-43D0-4BFA-87FF-4440BCBF289B@gmail.com>
Date: Wed, 16 Apr 2014 20:28:54 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1877.7\))
X-Mailer: Apple Mail (2.1877.7)
Subject: [poky] ERROR: Function failed: do_rootfs, when using ipk package class
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
X-List-Received-Date: Wed, 16 Apr 2014 16:29:05 -0000
X-Groupsio-MsgNum: 19064
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EDA806D5-44FC-4681-AFD6-8FA6E4C3E01F";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_EDA806D5-44FC-4681-AFD6-8FA6E4C3E01F
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3137EE8D-9B08-4970-9DEA-1C0CE6CE7B4D"

--Apple-Mail=_3137EE8D-9B08-4970-9DEA-1C0CE6CE7B4D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi,

I just tries a build with poky master, and meta-xilinx master branch, =
and got the following build error.

For some reason the yocto build process fails is PACKAGE_CLASSES is set =
to package_ipk.=20

ERROR: Unable to install packages. Command =
'/tool/yocto/build/zc706/tmp/sysroots/x86_64-lux/usr/bin/opkg-cl -f =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/opkg.conf -o =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version   =
install run-postinsts packagegroup-core-boot' returned 255:
Installing run-postinsts (1.0-r9) to root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/run-postinsts_1.0-r9_all.i=
pk.
Installing update-rc.d (0.7-r5) to root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk=
.
sh: 1: /tmp/opkg-RUBbug/run-postinsts-mxgou5/preinst: Permission denied
Installing packagegroup-core-boot (1.0-r17) to root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/zc706_zynq7/packagegroup-core-=
boot_1.0-r17_zc706_zynq7.ipk.
Installing busybox (1.22.1-r0) to root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/busybox_1.22.1=
-r0_armv7a-vfp-neon.ipk.
Installing update-alternatives-opkg (0.1.8+git0+c33b217016-r0) to =
root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/update-alterna=
tives-opkg_0.1.8+git0+c33b217016-r0_armv7a-vfp-neon.ipk.
Installing libc6 (2.19-r0) to root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/libc6_2.19-r0_=
armv7a-vfp-neon.ipk.
Installing busybox-syslog (1.22.1-r0) to root...
Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/busybox-syslog=
_1.22.1-r0_armv7a-vfp-neon.ipk.
sh: 1: /tmp/opkg-RUBbug/busybox-syslog-FMmuzB/preinst: Permission denied
update-alternatives: Linking =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs//usr/bin/ar to /bin/busybox.nosuid
update-alternatives: Linking =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs//bin/gunzip to /bin/busybox.nosuid

<snip>

update-alternatives: Linking =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs//usr/bin/vlock to /bin/busybox.suid
Configuring libc6.
Configuring update-alternatives-opkg.
Configuring update-rc.d.
Configuring busybox.
Collected errors:
 * preinst_configure: Aborting installation of run-postinsts.
 * opkg_install_cmd: Cannot install package run-postinsts.
 * preinst_configure: Aborting installation of busybox-syslog.
 * opkg_install_cmd: Cannot install package packagegroup-core-boot.

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/temp/log.do_rootfs.2749
ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1728 tasks of which 1727 didn't need to =
be rerun and 1 failed.
No currently running tasks (1727 of 1729)


Setting it to rpm works. I ran into this issue recently.=20

I=92m using Ubuntu-12.10 as the host.=20

I recall things used to work file with package_ipk earlier, but with =
recent releases, the build process only works with package_rpm.


Regards,

Elvis Dowson

--Apple-Mail=_3137EE8D-9B08-4970-9DEA-1C0CE6CE7B4D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><div>Hi,</div><div><br></div><div>I just tries a =
build with poky master, and meta-xilinx master branch, and got the =
following build error.</div><div><br></div><div>For some reason the =
yocto build process fails is PACKAGE_CLASSES is set to =
package_ipk.&nbsp;</div><div><br></div><div><span style=3D"font-family: =
Monaco; font-size: x-small;">ERROR: Unable to install packages. Command =
'/tool/yocto/build/zc706/tmp/sysroots/x86_64-lux/usr/bin/opkg-cl -f =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/opkg.conf -o =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version =
&nbsp; install run-postinsts packagegroup-core-boot' returned =
255:</span></div><div><div><font face=3D"Monaco" size=3D"1">Installing =
run-postinsts (1.0-r9) to root...</font></div><div><font face=3D"Monaco" =
size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/run-postinsts_1.0-r9_all.i=
pk.</font></div><div><font face=3D"Monaco" size=3D"1">Installing =
update-rc.d (0.7-r5) to root...</font></div><div><font face=3D"Monaco" =
size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk=
.</font></div><div><font color=3D"#ff2600" face=3D"Monaco" size=3D"1">sh: =
1: /tmp/opkg-RUBbug/run-postinsts-mxgou5/preinst: Permission =
denied</font></div><div><font face=3D"Monaco" size=3D"1">Installing =
packagegroup-core-boot (1.0-r17) to root...</font></div><div><font =
face=3D"Monaco" size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/zc706_zynq7/packagegroup-core-=
boot_1.0-r17_zc706_zynq7.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"1">Installing busybox (1.22.1-r0) to =
root...</font></div><div><font face=3D"Monaco" size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/busybox_1.22.1=
-r0_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"1">Installing update-alternatives-opkg =
(0.1.8+git0+c33b217016-r0) to root...</font></div><div><font =
face=3D"Monaco" size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/update-alterna=
tives-opkg_0.1.8+git0+c33b217016-r0_armv7a-vfp-neon.ipk.</font></div><div>=
<font face=3D"Monaco" size=3D"1">Installing libc6 (2.19-r0) to =
root...</font></div><div><font face=3D"Monaco" size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/libc6_2.19-r0_=
armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"1">Installing busybox-syslog (1.22.1-r0) to =
root...</font></div><div><font face=3D"Monaco" size=3D"1">Downloading =
file:/tool/yocto/build/zc706/tmp/deploy/ipk/armv7a-vfp-neon/busybox-syslog=
_1.22.1-r0_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"1">sh: 1: /tmp/opkg-RUBbug/busybox-syslog-FMmuzB/preinst: =
Permission denied</font></div><div><font face=3D"Monaco" =
size=3D"1">update-alternatives: Linking =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs//usr/bin/ar<font color=3D"#ff2600"> to =
/bin/busybox.nosuid</font></font></div><div><font face=3D"Monaco" =
size=3D"1">update-alternatives: Linking =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs//bin/gunzip to =
/bin/busybox.nosuid</font></div><div><font face=3D"Monaco" =
size=3D"1"><br></font></div><div><font face=3D"Monaco" =
size=3D"1">&lt;snip&gt;</font></div><div><font face=3D"Monaco" =
size=3D"1"><br></font></div><div><font face=3D"Monaco" =
size=3D"1">update-alternatives: Linking =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/rootfs//usr/bin/vlock to =
/bin/busybox.suid</font></div><div><font face=3D"Monaco" =
size=3D"1">Configuring libc6.</font></div><div><font face=3D"Monaco" =
size=3D"1">Configuring update-alternatives-opkg.</font></div><div><font =
face=3D"Monaco" size=3D"1">Configuring =
update-rc.d.</font></div><div><font face=3D"Monaco" size=3D"1">Configuring=
 busybox.</font></div><div><font face=3D"Monaco" size=3D"1">Collected =
errors:</font></div><div><font face=3D"Monaco" size=3D"1">&nbsp;* =
preinst_configure: Aborting installation of =
run-postinsts.</font></div><div><font face=3D"Monaco" size=3D"1">&nbsp;* =
opkg_install_cmd: Cannot install package =
run-postinsts.</font></div><div><font face=3D"Monaco" size=3D"1">&nbsp;* =
preinst_configure: Aborting installation of =
busybox-syslog.</font></div><div><font face=3D"Monaco" size=3D"1">&nbsp;* =
opkg_install_cmd: Cannot install package =
packagegroup-core-boot.</font></div><div><font face=3D"Monaco" =
size=3D"1"><br></font></div><div><font face=3D"Monaco" size=3D"1">ERROR: =
Function failed: do_rootfs</font></div><div><font face=3D"Monaco" =
size=3D"1">ERROR: Logfile of failure stored in: =
/tool/yocto/build/zc706/tmp/work/zc706_zynq7-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/temp/log.do_rootfs.2749</font></div><div><font =
face=3D"Monaco" size=3D"1">ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'</font></div><div><font =
face=3D"Monaco" size=3D"1">NOTE: Tasks Summary: Attempted 1728 tasks of =
which 1727 didn't need to be rerun and 1 failed.</font></div><div><font =
face=3D"Monaco" size=3D"1">No currently running tasks (1727 of =
1729)</font></div></div><div><br></div><div><br></div><div><div>Setting =
it to rpm works. I ran into this issue =
recently.&nbsp;</div><div><br></div><div>I=92m using Ubuntu-12.10 as the =
host.&nbsp;</div><div><br></div><div>I recall things used to work file =
with package_ipk earlier, but with recent releases, the build process =
only works with =
package_rpm.</div></div><div><br></div><div><br></div><div>Regards,</div><=
div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_3137EE8D-9B08-4970-9DEA-1C0CE6CE7B4D--

--Apple-Mail=_EDA806D5-44FC-4681-AFD6-8FA6E4C3E01F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQQcBAEBCgAGBQJTTq/GAAoJENajI+UwiZtE9xAf/3gStO1niFcFjeyqp89urVF2
hlO1pALctB7X9Q8CaW4RffICqquuRueFsy0ywmzK0jryJ9McqwcmPBQccsHboNmM
BAvldSdzCD6SgmOgfh3w8GcB6DfKoAELUVvWXWD2pJ4K5zED8GJFWTslnTGGob3G
eapmeduy8gWVR+nKnOo+30/28sw1LjaqrvI3/Z2vQyJB1Q9vYtSw5GuZB5/nWRap
q4I4fwdssMlfjtpAjQEgtyf91VEtLQsNxWU6L/WB406W5r3zBmsf/uAVGq0qKVMm
ISeg2NFAR27s7GCIWXt5Ei69Zf3482kxNzm80LoG9z45U7nKVeop4yIrd3o4crhk
X0COe9geM6/pxOwwz8Ecgclos7/05Bo603chgsakg8HHkhmkGPBd1kPnByxwC7rJ
FEIZe9zZWlML9bh4qeC3SnuBgrcPvyILERJfUiYaIUu0hwtp78cxtBxDG+rv9FXT
pPJ1Rkbtsp9zslYFMbC+XxzzNpk72KGeXJ5No90Eav0GmpTGlEUV44wHIlGFIwje
SS0zQ8t5r1JiWuvLrMFO3NSTuJ9gQJsoyOO2FDDJ2Y9gmYWPdvwzJo9qYJsppNfV
qKGzLaO/BAUxdWo6E9PjEfwXtOo/DETW7aG6keEy9Ud5ObczykWxNuKp1LiRVVSQ
OpySlDWcqPJrHYQ8ZNtSqZH1lDJ3oiEkak8pMd/v0Oksvr58RRnFAG7ObNK0l/dT
LYtq1fOgyJDBBlmNxpu7c+SK5I4cUdS1m/XMinkUOgzy9v56B/iBSGMeC95T9gyp
ym9/znjg5c/cP0+Ot7R47axhrzZo20vz6tkXc+/dm+3RWr45WCnX/lhnV+gs1yL2
YPwxaUubbdazo65OeN2UhDFKiCpoorKxc2tnApprJ78EAzEKl8hyitEK7lhl9vku
rAYhIAVG1iCJoc8k1uh5bypBGgTX7EP35XbZaQMYx4k9qfdQa3QZEvbV6d6VzGWn
9tUcbxoe8auWzvfbJ7U/dvoRe+jG0x3M30Up2YteEUElCbPuHbdAEGrMoksBVbnk
yP4TLXL02xftzMG1phA6GR0nVvr8dQWkELE+gOmU1epeTVPeo+OjnsLu42ZQa9Wt
Q+7wUquxO2YIhSZFf/DKLm40Ju2/tSneov/5gzFwx7QPfL8DqDRQQWK5mPW9SqlP
vZDcF6hEIRkP1YdkwNdHGrZEm/e/vEQjbHAzb1Ic03ozkJbGEHFUSwRfLjl5N0FT
qMEvkzRN1C9egaDvh1yqapYxWlHLEeIpTxjmT+iuJKb/hvE+4pLoBEBSklMm+YiZ
Lm/Ywj1ozIaDgqRk/SOI3bEIKOFRDnwNaaqAetGdE/Rt/kn9MI+Fh1jqsGHZC1U=
=fBGl
-----END PGP SIGNATURE-----

--Apple-Mail=_EDA806D5-44FC-4681-AFD6-8FA6E4C3E01F--
