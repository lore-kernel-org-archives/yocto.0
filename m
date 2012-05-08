Return-Path: <srimanthula.radhakrishna@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 255BFE0137A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 02:39:55 -0700 (PDT)
Received: by yenl3 with SMTP id l3so6643331yen.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 02:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8WuAzUOAPm4WrkdfO8crjC6sJKMIBldeBuDh9XJkpk4=;
	b=K0wULCWp+hY3rWaiG2t3tVfwRzgfTbUv6oB83ytIMcmD0Asnfccg6r5bPbzjN6Hqz3
	wx5saxEtr7QFxInqWYFYlZmIi+YU3WlF30oU4DBgsL+Z3Z2sTzvyowuF7FjFWiJsJgwR
	rggjXoY16d4M0f1vWNFHnu1UxAvEgfsY2JU3l3j+3E76p/0xGC/5ETOiIFGo3yHQ5hDE
	q5GZgYrct/PI93Mzt37g8X0Km/+qw9WwmeT1/R77pT7x4rRNyNgTUPUTC3RCymPG92FC
	XnPtXSAhdYL8EtqGkK/WoocMZiiuID2g+iyxKcBj8qeTvLKeu3yQgy2Bo5AC57xL+r0I
	YHhw==
MIME-Version: 1.0
Received: by 10.236.168.41 with SMTP id j29mr1243231yhl.24.1336469994444; Tue,
	08 May 2012 02:39:54 -0700 (PDT)
Received: by 10.236.174.9 with HTTP; Tue, 8 May 2012 02:39:54 -0700 (PDT)
Date: Tue, 8 May 2012 15:09:54 +0530
Message-ID: <CAPhrxTpxKd=UutkKUuU1hcE=JN3nObzh0aot9x=B4EBJPr3oYw@mail.gmail.com>
From: Radha Krishna Srimanthula <srimanthula.radhakrishna@gmail.com>
To: yocto@yoctoproject.org
Subject: Help with configuring Yocto with an external toolchain
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
X-List-Received-Date: Tue, 08 May 2012 09:39:55 -0000
Content-Type: multipart/alternative; boundary=20cf30549ceb45988604bf832b6d

--20cf30549ceb45988604bf832b6d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have an armv5tej platform for which I need put in place, a toolchain and
a build system. It is in this regard that I need some help:

   1. Can Yocto use an external toolchain (we use CodeSourcery)? If so, how
   do I configure Yocto to use the external toolchain? I went through the
   developers and user manuals of Yocto - am not too sure how to go about
   doing this. Can you please help me with this?
   2. Any of Yocto's in built toolchains support armv5tej? Can someone help
   with more details please?

--
Regards,
Radha
<http://www.sradhakrishna.com>

--20cf30549ceb45988604bf832b6d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I have an armv5tej platform for which I need put in place, a too=
lchain and a build system. It is in this regard that I need some help:<br><=
ol><li>Can Yocto use an external toolchain (we use CodeSourcery)? If so, ho=
w do I configure Yocto to use the external toolchain? I went through the de=
velopers and user manuals of Yocto - am not too sure how to go about doing =
this. Can you please help me with this?</li>
<li>Any of Yocto&#39;s in built toolchains support armv5tej? Can someone he=
lp with more details please?<br></li></ol>--<br>Regards,<br>Radha<br><a hre=
f=3D"http://www.sradhakrishna.com" target=3D"_blank"></a><br>

--20cf30549ceb45988604bf832b6d--
