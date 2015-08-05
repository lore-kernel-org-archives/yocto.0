Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A574E009E4; Wed,  5 Aug 2015 09:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.110 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm17-vm6.bullet.mail.ne1.yahoo.com
	(nm17-vm6.bullet.mail.ne1.yahoo.com [98.138.91.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B239E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 09:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438792880; bh=L6Xgt+oe9eFDGCCJcUj0mvYDn4fPUXE9w47CDu10kAk=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=M8Dl3VS8CX0a95XesSRO5oC9uE8iR0Xep2nhE+pJQdjvVTCPDSk8iWFXvDeVhc5S5qbGaeBhVbzFNtr1vDbQiBxHPLHRqnAaCb6nhCnnYTKhQbk2HtM6xfIwURiAVW8tm05dsVajjrm8oFgGWD76ukln8hrup891nqSLkvlJoMGc08iAZOUOp0qjAWgcZb271M5kdAcyVLjiQ1I3pnq2/VUBJOx1/bKMN1eS2KXI+JpF6DrWUMsTSQfjHZZ7/DKwXlJdeJ5nBb2EVbzqGj8qkW153QX6r6ajOFqnyAGhw6KrwxzhAbsOucO4Woyyw1F2l5YWbNrp2sXj/VpToU7P2g==
Received: from [98.138.100.114] by nm17.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Aug 2015 16:41:20 -0000
Received: from [98.138.88.232] by tm105.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Aug 2015 16:41:20 -0000
Received: from [127.0.0.1] by omp1032.mail.ne1.yahoo.com with NNFMP;
	05 Aug 2015 16:41:20 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 616522.37104.bm@omp1032.mail.ne1.yahoo.com
X-YMail-OSG: UZD78JUVM1mJ1vSgyO2uhtPPVjUbraouhZM2Lrh.4oQvVWImDqgiO2xVCEyHirE
	rzkwvlmSUHX8fZj90FBLDH8oxmcHFk4f8XmC4MjpvWuPpt64fH8umeYy.S9fHFGS12RkPFXXeC_v
	_9cu3J_seHCNdrKV9E4xgB29JPMVN4adnBttlLWeDR429L43t.jYrmIsvzIoeyzHhBWGfkfH46Zf
	4ETrek6iJVef9V4DvhtE6cnnEACW9E3egsXZ7QBCEGAsaqElpUCQwxlTKvAA4LTxyaK6xGovzzak
	fK2RpO75zos2JRp941wHmkMejI7wWZNL_zoGWAadxPYoPFNlsJrnARmtwt.1BJslAOpPVUu8vGOB
	R.aW.N8Bd7XkILYKUNKZnQvGuS4DjU5WWffOjq9oiHqSnilwWySOgx79rYpxjS4vuakCucg12qBF
	ZclQSHvdU_LXnqDILsEMehvnRjkmfvhQR3bPQKAiSjgV40SV30HojALNSXqkoJ33ySVDjtmKB8Ai
	kKPS4i7m06Slx9aKxtwuJfcaEzu5N7hp.RPtj7p78F4GWz4daDVAwolSggwXJvWY-
Received: by 98.138.101.161; Wed, 05 Aug 2015 16:41:20 +0000 
Date: Wed, 5 Aug 2015 16:40:39 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1299340381.458690.1438792839565.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Compile with ADT and recipe fails builds on target.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Aug 2015 16:41:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_458689_1144170009.1438792839563"

------=_Part_458689_1144170009.1438792839563
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,

Trying to use ADT to compile a package.=C2=A0 The package compiles and inst=
alls on the target core-image-sato for the Raspberry Pi 2 B.=C2=A0 Also try=
ing to create a recipe. see=20
recipe_gtkwave/gtkwave/gtkwave_3.6.66.bb at=20
https://github.com/develone/raspberrypi2_yocto.git
The recipe downloads the source code, unpacks and runs do_configure, but fa=
ils at
=C2=A0ERROR: Function failed: do_qa_configure.

1.) "cd wkg/yocto/RaspberryPi2/poky/"

2.) ". oe-init-build-env"

3.) "bitbale core-image-sato -c populate_sdk"

4.) "sudo tmp/deploy/sdk/poky-glibc-x86_64-core-image-sato-cortexa7hf-vfp-v=
fpv4-neon-toolchain-1.8+snapshot.sh"

5.) "cd ~/"

6.) "tar xfz wkg/yocto/downloads/gtkwave-3.3.66.tar.gz"

