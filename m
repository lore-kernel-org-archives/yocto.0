Return-Path: <maniacbug@ymail.com>
Received: from nm24-vm2.bullet.mail.ne1.yahoo.com
	(nm24-vm2.bullet.mail.ne1.yahoo.com [98.138.91.212])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 14489E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 19:22:21 -0700 (PDT)
Received: from [98.138.90.48] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jun 2012 02:22:20 -0000
Received: from [98.138.88.237] by tm1.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jun 2012 02:22:20 -0000
Received: from [127.0.0.1] by omp1037.mail.ne1.yahoo.com with NNFMP;
	27 Jun 2012 02:22:20 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 535877.84972.bm@omp1037.mail.ne1.yahoo.com
Received: (qmail 44233 invoked by uid 60001); 27 Jun 2012 02:22:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1340763740; bh=VnS6RgNMOBlxnk8zXgEPPs7hE/WHzxzzS/q3DYPcsY8=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=1XrhA3anQTUOjyHS+ErXb484lso94Q0jFZHppeYVsefDMhnyPEp+tULyJR71cf+8Ea11fynudhJG56vu12t36JZXKmIcLVeTABQkYcHiKsp5ikDnHAqtjKOHoA0lnrioeAROdoP9cdbwlVxB5n1NAm0CfhVJL7z7LDBQhPciLtU=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=FH0/5D2RRmyBff1sD1iaoEzRvEE8pmmH2gPni6wWzzeLOef89EKvOIIqR8IkIWSIVulM3SHhcRHZKQQE6XS7pwrye7bjnmEAcPgEV118aiNYkwncSABtAaD2AuAqP0Zw+l84P3T2ko8vTAC23EANXPycKaROt3pyKJ/KohwCQqg=;
X-YMail-OSG: MhUxO1EVM1ka6GvDkg9gxHvtTNOAiTElM7.L8vGdpG6A5Ek
	fQV_xMmaHzBtcpvRLyNeQ80Ug8fkNfRw2zcLyugSfVUDwN1kX7BSDfQH9yLt
	6cdxhWu4fOMR5CL5w45pcDZ8JTHKwj97EKkQoahUKAGQnwqSO8F5Xs_m0TzF
	XCLEWAmezygs.vDwKa5ObyPU7Kom3MjKcK97VI_0vaVAKNG.Xu0tPrYEJ2yZ
	GOHJiPYdth4lMvo7ry.nW6C6FowyQgmoos8Zqpy0oyAtTxHVkuYX7g.9GQbx
	.669BoLCvfJCES4oH.xYKd1yeX4tQ.W8lCx.BB7qtWIeyZ2VGmM3o7Bd7I0H
	7FFw_wrC9C1pwo.TMPCnMl1nMHd__3AOQMsgzUl.Q5VGBU7034UlgaoFVA0z
	qthXrFWV.yOiEBKO9AUBvSqt8Gu9ytwWJyV_SnSGe_NFm3Y0f5lUPaQBEO4Q
	penhiVwilBDf99.sWvXIoj_0_6grK5XcOudZj
Received: from [50.135.220.100] by web121605.mail.ne1.yahoo.com via HTTP;
	Tue, 26 Jun 2012 19:22:20 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
Message-ID: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
Date: Tue, 26 Jun 2012 19:22:20 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: How to include libstdc++ in an image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maniacbug <maniacbug@ymail.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 02:22:21 -0000
Content-Type: multipart/alternative;
	boundary="2053635335-467224406-1340763740=:43451"

--2053635335-467224406-1340763740=:43451
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi.  I am using denzil, trying to build a core-image-minimal with =0Alibstd=
c++ installed.  I want to cross-develop in c++, and run the =0Aresulting ap=
ps on the image.  For now, I am using qemu-arm as the =0Amachine.  I've bee=
n able to build and run core-image-minimal out of the =0Abox. build the cro=
ss tools, and build apps using the cross tools (and =0Aeven add ssh to the =
image).  What I cannot figure out how to do is get =0Alibstdc++ (and libgcc=
1 and libc6) onto the target machine. =0A=0AThe task-core-standalone-sdk-ta=
rget looks super promising, =0Aseeming to contain the exact pieces I need. =
 I thought I could add this =0Ato the IMAGE_INSTALL line in core-image-mini=
mal.bb, and have the libs =0Ashow up.  This didn't happen, so clearly I hav=
e some more to learn about poky. =0A=0ACan anyone advise the appropriate wa=
y to inject libsdtc++ (and its dependencies) into a poky image?=A0 Please n=
ote that I do not need to compile/link apps on the target, only run them.=
=0A=0A=0AThanks!=0A

--2053635335-467224406-1340763740=:43451
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ta=
homa, new york, times, serif;font-size:12pt"><div>Hi.  I am using denzil, t=
rying to build a core-image-minimal with =0Alibstdc++ installed.  I want to=
 cross-develop in c++, and run the =0Aresulting apps on the image.  For now=
, I am using qemu-arm as the =0Amachine.  I've been able to build and run c=
ore-image-minimal out of the =0Abox. build the cross tools, and build apps =
using the cross tools (and =0Aeven add ssh to the image).  What I cannot fi=
gure out how to do is get =0Alibstdc++ (and libgcc1 and libc6) onto the tar=
get machine.=0A</div><div><br></div><div>The task-core-standalone-sdk-targe=
t looks super promising, =0Aseeming to contain the exact pieces I need.  I =
thought I could add this =0Ato the IMAGE_INSTALL line in core-image-minimal=
.bb, and have the libs =0Ashow up.  This didn't happen, so clearly I have s=
ome more to learn about=0A poky.=0A</div><div><br></div><div>Can anyone adv=
ise the appropriate way to inject libsdtc++ (and its dependencies) into a p=
oky image?&nbsp; Please note that I do not need to compile/link apps on the=
 target, only run them.<br></div><div><br></div><div>Thanks!<br></div></div=
></body></html>

--2053635335-467224406-1340763740=:43451--
