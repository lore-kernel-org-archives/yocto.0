Return-Path: <amittomer25@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6623E01626;
	Tue,  1 Oct 2013 00:52:05 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id hu8so4668941vcb.31
	for <multiple recipients>; Tue, 01 Oct 2013 00:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=j9henMVmWBd8ozFLSU/COi+d1Ei5O88ozL2/lOaA0VI=;
	b=LojelnX7uBlRQGy/V0ke9+/VK+5k5hyDFN6/53bng1AYCK2xupadf44SiFozG32PUO
	QOL6kzp/JglJ/UvGkcwOWElJBtkwb0np/4AFLE/kBaO5C1A7kk1egjAWnDVXGkeODLlN
	nByP6fso8VT5ls9yHPJ5U3ZpxjFd7gFfYLx0UMEvmY9mKt6d0pAU4A7bYeAI0/0AXPkH
	5zrFZTHaAEmH/q3LcEdnQa2mHdd67gtHYfJND/+Cm8vIZ/Oq3PnD2lfNZ13ygRAOIFSp
	qvXP/rU1pTeOi1ilqPQ1fvKRnKddqelC16uoSwSFHvX6XqvNPjQIvM6aAWP39XFBX5+1
	lhog==
MIME-Version: 1.0
X-Received: by 10.58.74.38 with SMTP id q6mr26972563vev.9.1380613924322; Tue,
	01 Oct 2013 00:52:04 -0700 (PDT)
Received: by 10.58.215.79 with HTTP; Tue, 1 Oct 2013 00:52:04 -0700 (PDT)
Date: Tue, 1 Oct 2013 13:22:04 +0530
Message-ID: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: yocto-request@yoctoproject.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Provide sftp-client support in yocto
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
X-List-Received-Date: Tue, 01 Oct 2013 07:52:07 -0000
Content-Type: multipart/alternative; boundary=047d7bacbedc88030104e7a93a06

--047d7bacbedc88030104e7a93a06
Content-Type: text/plain; charset=ISO-8859-1

I am new to OpenEmbedded Yocto project and have a requirement to provide
sftp-client support on my target board.

Sftp-server bins are already packed into final image and is installed at

tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openssh/sftp-server

Now ,same way Do I have to install stfp client bins also or is there any
other way to go about it??

Thanks
Amit

--047d7bacbedc88030104e7a93a06
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am new to OpenEmbedded Yocto project and have a requirem=
ent to provide<div style>sftp-client support on my target board.</div><div =
style><br></div><div style>Sftp-server bins are already packed into final i=
mage and is installed at</div>
<div style><br></div><div style>tmp/work/fkm-poky-linux-gnueabi/openssh/6.1=
p1-r3/package/usr/lib/openssh/sftp-server<br></div><div style><br></div><di=
v style>Now ,same way Do I have to install stfp client bins also or is ther=
e any other way to go about it??</div>
<div style><br></div><div style>Thanks</div><div style>Amit=A0</div><div st=
yle><br></div><div style><br></div><div style><br></div><div style><br></di=
v></div>

--047d7bacbedc88030104e7a93a06--
