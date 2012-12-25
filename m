Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 630BFE002AB
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 15:31:45 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id gb30so8409223vcb.12
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 15:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wmy1jwCH8XcP//ZNMuf4SVZmcmS9fW4qz6vxcH0n/yk=;
	b=Tpf8IIlm8uCXVXafK91CXKfh8+A4ETYWgT2UP1JpmIzWz+9UH2YWe38bDW3+6z/6Iu
	c6HBTV1Bohqn2Bl2WbRUl3v+cBkoEVuoG76yXHX53nZwPmBbuMyVmS7OSqaVedNTX/R4
	+NMlDJnBfEc9Z142ez4FUBuM/JCbjB3M3B66udhhQtAj85Fgp3/H8Abn6oNVMkI7l3Mp
	Z6nSh2ZbqvXOqbdLEmCqZRQTxgjtVQM1vZhai67NUgiAQU1XGIBq4k8ayOM5iavp05B/
	UeDDuORRkl4RyK6HKeOcbdw3Dt5OYWnP0sgD08t/2ECUnlKbQsLKPrfs7CLBA7j4kMAf
	JVfw==
MIME-Version: 1.0
Received: by 10.52.23.37 with SMTP id j5mr34200541vdf.56.1356478304634; Tue,
	25 Dec 2012 15:31:44 -0800 (PST)
Received: by 10.58.18.235 with HTTP; Tue, 25 Dec 2012 15:31:44 -0800 (PST)
Date: Wed, 26 Dec 2012 07:31:44 +0800
Message-ID: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: enable netbase network interfaces?
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
X-List-Received-Date: Tue, 25 Dec 2012 23:31:45 -0000
Content-Type: multipart/alternative; boundary=20cf30780a7e7e45a604d1b5b76b

--20cf30780a7e7e45a604d1b5b76b
Content-Type: text/plain; charset=ISO-8859-1

in the "Reference Manual "How do I make sure connected network interfaces
are brought up by default?"  said 2 files need to be added to enable
network interfaces, where can I find template files?
-----------------------------------------------------------------------------------------------------------
The default interfaces file provided by the netbase recipe does not
automatically bring up network interfaces. Therefore, you will need to add
a BSP-specific netbase that includes an interfaces file.
For example, add the following files to your layer:
     meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces
     meta-MACHINE/recipes-bsp/netbase/netbase_5.0.bbappend
------------------------------------------------------------------------------------------------------------

--20cf30780a7e7e45a604d1b5b76b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

in the &quot;Reference Manual &quot;<span style=3D"color:rgb(51,51,51);font=
-family:Verdana,Sans,sans-serif;line-height:24px;background-color:rgb(255,2=
55,255)">How do I make sure connected network interfaces are brought up by =
default?&quot; =A0</span>said 2 files need to be added to enable network in=
terfaces, where can I find template files?<div>
---------------------------------------------------------------------------=
--------------------------------</div><div><div>The default interfaces file=
 provided by the netbase recipe does not automatically bring up network int=
erfaces. Therefore, you will need to add a BSP-specific netbase that includ=
es an interfaces file.</div>
<div>For example, add the following files to your layer:</div><div>=A0 =A0 =
=A0meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces</div><div>=
=A0 =A0 =A0meta-MACHINE/recipes-bsp/netbase/netbase_5.0.bbappend</div></div=
><div>---------------------------------------------------------------------=
---------------------------------------</div>

--20cf30780a7e7e45a604d1b5b76b--
