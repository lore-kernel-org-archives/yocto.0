Return-Path: <maniacbug@ymail.com>
Received: from nm35-vm7.bullet.mail.ne1.yahoo.com
	(nm35-vm7.bullet.mail.ne1.yahoo.com [98.138.229.103])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D2848E006D9
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 12:27:58 -0700 (PDT)
Received: from [98.138.90.57] by nm35.bullet.mail.ne1.yahoo.com with NNFMP;
	28 Jun 2012 19:27:58 -0000
Received: from [98.138.226.163] by tm10.bullet.mail.ne1.yahoo.com with NNFMP;
	28 Jun 2012 19:27:58 -0000
Received: from [127.0.0.1] by omp1064.mail.ne1.yahoo.com with NNFMP;
	28 Jun 2012 19:27:58 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 208300.42766.bm@omp1064.mail.ne1.yahoo.com
Received: (qmail 44509 invoked by uid 60001); 28 Jun 2012 19:27:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1340911678; bh=QqgJeliLiCWKn3xGqS0xsEKYWqRKJSoYvQJPlbgiikk=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=bhPLbXMyemt1lfpR11a6gshqkrSrti5CoW6g6HwNyyBvlXt3Hp6SQUy8r/xl/sWWZO3q7CdIQ4CMTlH3xreMPW+j0ze2H46cfAfPH3J7cWIL6rtH0sxO53ate7xsXFqK1PuYkmAvcn5DUBTtcIa8ZTCBJBiS9JxvlbDLEY6J38U=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Cx4tVGKTBqjiRhsEvZeJ22JhyK+BXwQMJNEU2r2f2WPzTYhCROPYCqY0InvC2y77C9E85GZk9hgcKpEqczMHhoj6BJf3hmrwe0A+o4pAFQmOwU/t5fqXF1RKEyPiotf6ohg7ZrGLskP5hjfzVDjEIinKLGBifjomW5u6Se2nEp0=;
X-YMail-OSG: ivuZDc4VM1nFNSC78QFalJHfOSxQPdum3bk1hSt6SCEV2gI
	.Q2qo5HZXygoUngRWSn2fSqeF_Vxy8igRw0MR4T7Mx7hyr6Xu.5yuwAv8e88
	knQWB7W7or6tS_SYYYCxLCtQwEtRl1FMketYlkKgjsJxjAkilmCkIcu9.lMu
	sZhIqvnX0cPcmwNMqOpZA9qtxivsHT9xFVg9T.LC9t_3a6hXshbVwsJhKP.e
	dqYWJVe0NcvDbJUqnOGuDpZdhfu0KTqiwXLonys1dpc4GwdCWshT4LliiVda
	Ht5anEXWlPOR0L9u.2NmgpU0WtdM.PKHWzydq0meB67jiZf3KrGaCLN6_q5K
	iUqIpIfaXwg7C0q.0DeKqYzPMG39gX5iEzHyI_l4.1AW8G6Hy69nDGIKTQy4
	XNxqtryW74GYD
Received: from [131.107.0.119] by web121601.mail.ne1.yahoo.com via HTTP;
	Thu, 28 Jun 2012 12:27:57 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
Message-ID: <1340911677.44429.YahooMailNeo@web121601.mail.ne1.yahoo.com>
Date: Thu, 28 Jun 2012 12:27:57 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Beagleboard BSP on BeagleBone?
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
X-List-Received-Date: Thu, 28 Jun 2012 19:27:59 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Apologies if this is the wrong list, should it be on meta-ti?=0A=A0=0ADoes =
anyone here know if the yocto 'beagleboard' BSP works on the BeagleBone boa=
rd?

