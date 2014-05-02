Return-Path: <nick_liapis@yahoo.gr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2220AE009D1; Fri,  2 May 2014 08:06:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nick_liapis[at]yahoo.gr)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.82.96.186 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm13-vm7.bullet.mail.ir2.yahoo.com
	(nm13-vm7.bullet.mail.ir2.yahoo.com [212.82.96.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10665E009BA
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 08:06:40 -0700 (PDT)
Received: from [212.82.98.56] by nm13.bullet.mail.ir2.yahoo.com with NNFMP;
	02 May 2014 15:06:39 -0000
Received: from [212.82.98.83] by tm9.bullet.mail.ir2.yahoo.com with NNFMP;
	02 May 2014 15:06:39 -0000
Received: from [127.0.0.1] by omp1020.mail.ir2.yahoo.com with NNFMP;
	02 May 2014 15:06:39 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 18408.81329.bm@omp1020.mail.ir2.yahoo.com
Received: (qmail 14229 invoked by uid 60001); 2 May 2014 15:06:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.gr; s=s1024;
	t=1399043198; bh=Z1pLeTcToms8zECLsEr+/3S2AoTZSDlWuFpJxkvfS0E=;
	h=Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=ZDCc4lvzjZA4QmO9FLDcXAKszQh8iy8KJGxUZj3aUKYTSfFUfRUruhIJUPhkqKYxE7O3CHaIw9COop71Rvd93RL+dxTSEVMqZ9/q6RDwO8b6CgcavdDfRCiem7eICeYWaOu83AG2Rmvj9CiyqPWKBBdjRBkRCa3qkiQTtj5LCYk=
X-YMail-OSG: WNyWx6oVM1mRpRqnU4Uo5UXMzeczBPZHDbVbTUagE.1ilxl
	pyQiatOQhHG73JHzd.AB9Wgb9u0JifyEF4NYfNbpBD.9rQXoYKLNlIJqFDXV
	d_G8NtU4OOVogm5rMCTCngjU2wwvA5S3bLkhe_w5koc9PYU97unStaCqf5IU
	yQ3nW7KJ7DFtVJsze6Zl2u1GNP8ZWSXa0S8jRehgXuKG9Xzn4L8Gfnb8bW_l
	0wZGuiiBpRdDZ8v7AK9_B0HwC9J5XfS3Xfr_WpAT74lEFDYB_gzBfD6YeqLD
	P8rVK3UbPows9MgXKkgJVoZNdP1uKJcq5vuv1H.xbSq_Mci6dTewdvIDTu5h
	g_ooIEfjo.JCcmIw3bnmhlQTlhpZMHkaJtGAm5y4T8ubNRGhvfrb3g7HfDEG
	Rgb6huN3TpVRazjpthJifAKKAbAB4lUoeFMqDmLYd5717OzjNnlCdYfr_4TX
	Zt8tvF4zgZ8jq8QYj0HKBMaidqLcD4wTj49YdcwFqWHLccDZifDQ8jHhHrw2
	.tlI908wHz.5_LEpJ_2EklU9MacuhjxMeK4RR5w81Z8dGeFkepDYeCxw-
Received: from [176.92.102.100] by web171203.mail.ir2.yahoo.com via HTTP;
	Fri, 02 May 2014 16:06:38 BST
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8sCgpJIHdvdWxkIGxpa2UgdG8ga25vdyBpZiBJIGNvdWxkIHVzZSBZb2N0byBQcm9qZWN0IHRvIGJ1aWxkIExpbnV4IGZvciBTcGFyYyB2OCBDUFUgYXJjaGl0ZWN0dXJlLiBJIGFtIHRyeWluZyB0byBidWlsZCBsaW51eCB3aXRoIHNvbWUgdG9vbHMgZm9yIHRoZSBMZW9uMyAob3BlbmNvcmUpIENQVSBhbmQgSSBhbSBmYWNpbmcgZXJyb3JzIGR1cmluZyBjb21waWxhdGlvbi4gU28gSSBhbSB0cnlpbmcgdG8gZmluZCBhbiBhbHRlcm5hdGl2ZSBzb2x1dGlvbiB0byBnZXQgTGludXggd2l0aCBzb21lIGIBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
Message-ID: <1399043198.30486.YahooMailNeo@web171203.mail.ir2.yahoo.com>
Date: Fri, 2 May 2014 16:06:38 +0100 (BST)
From: Nikos Liapis <nick_liapis@yahoo.gr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Target CPU architectures that Yocto Project Support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Nikos Liapis <nick_liapis@yahoo.gr>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 May 2014 15:06:46 -0000
Content-Type: multipart/alternative;
	boundary="684168126-836755977-1399043198=:30486"

--684168126-836755977-1399043198=:30486
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI would like to know if I could use Yocto Project to build Linu=
x for Sparc v8 CPU architecture. I am trying to build linux with some tools=
 for the Leon3 (opencore) CPU and I am facing errors during compilation. So=
 I am trying to find an alternative solution to get Linux with some basic t=
ools running on the hardware. Sorry if I have made any mistakes or if I sen=
t to the wrong mailing list - I am a totaly newbie.=0A=0A=0AThank you in ad=
vance.=0A

--684168126-836755977-1399043198=:30486
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:Co=
urier New, courier, monaco, monospace, sans-serif;font-size:10pt"><div>Hell=
o,</div><div><br></div><div style=3D"color: rgb(0, 0, 0); font-size: 13.333=
3px; font-family: Courier New,courier,monaco,monospace,sans-serif; backgrou=
nd-color: transparent; font-style: normal;">I would like to know if I could=
 use Yocto Project to build Linux for Sparc v8 CPU architecture. I am tryin=
g to build linux with some tools for the Leon3 (opencore) CPU and I am faci=
ng errors during compilation. So I am trying to find an alternative solutio=
n to get Linux with some basic tools running on the hardware. Sorry if I ha=
ve made any mistakes or if I sent to the wrong mailing list - I am a totaly=
 newbie.<br></div><div style=3D"color: rgb(0, 0, 0); font-size: 13.3333px; =
font-family: Courier New,courier,monaco,monospace,sans-serif; background-co=
lor: transparent; font-style: normal;"><br></div><div style=3D"color: rgb(0=
,
 0, 0); font-size: 13.3333px; font-family: Courier New,courier,monaco,monos=
pace,sans-serif; background-color: transparent; font-style: normal;">Thank =
you in advance.<br></div></div></body></html>

--684168126-836755977-1399043198=:30486--
