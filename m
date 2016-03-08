Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73A01E0083D; Tue,  8 Mar 2016 06:10:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74009E006AE
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 06:10:21 -0800 (PST)
Received: by mail-lb0-f181.google.com with SMTP id x1so19541921lbj.3
	for <yocto@yoctoproject.org>; Tue, 08 Mar 2016 06:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Y0LY/ESPGZt/5EOavrE6+Qk0z2TAcpmmrjj+mcfrVQM=;
	b=K7GA2HKkpABMJQb39p8yKgA8Co4N/J2dxAtcTU9O55r5dpVJ4YWN0zdJmdgiPOpKh4
	u+Z3FRGrRdkPZdA9STYzElGphLTlD+uIV+xfhaw5QkFU9fxS+3+s+yh00YphK/o8vRdt
	LQEz0uAULhdoHi9bi1CZKBvNxKXDBxIRspD/mYzuwI4VejLG6zmcCZ90HodWGI4mVUy5
	lsOiuVmvOMlo18ktLLAwkLGYf/+SQvnlQn5EeW7gUsSpB33vmZZE4RoQf4u4YLHPX+aY
	I71CgREtzZj9EGmq+I4krsMr1zMXjNkOyUFC80VxNW0m4T7sRUX7dvdDH73DvSoP7AII
	pgPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Y0LY/ESPGZt/5EOavrE6+Qk0z2TAcpmmrjj+mcfrVQM=;
	b=VGvE69P2tASH5dniIgItOVShJsvVIgCXO3S9XkfKeyfF+2iFPR1eQ11G+PlyCa2g4t
	i+fVnTLuZkMEhoinnSiXYv7pEzzgh9h6svyUaV02TC1Z02U0AWE4fxxQQl3pPrsfqCDf
	zFpHZukXoUBb0cieP0sJiX66w1XQH8VIiQI+DGWqR305h71auoco2vWcgONbsFU3mQPy
	8w8ZbTyMMLTNfO8SQyLThSiJic0KMhBe4twIwPTROK4D0etBKdAV1UrNEHzJcVdA5URR
	JH68G38Hgx5ODPkZlXE0WOOua/rw5ECWiaGpVqCkyBuWzuk/5pDYfGh+r0lrNgp/mR2M
	D/6g==
X-Gm-Message-State: AD7BkJISIBxI23X/ZBeHB3Y91LlIL4CdgxM1mkZvn/2MFJMRXYjsrP5iNLVgl65VGD+OJc055bR8CCTfPm33aw==
MIME-Version: 1.0
X-Received: by 10.25.212.207 with SMTP id l198mr9824047lfg.163.1457446219696; 
	Tue, 08 Mar 2016 06:10:19 -0800 (PST)
Received: by 10.25.41.139 with HTTP; Tue, 8 Mar 2016 06:10:19 -0800 (PST)
Date: Tue, 8 Mar 2016 14:10:19 +0000
Message-ID: <CABatt_yxV953+dGoK-4P+FHOX55qgP=M3NVFCRZ72vd9FY+0yQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: systemd, dpkg and read-only-rootfs
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
X-List-Received-Date: Tue, 08 Mar 2016 14:10:23 -0000
Content-Type: multipart/alternative; boundary=001a1141228c34509e052d8a246f

--001a1141228c34509e052d8a246f
Content-Type: text/plain; charset=UTF-8

Hi,

I'm using the Jethro branch to build a system that uses dpkg for a package
installer and systemd for the init manager.  Recently I took the plunge and
added read-only-rootfs and have found a few "features" that I thought I
would share.

1) dpkg-configure service fails.
This service looks like it's a first time boot action that runs dpkg
--configure -a which I assume is to finish all half installed packages that
needed to be finished on the real target because it couldn't be installed
during do_rootfs.  This actually succeeds as none of my packages are half
configured, otherwise this would fail.  The problem lies when it tries to
disable itself, it looks like systemctl disable call tries to update
symlink in /etc/systemd.  I have tried remounting rw then disabling and
then remount ro which I'm hoping will work, if not I will remove as I have
a first boot script for factory builds and will move to there.

2) There are a bunch of configuration files in /usr/lib/tmpfiles.d that
clash with files/directories that have already been created by Yocto which
only throws warnings but the files/directories that it tries to create in a
read-only rootfs cause the systemd-tmpfiles-setup.service to fail.  I've
patched the files in the systemd source directory to work around this, just
testing now.

3) It looks like Yocto mount binds /var/lib into tmpfs (/var/volatile/lib),
base-files recipe.  Now the dpkg database files are in this directory so
I'm guessing this will stop me from doing upgrades.  We don't use apt-get
but implement our own package manager so I was hoping to stop all services
remount rootfs as rw, perform upgrade, remount rootfs as ro.
Not sure what to do about this one, I could try and move dpkg database
files to somewhere else, might throw up other problems.  Or mount bind all
directories in /var/lib except dpkg?? Thoughts appreciated.

Best Regards,
Martin.

--001a1141228c34509e052d8a246f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br><br>I&#39;m usin=
g the Jethro branch to build a system that uses dpkg for a package installe=
r and systemd for the init manager.=C2=A0 Recently I took the plunge and ad=
ded read-only-rootfs and have found a few &quot;features&quot; that I thoug=
ht I would share.<br><br></div>1) dpkg-configure service fails.<br></div>Th=
is service looks like it&#39;s a first time boot action that runs dpkg --co=
nfigure -a which I assume is to finish all half installed packages that nee=
ded to be finished on the real target because it couldn&#39;t be installed =
during do_rootfs.=C2=A0 This actually succeeds as none of my packages are h=
alf configured, otherwise this would fail.=C2=A0 The problem lies when it t=
ries to disable itself, it looks like systemctl disable call tries to updat=
e symlink in /etc/systemd.=C2=A0 I have tried remounting rw then disabling =
and then remount ro which I&#39;m hoping will work, if not I will remove as=
 I have a first boot script for factory builds and will move to there.<br><=
br></div>2) There are a bunch of configuration files in /usr/lib/tmpfiles.d=
 that clash with files/directories that have already been created by Yocto =
which only throws warnings but the files/directories that it tries to creat=
e in a read-only rootfs cause the systemd-tmpfiles-setup.service to fail.=
=C2=A0 I&#39;ve patched the files in the systemd source directory to work a=
round this, just testing now.<br><br></div>3) It looks like Yocto mount bin=
ds /var/lib into tmpfs (/var/volatile/lib), base-files recipe.=C2=A0 Now th=
e dpkg database files are in this directory so I&#39;m guessing this will s=
top me from doing upgrades.=C2=A0 We don&#39;t use apt-get but implement ou=
r own package manager so I was hoping to stop all services remount rootfs a=
s rw, perform upgrade, remount rootfs as ro. <br></div>Not sure what to do =
about this one, I could try and move dpkg database files to somewhere else,=
 might throw up other problems.=C2=A0 Or mount bind all directories in /var=
/lib except dpkg?? Thoughts appreciated.<br><br></div>Best Regards,<br></di=
v>Martin.<br><div><div><div><div><div><div><div><div><br></div></div></div>=
</div></div></div></div></div></div>

--001a1141228c34509e052d8a246f--
