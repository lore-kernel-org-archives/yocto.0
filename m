Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDBFBE0083D; Mon,  5 Dec 2016 10:04:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBDDBE007AA
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:04:13 -0800 (PST)
Received: by mail-ua0-f181.google.com with SMTP id 12so356619679uas.2
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 10:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=EeneTqGnhWRVntsIIionFAh4cnnCV7GnVvYU6Z6dNVg=;
	b=BtblVGCrlWFxdJX3uMPy4wYRuvU5t/RjsbJzTgSL6ChJc5bxkMIzR959h8Cx0B8AWT
	QBF+67ACUvNAg+BPL/01QOBKkm2yTG9yoJGSUKXwkbZrX+iWQmkDvcKl62zA69P2EXX3
	08Rm05gxO0dhVDlfqpyVRW9s+THT+QhbHkwf0uvz3sYyH0jXNrIv0l54ZQmO4y+typAH
	WbM4XNrYgVaW+VMro/gayI2ExK53gV4NPAcaECSHm48ywQGCP8rE/ZRMB7F4ch5qc7Gc
	LlGIWvnLP1H6k98A3uAldmuWm83bnTmcxZshM+KGcdCuapT7N7QxKuKGlEjoHeTJ4g1T
	CWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EeneTqGnhWRVntsIIionFAh4cnnCV7GnVvYU6Z6dNVg=;
	b=CEZYlcNWQgogZIVjkEIDxex7K+aArmV1ywCJ3JjzaYmZ9Qs5H0lfLVbawrCkRHiFsu
	FfPZw6dbcInOu2EiJdaqTdwrNFL/xZiHAxPUZZIrlYQZ644bGZRMV6fjfI0Dh0bpD63i
	lVhnC/mTcmZvF9xJs2VEYh6bMggs5FZ/3TCziT9aCzN80DJi9UxL25y/RRiVGHkOqd1i
	LWE5hgQtTwF0t8aH50c2bnK3/1KGm1uSyCr1y6OLFfYThhtazbNIWCX9U2QK3XTU03D4
	vtCAIjL4yMV76O1d56pp6C+U2sYZA6Hpc1U537Hq3foYHPglx4/f3+P8kc/FSwaad8Pc
	Dd9g==
X-Gm-Message-State: AKaTC01HBQs41WKtnbXs057n30wwP4N21/6mIzXMjMiIcmMbCARLU4kmlKy5OpDOXqysHcc/cIfv+J0MpCQ2HQ==
X-Received: by 10.159.33.193 with SMTP id 59mr43931608uac.28.1480961052560;
	Mon, 05 Dec 2016 10:04:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.60.199 with HTTP; Mon, 5 Dec 2016 10:04:12 -0800 (PST)
From: Brian Avery <avery.brian@gmail.com>
Date: Mon, 5 Dec 2016 10:04:12 -0800
Message-ID: <CAKV_0ei2fHx-byfoVD85KFEpKkA23jgoVC9PUyK=6gJZQGTugA@mail.gmail.com>
To: openembedded-architecture@lists.openembedded.org, yocto@yoctoproject.org, 
	openembedded-core@lists.openembedded.org
Subject: RFC BuildAppliance future
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
X-List-Received-Date: Mon, 05 Dec 2016 18:04:16 -0000
Content-Type: multipart/alternative; boundary=001a113ad4e276d1920542ed1d49

--001a113ad4e276d1920542ed1d49
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

  Please note, this is going out to 3 lists in an attempt to insure that no
one who would be impacted by this change misses it. Implied spam apology
included.

  The Yocto Project currently provides a virtual machine image called the
Build Appliance (
https://downloads.yoctoproject.org/releases/yocto/yocto-2.2/build-appliance=
/).
This image can be run using either VirtualBox or VMware. It enables you to
build and boot a custom embedded Linux image with the Yocto Project on a
non-Linux development system.  It is not intended for day to day
development use, but instead, is intended to allow users to =E2=80=9Ctry ou=
t=E2=80=9D the
tools even if they do not have access to a Linux system.

  We are considering replacing the VM based Build Appliance with a set of
