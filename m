Return-Path: <gerardmccabe@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90737E00B3D; Tue, 24 Nov 2015 08:16:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gerardmccabe[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F62E00AF2
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:16:02 -0800 (PST)
Received: by lfdl133 with SMTP id l133so27185930lfd.2
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZdwV5dJs4OCBUWRq/s4yNphYpvRXGaGrg4tFEfmjXJI=;
	b=GIdBK9eeLvHdMCqGT0z+8G78mz+w0+6zuCSBlVGmSrvg3xl1Y6SDX0RmglZRDAv6DC
	qTAYFKrkaKUJ9j2uzzMw9avm6E45hPjUgW/Wrgha2LLKjhCbWbAqB0AYuyrIHn0p/pEk
	zZWUwG4nIdJOTy7HuXAKuK4V/9tKQLUK3gP03WC36FGhbzM2mpUrqLDSbTXufJqfz0L0
	Gzeo7Cr0mTobsid1C1ASSVYZPE+XsV0gm3OYHiZVmM9CTHmbIcpOCtT959UfWTf3l7K+
	fzV6VA7rBRqE57bOhP4oKi61tW+DML5a5Q2wUrliIJ7EoUZry7nbUU5o+6EFNK2hPVH8
	4qNQ==
MIME-Version: 1.0
X-Received: by 10.112.17.65 with SMTP id m1mr2460770lbd.132.1448381761113;
	Tue, 24 Nov 2015 08:16:01 -0800 (PST)
Received: by 10.25.162.17 with HTTP; Tue, 24 Nov 2015 08:16:01 -0800 (PST)
Date: Tue, 24 Nov 2015 16:16:01 +0000
Message-ID: <CAD-66OGhuQ09Ai5FMMJyrTrXrpnAEY93cwPD43BEtCrHAA4Z2g@mail.gmail.com>
From: Gerard Mc Cabe <gerardmccabe@gmail.com>
To: yocto@yoctoproject.org
Subject: Weston Compositor on Yocto core-image-weston-beaglebone
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
X-List-Received-Date: Tue, 24 Nov 2015 16:16:06 -0000
Content-Type: multipart/alternative; boundary=001a11c3cd9e5edb4d05254ba891

--001a11c3cd9e5edb4d05254ba891
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Im trying to run the weston compositor on a beaglebone black with yocto
core-image-weston. Its failing when trying to load the gl-renderer.so
module. Please see below the terminal output.

I've searched online but there=E2=80=99s not much available on this subject=
. Any
advice would be appreciated.

Thanks,

Gerard.



Poky (Yocto Project Reference Distro) 1.6.3 beaglebone /dev/ttyO0

beaglebone login: root
root@beaglebone:~# mkdir -p /tmp/$USER-weston
root@beaglebone:~# chmod 0700 /tmp/$USER-weston
root@beaglebone:~# export XDG_RUNTIME_DIR=3D/tmp/$USER-weston
root@beaglebone:~# weston --tty=3D1
Date: 2015-11-24 UTC
[15:37:47.672] weston 1.4.0
               http://wayland.freedesktop.org/
               Bug reports to:
https://bugs.freedesktop.org/enter_bug.cgi?product=3DWayland&component=3Dwe=
ston&version=3D1.4.0
               Build: 1.4.0-dirty configure.ac: Bump version to 1.4.0
(2014-01-23 20:51:40 -0800)
[15:37:47.673] OS: Linux, 3.14.19-yocto-standard, #1 PREEMPT Thu Nov 19
13:48:10 GMT 2015, armv7l
[15:37:47.674] Starting with no config file.
[15:37:47.674] Loading module '/usr/lib/weston/drm-backend.so'
[15:37:47.683] initializing drm backend
[15:37:47.687] using /dev/dri/card0
[15:37:47.687] Loading module '/usr/lib/weston/gl-renderer.so'
gbm: malformed or no PCI IDfailed to load module:
/usr/lib/gbm/gbm_gallium_drm.so: cannot open shared object file: No such
file or directory
[15:37:47.690] failed to initialize egl
[15:37:47.696] fatal: failed to create compositor
root@beaglebone:~#

--001a11c3cd9e5edb4d05254ba891
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br>Im trying to run the weston compositor on =
a beaglebone black with yocto core-image-weston. Its failing when trying to=
 load the gl-renderer.so module. Please see below the terminal output. <br>=
<br></div><div>I&#39;ve searched online but there=E2=80=99s not much availa=
ble on this subject. Any advice would be appreciated.<br><br></div><div>Tha=
nks,<br><br></div><div>Gerard.<br><br><br></div><div><br></div><div>Poky (Y=
octo Project Reference Distro) 1.6.3 beaglebone /dev/ttyO0<br><br>beaglebon=
e login: root<br>root@beaglebone:~# mkdir -p /tmp/$USER-weston<br>root@beag=
lebone:~# chmod 0700 /tmp/$USER-weston<br>root@beaglebone:~# export XDG_RUN=
TIME_DIR=3D/tmp/$USER-weston<br>root@beaglebone:~# weston --tty=3D1<br>Date=
: 2015-11-24 UTC<br>[15:37:47.672] weston 1.4.0<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"htt=
p://wayland.freedesktop.org/">http://wayland.freedesktop.org/</a><br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Bug reports to: <a href=3D"https://bugs.freedesktop.org/enter_bug.cgi?p=
roduct=3DWayland&amp;component=3Dweston&amp;version=3D1.4.0">https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3DWayland&amp;component=3Dweston&amp;v=
ersion=3D1.4.0</a><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Build: 1.4.0-dirty <a href=3D"http://conf=
igure.ac">configure.ac</a>: Bump version to 1.4.0 (2014-01-23 20:51:40 -080=
0)<br>[15:37:47.673] OS: Linux, 3.14.19-yocto-standard, #1 PREEMPT Thu Nov =
19 13:48:10 GMT 2015, armv7l<br>[15:37:47.674] Starting with no config file=
.<br>[15:37:47.674] Loading module &#39;/usr/lib/weston/drm-backend.so&#39;=
<br>[15:37:47.683] initializing drm backend<br>[15:37:47.687] using /dev/dr=
i/card0<br>[15:37:47.687] Loading module &#39;/usr/lib/weston/gl-renderer.s=
o&#39;<br>gbm: malformed or no PCI IDfailed to load module: /usr/lib/gbm/gb=
m_gallium_drm.so: cannot open shared object file: No such file or directory=
<br>[15:37:47.690] failed to initialize egl<br>[15:37:47.696] fatal: failed=
 to create compositor<br>root@beaglebone:~#<br><br><br></div></div>

--001a11c3cd9e5edb4d05254ba891--
