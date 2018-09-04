Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACF07E008E0; Tue,  4 Sep 2018 07:19:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 912C0E00718
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 07:19:45 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id k38-v6so4089451qtk.11
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2018 07:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=znsAbrSGg6x35m3X5sLk6/rOa1xsX43vAkpzY/83F8Y=;
	b=Py5o9+NS9TgCsME7OgPgnNsKYN87j6bf31LMPn7FGJ8xc9je0MWWnYSJc9Iiycu7gY
	KO3Wd1vxOI9rt1+rTZU9Et+i0yYCPDaR8XncVmIUbnb6BHycF0nYKdZozNtyur2Hw/sE
	H96nnEq7XaSSWHbrDkmbWSBtXBvk7OruyzQh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=znsAbrSGg6x35m3X5sLk6/rOa1xsX43vAkpzY/83F8Y=;
	b=sy8u8JaV/WT+EdDTmr1430mctLi+LY1PAo8Sz6lRixPo6dAbG3FhMKiraotKhCmh2U
	5hF+f4dCh2G+fBbM9PS+cQNgZd10cTgAlppdw14+VhFJQbk4xZ8d1gNWNL119gtKfsLO
	z6L/ALpDbI9C18+WIvbwlrRnRo59XruT/X0GexeqHm+hqQKd7fzR4B/n9uW5k3lUX8xP
	2l38ps5AGYeHOVnmt8uDOiJcA/vkCQ3nZU3k+eD6UEtZ2J0rRyRzGekjAZthZi+iV5xp
	ZVJU6CLzSAJlwbG7WIP+vtC+0+aQM4uVWLnWk6Lmxg4DHiaV4m9WAK5prhsAJZ2bc5xh
	sUGQ==
X-Gm-Message-State: APzg51CatNX+rI/+j8lsZFP1zF1SdreKtkNI/k5eW5YAR6L4M2u2Bo0U
	aJxDluySee/JYsIIR/DaEgA6YbhSyN+jgGLat2n15h7XNIc=
X-Google-Smtp-Source: ANB0VdZcf7s+PSCS42VviXcSLpFOgI/FrhIIFGD19decSa5Ac4BDhtOxoiCCjoT57ykAslxuCYSb7vWlmz1myTrabGw=
X-Received: by 2002:a0c:ae71:: with SMTP id
	z46-v6mr15143696qvc.108.1536070784539; 
	Tue, 04 Sep 2018 07:19:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:2d1b:0:0:0:0:0 with HTTP;
	Tue, 4 Sep 2018 07:19:43 -0700 (PDT)
From: Ravikiran J <ravikiran.j@mistralsolutions.com>
Date: Tue, 4 Sep 2018 19:49:43 +0530
Message-ID: <CALDHXtdqVcXd5R10DRbnKubFGdvvin-3xQvaVjR=Tmyjh43UEw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Systemd based image freezing issue
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
X-List-Received-Date: Tue, 04 Sep 2018 14:19:46 -0000
Content-Type: multipart/alternative; boundary="00000000000076709f05750c59f9"

--00000000000076709f05750c59f9
Content-Type: text/plain; charset="UTF-8"

Dear Yocto team,

We have build the systemd init  based core-image-minimal  image in Yocto
version 2.2.2  Morty.
We are getting some systemd init failure with this image in our board.

Following is the failed logs :
systemd[1]: System time before build time, advancing clock.
systemd[1]: systemd 230 running in system mode. (-PAM -AUDIT -SELINUX +IMA
-APPARMOR +SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ
-LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN)
systemd[1]: Detected architecture arm.

Welcome to Poky (Yocto Project Reference Distro) 2.2.2 (morty)!

systemd[1]: Set hostname to <rzn1d400-graco>.
systemd[1]: Initializing machine ID from random generator.
systemd[1]: Installed transient /etc/machine-id file.
systemd[1]: Cannot determine cgroup we are running in: No medium found
systemd[1]: Failed to allocate manager object: No medium found
[!!!!!!] Failed to allocate manager object, freezing.
systemd[1]: Freezing execution.

Kernel (Version 4.9) is build with CGROUPS enable, still it's not helping
to initialize properly.

Systemd is enabled through the local.conf file of  the build with following
options :

DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

Note:
*Systvinit based core-image-minimal image is working fine in our board.*


Is there anything else needs to enable on the Linux kernel side and Yocto
side build?
Kindly help us to resolve this issue.


Thanks and Regards,
Ravikiran J J

--00000000000076709f05750c59f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Dear Yocto team,</div><div><br></div=
><div></div><div>We have build the systemd init=C2=A0 based core-image-mini=
mal=C2=A0 image in Yocto version 2.2.2=C2=A0 Morty.</div><div>We are gettin=
g some systemd init failure with this image in our board.</div><div><br></d=
iv><div>Following is the failed logs : <br></div><div><span style=3D"color:=
rgb(0,0,0)">systemd[1]: System time before build time, advancing clock.<br>=
<span style=3D"color:rgb(255,0,0)">systemd[1]: systemd 230 running in syste=
m mode. (-PAM -AUDIT -SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP -LIBCRY=
PTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN)=
</span><br>systemd[1]: Detected architecture arm.<br><br>Welcome to Poky (Y=
octo Project Reference Distro) 2.2.2 (morty)!<br><br>systemd[1]: Set hostna=
me to &lt;rzn1d400-graco&gt;.<br>systemd[1]: Initializing machine ID from r=
andom generator.<br>systemd[1]: Installed transient /etc/machine-id file.<b=
r><span style=3D"color:rgb(255,0,0)">systemd[1]: Cannot determine cgroup we=
 are running in: No medium found<br>systemd[1]: Failed to allocate manager =
object: No medium found<br>[!!!!!!] Failed to allocate manager object, free=
zing.<br>systemd[1]: Freezing execution.</span></span></div><div><br></div>=
<div></div><div></div><div>Kernel (Version 4.9) is build with CGROUPS enabl=
e, still it&#39;s not helping to initialize properly.</div><div><br></div><=
div>Systemd is enabled through the local.conf file of=C2=A0 the build with =
following options :=C2=A0</div><div><pre><span style=3D"font-family:arial,h=
elvetica,sans-serif">DISTRO_FEATURES_append =3D &quot; systemd&quot;
VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;
VIRTUAL-RUNTIME_initscripts =3D &quot;systemd-compat-units&quot;<br></span>=
<br></pre>Note: <br></div><div><b>Systvinit based core-image-minimal image =
is working fine in our board.</b></div><div><b><br></b></div><div><b><br></=
b></div><div>Is there anything else needs to enable on the Linux kernel sid=
e and Yocto side build?<br></div><div><b></b></div><div>Kindly help us to r=
esolve this issue.</div><div><br></div><div></div><div><br></div><div>Thank=
s and Regards,</div><div>Ravikiran J J<br></div><div><b></b></div><div><b><=
br></b></div><div><b><br></b></div><div><b><br></b></div><div><br></div><di=
v><br></div><div><br></div><div> <br></div><div><br></div><div><br></div><d=
iv><br></div><div><br></div><div><br></div><div><br></div></div></div>

--00000000000076709f05750c59f9--
