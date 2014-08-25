Return-Path: <petertornel@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82947E00744; Sun, 24 Aug 2014 19:29:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (petertornel[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.120.50 listed in list.dnswl.org]
Received: from nm43.bullet.mail.ne1.yahoo.com (nm43.bullet.mail.ne1.yahoo.com
	[98.138.120.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B78E00576
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 19:29:04 -0700 (PDT)
Received: from [127.0.0.1] by nm43.bullet.mail.ne1.yahoo.com with NNFMP;
	25 Aug 2014 02:29:03 -0000
Received: from [98.138.100.113] by nm43.bullet.mail.ne1.yahoo.com with NNFMP;
	25 Aug 2014 02:26:03 -0000
Received: from [98.139.215.143] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	25 Aug 2014 02:26:03 -0000
Received: from [98.139.212.207] by tm14.bullet.mail.bf1.yahoo.com with NNFMP;
	25 Aug 2014 02:26:03 -0000
Received: from [127.0.0.1] by omp1016.mail.bf1.yahoo.com with NNFMP;
	25 Aug 2014 02:26:03 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 279616.95947.bm@omp1016.mail.bf1.yahoo.com
Received: (qmail 58275 invoked by uid 60001); 25 Aug 2014 02:26:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1408933563; bh=Dby0wCBhEww4sTxM3NbbR58pmnDbkTTO2gR1idvmYzc=;
	h=Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=2VTk8BcDTo6NDP1ED7xDWGxonTzn3i/dnEmZMUwH73JHS1l98YS8O5aWLP3m9Btli0kI/ijJC75kbyIQDNuKlTd1h3ZbFYxvUigrmAN/f1jBAEhWowhXGm37GILIb1Flc7Al5XU17glubQ8qOPFBAKP3AJEHiYOT7sIfbUwzpz0=
X-YMail-OSG: Wases.UVM1kEbrV81VI1gbpctHMXDTdCx0hgkdwrjynodnx
	3TVLfYV8CnX5YonHorb2cXNbSN_2HpDBgjVRabNBZwRnTSbTVBYGoXq.1wuh
	lGVcnBRhdtpMelfqBVuWtOyNij0Pn8ekDPY2KL9FpjN4eri6RyMrTq4W4Nzm
	_mQm.SEab5YdA1a6mMMRfWtiOSzl6YBbGWLiq.DQLguA925E0kALg6waUFDf
	BmAWq0Oby3yUNLeESYHBFkqB_n8y7XnQdsGBzT59NLF0TyJqRCW2555pQ1pU
	jZrhcTRpGKm.NBODMHGhtvQkqiFL5BoDUwDuJO1pt_GnYy0kuXcauLfLc7ZY
	JX4HTZt525y6ksHJnfnXmTC_ShIt_TBuLKYoCp45Kl2sGdfYy7Mt72uSWBv6
	aClx8S7YABD3FdwUCAMFJVpNo2KjlUwn_ezjwa7RBP9Y1cAkvO1t.NgZ3khh
	DKrFIAd5oXq5mXPNGrolGJCzdRiPeZ3MxwLWtCfKNTR37tcK5wi6oQZ6.Bis
	okYDYcQ--
Received: from [68.38.40.177] by web140706.mail.bf1.yahoo.com via HTTP;
	Sun, 24 Aug 2014 19:26:03 PDT
X-Rocket-MIMEInfo: 002.001,
	SGksCgpQbGVhc2UgcHJvdmlkZSBhIHJlY29tbWVuZGF0aW9uIGZvciBhIGxvdyBjb3N0LCBvdXQgb2YgdGhlIGJveCBXaUZpICg4MDIuMTFuKSBleHBlcmllbmNlIHVzaW5nIFlvY3RvLsKgIAoKCkFGQUlLLCBSYXNwYmVycnkgUGkgZG9lc24ndCBjb21lIHdpdGggV2lGaSBidWlsdCBpbi7CoCAKCgpJIHdvdWxkIGxpa2UgdG8gc3BlbmQgbGVzcyB0aGFuICQxMDAgYnV0IGNvdWxkIHN0cmV0Y2ggaXQuwqAgCgoKUGV0ZQoBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.201.700
Message-ID: <1408933563.20144.YahooMailNeo@web140706.mail.bf1.yahoo.com>
Date: Sun, 24 Aug 2014 19:26:03 -0700
From: Peter Tornel <petertornel@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: best bet for WiFi Yocto experience?
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
X-List-Received-Date: Mon, 25 Aug 2014 02:29:07 -0000
Content-Type: multipart/alternative;
	boundary="-637016289-546740288-1408933563=:20144"

---637016289-546740288-1408933563=:20144
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,=0A=0APlease provide a recommendation for a low cost, out of the box WiF=
i (802.11n) experience using Yocto.=A0 =0A=0A=0AAFAIK, Raspberry Pi doesn't=
 come with WiFi built in.=A0 =0A=0A=0AI would like to spend less than $100 =
but could stretch it.=A0 =0A=0A=0APete=0A

---637016289-546740288-1408933563=:20144
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div style=3D"" class=3D"">Hi,</div><div style=3D"" class=3D"=
"><br style=3D"" class=3D""></div><div class=3D"" style=3D"color: rgb(0, 0,=
 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,A=
rial,Lucida Grande,sans-serif; background-color: transparent; font-style: n=
ormal;">Please provide a recommendation for a low cost, out of the box WiFi=
 (802.11n) experience using Yocto.&nbsp; <br style=3D"" class=3D""></div><d=
iv class=3D"" style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: H=
elveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; backg=
round-color: transparent; font-style: normal;"><br style=3D"" class=3D""></=
div><div class=3D"" style=3D"color: rgb(0, 0, 0); font-size: 16px; font-fam=
ily: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;=
 background-color:
 transparent; font-style: normal;">AFAIK, Raspberry Pi doesn't come with Wi=
Fi built in.&nbsp; <br style=3D"" class=3D""></div><div class=3D"" style=3D=
"color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica=
 Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transpare=
nt; font-style: normal;"><br style=3D"" class=3D""></div><div class=3D"" st=
yle=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Hel=
vetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: tra=
nsparent; font-style: normal;">I would like to spend less than $100 but cou=
ld stretch it.&nbsp; <br></div><div class=3D"" style=3D"color: rgb(0, 0, 0)=
; font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Aria=
l,Lucida Grande,sans-serif; background-color: transparent; font-style: norm=
al;"><br style=3D"" class=3D""></div><div class=3D"" style=3D"color: rgb(0,=
 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetic=
a,Arial,Lucida
 Grande,sans-serif; background-color: transparent; font-style: normal;">Pet=
e</div><div class=3D"" style=3D"color: rgb(0, 0, 0); font-size: 16px; font-=
family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-ser=
if; background-color: transparent; font-style: normal;"><br style=3D"" clas=
s=3D""></div></div></body></html>

---637016289-546740288-1408933563=:20144--
