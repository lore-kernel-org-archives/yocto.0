Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C98E016B6
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 06:19:18 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id kq14so1167722pab.40
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 06:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VT4FD/85pfV1Mb2n41OHqAvAax8a8bKwpnyGLdbgOXA=;
	b=mCywX58hfKNAzeDAtO1ciNW98h55DOKqTV63fAueZ6ZetBvLz3s9Qr4RCj56de1Oxj
	G4T7giSii/w4dFb3/xmYLHCNRqOdMBL11VihG6v2Lje2MSSyq0YsecXwpqnHxbOjTfj+
	6qLOVoxGPvCX5oOhGstH9sFSOBZCyn+2ar0O7+pDKhYIvxqr4RjEemynX16u/5EeyLCt
	VTBCRhvlY8Z/Jo8F+3zr1WfbC1C3/L1neDQazv1ms2k1fCyG5Lc5L1JryZY0hjP7Ltls
	cCK219LVpBWeN4vojIqqGoDDgFuDaXwFDD357VhCfHxiudKa1NmTqsDR4EKOFJ1rpaH+
	Gbmw==
MIME-Version: 1.0
X-Received: by 10.68.232.74 with SMTP id tm10mr1688912pbc.64.1382534357901;
	Wed, 23 Oct 2013 06:19:17 -0700 (PDT)
Received: by 10.68.104.133 with HTTP; Wed, 23 Oct 2013 06:19:17 -0700 (PDT)
Date: Wed, 23 Oct 2013 16:19:17 +0300
Message-ID: <CABwVrCqDxfdPQW4Nn+ZZi96Z8Wu8HYyGcQAcG_2KSEdpDMgACw@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto toolchain build question
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
X-List-Received-Date: Wed, 23 Oct 2013 13:19:21 -0000
Content-Type: multipart/alternative; boundary=047d7b33d9804ae61904e9685d8e

--047d7b33d9804ae61904e9685d8e
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I have a curiosity:
Take a toolchain that builds for a 32-bits architecture, but breaks for a
64-bits one.
Is there a way to ensure that when builded with Yocto that toolchain will
be generated and used to build target specific recipes.



Thanks,
Alex

--047d7b33d9804ae61904e9685d8e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br><br></div>I have a curiosity=
:<br></div>Take a toolchain that builds for a 32-bits architecture, but bre=
aks for a 64-bits one.<br></div>Is there a way to ensure that when builded =
with Yocto that toolchain will be generated and used to build target specif=
ic recipes.<br>
<br><br><br></div><div>Thanks, <br></div><div>Alex<br></div></div>

--047d7b33d9804ae61904e9685d8e--
