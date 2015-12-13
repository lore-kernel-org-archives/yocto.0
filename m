Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA073E00C0B; Sun, 13 Dec 2015 01:03:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB8DE0078A
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 01:03:23 -0800 (PST)
Received: by wmnn186 with SMTP id n186so84046390wmn.0
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 01:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=AaeZmBkfG74F/zzCNJ2lTufrt+L4HQAGdmNcJ8RUwYM=;
	b=H1rDbwUCykOYfdaRZgLWJPXYJhxY+O+b+r+ACwQVjcZIYKg4HvfbsJdDBq9CeIeOOb
	vlIO8oNc/POKVJqFSDZnLKpam0wCOhvJyXSGEEW50aPVBa9WO74J2Hf0MsLu1JxKFizW
	cGDvlSMrM9FnEaMDtYLz+soDJmCoW3viVfMkWe6UcOYNMAsUDW4YMY+wLR9YUzwq8S/g
	CDWSO6+w3gsJzssn06yiVVtUMZDB6MU5baquhYPCeEwCNALha9IDa0Pet8Q13pzK48Du
	IemIJlf3+tYAYY2dGpP3prngVGoQxQPshPb8PfWGG5R24tG3QtnkhgySn7iWK4ImxrgN
	iVww==
X-Received: by 10.194.19.133 with SMTP id f5mr35756763wje.48.1449997402762;
	Sun, 13 Dec 2015 01:03:22 -0800 (PST)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	h5sm24435068wjz.21.2015.12.13.01.03.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 13 Dec 2015 01:03:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
Date: Sun, 13 Dec 2015 10:03:19 +0100
Message-Id: <CD8F00E1-5119-4467-BAB7-FDBED90619F0@gmail.com>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
To: Federico Pietro Briata <federicobriata@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Sun, 13 Dec 2015 09:03:27 -0000
X-Groupsio-MsgNum: 27697
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5431A10C-D9BC-4E3C-86D2-3703EE2158AB";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_5431A10C-D9BC-4E3C-86D2-3703EE2158AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> Am 11.12.2015 um 18:16 schrieb Federico Pietro Briata =
<federicobriata@gmail.com>:
>=20
> Hi All,
> I'm trying to build openjdk-8 but I'm stuck.
>=20
> my current setup does not define anything for:
>=20
> #PREFERRED_PROVIDER_virtual/java-native
> #PREFERRED_PROVIDER_virtual/javac-native
>=20
> follow the log error
>=20
> ERROR: Function failed: do_configure (log file is located at =
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/op=
enjdk-8-native/72b05-r0/temp/log.do_configure.27024)
> ERROR: Logfile of failure stored in: =
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/op=
enjdk-8-native/72b05-r0/temp/log.do_configure.27024
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', =
'bit-64', 'x86_64-linux', 'common']
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing python function autotools_copy_aclocals
> | DEBUG: Python function autotools_copy_aclocals finished
> | DEBUG: Executing shell function do_configure
> | ERROR: no configure script found at =
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/op=
enjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/configure

Are you on poky/master or cherry-picked fe506edd?

> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at =
/home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/op=
enjdk-8-native/72b05-r0/temp/log.do_configure.27024)
> ERROR: Task 146 =
(/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/ope=
njdk-8-native_72b05.bb, do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1139 tasks of which 15 didn't need to =
be rerun and 1 failed.
> No currently running tasks (1139 of 1150)
>=20
> Summary: 1 task failed:
>   =
/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/open=
jdk-8-native_72b05.bb, do_configure
>=20
> thanks and regards
> Federico
>=20

--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_5431A10C-D9BC-4E3C-86D2-3703EE2158AB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWbTRYAAoJEESZlq7c5Qqduv4P/1eFeTrtT5drlMK8/hleK0IB
NLTBseDjuZ87jT1ZD3g9+0phjtOIwdlxeCv7VFSbmV23j0a8Fl0N1Sq25BgvP478
Gn+M7uCDBGGWSsvZIws6lu2HZYS/HbJApt06urI9GPfwzRX/og3amEVZgqlWjHXY
8y8FtGeTeOLuvZXFVEFLvqD2dCP094k1apzLP2lKvDh+NdREPVTTixZmVqiW3gnW
ou/k4P8Ovh1rCzg8HWpO+T+LqQVhQ7XPaJ+owYEsE/rXUbzDRTaqrQSI888BuyYJ
kqPY0onMGj0eMH1O/dX6HXlQYDrWSYX5Hdo36YhgU6oJ9P8yqX7KI8/uAAKTG5Aj
DLpKqDj7vyjj+eE288emUlDNeb1xaoaIuCl+ne5PtbiCXYbAfDy2cHNsjqONNmgJ
fJo5cyZ8//70cfvwq8VfXCB7ocNVncvR/KmlEfDfor3UHuzjmMRo0BHZDP7HadGB
fI1MGSpChbj2avCVF0kz89U4S7B9BPtP2/mG9mbZT9efxhMwR74emeP/bshR1c13
VR9wx8nToZfcgKBhbczotZXwQMxWe0i8Cwv2URqBEIFY1PEVliYLto5jYKpgLOju
fv8ww7c5ot45RmGD1vkJ5YdCk7Z6oXbTc5v5Z09SYf6aQRuid2frxqQiaaHZ9ovU
tgOD+1dAV83T692uAwJv
=D/q9
-----END PGP SIGNATURE-----

--Apple-Mail=_5431A10C-D9BC-4E3C-86D2-3703EE2158AB--
