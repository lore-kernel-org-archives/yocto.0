Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFA18E00C1E; Fri, 26 May 2017 05:53:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B39E00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 05:53:08 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id k91so8766582ioi.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 05:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=03EGcTHteHpGRT3F7RnanWrE9bdI+gRXBMdYLGZc7JI=;
	b=o/+ZwPFs6oqgQJHQggDfz+DEJCuvQk5ALLHaY/9Crltbt9GxYuet9kJ88YQ0vMsR1q
	5iPfTRgtqj645avuMHWJ585CYEz7lEGzXHiEypQ8nlDBV/j1D/3Y4fNPMQLKsSUL0QnF
	Emn3gEkFxPQC/qRh6AffQ8a0F9ig9KS+FowcANU6XGewF728vyPEkTT88T9R32e8nUcU
	AEy1XILP/tlYHjXgvE5FxIOazt5/1guOyVMHJKM7m2Ugt/HQc3aYhB+sMD8HPlNEPFPt
	TbA2uXhR2e0sIZrRBimEdB6+YOezY/J1H778HTTYahNLhU0NYevEEHWqX/El+GuWmXlj
	fvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=03EGcTHteHpGRT3F7RnanWrE9bdI+gRXBMdYLGZc7JI=;
	b=AQZuMReHo3tJEwFEoNlP036Q52kl54u84sLPx8NsFtLFxaVrgt09IDkhc07+nxT7Pb
	uLlXbPO5w96xAi3a7puMQOGDgu/sDF/7Bv0SXBm/LCYExa1+VAwwa5GQ/wru20bEuoME
	eT9fXc5rPH96zFE0+vzeyTIQQFF+0im0v9O9dPCLzrOw0h9BegGMtf2kk7oYuEfwK39V
	knylRZ+KfByWsjRSTgBmLt5CnyMnRgzeqB25jDZ632sDHw7m4+cmWfqsAK81EOzzBJDO
	PdE/6e/4LFt+Etn/A7csVQQncblTgeyV0JBXZAmK2Ssv+NpeGrdKrRCvIhyLhFVHkym6
	Yykg==
X-Gm-Message-State: AODbwcCXst5/BsqVI0ghqXEX3e9cVSzu9ACg1++TfpA5W8DmK+k5xu6A
	aQ+Xy/oThUova7IdTUChhTPJtN4fhvrRs5x8TA==
X-Received: by 10.107.180.130 with SMTP id d124mr1502641iof.47.1495803187451; 
	Fri, 26 May 2017 05:53:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Fri, 26 May 2017 05:52:26 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 26 May 2017 13:52:26 +0100
Message-ID: <CAK18fxHPsQ9XUZq1v3cZ0MymeNA9t+dUhcvtV==XTHF-i6RFnQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Very strange issue where bitbake hangs at do_rootfs
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
X-List-Received-Date: Fri, 26 May 2017 12:53:16 -0000
Content-Type: multipart/alternative; boundary="94eb2c055d08a4718905506cd107"

--94eb2c055d08a4718905506cd107
Content-Type: text/plain; charset="UTF-8"

Hello all,

I moved recently on a new arch linux host and everything works fine with
one exception: when I build a custom distribution based on morty with many
packages including kernel-modules (beaglebone), the build system hangs
without any details. I hooked into package_manager.py RPM install and
streamed output from `process = subprocess.Popen(cmd.split(),
stderr=subprocess.STDOUT, stdout=subprocess.PIPE)` and it seems that it
hangs in different places every time. Output example:

---

Result of kernel-module-industrialio-sw-trigger postinst: 0
debug: Processing
kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone in
/work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/beaglebone/kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
1428:Installing kernel-module.. ######################################## [
55%]
Output from kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone:
Executing kernel-module-lm8333 postinst with: /bin/sh
/work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp.76459
1

# kernel-module-lm8333 - postinst
#!/bin/sh
if [ -z "$D" ]; then
        depmod -a 4.4.55+
else
        # image.bbclass will call depmodwrapper after everything is
installed,
        # no need to do it here as well
        :
fi
Result of kernel-module-lm8333 postinst: 0
debug: Processing
kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone in
/work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/beaglebone/kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
1429:Installing kernel-module.. ######################################## [
55%]
Output from
kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone:
Executing kernel-module-tca8418-keypad postinst with: /bin/sh
/work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp.76459
1

---

If I don't install kernel-modules build succeeds.

Any hints on how to debug this further? I can't seem to find anything
relevant in smart output.


--
Andrei Gherzan

--94eb2c055d08a4718905506cd107
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I moved recently =
on a new arch linux host and everything works fine with one exception: when=
 I build a custom distribution based on morty with many packages including =
kernel-modules (beaglebone), the build system hangs without any details. I =
hooked into=C2=A0package_manager.py RPM install and streamed output from `p=
rocess =3D subprocess.Popen(cmd.split(), stderr=3Dsubprocess.STDOUT, stdout=
=3Dsubprocess.PIPE)` and it seems that it hangs in different places every t=
ime. Output example:<br><br>---<br><br><div><div>Result of kernel-module-in=
dustrialio-sw-trigger postinst: 0</div><div>debug: Processing kernel-module=
-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone in /work/resin/resinos/resin=
-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0=
/rpms/beaglebone/kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b.beaglebon=
e.rpm</div><div>1428:Installing kernel-module.. ###########################=
############# [ 55%]</div><div>Output from kernel-module-lm8333-4.4.55+git0=
+903eb64c68-r22b@beaglebone:</div><div>Executing kernel-module-lm8333 posti=
nst with: /bin/sh /work/resin/resinos/resin-beaglebone/build/tmp/work/beagl=
ebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp=
.76459 1</div><div><br></div><div># kernel-module-lm8333 - postinst</div><d=
iv>#!/bin/sh</div><div>if [ -z &quot;$D&quot; ]; then</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 depmod -a 4.4.55+</div><div>else</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 # image.bbclass will call depmodwrapper after everything is i=
nstalled,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # no need to do it here as =
well</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 :</div><div>fi</div><div>Result =
of kernel-module-lm8333 postinst: 0</div><div>debug: Processing kernel-modu=
le-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone in /work/resin/res=
inos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-im=
age/1.0-r0/rpms/beaglebone/kernel-module-tca8418-keypad-4.4.55+git0+903eb64=
c68-r22b.beaglebone.rpm</div><div>1429:Installing kernel-module.. #########=
############################### [ 55%]</div><div>Output from kernel-module-=
tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone:</div><div>Executing =
kernel-module-tca8418-keypad postinst with: /bin/sh /work/resin/resinos/res=
in-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-=
r0/rootfs///oe_install/tmp/rpm-tmp.76459 1</div></div></div><div><br></div>=
<div>---</div><div><br></div><div>If I don&#39;t install kernel-modules bui=
ld succeeds.=C2=A0</div><div><br></div><div>Any hints on how to debug this =
further? I can&#39;t seem to find anything relevant in smart output.</div><=
div><br></div><br clear=3D"all"><div><div class=3D"gmail-m_2188966510632591=
618gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>And=
rei Gherzan</div></div></div></div></div>
</div>

--94eb2c055d08a4718905506cd107--
