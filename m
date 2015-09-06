Return-Path: <edivya.vyas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29D7CE00CCA; Sun,  6 Sep 2015 10:41:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edivya.vyas[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2A3DE00B0B
	for <yocto@yoctoproject.org>; Sun,  6 Sep 2015 10:41:35 -0700 (PDT)
Received: by oixx17 with SMTP id x17so34496900oix.0
	for <yocto@yoctoproject.org>; Sun, 06 Sep 2015 10:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Ro6lIMBhi0Aj5NxYRjtLiYQdTCI9ivEloCA403qFjv0=;
	b=CF++dYtVeYQgPq/v4wIwBMto6vPtY2Z0/4plvmsRgnzwrQSEQDrBeiV5jAAlxBYQbd
	RgCT+BtCf8LCCxPcO+2FjkSd/pP1KV4ZQrcaJRVGMr3hzKcKPvuxucMg7kGAL/9OY59J
	NfWRJQ8L4ha9cNFMQUT5+rAJpEmnaQCgW/hYM5Uces63CXHEG5opyKL7ZorYrezK0AZ8
	qH0irHiQMCJQ6fZHiQwzrhttfJNTbUNSUDrFZoUrVIoO92Q35ojVT3pdCsS98VmLAioP
	lO1NX/EySTLOR6rp8d9l4hW9InZzm/Ekoc9RUMldtR//aDOC+Wl/TJtyEgOy/RmZvDKH
	GEbA==
X-Received: by 10.202.83.19 with SMTP id h19mr11182293oib.119.1441561294639;
	Sun, 06 Sep 2015 10:41:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.38.137 with HTTP; Sun, 6 Sep 2015 10:41:15 -0700 (PDT)
From: Divya Vyas <edivya.vyas@gmail.com>
Date: Sun, 6 Sep 2015 23:11:15 +0530
Message-ID: <CAGfiMvD-RLdedD9hJQOEiwnh5MJ7tzdoB2gthchq1=+EeceEBQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SELinux XATTR error - check_rootsfs failing
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
X-List-Received-Date: Sun, 06 Sep 2015 17:41:36 -0000
Content-Type: multipart/alternative; boundary=001a113d2e96e39688051f17a457

--001a113d2e96e39688051f17a457
Content-Type: text/plain; charset=UTF-8

Hi,

Hi,

I am getting this error while booting the selinux enabled image
(core-image-selinux)


* SELinux requires the root '/' filesystem support extended
  filesystem attributes (XATTRs).  It does not appear that this
  filesystem has extended attribute support or it is not enabled.

  - To continue using SELinux you will need to enable extended
    attribute support on the root device.

  - To disable SELinux, please add "selinux=0" in the kernel
    command line.

* Halting the system now.

My fstab is below :

rootfs                  /               ext3
defaults,acl,user_xattr 0 1


Here is the kernel  configuration :

KERNEL_CONFIG_AUDIT="y"
KERNEL_CONFIG_NETWORK_SECMARK=
"y"
KERNEL_CONFIG_EXT2_FS_SECURITY="y"
KERNEL_CONFIG_EXT3_FS_SECURITY="y"
KERNEL_CONFIG_EXT4_FS_SECURITY="y"
KERNEL_CONFIG_EXT2_FS_ATTR="y"
KERNEL_CONFIG_EXT3_FS_ATTR="y"
KERNEL_CONFIG_JFS_SECURITY="y"
KERNEL_CONFIG_REISERFS_FS_SECURITY="y"
KERNEL_CONFIG_JFFS2_FS_SECURITY="y"
KERNEL_CONFIG_SECURITY_NETWORK="y"
KERNEL_CONFIG_SECURITY_SELINUX="y"
KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM="y"
KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE="1"
KERNEL_CONFIG_SECURITY_SELINUX_DISABLE="y"
KERNEL_CONFIG_SECURITY_SELINUX_DEVELOP="y"
KERNEL_CONFIG_SECURITY_SELINUX_AVC_STATS="y"
KERNEL_CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE="1"
KERNEL_CONFIG_SECURITY="y"
KERNEL_CONFIG_SECURITYFS="y"
KERNEL_CONFIG_AUDIT_GENERIC="y"
KERNEL_CONFIG_DEFAULT_SECURITY_SELINUX="y"
KERNEL_CONFIG_SECURITY_PATH="y"

My filesystem is ext3 . I think all configs are enabled.


Any idea where is the problem?

Thanks,

--001a113d2e96e39688051f17a457
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br><div>Hi,<br><br></div><div>I am getting this er=
ror while booting the selinux enabled image (core-image-selinux) <br><br><b=
r>* SELinux requires the root &#39;/&#39; filesystem support extended<br>=
=C2=A0 filesystem attributes (XATTRs).=C2=A0 It does not appear that this<b=
r>=C2=A0 filesystem has extended attribute support or it is not enabled.<br=
><br>=C2=A0 - To continue using SELinux you will need to enable extended<br=
>=C2=A0=C2=A0=C2=A0 attribute support on the root device.<br><br>=C2=A0 - T=
o disable SELinux, please add &quot;selinux=3D0&quot; in the kernel<br>=C2=
=A0=C2=A0=C2=A0 command line.<br><br>* Halting the system now.<br><br></div=
><div>My fstab is below :<br></div><br>rootfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ext3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 defaults,acl,user_xattr 0 1 <br><br><br>Here is the kernel=C2=A0 con=
figuration :<br><br>KERNEL_CONFIG_AUDIT=3D&quot;y&quot;<br>KERNEL_CONFIG_NE=
TWORK_SECMARK=3D<div>&quot;y&quot;<br>KERNEL_CONFIG_EXT2_FS_SECURITY=3D&quo=
t;y&quot;<br>KERNEL_CONFIG_EXT3_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFI=
G_EXT4_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT2_FS_ATTR=3D&quot;y&=
quot;<br>KERNEL_CONFIG_EXT3_FS_ATTR=3D&quot;y&quot;<br>KERNEL_CONFIG_JFS_SE=
CURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_REISERFS_FS_SECURITY=3D&quot;y&quot=
;<br>KERNEL_CONFIG_JFFS2_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_SECUR=
ITY_NETWORK=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX=3D&quot;y&quo=
t;<br>KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM=3D&quot;y&quot;<br>KERNEL_CO=
NFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D&quot;1&quot;<br>KERNEL_CONFIG_SECU=
RITY_SELINUX_DISABLE=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_DEVE=
LOP=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_AVC_STATS=3D&quot;y&q=
uot;<br>KERNEL_CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D&quot;1&quot;<b=
r>KERNEL_CONFIG_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITYFS=3D&quo=
t;y&quot;<br>KERNEL_CONFIG_AUDIT_GENERIC=3D&quot;y&quot;<br>KERNEL_CONFIG_D=
EFAULT_SECURITY_SELINUX=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_PATH=3D&q=
uot;y&quot;<br><br></div>My filesystem is ext3 . I think all configs are en=
abled. <br><br><br><div>Any idea where is the problem?<br><br></div>Thanks,=
<br></div>

--001a113d2e96e39688051f17a457--
