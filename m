Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CFBCE00C09; Fri,  9 Nov 2018 03:34:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 888A6E0053F
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 03:34:43 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id h192so1094378lfg.3
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 03:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MQfqPF3iF2wvvB8nUKIunFVs5Y/HVFvp5kcf3xcxjoY=;
	b=UT+NBqTW9W10XbHiGuEilJrQeNZLln/W7dCW1wFkV0NQ7v7KJQGMGtqP+7Wlr4tKQd
	C6R0K4oWXAvarU33uC33aZzTdrthrW7c0W742ltcJJ781xC1mmOvarBrWZFXgbCuedDT
	25dXIQowweYyjDgwSenL8+09aV+iVAUPHEFvKe7AUX5ZP0bFMo41jQBPawXjlra1hfec
	QSIop3yRpXQRLHDNxZVbcGaZzccHoU2oxppvGgt/9uYdtAeVMykk7uDpQdJTVHUZGPkw
	Afdbt062ISb6SwO+XOxZtJlwU5bn/uFiGeHGvebf4Idb6gJ2GC4S9E7dvjL4TcX5JETZ
	cSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MQfqPF3iF2wvvB8nUKIunFVs5Y/HVFvp5kcf3xcxjoY=;
	b=SV91xEL0x1AvOfVVlxyRybOMTh27IVDYqacm4pHYiWcLixQc6hQC8/6yA2t1D0YIQI
	BlB4ErERN0w2AxSLD2XM1eONNazjVSfNnmqSg/gLg2XKTb6mQ/sMPTjBzGz+yYaAmnYR
	/2LwBmarUwcPbT/XOjAkCv+O8N0XiB9MhraXbvd7RKNWTU/UgBIvquxu6/dDTeMObYme
	Met+yU58pwe5EAKepP35q4uHNdsfsUUXF2sgkiy2vP2gK/fs/0B7kY93k+0hENR2533t
	TuOSGS2XoivkhXbYRNOWc0O7j8ceVZGfulr+g2U7bQ7yWlMhpYC5jRs/WtjBHcWZkpC4
	bDAw==
X-Gm-Message-State: AGRZ1gLznd7tLJ0EiJwnzVY7KdhHqmhMVGvuHKsCOFvsUjjf4xYLZj9d
	l6dN2esD+HBX3RnnBRwCnIC836WQpY6EQfNGvLmtH8qC
X-Google-Smtp-Source: AJdET5d5i0j1W3tUhP2BhDQn9ajLZHriiR1RFueZNeueFZKm+RDXbWPsPnLm+mEKj4s/16wDPjMLeRY4s2QT/DHKgpg=
X-Received: by 2002:a19:8f45:: with SMTP id r66mr5592751lfd.9.1541763282017;
	Fri, 09 Nov 2018 03:34:42 -0800 (PST)
MIME-Version: 1.0
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Fri, 9 Nov 2018 11:34:30 +0000
Message-ID: <CABj1EzFR3oRx4JOzW3hxJdRmQW_jXZWP4G8sYWfD_+O96xfw_g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: non-existent task do_package_write_ipk
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
X-List-Received-Date: Fri, 09 Nov 2018 11:34:45 -0000
Content-Type: multipart/alternative; boundary="000000000000c0b86a057a39bc77"

--000000000000c0b86a057a39bc77
Content-Type: text/plain; charset="UTF-8"

Hi There,
I'm not able to inherit core-image into my recipe, when I do, I get the
following error:
ERROR: Task do_populate_sdk in .../poky/meta/recipes-core/images/
core-image-base.bb rdepends upon non-existent task do_package_write_ipk in
/home/donal/Projects/farkas/source/meta-my-platform/recipes-tools/system-scripts/
system-scripts.bb
ERROR: Command execution failed: 1

The reason I'm inheriting core-image, is so that I can append a command to
the ROOTFS_POSTPROCESS_COMMAND variable.

The following are the contents of my bb file:

SUMMARY = "Set of common platform tools."
DESCRIPTION = "..."
AUTHOR = "..."
LICENSE = "CLOSED"

inherit core-image

my_post_process_cmd() {
    touch ${IMAGE_ROOTFS}/test
}
ROOTFS_POSTPROCESS_COMMAND += " my_post_process_cmd;"

Any suggestions on how to fix this?

Thank you,
Donal

--000000000000c0b86a057a39bc77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi There,<br>I&#39;m not able to inherit core-image into m=
y recipe, when I do, I get the following error:<br>ERROR: Task do_populate_=
sdk in .../poky/meta/recipes-core/images/<a href=3D"http://core-image-base.=
bb">core-image-base.bb</a> rdepends upon non-existent task do_package_write=
_ipk in /home/donal/Projects/farkas/source/meta-my-platform/recipes-tools/s=
ystem-scripts/<a href=3D"http://system-scripts.bb">system-scripts.bb</a><br=
>ERROR: Command execution failed: 1<div><br></div><div>The reason I&#39;m i=
nheriting core-image, is so that I can append a command to the ROOTFS_POSTP=
ROCESS_COMMAND variable.</div><div><br></div><div>The following are the con=
tents of my bb file:<br><br>SUMMARY =3D &quot;Set of common platform tools.=
&quot;<br>DESCRIPTION =3D &quot;...&quot;<br>AUTHOR =3D &quot;...&quot;<br>=
LICENSE =3D &quot;CLOSED&quot;</div><div><br>inherit core-image</div><div><=
br>my_post_process_cmd() {<br>=C2=A0 =C2=A0 touch ${IMAGE_ROOTFS}/test<br>}=
<br>ROOTFS_POSTPROCESS_COMMAND +=3D &quot; my_post_process_cmd;&quot;<br><b=
r>Any suggestions on how to fix this?</div><div><br></div><div>Thank you,</=
div><div>Donal</div></div>

--000000000000c0b86a057a39bc77--
