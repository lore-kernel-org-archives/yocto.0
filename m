Return-Path: <petertornel@yahoo.com>
Received: from nm27-vm2.bullet.mail.ne1.yahoo.com
	(nm27-vm2.bullet.mail.ne1.yahoo.com [98.138.91.215])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0CBDEE00596
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 11:02:05 -0700 (PDT)
Received: from [98.138.90.51] by nm27.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Apr 2012 18:02:05 -0000
Received: from [98.138.87.7] by tm4.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Apr 2012 18:02:05 -0000
Received: from [127.0.0.1] by omp1007.mail.ne1.yahoo.com with NNFMP;
	11 Apr 2012 18:02:05 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 359873.533.bm@omp1007.mail.ne1.yahoo.com
Received: (qmail 16191 invoked by uid 60001); 11 Apr 2012 18:02:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1334167325; bh=uhGc09YeH3ZBtSyNKfJxP2/j2PqX5skH6BMyUPd3Xns=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=Fxp0touwqAA1rs4O50dxF8HaEaQ4Np1+Q4Oorhd95wtmA4A4hR+dAFrevUxjhmMJz8Yu++7yY01v57NAtXb5JB6uVhzIB0h+7RGKPKF8LjM9zKgpKzXedj34Cn3LECQuH1DempHccJFEdGeJXCRDsG/ncb6uymrfwcjw5rnUTJY=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=CEFAi0gBSwS4MUJE42gLzfJZIDfBVTB4DMm58jajf3Wi+X+s7kyoGu7LzlFklsWkM/lBW46sH/uNSq3CRbl6ZmGb95kMIS/UwLENdQWOhaoca/61utc+Glv4ue6xxDP/7Rd7upTHOMqclTlDbnbOICpP/m7mzZ5ScXAhaiQU0WQ=;
X-YMail-OSG: HPOQEhEVM1m0uYCjeJN5mlWUCAOeQsgwdxZJaHLvex_RrbD
	Anp.14sP77fddkPy7XHxsDvw2zzNREQM9a4X5F8BvdGAGbwAjoc_1vI7rZiy
	2zFs07hZyactUcrhI1C6vbYAT1DKHsdG7vy3Z46fWajRFRGCQRZKOiIxOHqR
	yDVKdWxMWiKE0tAOPiE2jYekFbAvQA7oC9VZALw20tYWTYtPMgEEtnEEM.tC
	lwbhyQcOR7TOPagrr0D0s.yCBM_0NrOB1vZhC_c8fHqiT573DpANm8j9e022
	Y7w2C1QPm5md8GHEWet91XB81CIzPMjejoIUcJDudX0BrmOF7Lgsl4py_Ndl
	98bAxC9IvzJV8e1cSNdXJHfFPlOAcZgJqPQE8zFMgC3BmBlcuAV8ELvFFdAV
	6as0Pvmri3c9sAR1b6zJMr_Vz7578FC8i3YOktCCIaKPW8XgBctOjI9F94lz
	BPi2cF8OnKrbq7TMJt9Yd82c-
Received: from [108.11.41.42] by web122203.mail.ne1.yahoo.com via HTTP;
	Wed, 11 Apr 2012 11:02:05 PDT
X-Mailer: YahooMailWebService/0.8.117.340979
Message-ID: <1334167325.15462.YahooMailNeo@web122203.mail.ne1.yahoo.com>
Date: Wed, 11 Apr 2012 11:02:05 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: confusion about IMAGE_INSTALL and getting packages into rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Apr 2012 18:02:06 -0000
Content-Type: multipart/alternative;
	boundary="1629896970-273702181-1334167325=:15462"

--1629896970-273702181-1334167325=:15462
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I'm working with the poky tree, master branch.=A0 I added a few packages to=
 IMAGE_INSTALL in core-image-minimal.bb.=A0 Everything builds fine, and I c=
an see the built images in each tmp/work subdirectory for my IMAGE_INSTALL =
packages.=A0 =0A=0A=0AHowever, I find that some of the image executables th=
at were part of the packages specified in IMAGE_INSTALL wind up in my core-=
image-minimal rootfs and some don't. =0A=0A=0AIs there a switch or variable=
 that I need to set to direct all packages specified in IMAGE_INSTALL to be=
 installed into my rootfs?=A0 

--1629896970-273702181-1334167325=:15462
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>I'm working with=
 the poky tree, master branch.&nbsp; I added a few packages to IMAGE_INSTAL=
L in core-image-minimal.bb.&nbsp; Everything builds fine, and I can see the=
 built images in each tmp/work subdirectory for my IMAGE_INSTALL packages.&=
nbsp; <br></div><div><br></div><div>However, I find that some of the image =
executables that were part of the packages specified in IMAGE_INSTALL wind =
up in my core-image-minimal rootfs and some don't. <br></div><div><br></div=
><div>Is there a switch or variable that I need to set to direct all packag=
es specified in IMAGE_INSTALL to be installed into my rootfs?&nbsp; <br></d=
iv><div><br></div><div><br></div><div><br></div><div><br></div></div></body=
></html>

--1629896970-273702181-1334167325=:15462--
