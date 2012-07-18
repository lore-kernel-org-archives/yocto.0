Return-Path: <vidal.develone@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FECE00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 03:40:07 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1608851ghb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 03:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=NnPNw4SE/mAwqT0f/+gKppoVNYJocDpaptyPjcbGlno=;
	b=yPrYrlS/pcL2ytlqbvzTQaGErAJd5uqWEdmRdKz/dixOU8AQVYT4QodSkejJ2CeFA4
	/tSBPEbfuh2gy4x27isqgrSRc2K6ZRgc69yt5dAWN1crR2OEackInfPlQ7KpRfK4h2qr
	Ci80b4cpj/26XoB0Md+KJ/2iKxkP7M9G8tNYzbs8cHyHgqMfJ9NjbgNGBYePs1K1s9gS
	kzBgCH8p2QZvyUjTftJENWirtFmGBPbYsdtU+AXawvjzY/zzXannzKnHly+ktxe8asbm
	V6ljnNHbjVMBGWC9O9qyFyau7plJKvNZ0w92/A8vYeWeFRgWmZYcQ9gQHpBNtIOzUAuL
	/WJg==
MIME-Version: 1.0
Received: by 10.50.161.198 with SMTP id xu6mr1435797igb.40.1342608007177; Wed,
	18 Jul 2012 03:40:07 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Wed, 18 Jul 2012 03:40:06 -0700 (PDT)
Date: Wed, 18 Jul 2012 04:40:06 -0600
Message-ID: <CANwz6nzPNmX4SOcfCXWjNj7d8GYvDXikgGopxxc98HeWHkN-eA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 10:40:08 -0000
Content-Type: multipart/alternative; boundary=14dae934114157275b04c51849bc

--14dae934114157275b04c51849bc
Content-Type: text/plain; charset=ISO-8859-1

Hello,
On a previous posting Bruce Ashfield posted
***********************************

I know that we had to disable
PREEMPT to get some of the mmc's to detect and boot, but I can't tell
if this is the same thing from the trace.
***********************************

I did not understand.  Which PREEMPT.
in the file /home/vidal/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.32+git1+d282029891bba5440630a885b940dea5e34e3e2c_1+3ab688a78cac7b2e32afc83376a53370f2bd13b7-r4.0/linux-beagleboard-standard-build/.config
# CONFIG_PREEMPT_RCU is not set
CONFIG_PREEMPT_NONE=y
# CONFIG_PREEMPT_VOLUNTARY is not set
# CONFIG_PREEMPT is not set
For beagleboard XM should this value be CONFIG_PREEMPT_NONE=n
What would be the be the process to modify this and cause bitbake to
build a new kernel?.
Regards, Thanks for any help on getting this to boot.

--14dae934114157275b04c51849bc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>On a previous posting Bruce Ashfield posted<br>******************=
*****************<br><pre>I know that we had to disable
PREEMPT to get some of the mmc&#39;s to detect and boot, but I can&#39;t te=
ll
if this is the same thing from the trace.<br>******************************=
*****<br><br>I did not understand.  Which PREEMPT.<br>in the file /home/vid=
al/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.32+gi=
t1+d282029891bba5440630a885b940dea5e34e3e2c_1+3ab688a78cac7b2e32afc83376a53=
370f2bd13b7-r4.0/linux-beagleboard-standard-build/.config<br>
# CONFIG_PREEMPT_RCU is not set<br>CONFIG_PREEMPT_NONE=3Dy<br># CONFIG_PREE=
MPT_VOLUNTARY is not set<br># CONFIG_PREEMPT is not set<br>For beagleboard =
XM should this value be CONFIG_PREEMPT_NONE=3Dn<br>What would be the be the=
 process to modify this and cause bitbake to build a new kernel?.<br>
Regards, Thanks for any help on getting this to boot.  <br></pre>

--14dae934114157275b04c51849bc--
