Return-Path: <mail@pramode.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B3EAE00B9F; Fri,  2 Nov 2018 07:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F4AE00971
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 07:28:37 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id q1so1874567otk.0
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 07:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pramode-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=skHHCqo07WssZT2GBgb3gc8v+UBS3XwwbDoVmHNP3MU=;
	b=OYHPgYkb3sP4sZxvIi0E6fFoGcMb8cwAHhBX6ZnTaBh1lQpxCACa7O5qwjEP1L6OFR
	8chYqvzKOYNVKo3710O124u3fmZ2GOxyFhVaxfwcoZ/Q6+PbMMVvKgrWGS5+JqZedg9I
	bBRsQVZRxDvpKyrVQ1QwWV0G69WqBD/HW6Gk2nRtD9YHPHz4//1RZlVuEc6mQoJYi8iD
	Veri1me2LAGN7hlp4AxCzXo3Vp2wziOVvT/coXckLCjlMHt+OrnW4Pi50++cYONbGk0m
	dPSOJS7BSVXqHK61ty4KUxe7ZnlQ0245H1+a8GNjMnv9LlPMtu6tfOyKsMdQocaweBDf
	tfhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=skHHCqo07WssZT2GBgb3gc8v+UBS3XwwbDoVmHNP3MU=;
	b=fu8bpKpkkRmFrydmGxeRseGFyiOhH3aQwE7IK1QcXH7QgXnX6se9i6gXyt3XLkGcEC
	zJhKEQDOwrVD8MDWpkAoprekan7BrkRIyqad/HnVZAS9cHDHyPECQALHxJSmZ5vL5UJQ
	9biYWYEdF2ePX0io+QYkdtUgI7HNM3os5Qy78Xo3/DFVMaRloJ574EdptGxJbmnAONeo
	q48wBSgzRpRTvB+BBbUvpJ2CQ0Ph/cU15JlYdyXWgC05H89ihUazY445R3X5WTzwr2tW
	2bjQLOlWMLmpBWU6jPvg0gHwGul/R1UHnuyvJmAH4dZJEwWyeiMSpMVG2Y0KD2JzJd4n
	W2vA==
X-Gm-Message-State: AGRZ1gJrJI6YyuQ6lwnwTWLhgnZBEzJ0W08ZNbwO3V17eBDMzJqusuvm
	UjGl9GZyNv8IrKsmvQcEIBcU6p5RJU5IVeJv9cr7lnjV/Ww=
X-Google-Smtp-Source: AJdET5eQtmDruSnxJPcglhtIgKlgkwDFi1ayJJ1CObn94jt6K0Uz9H342TPQmY180kHbkSE6aSEMkAznZRruU1FlEkc=
X-Received: by 2002:a9d:5249:: with SMTP id q9mr6029187otg.160.1541168916100; 
	Fri, 02 Nov 2018 07:28:36 -0700 (PDT)
MIME-Version: 1.0
From: "Pramode C.E" <mail@pramode.net>
Date: Fri, 2 Nov 2018 19:58:23 +0530
Message-ID: <CANyNnosHMWBgcLbUo_Q_42ZEjUywzd0X4SRJm02bZZpBmR0Xag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem with including python-paho-mqtt in the Yocto build
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
X-List-Received-Date: Fri, 02 Nov 2018 14:28:38 -0000
Content-Type: multipart/alternative; boundary="000000000000c88ce90579af59f4"

--000000000000c88ce90579af59f4
Content-Type: text/plain; charset="UTF-8"

Hi,

I am doing a "bitbake  -c populate_sdk_ext core-image-base" (yocto 2.5)
with the following line in my local.conf:

CORE_IMAGE_EXTRA_INSTALL += "python-paho-mqtt"

The build fails with the following errors (this is a build which does not
use any sstate-cache from previous builds - it is totally from scratch):

ERROR: Task python-py-native.do_fetch attempted to execute unexpectedly
ERROR: Task python-py-native.do_prepare_recipe_sysroot attempted to execute
unexpectedly
ERROR: Task python-py-native.do_unpack attempted to execute unexpectedly
ERROR: Task python-py-native.do_patch attempted to execute unexpectedly
ERROR: Task python-py-native.do_populate_lic attempted to execute
unexpectedly and should have been setscened
ERROR: Task python-py-native.do_configure attempted to execute unexpectedly
ERROR: Task python-py-native.do_compile attempted to execute unexpectedly
ERROR: Task python-py-native.do_install attempted to execute unexpectedly
ERROR: Task python-py-native.do_populate_sysroot attempted to execute
unexpectedly and should have been setscened
NOTE: Tasks Summary: Attempted 6657 tasks of which 6657 didn't need to be
rerun and all succeeded.

I have verified that inclusion of "python-paho-mqtt" is causing this
problem .. remove that line and the build succeeds.

I had seen such errors previously during eSDK installation, but the fact
that these errors are occuring during the SDK build itself, that too
without using any sstate from previous builds, make me wonder what has gone
wrong. Any pointers will be highly appreciated!

Thanks and regards,
Pramode C.E

--000000000000c88ce90579af59f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I am doing a &quot;bitbake=C2=A0 -c populate_sdk_ext core-image-b=
ase&quot; (yocto 2.5) with the following line in my local.conf:</div><div><=
br></div><div>CORE_IMAGE_EXTRA_INSTALL +=3D &quot;python-paho-mqtt&quot;</d=
iv><div><br></div><div>The build fails with the following errors (this is a=
 build which does not use any sstate-cache from previous builds - it is tot=
ally from scratch):<br></div><div><br></div><div>ERROR: Task python-py-nati=
ve.do_fetch attempted to execute unexpectedly<br>ERROR: Task python-py-nati=
ve.do_prepare_recipe_sysroot attempted to execute unexpectedly<br>ERROR: Ta=
sk python-py-native.do_unpack attempted to execute unexpectedly<br>ERROR: T=
ask python-py-native.do_patch attempted to execute unexpectedly<br>ERROR: T=
ask python-py-native.do_populate_lic attempted to execute unexpectedly and =
should have been setscened<br>ERROR: Task python-py-native.do_configure att=
empted to execute unexpectedly<br>ERROR: Task python-py-native.do_compile a=
ttempted to execute unexpectedly<br>ERROR: Task python-py-native.do_install=
 attempted to execute unexpectedly<br>ERROR: Task python-py-native.do_popul=
ate_sysroot attempted to execute unexpectedly and should have been setscene=
d<br>NOTE: Tasks Summary: Attempted 6657 tasks of which 6657 didn&#39;t nee=
d to be rerun and all succeeded.<br></div><div><br></div><div>I have verifi=
ed that inclusion of &quot;python-paho-mqtt&quot; is causing this problem .=
. remove that line and the build succeeds.</div><div><br></div><div>I had s=
een such errors previously during eSDK installation, but the fact that thes=
e errors are occuring during the SDK build itself, that too without using a=
ny sstate from previous builds, make me wonder what has gone wrong. Any poi=
nters will be highly appreciated!</div><div><br></div><div>Thanks and regar=
ds,</div><div>Pramode C.E<br></div><div><br></div><div><br></div></div></di=
v></div>

--000000000000c88ce90579af59f4--