7.) "cd gtkwave-3.3.66/"

8.) "source /opt/poky/1.8+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-n=
eon-poky-linux-gnueabi"

9.a) "./configure ${CONFIGURE_FLAGS}"
checking for Tcl configuration... configure: error: Can't find Tcl configur=
ation definitions. Use --with-tcl to specify a directory containing tclConf=
ig.sh

Should the ADT be able to find theses since they are located at
ls /opt/poky/1.8+snapshot/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnu=
eabi/usr/lib/tclConfig.sh
ls /opt/poky/1.8+snapshot/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnu=
eabi/usr/lib/tkConfig.sh
without have to set the path

9.b) "./configure ${CONFIGURE_FLAGS} --with-tcl=3D/home/vidal/wkg/yocto/Ras=
pberryPi2/poky/build/tmp/sysroots/raspberrypi2/usr/lib --with-tk=3D/home/vi=
dal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/raspberrypi2/usr/lib"

This goes further with the following warning

config.status: executing depfiles commands
configure: WARNING: unrecognized options: --with-libtool-sysroot

Thanks in advance.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_458689_1144170009.1438792839563
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1438779077387_39428"><spa=
n>Hello All,<br class=3D""><br class=3D"">Trying to use ADT to compile a pa=
ckage.&nbsp; The package compiles and installs on the target core-image-sat=
o for the Raspberry Pi 2 B.&nbsp; Also trying to create a recipe. see <br c=
lass=3D"">recipe_gtkwave/gtkwave/gtkwave_3.6.66.bb at <br class=3D"">https:=
//github.com/develone/raspberrypi2_yocto.git<br class=3D"">The recipe downl=
oads the source code, unpacks and runs do_configure, but fails at<br class=
=3D"">&nbsp;ERROR: Function failed: do_qa_configure.<br class=3D""><br clas=
s=3D"">1.) "cd wkg/yocto/RaspberryPi2/poky/"<br class=3D""><br class=3D"">2=
.) ". oe-init-build-env"<br class=3D""><br class=3D"">3.) "bitbale core-ima=
ge-sato -c populate_sdk"<br class=3D""><br class=3D"">4.) "sudo tmp/deploy/=
sdk/poky-glibc-x86_64-core-image-sato-cortexa7hf-vfp-vfpv4-neon-toolchain-1=
.8+snapshot.sh"<br class=3D""><br class=3D"">5.) "cd ~/"<br class=3D""><br =
class=3D"">6.) "tar xfz wkg/yocto/downloads/gtkwave-3.3.66.tar.gz"<br class=
=3D""><br class=3D"">7.) "cd gtkwave-3.3.66/"<br class=3D""><br class=3D"">=
8.) "source /opt/poky/1.8+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-n=
eon-poky-linux-gnueabi"<br class=3D""><br class=3D"">9.a) "./configure ${CO=
NFIGURE_FLAGS}"<br class=3D"">checking for Tcl configuration... configure: =
error: Can't find Tcl configuration definitions. Use --with-tcl to specify =
a directory containing tclConfig.sh<br class=3D""><br class=3D"">Should the=
 ADT be able to find theses since they are located at<br class=3D"">ls /opt=
/poky/1.8+snapshot/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/us=
r/lib/tclConfig.sh<br class=3D"">ls /opt/poky/1.8+snapshot/sysroots/cortexa=
7hf-vfp-vfpv4-neon-poky-linux-gnueabi/usr/lib/tkConfig.sh<br class=3D"">wit=
hout have to set the path<br class=3D""><br class=3D"">9.b) "./configure ${=
CONFIGURE_FLAGS} --with-tcl=3D/home/vidal/wkg/yocto/RaspberryPi2/poky/build=
/tmp/sysroots/raspberrypi2/usr/lib --with-tk=3D/home/vidal/wkg/yocto/Raspbe=
rryPi2/poky/build/tmp/sysroots/raspberrypi2/usr/lib"<br class=3D""><br clas=
s=3D"">This goes further with the following warning<br class=3D""><br class=
=3D"">config.status: executing depfiles commands<br class=3D"">configure: W=
ARNING: unrecognized options: --with-libtool-sysroot<br class=3D""><br clas=
s=3D"">Thanks in advance.</span></div><div>&nbsp;</div><div><div>Edward Vid=
al Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</div></div></div></=
body></html>

------=_Part_458689_1144170009.1438792839563--
