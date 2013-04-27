Return-Path: <petertornel@yahoo.com>
Received: from nm40-vm5.bullet.mail.bf1.yahoo.com
	(nm40-vm5.bullet.mail.bf1.yahoo.com [72.30.239.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE6FEE00310
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 07:39:18 -0700 (PDT)
Received: from [98.139.214.32] by nm40.bullet.mail.bf1.yahoo.com with NNFMP;
	27 Apr 2013 14:39:17 -0000
Received: from [98.139.212.224] by tm15.bullet.mail.bf1.yahoo.com with NNFMP;
	27 Apr 2013 14:39:17 -0000
Received: from [127.0.0.1] by omp1033.mail.bf1.yahoo.com with NNFMP;
	27 Apr 2013 14:39:17 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 753981.68256.bm@omp1033.mail.bf1.yahoo.com
Received: (qmail 14582 invoked by uid 60001); 27 Apr 2013 14:39:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1367073557; bh=N5v2vmgQU7BdyvzG7vcqYUOg0DMCvGN/NRP73AnCzf8=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=ez+SNHjDv7ytcNGdzb8Ve0rdY8WPha8THSKvhLeQO9vwIU+cro4rW/1UhP8qhfqk4B6Ijs0FiIufx0e/731Xu/LQRUhW2fUZ0vyRqs6mgESezB9/d85M92h30nERzOTwjcw9C/xIhpyzOZixhGTPMQb/K+Lx2SfnYnvwk7zpwKE=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=r7BISqxAM2y5KBaPYl0SLmLHqMcDsibHzyVuMHsCFu9t7kR459n9uCq9/uFRCtGbWLKzgTkHyzPYRKO1YXXy6+YN+9Ws8WHQhxhqlNY6rvSxfk9nd+OW4sMSy1Bb8b6zDeWYkM1tZ7oPVlaIsaGUzdeIEJI3aIjb1Ox4SgZDA4c=;
X-YMail-OSG: 4Wiel2UVM1n2yJHMl52EjiHHz_s.iSf0VncFFxHOldln8xe
	QPSvJHhN1nwnvZsyll0HNJ1QZ.hOxfoPZX8A6YKE6Vq8c2xxcwXs1t1G3AZs
	PHo9zXMnEVNCE_bhJqJ5Y0VZMTGGTtq0jT76fgQj3r0xt7h28z0p9xMX.OHh
	9GtV0hFLdijUnJLpfBSyUiHWS4KFiSrhwou7ijLh7HwS3NNTgrJUWtrqdopF
	AQMruRj7oTUDkdnVQPOV4CAKtLcdv63DaTZ6Ut6Sn.6WZqPwA5jj653jOHWR
	dzYQM8oHFpkvw0SkFtYR9TSwz_lCw8i9eRvx3.8k7mjhgKG95ZBz5GB59p95
	Nfh3lDvOndlBpyao75yS_5X5tcA8qwNcJiXHgiJk6gDgvcFbkKLmoAWq_BPh
	P42TIKcOrDTimi7j0T_WQzl_pJY7wKw0kvUvFjcRHWTreri4npemK
Received: from [68.46.169.75] by web161505.mail.bf1.yahoo.com via HTTP;
	Sat, 27 Apr 2013 07:39:17 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8sCgpTb21ldGltZXMgSSBmZWVsIHRoZSBuZWVkIHRvIGNsZWFuIGV2ZXJ5dGhpbmcgYmVmb3JlIGJ1aWxkaW5nLCBidXQgSSBkb24ndCB3YW50IHRvanVzdCBybSBteSBwcm9qZWN0IGRpcmVjdG9yeSBzaW5jZSBJIHdhbnQgdG8ga2VlcCBteSBjb25mIGZpbGVzLsKgIFdoYXQgYml0YmFrZSBjb21tYW5kIGNhbiBJIHJ1biB0byBnZXQgYmFjayB0byBhIHByaXN0aW5lIHN0YXRlIChzYW1lIGFzIGFmdGVyIGNyZWF0aW5nIHByb2plY3QgZGlyZWN0b3J5IGFuZCBtb2RpZnlpbmcgbXkgY29uZiBmaWxlcykBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.141.536
Message-ID: <1367073557.2502.YahooMailNeo@web161505.mail.bf1.yahoo.com>
Date: Sat, 27 Apr 2013 07:39:17 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 28 Apr 2013 09:27:54 -0700
Subject: how to clean all?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 27 Apr 2013 14:39:19 -0000
Content-Type: multipart/alternative;
	boundary="1679980782-908967834-1367073557=:2502"

--1679980782-908967834-1367073557=:2502
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0ASometimes I feel the need to clean everything before building, =
but I don't want tojust rm my project directory since I want to keep my con=
f files.=A0 What bitbake command can I run to get back to a pristine state =
(same as after creating project directory and modifying my conf files)?=A0 =
=0A=0A=0ARegards,=0A=0APeter=0A

--1679980782-908967834-1367073557=:2502
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Hello,</div><div=
><br><span></span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px;=
 font-family: times new roman,new york,times,serif; background-color: trans=
parent; font-style: normal;"><span>Sometimes I feel the need to clean every=
thing before building, but I don't want to just rm my project directory sin=
ce I want to keep my conf files.&nbsp; </span><span>What bitbake command ca=
n I run to get back to a pristine state (same as after creating project dir=
ectory and modifying my conf files)?&nbsp; <br></span></div><div style=3D"c=
olor: rgb(0, 0, 0); font-size: 16px; font-family: times new roman,new york,=
times,serif; background-color: transparent; font-style: normal;"><br><span>=
</span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-famil=
y: times new roman,new york,times,serif; background-color: transparent;
 font-style: normal;"><span>Regards,</span></div><div style=3D"color: rgb(0=
, 0, 0); font-size: 16px; font-family: times new roman,new york,times,serif=
; background-color: transparent; font-style: normal;"><span><br>Peter</span=
></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: tim=
es new roman,new york,times,serif; background-color: transparent; font-styl=
e: normal;"><span><br></span></div></div></body></html>

--1679980782-908967834-1367073557=:2502--
