Return-Path: <navani.srivastava@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09118E0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 22:09:16 -0700 (PDT)
Received: by lbbgm13 with SMTP id gm13so2225205lbb.35
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 22:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=3UyXv8o7WyPR3KiElPeER6pfFyqIaT8veP1ZFJYLXCU=;
	b=wpEe3Ctdp1ytxBvj1whzefUfsZNTqy86p36fW/h6oJs228dEuh9JkpQMDO2jtr1k9o
	RmbqlUX88TWUdCoWeNTgLfLD+Xd6pYuPSVqGPmir6eKFHZMKe4usfczYbVMwjDvQgw+K
	rTCuARGd1nHzjoxRc8iY7jhSdjT/DkkEQcxEVyO2k5wG6NX9shJ7AxNgp57ZoaF40sFG
	Gg7eTx8c9xWHuXp45aXfvHc+5nISR+7nfFqBEJ6iSrCYIJOnAKsZmJP8Sqll+6OypwqR
	i4jk1lK791/WgbfxXFS4WbUgYOF8/LGkvTThVzpy1cDxN6LmHk+e5vtJDjS/XufPoOtj
	DkMQ==
Received: by 10.112.45.138 with SMTP id n10mr170219lbm.14.1334293755419; Thu,
	12 Apr 2012 22:09:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.97.147 with HTTP; Thu, 12 Apr 2012 22:08:55 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Fri, 13 Apr 2012 10:38:55 +0530
Message-ID: <CA+Z6RkWTQnXWz6=jcwhbCnj05RANLXn_uYXL0cxNnAYzvCa=ag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Unable to Load Kernel Module
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
X-List-Received-Date: Fri, 13 Apr 2012 05:09:17 -0000
Content-Type: multipart/alternative; boundary=f46d0421a891515de004bd88790a

--f46d0421a891515de004bd88790a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am facing problem in loading kernel module at startup. I have added
"kernel-modules" in rootfs image file.
I am getting the below mentioned error-

modprobe: FATAL: Could not load
/lib/modules/2.6.35.3-433-g0fae922/modules.dep: No such file or directory
flexcan flexcan.0: writing ctrl=0x25292004
enable
Yocto (Built by Poky 5.0) 1.0 EBboard ttymxc0

I noticed that I am getting "2.6.35.3" directory under /lib/modules/ . As
per my understanding Poky is supposed to make soft link of "2.6.35.3" to
"2.6.35.3-433-g0fae922". I tried making this soft link manually and it
worked. Can any one please suggest me which changes I need to make in
recipes to create this soft link?

Thanks and Regards
Navani Srivastava

--f46d0421a891515de004bd88790a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am facing problem in loading kernel module at startup. I have =
added &quot;kernel-modules&quot; in rootfs image file. <br>I am getting the=
 below mentioned error-<br><br>modprobe: FATAL: Could not load /lib/modules=
/2.6.35.3-433-g0fae922/modules.dep: No such file or directory<br>

flexcan flexcan.0: writing ctrl=3D0x25292004<br>enable<br>Yocto (Built by P=
oky 5.0) 1.0 EBboard ttymxc0<br><br>I noticed that I am getting &quot;2.6.3=
5.3&quot; directory under /lib/modules/ . As per my understanding Poky is s=
upposed to make soft link of &quot;2.6.35.3&quot; to &quot;2.6.35.3-433-g0f=
ae922&quot;. I tried making this soft link manually and it worked. Can any =
one please suggest me which changes I need to make in recipes to create thi=
s soft link?<br>

<br>Thanks and Regards<br>Navani Srivastava<br><br><br>

--f46d0421a891515de004bd88790a--
