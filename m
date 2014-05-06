Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BA84E00B7A; Tue,  6 May 2014 01:26:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.235 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm13-vm5.bullet.mail.ne1.yahoo.com
	(nm13-vm5.bullet.mail.ne1.yahoo.com [98.138.91.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4FB9E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 01:26:06 -0700 (PDT)
Received: from [98.138.101.128] by nm13.bullet.mail.ne1.yahoo.com with NNFMP;
	06 May 2014 08:26:04 -0000
Received: from [98.138.226.162] by tm16.bullet.mail.ne1.yahoo.com with NNFMP;
	06 May 2014 08:26:04 -0000
Received: from [127.0.0.1] by omp1063.mail.ne1.yahoo.com with NNFMP;
	06 May 2014 08:26:04 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 602968.35505.bm@omp1063.mail.ne1.yahoo.com
Received: (qmail 55660 invoked by uid 60001); 6 May 2014 08:26:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1399364764; bh=qkZV10HdKpNibYR8vY7XRDXfTx1n850ZStmqJz4U6qU=;
	h=Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=AJjZKydKxlPXj2sulYifOs6gR2EpHV0zslsGVxOies4QALB93+77XARd0Y/ZFid4+WlRkr1XfdyTMYbTXUT+6kdg3/PLJV1qLj9Dmflaedu4sqyZSvJ4JP8WAsdIOlkjR1M4n3DBMH76z131SBLSDeKPfFDkpj8I9HVasLCroNE=
X-YMail-OSG: LBCWSZgVM1mNPenGRhA9YbXfFDzaQOKYSvuiNJtt6umW0u2
	I3T83qXKfGNGH_b57mpYG799j_uy54AVCjP3a0WytQHX5D2gtVygHp8OpkqZ
	RcuumOBJpfOqftBgm9oCoKsfAJpm45M_NRXqDtZ4FaqX3lF_rdSeX570wtNF
	N4A.on_R_4Q_mJoChAiFb8qTSWRKnx14TK9ugEbwuj6QQE6qT_1m8cMYTn8W
	Ajm50jxxzByshKaRwBlvECA2uDm7oC8PLpifNK1o7V4e1tHAyAM5f9ozu8fl
	HJYrPvUP1Df3TviLR0mHWZ7gyOlcYuDJgQ_Zt9_ln7o0_IPFH645q2utourh
	3OkHboFi7xP9qPhw3Xmg5cRViNUmeNOo9ryxgKNadSSShDq3bdBe.k8bDfyl
	HyoZVa8KaXR.a6fDlgDKqBiiCBRh1zW6fzquf0xxGyNx25v0tyjqaXjbqDH0
	VV8eWfxspzmj4EF9VabbBq0N.DuwiTM4FQyfKxM.BkP4aOtFXkckioxocPYL
	tB2ikiSVjdoaCjY1yOsGXm9MVX6CT6o6lv4L8xuBVEQYCRBj.a3aiFnGkt7w
	x22Yy9M5D9Bgb
Received: from [193.202.22.66] by web122501.mail.ne1.yahoo.com via HTTP;
	Tue, 06 May 2014 01:26:04 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8gZ3V5cywKCldoYXQgaXMgdGhlIGlkZWVhIHdpdGggdGhlIHdpYyB0b29sLgpJcyB0aGVlIGFueSBkb2N1bWVudGF0aW9uIGZvciB0aGlzIHRvb2w_CldoYXQgYXJlIGZ1dHVyZSBwbGFucyBmb3IgaXQ_CgoKQWxleAoBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
Message-ID: <1399364764.57848.YahooMailNeo@web122501.mail.ne1.yahoo.com>
Date: Tue, 6 May 2014 01:26:04 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: wic questions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 May 2014 08:26:09 -0000
Content-Type: multipart/alternative;
	boundary="-1149815241-770653190-1399364764=:57848"

---1149815241-770653190-1399364764=:57848
Content-Type: text/plain; charset=us-ascii

Hello guys,

What is the ideea with the wic tool.
Is thee any documentation for this tool?
What are future plans for it?


Alex

---1149815241-770653190-1399364764=:57848
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div>Hello guys,</div><div><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">What is the ideea with the wic tool.</div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">Is thee any documentation for this tool?</div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">What are future plans for it?</div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica
 Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">Alex<br></div></div></body></html>

---1149815241-770653190-1399364764=:57848--
