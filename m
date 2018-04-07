Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0159CE00B9C; Fri,  6 Apr 2018 23:46:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
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
	*      [74.6.132.41 listed in list.dnswl.org]
Received: from sonic306-2.consmr.mail.bf2.yahoo.com
	(sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BB7E008D3
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 23:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1523083603; bh=sk0fPMES91bsJo4l5cgP1gEEHqcc3/GkiVj6iOnA6D0=;
	h=Date:From:To:Subject:References:From:Subject;
	b=A49ax3JdEU2ovuarZaT/uX0Id2iK8Seq8/qwplCDFzNj3Rlj4jdn8CefhJgvcz8uQBumwjt+OW165vLe/d/dnVnX+hBpoM3cPjQ5g+Y4vmCLILFhHONjbe8zxNKT17TGanihEWMq0XrTnHPNZrlMVr/f1WB2iWhXwkfdDgpESYkh5ZUHdZBkDt6QJwRlWy+iOTLBk2frif86GzONIb7iJbyW0D3H9y/bYXHZnb7maswPsWQ/FYDqG9tw8vXiUzPLjvdjHsm21wCDeVYGHAiBxjIQ8ovPQr4N2s8WqsBBImFy4wISXu7PjLXDchIOE0Oytm4qYJgxcbgAut/KJyDqeQ==
X-YMail-OSG: e0C6kNAVM1lWbBd_jxKxXFXpNSzTinlQ.GNXSScAnTlUIYHy4I_aVekqOYXaa7i
	5xFjO9LBkIbJOKE0AqcIBOGH6rRUM9754rNQooaMrTpQNO7_SI2TpNT0FFYmPTglGgKbl1DM0rqV
	630sqtCPRZ8fOCbT5SqEuR8cvfwF2VnWKF2NLPg09ZWQvLJ5gUT_z0AyEINc7F2qwCyn1ssMPoxF
	mk.F.pFLB3g62Lz2O49kL5w_quouc0rd2s5lyrvP_elbg_1oLvO45rCGWJIsa8_Pfpaj5__zw3qL
	PRkvgJHfNe2JGWSBwrKDULIcWomm5QjLCIFXEx2pdApJHRX1oEQbsMiqmZJD1u6Hrw6V5bPfoaZw
	WAMRx2m6xjWBkaOEOdkeKJwxkTVe2BWglJ7Or5YwItFL73xFTV51ip2gEo1cn1aVzLY6ppsM85JX
	acXgMkJnSRcCdpPQv3VXk3BmgWfINnV8S0lhFsHjSZHdco1UHoL_vYIkY7.mqhD9Ud79y
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 7 Apr 2018 06:46:43 +0000
Date: Sat, 7 Apr 2018 06:46:41 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <674400918.88037.1523083601988@mail.yahoo.com>
MIME-Version: 1.0
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11745 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Subject: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Sat, 07 Apr 2018 06:46:45 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_88036_265426075.1523083601986"

------=_Part_88036_265426075.1523083601986
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,I need to add libsrtp to my yocto image. So I added libsrtp to "IMAGE_IN=
STALL". But I faced the following errors:
Unknown package 'libsrtp'.
Collected errors:=C2=A0* opkg_solver_install: Cannot install package libsrt=
p.

------=_Part_88036_265426075.1523083601986
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div><span><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Hi,</div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">I need to add libsrtp to my yocto image. So I added libsrtp to "IMAGE_INSTALL". But I faced the following errors:</div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><br></div><div style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><div>Unknown package 'libsrtp'.</div><div><br></div><div>Collected errors:</div><div>&nbsp;* opkg_solver_install: Cannot install package libsrtp.</div></div></span><br></div></div></div></body></html>

------=_Part_88036_265426075.1523083601986--
