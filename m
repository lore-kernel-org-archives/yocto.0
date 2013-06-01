Return-Path: <florianaug@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E98E0151E
	for <yocto@yoctoproject.org>; Sat,  1 Jun 2013 02:01:16 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id i13so942231qae.17
	for <yocto@yoctoproject.org>; Sat, 01 Jun 2013 02:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MyA1tRE7A8W5/lCnX/odFH+hSl3a2EpV31IWB+jGQos=;
	b=AmzvqWB1GPfp0/cdLHwgac2icGcRjJmwqcRq31UjVtRy6R6K1JnkCx7KbVd0Hk2y6z
	PFk7yls0fAmWp6VsCIdowgAyLhVJvW+aFbkPeVveIqAQAxHMZEXKObc4w55qB68191hP
	8pd6rwU31qppJu+WNKlmuEjB0YBpae7PyxPijZIP2dRNTlT0G/R42X7j5k6n4PuX/S1p
	SdiJSlHFWYecUnXOvnOjUBXZ6gOysikhJ960vSQTdKmPQSLgZm2POn9pMFrNNAmz1R9C
	x5A5CaWDiq4K5HvIlTqMi7u5LvDyrlHZXQIPxv8tJW7UINCf6V62dotQt2zKK2FSN4bI
	rcBA==
MIME-Version: 1.0
X-Received: by 10.224.163.6 with SMTP id y6mr11699414qax.47.1370077275062;
	Sat, 01 Jun 2013 02:01:15 -0700 (PDT)
Received: by 10.49.47.75 with HTTP; Sat, 1 Jun 2013 02:01:14 -0700 (PDT)
Received: by 10.49.47.75 with HTTP; Sat, 1 Jun 2013 02:01:14 -0700 (PDT)
Date: Sat, 1 Jun 2013 11:01:14 +0200
Message-ID: <CAPwJhUMczwf56zG0eXQ-kxZJ+3qxtECsmHqbtxpuG+ke54ypnA@mail.gmail.com>
From: Florian Augustin <florianaug@gmail.com>
To: yocto@yoctoproject.org
Subject: Settings for HardFP and some general things
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
X-List-Received-Date: Sat, 01 Jun 2013 09:01:17 -0000
Content-Type: multipart/alternative; boundary=089e0149c4064b872804de13f95a

--089e0149c4064b872804de13f95a
Content-Type: text/plain; charset=ISO-8859-1

Hello experts :)

I'm currently trying to set up Yocto poky for a Wandboard-Solo with i.mx6
solo.
My questions are:
- How can I configure Yocto to use Hard Floating (VFPv3 or better NEON)? I
read some stuff on the net to set DEFAULTTUNE with specific parameters?
- When "MACHINE ??= 'wandboard-solo'" is set where can I find further
informations about what setting are then used? I searched a lot in the
Yocto directory but didn't find anything regarding to this.
- Is it possible to configure the drivers that are compiled to the kernel?
I don't need sound and so on and this should speed up.. If yes, please give
me some information how it's done!

Thank you a lot for your help!!

Best regards,
Florian

--089e0149c4064b872804de13f95a
Content-Type: text/html; charset=ISO-8859-1

<p dir="ltr">Hello experts :)</p>
<p dir="ltr">I&#39;m currently trying to set up Yocto poky for a Wandboard-Solo with i.mx6 solo.<br>
My questions are:<br>
- How can I configure Yocto to use Hard Floating (VFPv3 or better NEON)? I read some stuff on the net to set DEFAULTTUNE with specific parameters?<br>
- When &quot;MACHINE ??= &#39;wandboard-solo&#39;&quot; is set where can I find further informations about what setting are then used? I searched a lot in the Yocto directory but didn&#39;t find anything regarding to this.<br>

- Is it possible to configure the drivers that are compiled to the kernel? I don&#39;t need sound and so on and this should speed up.. If yes, please give me some information how it&#39;s done!</p>
<p dir="ltr">Thank you a lot for your help!!</p>
<p dir="ltr">Best regards,<br>
Florian</p>

--089e0149c4064b872804de13f95a--
