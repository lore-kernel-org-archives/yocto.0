Return-Path: <gvkalra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31FE3E00BAA; Thu, 16 May 2019 23:42:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gvkalra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D35AE00B58
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 23:42:41 -0700 (PDT)
Received: by mail-pf1-f174.google.com with SMTP id n19so3196216pfa.1
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 23:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=f5CP05G23729ZzAn6sWIipQa1YYipzrod26V3EBLC/E=;
	b=LZR3BeeotMYiD3lmHq/q8BbiNPsPCfEkwMjGT2KPRMYySOs5yxkSCECdbsdyt1GdTO
	aU34OVSMEwKzuHgoVhxjeUS9tLCV0Zywjr7MLEEYZu/xCHH8BnlLcQTG4lQTcXDM+rXs
	xFSUGSAyGh43D+FcRmlPw+oZTVrgWnrPxlwRPj/1NobdckPQocyRpCMTCs/QtXpDrpHy
	nYOKKMuP2GQVelIXfqtcb662UNjHN9bzGGpvaIe5OShKG8JXXx4ZGGrLWZWrIpMDVGGV
	7oe4UoYXRVY6450anmYjvMP6pbUSZU2FczPHINiSQzbWe0sovQlKbM8qlf268fG9qNl0
	pITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=f5CP05G23729ZzAn6sWIipQa1YYipzrod26V3EBLC/E=;
	b=O+zU3uFUTaxdPruaq5WhOIYUVbqyde3GzLBfnnhA0Fb1pb+zFM//vWCHan5qeIFuC6
	2JReBMuGa2X4zn4fuVLK1uU+ebENSkYZE+yEC2gVRWBDn20Gbm1BpWhFqS4CTJTTVEFk
	DtIlFE8NVhPR8K4vQOEypQaD5glVw5k+tDVv04KZLDKuABeNgZnctnphbamrKDZg++dP
	5nBLsoLjWzp7KJDiB+Zb3sgvfo/MMU5iCKj2fwSS7ybHxmG8BZnLkM5+0JVplNvoz1Bw
	K4waphg2PBYYIdfH7xjrSEbuJdmrZDKSx9Zf+XafsSta+oOvu+rkbxuaLfiSDm9oHrqa
	LSJQ==
X-Gm-Message-State: APjAAAXXZbgI74yQbDBAkNUa6iiP2s1uyRINRACRgeSK+bsSV2+rExHd
	ku6N/4lEwxyEg8CJiS1SNiPgbmO2VX4XVaEGPSQpzb27EdM=
X-Google-Smtp-Source: APXvYqwQ6eZrEF5mVVCdbZG4GEua2tv9Wk8p3JvCMddLAP/VjZ4cmve670nwDIlEYrFwW8LLwNBPYZeZI7ecCFLvmvo=
X-Received: by 2002:a62:3085:: with SMTP id
	w127mr36485464pfw.170.1558075359948; 
	Thu, 16 May 2019 23:42:39 -0700 (PDT)
MIME-Version: 1.0
From: Gaurav Kalra <gvkalra@gmail.com>
Date: Fri, 17 May 2019 15:42:02 +0900
Message-ID: <CAD5qJ_svyizBB4c0zRDL5W0dkEAs0+KDRVvhAGS3GW-V0kGsag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_rootfs failed (not sure why)
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
X-List-Received-Date: Fri, 17 May 2019 06:42:42 -0000
Content-Type: multipart/alternative; boundary="0000000000005cf58005890fb021"

--0000000000005cf58005890fb021
Content-Type: text/plain; charset="UTF-8"

Hi,

I am new in the Yocto world and have started learning the concepts recently.
A big thanks to the broadcasts on twitch and numerous youtube videos.

What I am doing: Modifying boot2qt (
https://codereview.qt-project.org/gitweb?p=yocto/meta-boot2qt.git;a=shortlog;h=refs/heads/thud)
as my blueprint for raspberry-pi.

Mostly:
1. Modifying the configuration of packages (e.g., systemd conf files)
2. Adding new recipes
3. Keeping Qt updated

"Sometimes", I face this strange error in do_rootfs(), while
installing binutils-lic package inside the image.

[...]
ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install
packages. Command
'/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
--volatile-cache -f
/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/opkg.conf
-t
/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/ipktemp/
-o
/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/rootfs
 --force_postinstall --prefer-arch-to-version   install opkg
packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer
packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules
packagegroup-base-extended packagegroup-core-boot
packagegroup-core-ssh-dropbear packagegroup-core-tools-debug
packagegroup-core-tools-profile run-postinsts' returned -11:
[...]
Installing openssh-lic (7.8p1+git) on root
Downloading
file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/openssh-lic_7.8p1+git-r0_cortexa7t2hf-neon-vfpv4.ipk.
Installing binutils-lic (2.31) on root
Downloading
file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-roo
ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/log.do_rootfs.21682
ERROR: Task
(/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/sources/meta-seesv/meta-seesv-distro/recipes-qt/images/seesv-embedded-qt5-image.bb:do_rootfs)
failed with exit code '1'
[...]

Notice:
In the log "Downloading
file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-roo",
bitbake didn't finish writing the whole path to the console. (I don't know
why)

