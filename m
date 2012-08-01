Return-Path: <maniacbug@ymail.com>
Received: from nm38-vm4.bullet.mail.ne1.yahoo.com
	(nm38-vm4.bullet.mail.ne1.yahoo.com [98.138.229.148])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E17ADE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 11:59:54 -0700 (PDT)
Received: from [98.138.90.52] by nm38.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Aug 2012 18:59:54 -0000
Received: from [98.138.88.238] by tm5.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Aug 2012 18:59:54 -0000
Received: from [127.0.0.1] by omp1038.mail.ne1.yahoo.com with NNFMP;
	01 Aug 2012 18:59:53 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 989565.12740.bm@omp1038.mail.ne1.yahoo.com
Received: (qmail 23839 invoked by uid 60001); 1 Aug 2012 18:59:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1343847593; bh=f9ThPf8Y+XSxhAFL44f7C8p2jlKWw6TZO0+kTX8REsY=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=t0DjT8/yoOOwp64MavpBUA1fowKXB7bYaIzRHI5p3kw3PqFRaoskFc9fl2CicW2r3zWj0c2F+daWpJ1rJBFwpuzd4ScM1/evPjjycedu5+ErzSPf05JUxiPgN2i2HTpyUGZfSzcbuxCuTn22tJU09AP0GNytgUmuR+SwLaW3IQI=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=MVcMHlr7GbjWtO+57at6HzEfC5sjTtGyoHIt4/i5yOyQxPZY+Dzsgb0EELfQZ50yjYwKmmnznFS9FLiHjQbL1EDwfcWaY6nwknuQp4k+9/I/Bhl8mFVktk9d/2eDQhO921BjKb5qzCDyKM5LNFJeT6OQDLp4vmY52aU2AULXmgA=;
X-YMail-OSG: 9vpfOWkVM1l7vzoO6c3GHFf6L8WnbCgsfES5T8.DGXMTgoe
	zUqPugguzYsIJpLtv7ArSJ3MQ.ED1vzLKWD99cHQg.0R2qhjRqvoNAI6278P
	npG1hjORc84O45eYBYN_dyWlHl4cMIkcFlWsufktARAhci3rJaDWcuwKhtN6
	lgJDEBNrFgoA58Q6BtSqZ3kyLaqRT8rw5sfPYaKSqgwa.ijpcCzEQCZaxz4g
	FCWMVmPknv3AEHFmL3PCAyumIfJEZqx6POgOQ5IF3ROwuHfRs3x9vl9dWzry
	tm7SF5zCDG5J3lxChNI.bQAPXGLVCX16FNkvtFIy18FZ3coOQt5eVSUlR0Wd
	QrFKBO4jJbBMUYl_Aga_bEmqQ.yxhn.h9K1BBo55XS3d6z_Mvwwf5jBnCqjB
	8e5QDWVOePwdzM0g47WBF86Ym8e50IMI-
Received: from [50.135.220.100] by web121606.mail.ne1.yahoo.com via HTTP;
	Wed, 01 Aug 2012 11:59:53 PDT
X-Mailer: YahooMailWebService/0.8.120.356233
Message-ID: <1343847593.30566.YahooMailNeo@web121606.mail.ne1.yahoo.com>
Date: Wed, 1 Aug 2012 11:59:53 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Wed, 01 Aug 2012 18:59:55 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Yup, I can verify that denzil builds and runs on Pandaboard with meta-ti 30=
fb40ebc13614a74c2e237927c60ac43e01d1bc.=A0 Haven't tried master, but don't =
see a need if denzil is going to work.=A0 BTW, I did not find it necessary =
to use meta-oe.=0A=0A=0ABoth core-image-base and core-image-sato are workin=
g swell, except for sound.=A0 Though the latest omap4 kernel has lots of im=
provements in that area, so I'm in the midst of upgrading it to see if that=
find helps.=0A=0A=0A> Yes, this is a rather touch ball of twine with all th=
ese layers - they =0A> have to=0A> be properly aligned to get something tha=
t builds.=0A=0AWow, try it WITHOUT Yocto/Poky.=A0 Yocto project seems to ad=
d stabilization and documentation to OE, which is about the only thing that=
 makes it possible to get started at all :)=0A=0A> Work arounds:=0A>=A0  * =
You could checkout meta-ti to something that matches denzil=0A>=A0 =A0  Rev=
ision 30fb40ebc13614a74c2e237927c60ac43e01d1bc works for me.=0A=0A=0AI woul=
d actually call this the CORRECT solution, not just a workaround.=A0 meta-t=
i should create a denzil-tracking branch from this commit.=0A> How in the w=
orld you knew how to find that commit number is the part that amazes me=0A=
=0AThis commit was identified and discussed on the meta-ti list as the poin=
t of departure from denzil, that's how I found it, myself.=0A=0Am.b

