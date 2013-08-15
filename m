Return-Path: <harris.george.267@gmail.com>
Received: from mail-ie0-f194.google.com (mail-ie0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C783E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 15:13:42 -0700 (PDT)
Received: by mail-ie0-f194.google.com with SMTP id w15so540484iea.1
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 15:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=b72frPqymdXZjwepkUaiUkQP7pqp6w3AP352EPCUSGU=;
	b=LMtq7CcCHtxILkfJpYAJytffIfSkXsW8dm4qAkj4PAbaox/vIAVwVDoCSiFdzWOzLw
	6owU3e0Z11fTxvhDbBnSEeHP8fWCOGnAKiJ50g6aa3jkOqnTl4idXELeSX5xDOgJ5oK+
	pW+Ii+TRE2QANQ+HZysILeJA/vkUlLx7iBkQbZeiZ5HG43uWwwljc+x2699flt4pIf4j
	xFfhZjTZrUL7f9pTuLNEFFw6GLuO9kCM/xxlOmq8PLLR+WcnyxYkVQem31a15Klj8nPD
	sBsyt76Fg8hBo30ljiRPvc8syAvqersDYdNnBO2Qlw0FAOLtPAToJEY55gC9SPF2KGtw
	f/Qw==
MIME-Version: 1.0
X-Received: by 10.50.171.229 with SMTP id ax5mr3319997igc.16.1376604821657;
	Thu, 15 Aug 2013 15:13:41 -0700 (PDT)
Received: by 10.42.205.196 with HTTP; Thu, 15 Aug 2013 15:13:41 -0700 (PDT)
Date: Thu, 15 Aug 2013 18:13:41 -0400
Message-ID: <CAH938Ojhjw9Ab1-GAfPcFTzyMLH5dkeiasZznqPEG1RRvKkW3Q@mail.gmail.com>
From: George Harris <harris.george.267@gmail.com>
To: paul.eggleton@linux.intel.com
Cc: yocto@yoctoproject.org
Subject: Re: RFC: automated runtime testing on real hardware
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
X-List-Received-Date: Thu, 15 Aug 2013 22:13:45 -0000
Content-Type: multipart/alternative; boundary=089e0111dffc641d7604e403c9da

--089e0111dffc641d7604e403c9da
Content-Type: text/plain; charset=ISO-8859-1

To this point, our testing strategy uses Yocto, but is not contained within
Yocto. As part of a build, we produce two images: (1) device image, and (2)
image containing everything necessary to run tests against a device. The
second part is important to us, as we want a separation between the device
and tests run against the device. Tests against a device are always
performed across the network, between (1) and (2). We want anyone to easily
be able to run or develop tests without needing to setup a workstation or a
workspace. A separate testing image, runnable in QEMU, allows anyone to
pick up a build and start testing with minimal effort. We also build a
toolchain containing QEMU to ensure that everyone uses the same version and
features of QEMU. Finally, we have many tests, some which take longer than
24 hours to run. We want to parallelize these tests and run them across
multiple systems at the same time. Because of this, we take the output from
a build and run tests. Some tests may make sense to run every build, but
other tests are run periodically throughout the day independent of the
build.

Both our build system and test system are based on Jenkins. One job will
build the code, and another will run tests. The test job is configured to
run multiple types of tests in multiple configurations, all concurrently.

As our tests are always run across the network, tests need not know if the
device under test is a simulation or hardware. Jenkins is used to manage
requests for hardware; if a configuration requires the use of a piece of
hardware, that part of the job blocks until the hardware is available. When
the hardware becomes available, Jenkins will allow that part of the job to
start.

As for the arrangement of the hardware, we have a testbed consisting of
several devices. Each device is connected to the network and hooked up to a
power switch that is connected to the network. When a test is run against a
device, that device is reprogrammed, power cycled, then the tests are run.

To answer some of your specific questions:

 * What hardware setup do you use for automated testing?
>
There is a testbed of devices, each connected to the network with a fixed
IP address. Jenkins is used to run tests, and also manages access to
hardware via labels. When a Jenkins test job requires a piece of hardware
and that hardware is available, a configuration file is used to map the
device to use to its IP address. From there, tests are run against the
device.

 * Do you use any software to manage the hardware? Does this include any
> existing open source tools?
>
The only software we used to manage the hardware is Jenkins. We do use
other software to manipulate the hardware. For example, a power switch
accessible over the network, a DHCP server to assign the proper address,
etc.

Likely this will not help you develop a hardware testing solution in Yocto.
Maybe it will give you a data point though.

- George

--089e0111dffc641d7604e403c9da
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>To this point, our testing strategy uses Yocto, but i=
s not contained within Yocto. As part of a build, we produce two images: (1=
) device image, and (2) image containing everything necessary to run tests =
against a device. The second part is important to us, as we want a separati=
on between the device and tests run against the device. Tests against a dev=
ice are always performed across the network, between (1) and (2). We want a=
nyone to easily be able to run or develop tests without needing to setup a =
workstation or a workspace. A separate testing image, runnable in QEMU, all=
ows anyone to pick up a build and start testing with minimal effort. We als=
o build a toolchain containing QEMU to ensure that everyone uses the same v=
ersion and features of QEMU. Finally, we have many tests, some which take l=
onger than 24 hours to run. We want to parallelize these tests and run them=
 across multiple systems at the same time. Because of this, we take the out=
put from a build and run tests. Some tests may make sense to run every buil=
d, but other tests are run periodically throughout the day independent of t=
he build.<br>
<br></div><div>Both our build system and test system are based on Jenkins. =
One job will build the code, and another will run tests. The test job is co=
nfigured to run multiple types of tests in multiple configurations, all con=
currently.<br>
</div><div><br></div><div>As our tests are always run across the network, t=
ests need not know if the device under test is a simulation or hardware. Je=
nkins is used to manage requests for hardware; if a configuration requires =
the use of a piece of hardware, that part of the job blocks until the hardw=
are is available. When the hardware becomes available, Jenkins will allow t=
hat part of the job to start.<br>
<br></div><div>As for the arrangement of the hardware, we have a testbed co=
nsisting of several devices. Each device is connected to the network and ho=
oked up to a power switch that is connected to the network. When a test is =
run against a device, that device is reprogrammed, power cycled, then the t=
ests are run.<br>
</div><div><br></div><div>To answer some of your specific questions:<br></d=
iv><div><br><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote">=A0* What har=
dware setup do you use for automated testing?<br>
</blockquote>There is a testbed of devices, each connected to the network w=
ith a fixed IP address. Jenkins is used to run tests, and also manages acce=
ss to hardware via labels. When a Jenkins test job requires a piece of hard=
ware and that hardware is available, a configuration file is used to map th=
e device to use to its IP address. From there, tests are run against the de=
vice.<br>
</div><div><br><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote">=A0* Do yo=
u use any software to manage the hardware? Does this include any <br>existi=
ng open source tools?<br>
</blockquote></div><div>The only software we used to manage the hardware is=
 Jenkins. We do use other software to manipulate the hardware. For example,=
 a power switch accessible over the network, a DHCP server to assign the pr=
oper address, etc.<br>
</div><div><br></div><div>Likely this will not help you develop a hardware =
testing solution in Yocto. Maybe it will give you a data point though.<br><=
/div><div><br></div><div>- George<br></div></div>

--089e0111dffc641d7604e403c9da--
