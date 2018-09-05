Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E7AE00A9C; Tue,  4 Sep 2018 22:39:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCFB2E00A54
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 22:39:09 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id d4-v6so6731545qtn.13
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2018 22:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=lfmonOWcjJ+g39AMWJyLgooIRKrZ7+s2PA9/2KG6zZc=;
	b=du9ZyLaBzPgAahl1ogn5421SgTfcvq4icSRlWhfsQTljMsOQ8DfjuHP2YtorqxVgqx
	D7Cv/sb2cReEC58LgyDRrCOxzxu8F7r3c0zMeRhlEPRtSrlsC8kRoXyDFQHW5wd0OEla
	eun1kDEsnwG74juUeoIEPEjHMV1ACpbB+pr2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lfmonOWcjJ+g39AMWJyLgooIRKrZ7+s2PA9/2KG6zZc=;
	b=dYZD37n8ujqYi63K9yJBDn0VN1i5iqM0A+5mKUQ4DG/NdFBkcVJZkX5jkcoGZ2J1+0
	zERc2GtQLD8xjH6HHELFRQp96vMgV7duJhNpvUB9yILVHURLceAQObmWZ5xD1ePPOukq
	0bZ03zP6KvwM6G0/Az8vGUyGP83ZSs5xZCIUWQH4FcEeLhDSVeTCyREqpjo7tMPtfgrc
	APoGn36WeBRF7ErdBHcWBGUldtj7swAwgXby+4Q1PGY6X7NSXYBuDRSLLP1nmgyL/gAo
	FF6fFEwfLKV3fSx5CkmhL3/XcKMsE0MTDMuKQtlZS0V5Ga3e4IRux84N6O11lGPk1edg
	IgKQ==
X-Gm-Message-State: APzg51AeWR1JCUUaWUfP3M0Fc2nAQZUPU71sRJMfbm21pM6vpMIUjOct
	YeL2mnulc76taRQHczeuNqC8bbZmWg/kCGMvqSpUTKuV5iA=
X-Google-Smtp-Source: ANB0VdbnYiARh1BXs8tgaOIu6CcWj7d1omIFZkPyJoZO2xwh35SLImWWd/4A0M1+Sa5j+ZhsNv6XiZrDXqtPQMbtkC4=
X-Received: by 2002:aed:2bc4:: with SMTP id
	e62-v6mr3540539qtd.344.1536125948661; 
	Tue, 04 Sep 2018 22:39:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:3665:0:0:0:0:0 with HTTP;
	Tue, 4 Sep 2018 22:39:08 -0700 (PDT)
From: Ravikiran J <ravikiran.j@mistralsolutions.com>
Date: Wed, 5 Sep 2018 11:09:08 +0530
Message-ID: <CALDHXte7Z+dLUv4LDZAuQMJSRQMmjAp=3AoSQCtnM5LrC99mhA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: ERROR: No manifest generated
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
X-List-Received-Date: Wed, 05 Sep 2018 05:39:10 -0000
Content-Type: multipart/alternative; boundary="0000000000008034c2057519314e"

--0000000000008034c2057519314e
Content-Type: text/plain; charset="UTF-8"

Dear Yocto team,

We have developed some recipe file to install  the firmware binary in the
file system of Yocto.
Recipe file is working fine in *Yocto morty* version but when we tried the
same in the *Yocto sumo* version we got the following error for *bitbake
core-image-minimal*.

*ERROR: core-image-minimal-1.0-r0 do_rootfs: No manifest generated from:
rtl-firmware in
/home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/poky/meta-graco/recipes-graco/firmware/rtl-firmware.bb
<http://rtl-firmware.bb>*
ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/poky/build/tmp/work/rzn1d400_graco-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.28035
ERROR: Task
(/home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
failed with exit code '1'


Recipe file* rtl-firmware.bb <http://rtl-firmware.bb> *content

DESCRIPTION = "RTL 8723BU BT firmware"

LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"

PACKAGE_ARCH = "all"

SRC_URI += " \
    file://rtl8723b_fw.bin \
"

do_install () {
    install -d ${D}${base_libdir}/firmware/
    install -m 755 ${WORKDIR}/rtl8723b_fw.bin ${D}${base_libdir}/firmware/
}

FILES_${PN} += " \
        ${base_libdir}/firmware/rtl8723b_fw.bin \
"


What needs to be done for to avoiding manifest error  ?
Kindly help us to resolve this issue.


Thanks and Regards,
Ravikiran J J

--0000000000008034c2057519314e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Dear Yocto team,</d=
iv><div><br></div><div>We have developed some recipe file to install=C2=A0 =
the firmware binary in the file system of Yocto.</div><div>Recipe file is w=
orking fine in <b>Yocto morty</b> version but when we tried the same in the=
 <b>Yocto sumo</b> version we got the following error for <b>bitbake core-i=
mage-minimal</b>.<br></div><div><br></div><div><b>ERROR: core-image-minimal=
-1.0-r0 do_rootfs: No manifest generated from: rtl-firmware in /home/graco_=
sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/poky/meta-graco/r=
ecipes-graco/firmware/<a href=3D"http://rtl-firmware.bb">rtl-firmware.bb</a=
></b><br>ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_ro=
otfs<br>ERROR: Logfile of failure stored in: /home/graco_sm/1.4.4/GRACO_SM_=
REL_V1.1/Software/U-Boot-and-Linux/sumo/poky/build/tmp/work/rzn1d400_graco-=
poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.28035<br>ER=
ROR: Task (/home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux=
/sumo/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed=
 with exit code &#39;1&#39;<br></div><div><br></div><div><br></div><div>Rec=
ipe file<b> <a href=3D"http://rtl-firmware.bb">rtl-firmware.bb</a> </b>cont=
ent<b><br></b></div><div><b><br></b></div><div>DESCRIPTION =3D &quot;RTL 87=
23BU BT firmware&quot;<br><br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKS=
UM =3D &quot;file://${COREBASE}/LICENSE;md5=3D4d92cd373abda3937c2bc47fbc49d=
690&quot;<br><br>PACKAGE_ARCH =3D &quot;all&quot;<br><br>SRC_URI +=3D &quot=
; \<br>=C2=A0=C2=A0=C2=A0 file://rtl8723b_fw.bin \<br>&quot;<br><br>do_inst=
all () {<br>=C2=A0=C2=A0=C2=A0 install -d ${D}${base_libdir}/firmware/<br>=
=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/rtl8723b_fw.bin ${D}${base_lib=
dir}/firmware/<br>}<br><br>FILES_${PN} +=3D &quot; \<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ${base_libdir}/firmware/rtl8723b_fw.bin \<br>&quot=
;<b><br></b><br></div><div><br></div><div>What needs to be done for to avoi=
ding manifest error=C2=A0 ?<br></div><div>Kindly help us to resolve this is=
sue.</div><div><br></div><div><br></div><div>Thanks and Regards,</div><div>=
Ravikiran J J<br></div><div><br></div></div></div></div>

--0000000000008034c2057519314e--