I have tried "bitbake -c cleansstate binutils" and rebuilding the image
(again same error)

Previously when I faced this error, I deleted everything and started from
scratch (compiling everything) - it worked!
But it takes too long, so this time I thought it's best to discuss in the
mailing list.

Any ideas of what could be the reason?

PS: I am open to share any logs you'd like to have.

--
Gaurav Kalra

--0000000000005cf58005890fb021
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am new in the Yocto world and hav=
e started learning the concepts recently.</div><div>A big thanks to the bro=
adcasts on twitch and numerous youtube videos.</div><div><br></div><div>Wha=
t I am doing: Modifying boot2qt (<a href=3D"https://codereview.qt-project.o=
rg/gitweb?p=3Dyocto/meta-boot2qt.git;a=3Dshortlog;h=3Drefs/heads/thud">http=
s://codereview.qt-project.org/gitweb?p=3Dyocto/meta-boot2qt.git;a=3Dshortlo=
g;h=3Drefs/heads/thud</a>) as my blueprint for raspberry-pi.</div><div><br>=
</div><div>Mostly:</div><div>1. Modifying the configuration of packages (e.=
g., systemd conf files)</div><div>2. Adding new recipes</div><div>3. Keepin=
g Qt updated</div><div><br></div><div>&quot;Sometimes&quot;, I face this st=
range error in do_rootfs(), while installing=C2=A0binutils-lic package insi=
de the image.</div><div><br></div><div>[...]<br></div><div>ERROR: seesv-emb=
edded-qt5-image-1.0-r0 do_rootfs: Unable to install packages. Command &#39;=
/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-rasp=
berrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/=
1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /media/gvkalr=
a/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/=
work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/opkg.c=
onf -t /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/bui=
ld-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5=
-image/1.0-r0/temp/ipktemp/ -o /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b=
494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gn=
ueabi/seesv-embedded-qt5-image/1.0-r0/rootfs =C2=A0--force_postinstall --pr=
efer-arch-to-version =C2=A0 install opkg packagegroup-b2qt-embedded-base pa=
ckagegroup-b2qt-embedded-gstreamer packagegroup-b2qt-embedded-tools package=
group-b2qt-qt5-modules packagegroup-base-extended packagegroup-core-boot pa=
ckagegroup-core-ssh-dropbear packagegroup-core-tools-debug packagegroup-cor=
e-tools-profile run-postinsts&#39; returned -11:<br></div><div>[...]<br></d=
iv><div>Installing openssh-lic (7.8p1+git) on root<br></div><div>Downloadin=
g file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/bui=
ld-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5=
-image/1.0-r0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/openssh-lic_7.8p1+git-=
r0_cortexa7t2hf-neon-vfpv4.ipk.<br>Installing binutils-lic (2.31) on root<b=
r>Downloading file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/sees=
v-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-=
embedded-qt5-image/1.0-r0/oe-roo<br>ERROR: seesv-embedded-qt5-image-1.0-r0 =
do_rootfs: Function failed: do_rootfs<br>ERROR: Logfile of failure stored i=
n: /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-r=
aspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-ima=
ge/1.0-r0/temp/log.do_rootfs.21682<br>ERROR: Task (/media/gvkalra/66bef40b-=
d84f-4ad0-ada6-a025b494ca5d/seesv-distro/sources/meta-seesv/meta-seesv-dist=
ro/recipes-qt/images/seesv-embedded-qt5-image.bb:do_rootfs) failed with exi=
t code &#39;1&#39;<br></div><div>[...]<br></div><div><br></div><div>Notice:=
</div><div>In the log &quot;Downloading file:/media/gvkalra/66bef40b-d84f-4=
ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3=
-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-roo&quot;,</div><div=
>bitbake didn&#39;t finish writing the whole path to the console. (I don&#3=
9;t know why)</div><div><br></div><div>I have tried &quot;bitbake -c cleans=
state binutils&quot; and rebuilding the image (again same error)</div><div>=
<br></div><div>Previously when I faced this error, I deleted everything and=
 started from scratch (compiling everything) - it worked!</div><div>But it =
takes too long, so this time I thought it&#39;s best to discuss in the mail=
ing list.</div><div><br></div><div>Any ideas of what could be the reason?</=
div><div><br></div><div>PS: I am open to share any logs you&#39;d like to h=
ave.<br></div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature">--<br>Gaurav Kalra</div></div></d=
iv></div>

--0000000000005cf58005890fb021--
