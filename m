Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2210E00AAF; Sat,  7 Apr 2018 22:07:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.41 listed in list.dnswl.org]
Received: from sonic301-2.consmr.mail.bf2.yahoo.com
	(sonic301-2.consmr.mail.bf2.yahoo.com [74.6.129.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A16DEE00AAF
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2018 22:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1523164043; bh=sn0rx5TeAq0YWVWTItteL/H0fGgYMKCWBbp+cZkbItE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=eyikeTjRlCX5NaFu5dtbNjvpjm2g/EJmYak1zM08F7+eIEJu0NtUtOACPgIkraEQsJl30vvuXHv+Q/hTyUaMdhFsVp8aQTxlNf65UYS4bJ2PglTud79kXPiu2qjgoQb3yLRn5UkrVbzyOvoKAwkzShJZKAq7JHpbp1dVrScUP//BTslG1KD8/nqblQHE4pCBoK4PucBC9Osm/f3nXi0sSTLB0nHPyj7Wt+MDVAguERge3adF+WQcORma8VqVS3nRRptRqHVhd+MIoYZhfmCYZGe58B7aYNG8dKDJY5RoWaiTtWAaDOWfxY7OBe1Qo076/ubhEwREWWxmcL/Hr4TMmA==
X-YMail-OSG: ZEzpoB8VM1lID2_ktfNDKse1eM6LV9b6emaoSdFLRQe4jOqqK2.2LC9jlM4HTyM
	xQDXK5AWlT9Iqm.a8GhC7zj5U73VH4x.yYBN9wVYwMUCkI7SP9ikx5WGYQq.iC_Q.JpVgB0xZnpQ
	s7MQPQKL.MYxQNhBCLAN9sW_q8pTxujgAt1wSCiPccklCnU7X_e5sq6Y3HBgEud2k038TXY_7eTt
	bb5m0ys0GCQhAS3WmO6z1MJQ3PUv7v5p8bw8wD3EefFJ5qXToUtCnhidP3Tn8r4zx01A1MmrLXmm
	vlFBc3oM93CNTzRN21HqnKBNMnh02QaSQz0TW7wowpbx8iePP.0tU1FrgA3Qd9i6dX9whzMmwr1w
	NVAw5NmZhUEh4E3738ldXEhAFSmu9KDy_vwoN_PNQ892WRQaLF.4g0Fi8dw6XD4plsRPWsPkR.gn
	nub_PFtgZVDkOBftGRsej61LbnzAAENJJiCcyXiqiZwSHi.7ork2_6dDIpQxDbkiiIyx0iUsAcTS
	gKE2oqc6XzsJhBy9QIly05oV91AJT68U-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 8 Apr 2018 05:07:23 +0000
Date: Sun, 8 Apr 2018 05:07:21 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: Vincent Prince <vincent.prince.fr@gmail.com>
Message-ID: <522954937.329111.1523164041319@mail.yahoo.com>
In-Reply-To: <CAB2nKc8AORF1y1oimTacE6fvUcrFPkLV3EEgMs7k=gZpd4pzdg@mail.gmail.com>
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
	<674400918.88037.1523083601988@mail.yahoo.com>
	<CAB2nKc8AORF1y1oimTacE6fvUcrFPkLV3EEgMs7k=gZpd4pzdg@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11745 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Sun, 08 Apr 2018 05:07:26 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_329110_447607946.1523164041317"

------=_Part_329110_447607946.1523164041317
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
Yes, I added "${TOPDIR}/../layers/meta-openembedded/meta-multimedia \" to B=
BLAYERS
    On Saturday, April 7, 2018, 7:48:23 PM GMT+4:30, Vincent Prince <vincen=
t.prince.fr@gmail.com> wrote: =20
=20
 Hi,=C2=A0
Did you add meta-multimedia to BBLAYERS as explained herehttps://www.yoctop=
roject.org/docs/current/mega-manual/mega-manual.html#enabling-your-layer=C2=
=A0
BR,Vincent
2018-04-07 8:46 GMT+02:00 Mostafa Farzane <farzanemostafa@yahoo.com>:

Hi,I need to add libsrtp to my yocto image. So I added libsrtp to "IMAGE_IN=
STALL". But I faced the following errors:
Unknown package 'libsrtp'.
Collected errors:=C2=A0* opkg_solver_install: Cannot install package libsrt=
p.

--
______________________________ _________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject. org/listinfo/yocto



 =20

------=_Part_329110_447607946.1523164041317
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div></div>
            <div><br></div><div><span><span style=3D"font-family: &quot;Hel=
vetica Neue&quot;, Helvetica, Arial, sans-serif;">Yes, I added "</span><spa=
n style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-=
serif;">${TOPDIR}/../layers/meta-openembedded/meta-multimedia \" to BBLAYER=
S</span></span><br></div>
           =20
            <div id=3D"yahoo_quoted_3778738774" class=3D"yahoo_quoted">
                <div style=3D"font-family:'Helvetica Neue', Helvetica, Aria=
l, sans-serif;font-size:13px;color:#26282a;">
                   =20
                    <div>
                        On Saturday, April 7, 2018, 7:48:23 PM GMT+4:30, Vi=
ncent Prince &lt;vincent.prince.fr@gmail.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                    <div><div id=3D"yiv6260421335"><div><div dir=3D"ltr">Hi=
,&nbsp;<div><br clear=3D"none"></div><div>Did you add meta-multimedia to BB=
LAYERS as explained here</div><div><a rel=3D"nofollow" shape=3D"rect" targe=
t=3D"_blank" href=3D"https://www.yoctoproject.org/docs/current/mega-manual/=
mega-manual.html#enabling-your-layer">https://www.yoctoproject.org/docs/cur=
rent/mega-manual/mega-manual.html#enabling-your-layer</a>&nbsp;</div><div><=
br clear=3D"none"></div><div>BR,</div><div>Vincent</div></div><div class=3D=
"yiv6260421335gmail_extra"><br clear=3D"none"><div class=3D"yiv6260421335gm=
ail_quote">2018-04-07 8:46 GMT+02:00 Mostafa Farzane <span dir=3D"ltr">&lt;=
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:farzanemostafa@yahoo.c=
om" target=3D"_blank" href=3D"mailto:farzanemostafa@yahoo.com">farzanemosta=
fa@yahoo.com</a>&gt;</span>:<br clear=3D"none"><blockquote class=3D"yiv6260=
421335gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex;"><div class=3D"yiv6260421335yqt2718597088" id=3D"yiv6260421=
335yqt18623"><div><div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;"><div style=3D"font-family:Helvetica Neue, He=
lvetica, Arial, sans-serif;font-size:13px;"><div><span></span><div style=3D=
"">Hi,</div><div style=3D"">I need to add libsrtp to my yocto image. So I a=
dded libsrtp to "IMAGE_INSTALL". But I faced the following errors:</div><di=
v style=3D""><br clear=3D"none"></div><div style=3D""><div>Unknown package =
'libsrtp'.</div><div><br clear=3D"none"></div><div>Collected errors:</div><=
div>&nbsp;* opkg_solver_install: Cannot install package libsrtp.</div></div=
><br clear=3D"none"></div></div></div></div></div><br clear=3D"none">--<br =
clear=3D"none">
______________________________ _________________<br clear=3D"none">
yocto mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org=
" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://lists.=
yoctoproject">https://lists.yoctoproject</a>. org/listinfo/yocto<br clear=
=3D"none">
<br clear=3D"none"></blockquote></div><br clear=3D"none"></div></div></div>=
</div>
                </div>
            </div></div></body></html>

------=_Part_329110_447607946.1523164041317--
