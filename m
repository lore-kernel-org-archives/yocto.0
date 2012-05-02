Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E79F2E0030B
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:16:10 -0700 (PDT)
Received: by werc12 with SMTP id c12so617397wer.35
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 08:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=/9hdM23/HZM4puSZNN1yL0XSOOiUTM1q24E8EJrwTWg=;
	b=l3t5x9GAlKmeqc5jsJUDP8h5lfIAgsRhKuxLfcncsQ5GlSbKmbnL1VOlEt3i3rNVyo
	O8ZQD3LtOvjzeyOkUEGdu8NmgUHTHf9h8oC6hse5UmRkUltaj7EoMInZu0AdcX0oIAQq
	bXGKUbrqRSqyqxrHXYM/H6f5iIxd7ErtdmIxWaKGfIsqUWBYdwlXatC2yQ4BbUZTki5y
	dVtI/R/Ck1AmbTxRdA4E/xjLXYyQEn4uSqP2+wBTtLYteUIx3p0tKE+O3cI2FAjdjGOW
	hu93xH/Hf+Edm4UuKQVA2oI+8G031DHs253CVh6x1L1UmTFFUElAELf7m3DGSEcoY0Pq
	lC2g==
Received: by 10.180.81.166 with SMTP id b6mr464198wiy.0.1335971769977;
	Wed, 02 May 2012 08:16:09 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id fl2sm7540352wib.2.2012.05.02.08.16.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 May 2012 08:16:09 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 2 May 2012 17:16:07 +0200
Message-Id: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:16:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3C6D1943-9C0C-4553-991E-B03F81E28E93"

--Apple-Mail=_3C6D1943-9C0C-4553-991E-B03F81E28E93
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      Is it not necessary to run

sudo dpkg-reconfigure dash

with Poky 1.2 on Ubuntu 12.04 ?

It is not mentioned in the latest yocto documentation:

=
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs=
.html

However, the previous version documentation mentions it:

=
http://www.yoctoproject.org/docs/1.1.1/yocto-project-qs/yocto-project-qs.h=
tml

Elvis Dowson=

--Apple-Mail=_3C6D1943-9C0C-4553-991E-B03F81E28E93
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; Is it not necessary to =
run</div><div><br></div><div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">sudo dpkg-reconfigure =
dash</div></div><div><br></div><div>with Poky 1.2 on Ubuntu 12.04 =
?</div><div><br></div><div>It is <b><u>not</u></b> mentioned in the =
latest yocto documentation:</div><div><br></div><div><a =
href=3D"http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-pr=
oject-qs.html">http://www.yoctoproject.org/docs/current/yocto-project-qs/y=
octo-project-qs.html</a></div><div><br></div><div>However, the previous =
version documentation mentions it:</div><div><br></div><div><a =
href=3D"http://www.yoctoproject.org/docs/1.1.1/yocto-project-qs/yocto-proj=
ect-qs.html">http://www.yoctoproject.org/docs/1.1.1/yocto-project-qs/yocto=
-project-qs.html</a></div><div><br></div><div>Elvis =
Dowson</div></body></html>=

--Apple-Mail=_3C6D1943-9C0C-4553-991E-B03F81E28E93--
