Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2655E0084E; Sat, 17 Mar 2018 09:32:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (r10kindsofpeople[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A45E00838
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 09:32:25 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id y19-v6so19656768lfd.4
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 09:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JDEAmKjPGwxCCe8sZWCDpZAca8OflQoKbJdtwmsMebU=;
	b=ZH4iVdZV4QtdrMxfsLdQk5elH42xTGcyWaf1CxcDabKCl1h5Qkj14YTFquc33CpHr+
	mMrE0UQToxylLcgQjdodO7XBoiezsARCuwg43NkWKxfB3x3GRFZqKUTp/FV6c1AvF7V8
	bkbAbkN3l6i4pQUL6fYlMMo/Qn04iSPLds45gg/4/euXb64uzgFC3muMjjU6R21rGR6z
	t99+DHY5Qm0wJ3Msu4Pe4kxfx0P05nmoaE6lm6lH9ThN5c4CJC6U0Q4KT7IjZTJNeRWX
	lPKoccft7t1mKkNn8fKw0bkG0rnsWnnWRoym+2g5TdB7kngF2F47CxuCsNFm20XB5Er4
	oCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JDEAmKjPGwxCCe8sZWCDpZAca8OflQoKbJdtwmsMebU=;
	b=lXTYTXiAFHxp9xcz2ed5VY8kGz+jKHORqjJUss0rRUy8XuagzH3j4j+T2MohNw45V9
	UH7e+6GSFuYePXIrbkIUsC1+iV5Igl60Ux4HUwCkf55dEKlpM464/0XBCliQXvq9hvGN
	tWSm9/L04hYQKPE6gQpPdbrnHYjP7EZ1BvX+WRR4HwQFyXbBBWtnoeYvTF001HqF1oju
	ZFbIimkMPuqcZD0UWl/ympQIoZa0fkwHZhFrXSK17uQ6EmScdql47oUjsJMYDbvtcr/K
	bPeMVQyj5awMTqUBU/JH44M4abX1MjOtJxsavg1IxU6BA+Bwq2B02Ee2TqRhc/3SlWgy
	+9vQ==
X-Gm-Message-State: AElRT7FoZHSuO9J+IE/8UXVLq5uqM0jepJ9syGoT3dHlHJLtH5CucTbB
	uhT/vLqlkHDLs9kazZLiteDHt28NnLY98/MsXUXOlA==
X-Google-Smtp-Source: AG47ELvzN2h/u+YtkEduL/7mSrqSksTQpHgGMGl3/h8sartXeYmra8bNyf4bekZFU2lEgJghvId49rXMBJ5QMtn/ilE=
X-Received: by 10.46.33.86 with SMTP id h83mr4008396ljh.54.1521304343711; Sat,
	17 Mar 2018 09:32:23 -0700 (PDT)
MIME-Version: 1.0
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Sat, 17 Mar 2018 16:32:13 +0000
Message-ID: <CAE8H0+VGybDX4udg73E24ie-DxK7_bkVPB3xKWer_gtpr885jQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-raspberrypi systemd rpi0-w bluetooth startup
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
X-List-Received-Date: Sat, 17 Mar 2018 16:32:26 -0000
Content-Type: multipart/alternative; boundary="001a1142c43800941f05679e45de"

--001a1142c43800941f05679e45de
Content-Type: text/plain; charset="UTF-8"

Background:  I'm trying to bring up the pi zero w's bluetooth using
systemd.  Started with rocko and then moved to 'master' of meta-raspberry
pi, sync'd about a week ago after noticing that there were some recent
updates in this area.

There was an initial problem with /dev/serial1 not showing up...I found
udev-rules-rpi.bb, added it to my layer, and when it still didn't show up
in my rootfs, I punted and installed it in /etc/udev/rules.d by hand and
now /dev/serial1 shows up.  Given time, I can probably fix the recipe on my
own, so moving on.

But brcm43438.service still fails on boot.  Despite having
"After=dev-serial1.device" in the service Unit section, it fails with:

Mar 17 16:21:13 raspberrypi0-wifi systemd[1]: Started Broadcom BCM43438
bluetooth HCI.
Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't open serial port:
No such file or directory
Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't initialize device:
No such file or directory
Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service:
Main process exited, code=exited, status=1/FAILURE[[0m
Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service:
Unit entered failed state.[[0m
Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service:
Failed with result 'exit-code'.[[0m

If, after booting and ssh'ing into pi, I restart the service, it starts
successfully.

Any hints about what I might change to get the brcm43438.service to start
correctly the first time (every time)?

John

--001a1142c43800941f05679e45de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Background:=C2=A0 I&#39;m trying to bring up the pi z=
ero w&#39;s bluetooth using systemd.=C2=A0 Started with rocko and then move=
d to &#39;master&#39; of meta-raspberry pi, sync&#39;d about a week ago aft=
er noticing that there were some recent updates in this area.=C2=A0=C2=A0</=
div><div><br></div><div>There was an initial problem with /dev/serial1 not =
showing up...I found <a href=3D"http://udev-rules-rpi.bb">udev-rules-rpi.bb=
</a>, added it to my layer, and when it still didn&#39;t show up in my root=
fs, I punted and installed it in /etc/udev/rules.d by hand and now /dev/ser=
ial1 shows up.=C2=A0 Given time, I can probably fix the recipe on my own, s=
o moving on.</div><div><br></div><div>But brcm43438.service still fails on =
boot.=C2=A0 Despite having &quot;After=3Ddev-serial1.device&quot; in the se=
rvice Unit section, it fails with:</div><div><br></div><div>Mar 17 16:21:13=
 raspberrypi0-wifi systemd[1]: Started Broadcom BCM43438 bluetooth HCI.</di=
v><div>Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can&#39;t open ser=
ial port: No such file or directory</div><div>Mar 17 16:21:14 raspberrypi0-=
wifi hciattach[105]: Can&#39;t initialize device: No such file or directory=
</div><div>Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438=
.service: Main process exited, code=3Dexited, status=3D1/FAILURE[[0m</div><=
div>Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.servic=
e: Unit entered failed state.[[0m</div><div>Mar 17 16:21:14 raspberrypi0-wi=
fi systemd[1]: [[0;1;39mbrcm43438.service: Failed with result &#39;exit-cod=
e&#39;.[[0m</div><div><br></div><div>If, after booting and ssh&#39;ing into=
 pi, I restart the service, it starts successfully.=C2=A0=C2=A0</div><div><=
br></div><div>Any hints about what I might change to get the brcm43438.serv=
ice to start correctly the first time (every time)?</div><div><br></div><di=
v>John</div></div>

--001a1142c43800941f05679e45de--
