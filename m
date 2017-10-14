Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A269DE00CF9; Fri, 13 Oct 2017 18:47:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (t_dufff[at]yahoo.ca)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.130.124 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic316-14.consmr.mail.bf2.yahoo.com
	(sonic316-14.consmr.mail.bf2.yahoo.com [74.6.130.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1323AE00CC1
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 18:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1507945654; bh=AzW6m3t+JizyAatUzzDfDkFQeqU0cfBmLABcVfekmCA=;
	h=Date:From:To:Subject:References:From:Subject;
	b=mQQnA0YTVsMnC+SgCiCGjZh+zraJ+CFZUsnIdit/XodjJzbx2hPusw4edjaSxFeftz5wSAJMV2UcgPAKEEQR+5Ild5EgMqSHwOegaKp0X1TifC6TEzIC0wtK7+C7yVmrzAYqlP0XAlwK6ZUoJ1JnVuNpVva9hBWXjhVco7Ho9EO9/DXT2jWlcc0lU9G//z/8JCzVP/uxCw2d5nnQp2VUn908sz3pfY/iY2Xlz87Xyi9kFArvqjzJSjMali1Lg9O7U2PxnG4dRqRAzQ/Ey8Gxxe0Qr47ZkYYGICSbzGyhLpiA+p4Wj2ZcNYXY3p4qKhL2jExYwNPCZ/N6liO68STbPg==
X-YMail-OSG: c1MpJy8VM1lWzUP42X2tjhLgy07Z9djbz1czvh2CpNPblfY3k7XUKMbavVy_e3W
	W2gWNqTBj.thEuqpCZ6optdZ9Icz.de7tVgP5mf9n_xj1DQqFcxlKBdE3NJq9Qn7yEubpMCALNqs
	MuRdeaqcRFde_0Od8Q6Pn3el415SPm3JAOc3TKvv2wP2EfUA.fZbFsEzOXx1R_RM5fHBTC4jc6wS
	mBLmiIUYwWGcfo6P1GNaFjmbnOOYY_q0Sjmmt95LqMyWLMRnGTObA_3SotRUxkGOv65MmzTsFwXs
	fmoNBQo2QkWFpRFJfi_bzTItMRfToPaB93cUligswcyJcremmxglNhWsbuGlwLJRGIiU5.o.b8V9
	_X5Vdtc5w6nRV0aYTMYbNzi_XE.YoFFVpqS3gEYwX7guBlqH97ELKEiFih5QnzzTexSL6qBuTfj7
	Zm9iD93.r96XW4DupBWBZ5maI8mZRYzl7SmlgfgOA.ItY_iSYv3rccIUzq17K4L2eGG.8AgVJ7DY
	7EsHpeIlBPlxuTRJrsuMi
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 14 Oct 2017 01:47:34 +0000
Date: Sat, 14 Oct 2017 01:47:31 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1834130201.1594472.1507945651092@mail.yahoo.com>
MIME-Version: 1.0
References: <1834130201.1594472.1507945651092.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10726 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100
	Safari/537.36
Subject: why there is no branch dizzy in meta-ti ?
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
X-List-Received-Date: Sat, 14 Oct 2017 01:47:35 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1594471_610362993.1507945651090"

------=_Part_1594471_610362993.1507945651090
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I work on dizzy branch of yocto/meta-ti, and I can see here :=C2=A0http://g=
it.yoctoproject.org/cgit/cgit.cgi/meta-ti/refs/heads=C2=A0 that there is no=
 dizzy branch. Why ?
Few weeks / month ago, the wifi on my boards stopped working after doing a =
repo sync ... (my bad) ...
I think one of the layer changed the wifi driver from libertas to mwifiex a=
nd since that moment, the wifi is not working properly. So I was wondering =
how can I fix the branch to dizzy ?
Thank you
Kris

------=_Part_1594471_610362993.1507945651090
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div>I work on dizzy branch of yocto/meta-ti, and I can see here :&nbsp;http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/refs/heads&nbsp; that there is no dizzy branch. Why ?</div><div><br></div><div>Few weeks / month ago, the wifi on my boards stopped working after doing a repo sync ... (my bad) ...</div><div><br></div><div>I think one of the layer changed the wifi driver from libertas to mwifiex and since that moment, the wifi is not working properly. So I was wondering how can I fix the branch to dizzy ?</div><div><br></div><div>Thank you</div><div><br></div><div>Kris</div></div></body></html>

------=_Part_1594471_610362993.1507945651090--
