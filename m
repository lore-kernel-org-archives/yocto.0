Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91200E00A38; Fri, 21 Jul 2017 01:39:33 -0700 (PDT)
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
	*      [74.6.128.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic320-25.consmr.mail.bf2.yahoo.com
	(sonic320-25.consmr.mail.bf2.yahoo.com [74.6.128.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6556E0090A
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 01:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1500626370; bh=uat/oVjyQkoxjC3/V3nslu87Qkb0JXof1c5dVC7/+9Q=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=C+ksy7HhJylarbf8hEFC/Re/uzWNXDi13l/jmLgYtNQ3iFkKZwS44BEYnuFUTyUoa6yWbXoEcYwaTo0FVro+vQfjzdVqD0ULrXALzQoCB1QubDDhq6d6YoR9Q0BFp/D6n3vo2z6kfXBbSRu9sMq7ultwf1wbq+hMpaAnzzwLn5l9hFWveMiEUFyhN/iVxnTHaQZuFKTLMB+B/6LVp2JcynFaOU66XZeMhBYlFOi7AvShbmu8hIxgdN6zvt4pOGaA2CRibm0HmHDHRRz6O+QRasqiNk6KFJplJ7iRMttm/JPdDmHdVj2y0tKhT8Ks1pZ1eMLZj3G7AuNM1Xzv6On9Hg==
X-YMail-OSG: OpTZuJwVM1lXqIIyXHBgnTkeoxW7HiBdYkL8u0WEacHAbra3OKLVi2LLzY4UeEW
	SQSFxQOLT0fbQe_BdTAFU8MaSvUI3PP0qMSo65TodHaKqWXACKxA6lub88BoYYvXcka5WD8TrkqX
	yH3oPDfBLdq.kgsjtI2r9s1_1aHerzdyCCu7CeaU.Aj81tNRKhU5lHN6PuAFXkemFwhlrhDCK02H
	3WH76elUqXHmpxUQt1sxTIurz9SGsTwrjZKrwhglckKrgzmVk32EkU9xaZmZwgIRZt1fJj2a_rgQ
	y.L0OFL3fquwwO7lOIrNhOjABg9S19hjMboVuIzQRGwDdsTs9mKKsxYTZDlSkAk46p_4h_K5n16U
	aN0VjKKKMG5kXKgWLX0YP58P6TsOoxkRuGC3ocQEtc9URq3mbBDLMzHmHltQuB771EOuztUljOiu
	56NgCjzlf8uAYA5p9v_YXHtkVcRodO6USNZVHFDKsvMvIpBt2aWSuIHnrzhqYph5CR4.D0AP3DzV
	TRphl8R2IczrkrVtB6St8Dd89mLKgZU4.9w--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic320.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 21 Jul 2017 08:39:30 +0000
Date: Fri, 21 Jul 2017 08:39:30 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1963416636.1849318.1500626370345@mail.yahoo.com>
MIME-Version: 1.0
References: <1963416636.1849318.1500626370345.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10121 YahooMailNeo Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115
	Safari/537.36
Subject: ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kris duff <t_dufff@yahoo.ca>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Jul 2017 08:39:33 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1849317_1610418155.1500626370343"

------=_Part_1849317_1610418155.1500626370343
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
In the dizzy branch (yes, I know it is quite old) I am trying to compile PH=
P with postgresql support (lighttpd + postgresql 9.2.4).
I am getting the following error from insane.bbclass:=C2=A0
ERROR: This autoconf log indicates errors, it looked at host include and/or=
 library paths while determining system capabilities.Rerun configure task a=
fter fixing this. The path was '/home/gumstix/yocto/build/tmp/work/core2-64=
-poky-linux/php/5.4.36-r0/build'ERROR: Function failed: do_qa_configureERRO=
R: Logfile of failure stored in: /home/gumstix/yocto/build/tmp/work/core2-6=
4-poky-linux/php/5.4.36-r0/temp/log.do_configure.40485ERROR: Task 5 (/home/=
gumstix/yocto/poky/meta-openembedded/meta-oe/recipes-devtools/php/php_5.4.3=
6.bb, do_configure) failed with exit code '1'
In the config.log, I can see in the configure options that there is a -L/us=
r/bin/. !!!
What puzzles me, is that the error is only shown when I add --with-pdo-pgsq=
l=3D"DIR" (where DIR is the location of pg_config). Else, it will compile, =
but phpinfo() will not show postgresql support.
So, what can I do to change the -L /usr/bin/... directory ?
Thank you
Regards
Kris

------=_Part_1849317_1610418155.1500626370343
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:16px"><div id=3D"yui_3_16_0_ym19_1_1500555865710_104303">Hi,</div><di=
v id=3D"yui_3_16_0_ym19_1_1500555865710_104304"><br id=3D"yui_3_16_0_ym19_1=
_1500555865710_104305"></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_15005=
55865710_104306">In the dizzy branch (yes, I know it is quite old) I am try=
ing to compile PHP with postgresql support (lighttpd + postgresql 9.2.4).</=
div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_104307"><br id=
=3D"yui_3_16_0_ym19_1_1500555865710_104308"></div><div dir=3D"ltr" id=3D"yu=
i_3_16_0_ym19_1_1500555865710_104309">I am getting the following error from=
 insane.bbclass:&nbsp;</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_150055=
5865710_104310"><br id=3D"yui_3_16_0_ym19_1_1500555865710_104311"></div><di=
v dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_104312">ERROR: This aut=
oconf log indicates errors, it looked at host include and/or library paths =
while determining system capabilities.</div><div dir=3D"ltr" id=3D"yui_3_16=
_0_ym19_1_1500555865710_104313">Rerun configure task after fixing this. The=
 path was '/home/gumstix/yocto/build/tmp/work/core2-64-poky-linux/php/5.4.3=
6-r0/build'</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_104=
314">ERROR: Function failed: do_qa_configure</div><div dir=3D"ltr" id=3D"yu=
i_3_16_0_ym19_1_1500555865710_104315">ERROR: Logfile of failure stored in: =
/home/gumstix/yocto/build/tmp/work/core2-64-poky-linux/php/5.4.36-r0/temp/l=
og.do_configure.40485</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555=
865710_104316">ERROR: Task 5 (/home/gumstix/yocto/poky/meta-openembedded/me=
ta-oe/recipes-devtools/php/php_5.4.36.bb, do_configure) failed with exit co=
de '1'</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_104317">=
<br id=3D"yui_3_16_0_ym19_1_1500555865710_104318"></div><div dir=3D"ltr" id=
=3D"yui_3_16_0_ym19_1_1500555865710_104319">In the config.log, I can see in=
 the configure options that there is a -L/usr/bin/. !!!</div><div dir=3D"lt=
r" id=3D"yui_3_16_0_ym19_1_1500555865710_104320"><br id=3D"yui_3_16_0_ym19_=
1_1500555865710_104321"></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500=
555865710_104322">What puzzles me, is that the error is only shown when I a=
dd --with-pdo-pgsql=3D"DIR" (where DIR is the location of pg_config). Else,=
 it will compile, but phpinfo() will not show postgresql support.</div><div=
 dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_104323"><br id=3D"yui_3_=
16_0_ym19_1_1500555865710_104324"></div><div dir=3D"ltr" id=3D"yui_3_16_0_y=
m19_1_1500555865710_104325">So, what can I do to change the -L /usr/bin/...=
 directory ?</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_10=
4326"><br id=3D"yui_3_16_0_ym19_1_1500555865710_104327"></div><div dir=3D"l=
tr" id=3D"yui_3_16_0_ym19_1_1500555865710_104328">Thank you</div><div dir=
=3D"ltr" id=3D"yui_3_16_0_ym19_1_1500555865710_104329"><br id=3D"yui_3_16_0=
_ym19_1_1500555865710_104330"></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_=
1_1500555865710_104331">Regards</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19=
_1_1500555865710_104331"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1=
_1500555865710_104331">Kris</div></div></body></html>

------=_Part_1849317_1610418155.1500626370343--
