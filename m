Return-Path: <pp.perez@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D94E4E009AD; Wed, 22 Feb 2017 08:53:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, RCVD_IN_PSBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pp.perez[at]yahoo.com)
	*  2.7 RCVD_IN_PSBL RBL: Received via a relay in PSBL
	*      [98.138.229.51 listed in psbl.surriel.com]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.229.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm32-vm3.bullet.mail.ne1.yahoo.com
	(nm32-vm3.bullet.mail.ne1.yahoo.com [98.138.229.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4A2EE0098A
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 08:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1487782395; bh=eGMzX73KfTPsHXyse8tweVB4tLXkIehmX5TOf56Sqg4=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=kgAe1WsR6P+9AjLosBLeA+XYIOyt9bizRAa4+arEUGSGGFQyvA5uKX+LuIggB2u90k6T6R2u63nwyXSkEHtraq9ObLyNweAR71BwrKPEOPKV8IGLTu03KXheGosotUIQbnX8Uw04Rbhqa0OkbcdVG59PEm9tY6YB65JAouFPBxIICK32EVtnhZRstELenG83laEr5Ey+OnK/k1l6HAKObOLTPedygtOPXvidFk6x4Pw9ZjRrd2ARLihH2MIkJxNWKRkQZpEEYsEgXXxPC5iYLJSN7MZ3mdevYznsNPYr3bt1tFS3ii2D4rD6bKMmda2LB5/u+wsoDk3H4RZl2rH6YA==
Received: from [127.0.0.1] by nm32.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Feb 2017 16:53:15 -0000
Received: from [98.138.226.177] by nm32.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Feb 2017 16:50:19 -0000
Received: from [98.138.226.164] by tm12.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Feb 2017 16:50:19 -0000
Received: from [127.0.0.1] by omp1065.mail.ne1.yahoo.com with NNFMP;
	22 Feb 2017 16:50:19 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 567259.87426.bm@omp1065.mail.ne1.yahoo.com
X-YMail-OSG: FNhzUrcVM1kdS9kdGG8wwfWkTVKCH51jz6lvuPagv9EeD0DC_iYi8GfHFh3FxwQ
	_UFW9sloC.RRM4VKm.A3kdgfk3chuuYsNChIjyAFJVUW0tm2mWySntyvenWpsO..V1PWes05eo3p
	4H7qRzKZpJiIspz3EXQHa8MKnOa6fLVARmluoLSkGx1SgF.U27e99ubcBErxj06_w_Wq61478QFm
	oAMnl65Ttz_2MOK7K._Wza7oE92o_Wj3eb6rXTK__9GbE70aGIild5mVYPWz.Vwkk6wD7WgJO2DR
	owY5PQ5OPdhYGXITno552atCGSi4ORXNC2c8veFqZlYAjlQQrZrlSEE_vh0DJVee_NSqRhKg9Wft
	A1DGBST1dPqlMl4wApVi2Lioq2kAqKVMglDDpFWDWoGUa1zMiudZbqxdK5LaEbCBOibjauSDpoaI
	zn7Tme8vyCnbXKSDb6wMQeDaGYeb8XysOtU59hBj8MIUxukXw3cs9.JWjwzMnmFUCSJCsm1DgATc
	eFXlBaxzAJw0AKlJaAOjYThRVVPL3LOmUw2sGDrVXqA--
Received: from jws200073.mail.ne1.yahoo.com by
	sendmailws101b.mail.ne1.yahoo.com;
	Wed, 22 Feb 2017 16:50:19 +0000; 1487782219.154
Date: Wed, 22 Feb 2017 16:50:16 +0000 (UTC)
From: Pepe Perez <pp.perez@yahoo.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1494286841.2600331.1487782216318@mail.yahoo.com>
In-Reply-To: <1487777217.29224.2.camel@linuxfoundation.org>
References: <1595002721.1496048.1487658650023.ref@mail.yahoo.com>
	<1595002721.1496048.1487658650023@mail.yahoo.com>
	<1487777217.29224.2.camel@linuxfoundation.org>
MIME-Version: 1.0
Subject: Re: task is executed even when sstate-cache md5 matches
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Pepe Perez <pp.perez@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Feb 2017 16:53:21 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2600330_378743565.1487782216316"

------=_Part_2600330_378743565.1487782216316
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I have however other targets in which do_fetch is not executed at all. Why sometimes is executed and why some others not...?Moreover, I did the test with three users: one populates the sstate-cache, a second resolves its build entirely from sstate and a third one in which do_fetch is executed
This is important for me because I'm working in a project in which do_fetch should not be executed, but always resolved with the sstate

      From: Richard Purdie <richard.purdie@linuxfoundation.org>
 To: Pepe Perez <pp.perez@yahoo.com>; "yocto@yoctoproject.org" <yocto@yoctoproject.org> 
 Sent: Wednesday, February 22, 2017 7:26 AM
 Subject: Re: [yocto] task is executed even when sstate-cache md5 matches
   
On Tue, 2017-02-21 at 06:30 +0000, Pepe Perez wrote:
> I have following siginfo packages:
> 
> Generated in my build sstate-cache
> build/sstate-cache/be/sstate:proc-
> fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo
> 
> Previously existing in my build SSTATE_MIRRORS:
> /central/sstate-cache/be/sstate:proc-
> fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo
> 
> I had many other targets where setscene was successful and no task
> was executed. Why fetch is executed in the target above, if md5 is a
> match?

do_fetch is not an sstate task and there is no ".tgz" file, only a
siginfo file which is data about how the checksum is constructed and
for debugging of other sstate checksums. Pulling the downloads from a
download mirror would likely be just as successful as it would be if
do_fetch were an sstate task.

Cheers,

Richard


   

------=_Part_2600330_378743565.1487782216316
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_ym19_1_1487740877975_58828=
"><span></span></div><div class=3D"qtdSeparateBR" id=3D"yui_3_16_0_ym19_1_1=
487740877975_58770"><div id=3D"yui_3_16_0_ym19_1_1487740877975_58805">I hav=
e however other targets in which do_fetch is not executed at all. Why somet=
imes is executed and why some others not...?</div><div id=3D"yui_3_16_0_ym1=
9_1_1487740877975_58868">Moreover, I did the test with three users: one pop=
ulates the sstate-cache, a second resolves its build entirely from sstate a=
nd a third one in which do_fetch is executed</div><div id=3D"yui_3_16_0_ym1=
9_1_1487740877975_58902"><br></div><div id=3D"yui_3_16_0_ym19_1_14877408779=
75_58829">This is important for me because I'm working in a project in whic=
h do_fetch should not be executed, but always resolved with the sstate<br><=
/div><br></div><div class=3D"yahoo_quoted" id=3D"yui_3_16_0_ym19_1_14877408=
77975_58757" style=3D"display: block;">  <div style=3D"font-family: Helveti=
caNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-s=
ize: 16px;" id=3D"yui_3_16_0_ym19_1_1487740877975_58756"> <div style=3D"fon=
t-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, s=
ans-serif; font-size: 16px;" id=3D"yui_3_16_0_ym19_1_1487740877975_58755"> =
<div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1487740877975_58754"> <font id=3D"=
yui_3_16_0_ym19_1_1487740877975_58753" face=3D"Arial" size=3D"2"> <hr id=3D=
"yui_3_16_0_ym19_1_1487740877975_58870" size=3D"1"> <b><span style=3D"font-=
weight:bold;">From:</span></b> Richard Purdie &lt;richard.purdie@linuxfound=
ation.org&gt;<br> <b><span style=3D"font-weight: bold;">To:</span></b> Pepe=
 Perez &lt;pp.perez@yahoo.com&gt;; "yocto@yoctoproject.org" &lt;yocto@yocto=
project.org&gt; <br> <b><span style=3D"font-weight: bold;">Sent:</span></b>=
 Wednesday, February 22, 2017 7:26 AM<br> <b><span style=3D"font-weight: bo=
ld;">Subject:</span></b> Re: [yocto] task is executed even when sstate-cach=
e md5 matches<br> </font> </div> <div class=3D"y_msg_container" id=3D"yui_3=
_16_0_ym19_1_1487740877975_58758"><br>On Tue, 2017-02-21 at 06:30 +0000, Pe=
pe Perez wrote:<div class=3D"yqt4348177508" id=3D"yqtfd25824"><br clear=3D"=
none">&gt; I have following siginfo packages:<br clear=3D"none">&gt; <br cl=
ear=3D"none">&gt; Generated in my build sstate-cache<br clear=3D"none">&gt;=
 build/sstate-cache/be/sstate:proc-<br clear=3D"none">&gt; fifo::1.0.3:r1::=
3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo<br clear=3D"none">&gt;=
 <br clear=3D"none">&gt; Previously existing in my build SSTATE_MIRRORS:<br=
 clear=3D"none">&gt; /central/sstate-cache/be/sstate:proc-<br clear=3D"none=
">&gt; fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo=
<br clear=3D"none">&gt; <br clear=3D"none">&gt; I had many other targets wh=
ere setscene was successful and no task<br clear=3D"none">&gt; was executed=
. Why fetch is executed in the target above, if md5 is a<br clear=3D"none">=
&gt; match?</div><br clear=3D"none"><br clear=3D"none">do_fetch is not an s=
state task and there is no ".tgz" file, only a<br clear=3D"none">siginfo fi=
le which is data about how the checksum is constructed and<br clear=3D"none=
">for debugging of other sstate checksums. Pulling the downloads from a<br =
clear=3D"none">download mirror would likely be just as successful as it wou=
ld be if<br clear=3D"none">do_fetch were an sstate task.<br clear=3D"none">=
<br clear=3D"none">Cheers,<br clear=3D"none"><br clear=3D"none">Richard<div=
 class=3D"yqt4348177508" id=3D"yqtfd85221"><br clear=3D"none"></div><br><br=
></div> </div> </div>  </div></div></body></html>

------=_Part_2600330_378743565.1487782216316--
