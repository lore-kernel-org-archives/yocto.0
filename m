Return-Path: <kilou_zellabia@yahoo.fr>
Received: from nm24-vm6.bullet.mail.ird.yahoo.com
	(nm24-vm6.bullet.mail.ird.yahoo.com [212.82.109.197])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 95C16E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 01:38:34 -0700 (PDT)
Received: from [77.238.189.231] by nm24.bullet.mail.ird.yahoo.com with NNFMP;
	13 Jun 2012 08:38:32 -0000
Received: from [212.82.108.122] by tm12.bullet.mail.ird.yahoo.com with NNFMP;
	13 Jun 2012 08:38:32 -0000
Received: from [127.0.0.1] by omp1031.mail.ird.yahoo.com with NNFMP;
	13 Jun 2012 08:38:32 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 860104.49981.bm@omp1031.mail.ird.yahoo.com
Received: (qmail 74953 invoked by uid 60001); 13 Jun 2012 08:38:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339576712; bh=+q9U86F0iTT0TNf//BuAS9c8xOd3e480dTN0w2Y+NZY=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=TNxjQXnxZHOLNDfjzyH666tsgcaPPgHSN4oGd2+W70VifsxiVr/scnCzgZeA2K7rihRfJ6dHPlI8gYIcvus3SVU/4q7WyvWX2wKIeGPm4q0Qk+EDSEb4ATU4jVkaPh1EU+N9yI1Q8JZc7QnT5w2nAvm1LdbHlMg+n+Bjkp4b54U=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.fr;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=H6FNAQeaYEyOajV9FWOsM+lych5jrwQoY3WNTi+sQx7qiiKkv7thTpQerJsQ9bnNlCej1scYjX7voiChXEGpmDRjUjSACgbThvFr4YwZFEFkiK6d1qsBHYHNBJzAum6C1UvS9yW5i4GFeLJoXn9zhF7i/r41M/1aPiQRwYbsqLs=;
X-YMail-OSG: VZh1nXgVM1lcbbttVXTcnPBy29Mcu3hIZjlpZh9T.Cgm9Ww
 Mp8HXZO14
Received: from [92.103.7.242] by web171303.mail.ir2.yahoo.com via HTTP;
	Wed, 13 Jun 2012 09:38:32 BST
X-Mailer: YahooMailWebService/0.8.118.349524
Message-ID: <1339576712.71285.YahooMailNeo@web171303.mail.ir2.yahoo.com>
Date: Wed, 13 Jun 2012 09:38:32 +0100 (BST)
From: Kilou Zelabia <kilou_zellabia@yahoo.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: ERROR : QA issue : package AAAA rdepends on BBBB-dev
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Kilou Zelabia <kilou_zellabia@yahoo.fr>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Jun 2012 08:38:35 -0000
Content-Type: multipart/alternative;
	boundary="-1953309981-346422947-1339576712=:71285"

---1953309981-346422947-1339576712=:71285
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello everybody,=0A=0AWhen building a package within yocto I'm having=A0 th=
e following error :=0A=0AERROR: QA issue : package AAAA rdepends on BBBB-de=
v=0A=0A=0ABoth AAAA and BBBB are built using custom recipes=0A=0AWhat does =
this mean ? Why it is forbidden to have a run-time dependency on a "-dev" p=
ackage ?=0A=0AI'v seen some recipes setting INSANE_SKIP to "1" can this hel=
ps ?=0A=0AThanks in advance=0A

---1953309981-346422947-1339576712=:71285
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Hello everybody,=
<br><br>When building a package within yocto I'm having&nbsp; the following=
 error :<br><br>ERROR: QA issue : package AAAA rdepends on BBBB-dev<br></di=
v><div><br></div><div>Both AAAA and BBBB are built using custom recipes<br>=
<br>What does this mean ? Why it is forbidden to have a run-time dependency=
 on a "-dev" package ?<br><br>I'v seen some recipes setting INSANE_SKIP to =
"1" can this helps ?<br><br>Thanks in advance</div></div></body></html>

---1953309981-346422947-1339576712=:71285--
