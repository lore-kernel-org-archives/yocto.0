Return-Path: <linux.mrjimorg@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCDAE006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 15:17:21 -0700 (PDT)
Received: by yenm14 with SMTP id m14so1610145yen.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 15:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=b0uKdhaRpMVDQ3gqZH1MgK9xAowX7OSouASwLusMwkw=;
	b=SkvobMstgewF/GoSfqqcfPZQbSKZrE619zFCRHeiKPCQx3SnWxoA99shvh1yBbKPHr
	GLjpc0CTqFctri3I2kJMgUks18mPFtVnR8bULzJelFlAzAkNc7Jxznqivmkd3Jwlrvd2
	mHesX3bfdfQdzHPIDypSy3VbPqlNTdIRJIDk9i5nUM4YrZXAdn8Q4bxX+mALpYKxxdbc
	77y8/tFAXTJ9aa0cWlvSVohif0N9O4p3q7Nzh7pn7qGTGI0ksqeEED+MVr7OPIA8MD+d
	CRDwml392l3Vw9hhZ8mBIiHhFu3uSuR5bZ9U9x401IwNWA88qJI9aWGd28RBQ4ZgaSkH
	txKA==
MIME-Version: 1.0
Received: by 10.50.222.170 with SMTP id qn10mr225527igc.45.1338502640493; Thu,
	31 May 2012 15:17:20 -0700 (PDT)
Received: by 10.50.170.100 with HTTP; Thu, 31 May 2012 15:17:20 -0700 (PDT)
Date: Thu, 31 May 2012 17:17:20 -0500
Message-ID: <CAH6UwN18AD83hzxDeFLCL8H_FBssoi5bwmQ-EHmWeJd7inMZBg@mail.gmail.com>
From: Jim Rucker <linux.mrjimorg@gmail.com>
To: yocto@yoctoproject.org
Subject: Hello
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
X-List-Received-Date: Thu, 31 May 2012 22:17:21 -0000
Content-Type: multipart/alternative; boundary=14dae93411116ae50904c15c6e3a

--14dae93411116ae50904c15c6e3a
Content-Type: text/plain; charset=ISO-8859-1

I'm fairly new to Yocto and Poky and I have a question that I haven't been
able to find through Google. If there are multiple .bb files in a
directory, how does bitbake choose which one to use?
        Background: I'm inheriting a project from someone and they have a
SRC_URI="git" version and a SRC_URI="file://" version and the git version
is always being called but that server isn't available yet.

--14dae93411116ae50904c15c6e3a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m fairly new to Yocto and Poky and I have a question that I haven&#39=
;t been able to find through Google.=A0If there are multiple .bb files in a=
 directory, how does bitbake choose which one to use?=A0<div>=A0 =A0 =A0 =
=A0 Background: I&#39;m inheriting a project from someone and they have a S=
RC_URI=3D&quot;git&quot; version and a=A0SRC_URI=3D&quot;file://&quot; vers=
ion and the git version is always being called but that server isn&#39;t av=
ailable yet.</div>
<div><br></div><div><br></div>

--14dae93411116ae50904c15c6e3a--