containers (https://hub.docker.com/r/crops/poky/, or if you want a user
interface (https://hub.docker.com/r/crops/toaster-master/ ).  These
containers currently provide most of the functionality of the Build
Appliance and should shortly be at feature parity with the Build
Appliance.  We are actively adding to and supporting the containers as some
of our developers are using them in their day to day development in order
to benefit from the host isolation and ease with which other distributions
can be tested.

  This is an RFC to see what features in the Build Appliance are important
to you but would not be provided by the container solutions.  If the
community would be just as content using the container approach as using
the VM based Build Appliance image, then we=E2=80=99d be better off depreca=
ting the
Build Appliance and applying those resources elsewhere.  If there are
important features the Build Appliance provides which the container
solution does not, or cannot provide, we=E2=80=99d love to hear what they a=
re!

Thanks in advance for any feedback,

-Brian

an Intel Employee

--001a113ad4e276d1920542ed1d49
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
















<p class=3D"MsoNormal" style=3D"margin-bottom:12.8pt"><span style=3D"font-s=
ize:13pt;font-family:arial;color:rgb(26,26,26)">=C2=A0 Please note, this is=
 going out to 3 lists in an attempt to
insure that no one who would be impacted by this change misses it. Implied =
spam apology included.<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.8pt"><span style=3D"font-s=
ize:13pt;font-family:arial;color:rgb(26,26,26)">=C2=A0 The Yocto Project cu=
rrently provides a virtual machine image
called the Build Appliance (<a href=3D"https://downloads.yoctoproject.org/r=
eleases/yocto/yocto-2.2/build-appliance/"><span style=3D"color:rgb(16,60,19=
2)">https://downloads.yoctoproject.org/releases/yocto/yocto-2.2/build-appli=
ance/</span></a>).
This image can be run using either VirtualBox or VMware. It enables you to
build and boot a custom embedded Linux image with the Yocto Project on a
non-Linux development system.=C2=A0 It is not
intended for day to day development use, but instead, is intended to allow
users to =E2=80=9Ctry out=E2=80=9D the tools even if they do not have acces=
s to a Linux system.<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.8pt"><span style=3D"font-s=
ize:13pt;font-family:arial;color:rgb(26,26,26)">=C2=A0 We are considering
replacing the VM based Build Appliance with a set of containers (<a href=3D=
"https://hub.docker.com/r/crops/poky/"><span style=3D"color:rgb(16,60,192)"=
>https://hub.docker.com/r/crops/poky/</span></a>,
or if you want a user interface (<a href=3D"https://hub.docker.com/r/crops/=
toaster-master/"><span style=3D"color:rgb(16,60,192)">https://hub.docker.co=
m/r/crops/toaster-master/</span></a>
).=C2=A0 These containers currently provide
most of the functionality of the Build Appliance and should shortly be at
feature parity with the Build Appliance.=C2=A0
We are actively adding to and supporting the containers as some of our
developers are using them in their day to day development in order to benef=
it
from the host isolation and ease with which other distributions can be
tested.=C2=A0 <span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.8pt"><span style=3D"font-s=
ize:13pt;font-family:arial;color:rgb(26,26,26)">=C2=A0 This is an RFC to se=
e what features in the Build Appliance are
important to you but would not be provided by the container solutions.=C2=
=A0 If the community would be just as content
using the container approach as using the VM based Build Appliance image, t=
hen
we=E2=80=99d be better off deprecating the Build Appliance and applying tho=
se resources
elsewhere.=C2=A0 If there are important
features the Build Appliance provides which the container solution does not=
, or cannot provide, we=E2=80=99d love to hear
what they are! <span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.8pt"><span style=3D"font-s=
ize:13pt;font-family:arial;color:rgb(26,26,26)">=E2=80=A8Thanks in advance =
for any feedback,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.8pt"><span style=3D"font-s=
ize:13pt;font-family:arial;color:rgb(26,26,26)">-Brian<span></span></span><=
/p>

<p class=3D"MsoNormal">an Intel Employee<span></span></p>

</div>

--001a113ad4e276d1920542ed1d49--
