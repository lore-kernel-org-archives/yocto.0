Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40CB5E00D67; Tue, 16 Jul 2019 11:40:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhukanthk[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [98.137.65.83 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic313-20.consmr.mail.gq1.yahoo.com
	(sonic313-20.consmr.mail.gq1.yahoo.com [98.137.65.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50DC5E00BF7
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 11:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1563302444; bh=Sp84RpiDNKNrq64+M2YXXDSzr7sAYjOPTpvO7npCZMI=;
	h=Date:From:To:Subject:References:From:Subject;
	b=A/wLqpB2X0TCNWngxM9IQVahPaETBIslbmgswu7eMDqEND/EnEdM/bBnkcEecbUHzvzHZY1FWl4TB3oc/QQdPErWv3z7AziOYZfvA8WzxFEGanFLnP0QNyuxnHkdLUnUtTR19OH4VMBwob1cWpB4mmI1O/sx9uuImxtbWej9W196stxO1so94YhfD4i6bPrPwzWBKvHkzNQdTqVGPKJQYsaNQbzHqkdG93ulsb4iKgyjJ3N/fr2XVR7nM1tx4fayEq4vk8JNBHEGBxUHHUI33Ja/8biEuDR6Xd31NR0F12S8TGClzpNSv6I2MkfUJyAMAa8gXXaDyfg7CmujZuW0pg==
X-YMail-OSG: 0nFAD8oVM1lOpRavhRcyuW8Y87g_S86SFM.iSe_D.WvfBsUTee971EK_D1wxUee
	9hLG.ptVi4iPtV78FnsfjETl3NDcYXs6heiLIt6rO6LR8C5O1Qkp1N7QyYJ5qGdiifjrNeaTVziS
	WkaX8EkMJcXaos5SBCWOMjZOGFGEkI93pQG_UcBjv1XegAG4FQ8tUsdtFeCwgG5_LnxCKPgkFFhp
	6l6IN4jlz6v4GMZv5WWErAhevIOwCFuvVau280L1CC0iVYyChGJdi7OsQZmUEzODFT9Wg609akSE
	AAxgJ8VqpytozC8OowWOIWq_ooi0XOxmRmcrznvQE0F4KkupEipI984VhmpL1wZaTi1NmTr1hKLd
	8bykpx35qaGEhKaz_7bw3VJy.hhN.5kKuySxKLtB.Ls5sbFgPnQaoJdqxhptxX2skzIWSuTVN78X
	HDUWUexwGAjuZLjLlmwBIsqMb7csFDFe80u2n8g9qYUnmb8rsQAxJistW5kcr2nznYP0SsjWqH6v
	d8Tv3RDPC5DHLjnCAQqc5ItfEaVzoEXf05Ko_5OeF4un.j3912LroLcqmCAJ87vNSwZc9tBPK_BB
	3At0zKrkuCGca71BZlNwpb.JxYsGH9lZqlCyzykgIr.dczFkZLqCx3UL3g67wQ35l.KgbDCSm8CY
	Rzx5o9Xa.X9qIVrP6mcU52b87BIrMbwdmZ_CvGk9NL18Ee53AkGmCzAeMXLo7Vp2P8O7adCoXFGj
	arRFX4.XgKqAmzSFebFBuxotR6KT3VLgUkBVHcZIlyLbJv6TeCcWbQG0ZvfawrOb9ozFw0tO77K2
	NwVwGWK5KnpEYWIyWM1Dvdy39m2gmsiqWWjk8jqpg2ZowO2G4vDNsmsvKIL_.JgBfNZUT2Pjhzcv
	NI6O_p3gQ5XB7xeDGq5i612vI9BcigZleu_rx2Y3xf1jNqJy5fKY63j.SO83Z09dWJJlgMzOJ4W_
	97oLUh8F.CuSfPHnfH.qlZuX5ETfMvhmWexx7Qk1ptiU3UidCjZA92Yp3.4_TvLxP9xH8rEIhOq6
	gN4qwW_NjeEf26QHOYbUz_CyF0LFXhXl26T7bm9dVYoGOrlREMFFUVEZEArEXQI6eKWHk2wEuqVY
	ReOqEbXUF7OwzjIXc7haZPCU488aNGZQez0Vd2vxnn.l5.6OMMBOiOlQ5yJ9GtPtcKE8dDyBReU7
	4gHw1IpPblfP0njHjThOMFR8IwIoh7NsUD8vK3NjLT9zsEQFT_notXbR1lf1yIPuV
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.gq1.yahoo.com with HTTP;
	Tue, 16 Jul 2019 18:40:44 +0000
Date: Tue, 16 Jul 2019 18:40:41 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <1651395282.2204134.1563302441374@mail.yahoo.com>
MIME-Version: 1.0
References: <1651395282.2204134.1563302441374.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Windows NT 10.0;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100
	Safari/537.36
Subject: package iqvlinux-2.2.4-r2.acm_64_uefi requires kernel-module... but none of the providers can be installed
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
X-List-Received-Date: Tue, 16 Jul 2019 18:40:45 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2204133_1740324226.1563302441373"

------=_Part_2204133_1740324226.1563302441373
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HelloI am trying to package Intel's iqvlinux into yocto image. I am getting=
 this error.=C2=A0Please let me know how I can get over this.
thanks for your help in advance,Best regardsMadhu

NOTE: yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/reci=
pe-sysroot-native/usr/bin/opkg--volatile-cache -f yocto/build/tmp/work/acm_=
64_uefi-poky-linux/had-image-dev/1.0-r0/opkg.conf-t yocto/build/tmp/work/ac=
m_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp/-o yocto/build/tmp/w=
ork/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/rootfs=C2=A0 --force_postin=
stall--prefer-arch-to-version=C2=A0 --add-excludeutil-linux-cfdisk --add-ex=
clude util-linux-mkfs --add-excludeutil-linux-readprofile --add-exclude uti=
l-linux-sfdisk install iproute2packagegroup-core-tools-profile sysvinit cra=
shdump-kernel gpiorw dmidecoderun-postinsts kexec-tools cpu smartmontools k=
ernel-devsrc mem devel-utils-initstressapptest strace ethtool lmbench procp=
s makedumpfile memtester rmc pciutilspackagegroup-core-boot perf util-linux=
-lscpu linpack sshd packagegroup-core-deviqvlinux packagegroup-base-extende=
d onegig fio python-pip m2perf opkgpackagegroup-core-minimal iperf3 python3=
-modules gcc pcipackagegroup-core-tools-debug packagegroup-core-test util-l=
inux-agetty

ERROR: Unable to install packages.Command 'yocto/build/tmp/work/acm_64_uefi=
-poky-linux/had-image-dev/1.0-r0/recipe-sysroot-native/usr/bin/opkg--volati=
le-cache -f yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r=
0/opkg.conf-t yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0=
-r0/temp/ipktemp/-o yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-d=
ev/1.0-r0/rootfs=C2=A0 --force_postinstall--prefer-arch-to-version=C2=A0 --=
add-excludeutil-linux-cfdisk --add-exclude util-linux-mkfs --add-excludeuti=
l-linux-readprofile --add-exclude util-linux-sfdisk install iproute2package=
group-core-tools-profile sysvinit crashdump-kernel gpiorw dmidecoderun-post=
insts kexec-tools cpu smartmontools kernel-devsrc mem devel-utils-initstres=
sapptest strace ethtool lmbench procps makedumpfile memtester rmc pciutilsp=
ackagegroup-core-boot perf util-linux-lscpu linpack sshd packagegroup-core-=
deviqvlinux packagegroup-base-extended onegig fio python-pip m2perf opkgpac=
kagegroup-core-minimal iperf3 python3-modules gcc pcipackagegroup-core-tool=
s-debug packagegroup-core-test util-linux-agetty'returned 1:

Collected errors:

=C2=A0* Solver encountered 1 problem(s):

=C2=A0* Problem 1/1:

=C2=A0*=C2=A0=C2=A0 -package iqvlinux-2.2.4-r2.acm_64_uefi requireskernel-m=
odule-iqvlinux-4.9.56-rt37-intel-pk-preempt-rt, but none of theproviders ca=
n be installed

=C2=A0*=20

=C2=A0* Solution 1:

=C2=A0*=C2=A0=C2=A0 - donot ask to install a package providing iqvlinux

=C2=A0

=C2=A0*opkg_finalize_intercepts: Failed to open dir yocto/build/tmp/work/ac=
m_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH/opkg-in=
tercept-UpxBjM:No such file or directory.

=C2=A0* rm_r: Failed toopen dir yocto/build/tmp/work/acm_64_uefi-poky-linux=
/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH/opkg-intercept-UpxBjM:No su=
ch file or directory.

=C2=A0* rm_r: Failed toopen dir yocto/build/tmp/work/acm_64_uefi-poky-linux=
/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH:No such file or directory.

=C2=A0

=C2=A0

DEBUG: Python function do_rootfs finished

ERROR: Function failed: do_rootfs


------=_Part_2204133_1740324226.1563302441373
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Hello</div><div dir="ltr" data-setdir="false">I am trying to package Intel's iqvlinux into yocto image. I am getting this error.&nbsp;</div><div dir="ltr" data-setdir="false">Please let me know how I can get over this.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">thanks for your help in advance,</div><div dir="ltr" data-setdir="false">Best regards</div><div dir="ltr" data-setdir="false">Madhu</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><div><p class="ydpc4f31c94MsoNormal">NOTE: yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/recipe-sysroot-native/usr/bin/opkg
--volatile-cache -f yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/opkg.conf
-t yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp/
-o yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/rootfs&nbsp; --force_postinstall
--prefer-arch-to-version&nbsp; --add-exclude
util-linux-cfdisk --add-exclude util-linux-mkfs --add-exclude
util-linux-readprofile --add-exclude util-linux-sfdisk install iproute2
packagegroup-core-tools-profile sysvinit crashdump-kernel gpiorw dmidecode
run-postinsts kexec-tools cpu smartmontools kernel-devsrc mem devel-utils-init
stressapptest strace ethtool lmbench procps makedumpfile memtester rmc pciutils
packagegroup-core-boot perf util-linux-lscpu linpack sshd packagegroup-core-dev
iqvlinux packagegroup-base-extended onegig fio python-pip m2perf opkg
packagegroup-core-minimal iperf3 python3-modules gcc pci
packagegroup-core-tools-debug packagegroup-core-test util-linux-agetty</p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">ERROR: Unable to install packages.
Command 'yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/recipe-sysroot-native/usr/bin/opkg
--volatile-cache -f yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/opkg.conf
-t yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp/
-o yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/rootfs&nbsp; --force_postinstall
--prefer-arch-to-version&nbsp; --add-exclude
util-linux-cfdisk --add-exclude util-linux-mkfs --add-exclude
util-linux-readprofile --add-exclude util-linux-sfdisk install iproute2
packagegroup-core-tools-profile sysvinit crashdump-kernel gpiorw dmidecode
run-postinsts kexec-tools cpu smartmontools kernel-devsrc mem devel-utils-init
stressapptest strace ethtool lmbench procps makedumpfile memtester rmc pciutils
packagegroup-core-boot perf util-linux-lscpu linpack sshd packagegroup-core-dev
iqvlinux packagegroup-base-extended onegig fio python-pip m2perf opkg
packagegroup-core-minimal iperf3 python3-modules gcc pci
packagegroup-core-tools-debug packagegroup-core-test util-linux-agetty'
returned 1:</span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">Collected errors:</span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">&nbsp;* Solver encountered 1 problem(s):</span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">&nbsp;* Problem 1/1:</span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">&nbsp;*&nbsp;&nbsp; -
package iqvlinux-2.2.4-r2.acm_64_uefi requires
kernel-module-iqvlinux-4.9.56-rt37-intel-pk-preempt-rt, but none of the
providers can be installed</span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">&nbsp;* </span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">&nbsp;* Solution 1:</span></p>

<p class="ydpc4f31c94MsoNormal"><span style="color:red">&nbsp;*&nbsp;&nbsp; - do
not ask to install a package providing iqvlinux</span></p>

<p class="ydpc4f31c94MsoNormal">&nbsp;</p>

<p class="ydpc4f31c94MsoNormal">&nbsp;*
opkg_finalize_intercepts: Failed to open dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH/opkg-intercept-UpxBjM:
No such file or directory.</p>

<p class="ydpc4f31c94MsoNormal">&nbsp;* rm_r: Failed to
open dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH/opkg-intercept-UpxBjM:
No such file or directory.</p>

<p class="ydpc4f31c94MsoNormal">&nbsp;* rm_r: Failed to
open dir yocto/build/tmp/work/acm_64_uefi-poky-linux/had-image-dev/1.0-r0/temp/ipktemp//opkg-27HKeH:
No such file or directory.</p>

<p class="ydpc4f31c94MsoNormal">&nbsp;</p>

<p class="ydpc4f31c94MsoNormal">&nbsp;</p>

<p class="ydpc4f31c94MsoNormal">DEBUG: Python function do_rootfs finished</p>

<p class="ydpc4f31c94MsoNormal">ERROR: Function failed: do_rootfs</p></div><br></div></div></body></html>

------=_Part_2204133_1740324226.1563302441373--
