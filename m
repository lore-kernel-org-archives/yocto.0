Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C7F4E00D98; Tue,  2 Jul 2019 06:01:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E774EE00DB1
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 06:01:19 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id a21so16778848ljh.7
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 06:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s6jvdxgNaUlHu7K5zso9LTLnJHHm7a+hNz1ZxWOYHTs=;
	b=TmiW/+EDeHxJ21xVrbYEF6gp1BYhT2PrzyRltPKuH1x7MlBGvnRu4JGuLyDkIojHdP
	B3rYr0NX0UrJ1rdbqRyOr1lMt70HBJHyW/8WnvhBYrcVLuggY1V7ICjxTETVz41sDpYb
	wz6cL7KrVnTd6NsYucuZBGqaew3JW+Kt8n7b/5xtc4HJboMOxLxyVoE4SeTX1hq4EyaC
	wts8/9z9loFhG/jMJutC2S3sQyIEg0xgcSQxlOagKHSC9y9y6jTTCnxSAK3kNwLiKYYK
	iCaLQNyi1dSndiaLmkngN4aSL7RmdRmFXhSdRx19pNoGtaucdwKi/K8nW+9spCPuwgO7
	aVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s6jvdxgNaUlHu7K5zso9LTLnJHHm7a+hNz1ZxWOYHTs=;
	b=d7geNpTRuegZzNn8o9322vXLyt+an/GyL30IjHRh8XqZ6t/2fIUKaaAE9Kz4AuwMXG
	G24OANIMmnE22KxukFjPu48MARBy7MoPFI9zCjW5fSrsEk1lWyjtfILB0h7AnpaI3Bmb
	q8loXKaumKW3NHTq0hYEaaTuiSxOktOvFM35IKk6/pZk7jkz2H3Q4y+JQWIuUKzNFSKa
	+4iwau6+nA/ZNqhe7GAOxckn1cQ833Cis8OOj7nEdyxUG4+CPOdjl2QCogbUf3YnjNTd
	Z0POoRzVPfqECwusnrFQPmqCsc7qm0+yP6/8MAUZeHApssO2MO8wpIRKOGRqNCVzvmC8
	VO6w==
X-Gm-Message-State: APjAAAV/wXpws0FuoFwddZWhJEOyH9eE1F53riF6kipFhkuji4YGNEFe
	JGgvO4yt7obHxcE14f7WrskLRRPauhE0gob+0Jo=
X-Google-Smtp-Source: APXvYqyWyS2ouDrP15VXfBq4+X3I7bI5V01HI+qq3x+cEQMGKofM7T337H60v7j0319M2P8Jjt7bx6bhS1CkqewRMZ4=
X-Received: by 2002:a2e:5c88:: with SMTP id q130mr3101951ljb.176.1562072479010;
	Tue, 02 Jul 2019 06:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
In-Reply-To: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 2 Jul 2019 15:01:07 +0200
Message-ID: <CAAx3WaC2q69zRwvEiSYVt328hi+zAC5zJp2ihZCufAkEHW9tYQ@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Tue, 02 Jul 2019 13:01:30 -0000
Content-Type: multipart/alternative; boundary="0000000000003990e9058cb2572b"

--0000000000003990e9058cb2572b
Content-Type: text/plain; charset="UTF-8"

Hi Chad,

why are you checking out such an old version? As the tutorial said, try:

git checkout tags/yocto-2.7 -b my-yocto-2.7

Probably some URLs are no longer available.

Gabriele


Il giorno mar 2 lug 2019 alle ore 14:53 Chad Gong <cgong@trijicon.com> ha
scritto:

> Hi,
>
>
>
> I am new to Yocto project and try to build my first yocto project by
> following instructions on
> https://www.yoctoproject.org/docs/current/brief-yoctoprojectqs/brief-yoctoprojectqs.html.
> I checked out branch yocto-2.5.3, and tried to build targets, such as
> core-image-minimal, meta-toolchain, but always get some fetch errors or
> checksum errors, such as:
>
>
>
> ERROR: libmpc-native-1.1.0-r0 do_fetch: Checksum failure fetching
> https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz
>
> WARNING: quilt-native-0.65-r0 do_fetch: Failed to fetch URL
> http://download.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz,
> attempting MIRRORS if available
>
> WARNING: m4-native-1.4.18-r0 do_fetch: Failed to fetch URL
> http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz, attempting MIRRORS if
> available
>
>
>
> I am running Ubuntu 18.04 virtual box on Windows 7.
>
>
>
> Chad Gong
>
> Electrical Engineer
>
>
>
> Trijicon, Inc.
>
>  | P.O. Box 930059
>
> Wixom, Michigan 48393 US
>
> cgong@trijicon.com |
>
>
>
> ------------------------------
> This electronic message contains information that may be confidential,
> privileged, proprietary, or subject to the export control laws of the
> United States, including the Arms Export Control Act (22 U.S.C. 2571 et
> seq.), the International Traffic in Arms Regulations  (22 C.F.R. Part 120
> et seq.), and/or the Export Administration Regulations (15 C.F.R. Part 730
> et seq.).  This information is intended for the use of the addressee only,
> and if you are not the intended recipient, any disclosure, copying,
> distribution, printing, or any other use of, the contents of this message
> is prohibited.  Any transfer, retransfer, or disclosure of this data to a
> Foreign Person without United States Government authorization is also
> prohibited.  If you have received this message in error, please notify the
> sender and destroy the original message.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000003990e9058cb2572b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Chad,</div><div><br></div><div>why are you checkin=
g out such an old version? As the tutorial said, try:</div><div style=3D"ma=
rgin-left:40px"><pre class=3D"gmail-literallayout">git checkout tags/yocto-=
2.7 -b my-yocto-2.7<br><br></pre></div><pre class=3D"gmail-literallayout"><=
span style=3D"font-family:arial,sans-serif">Probably some URLs are no longe=
r available.<br><br></span></pre><pre class=3D"gmail-literallayout"><span s=
tyle=3D"font-family:arial,sans-serif">Gabriele</span><br></pre></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ma=
r 2 lug 2019 alle ore 14:53 Chad Gong &lt;<a href=3D"mailto:cgong@trijicon.=
com">cgong@trijicon.com</a>&gt; ha scritto:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">







<div lang=3D"EN-US">
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"></p>
<div class=3D"gmail-m_-29008135627327856WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am new to Yocto project and try to build my first =
yocto project by following instructions on
<a href=3D"https://www.yoctoproject.org/docs/current/brief-yoctoprojectqs/b=
rief-yoctoprojectqs.html" target=3D"_blank">
https://www.yoctoproject.org/docs/current/brief-yoctoprojectqs/brief-yoctop=
rojectqs.html</a>. I checked out branch yocto-2.5.3, and tried to build tar=
gets, such as core-image-minimal, meta-toolchain, but always get some fetch=
 errors or checksum errors, such
 as:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">ERROR: libmpc-native-1.1.0-r0 do_fetch: Checksum fai=
lure fetching
<a href=3D"https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz" target=3D"_blank">=
https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz</a><u></u><u></u></p>
<p class=3D"MsoNormal">WARNING: quilt-native-0.65-r0 do_fetch: Failed to fe=
tch URL <a href=3D"http://download.savannah.gnu.org/releases/quilt/quilt-0.=
65.tar.gz" target=3D"_blank">http://download.savannah.gnu.org/releases/quil=
t/quilt-0.65.tar.gz</a>, attempting MIRRORS if available<u></u><u></u></p>
<p class=3D"MsoNormal">WARNING: m4-native-1.4.18-r0 do_fetch: Failed to fet=
ch URL <a href=3D"http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz" target=3D"_bl=
ank">http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>, attempting MIRRORS if =
available<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am running Ubuntu 18.04 virtual box on Windows 7.<=
u></u><u></u></p>
</div>
<p></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font face=3D"Arial"=
><span style=3D"color:black;font-size:8pt"><font size=3D"4"><font face=3D"A=
rial"></font></font><font color=3D"#000000"><font size=3D"2" face=3D"Arial"=
><font size=3D"4"><font face=3D"Arial"><strong>=C2=A0</strong></font></font=
></font></font></span></font></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font style=3D"font-=
family:Arial;font-size:10pt">Chad</font>
<font style=3D"font-family:Arial;font-size:10pt">Gong</font>=C2=A0</p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font color=3D"#0000=
00"></font><font color=3D"dimgray"><font style=3D"font-family:Arial;font-si=
ze:8pt;color:rgb(127,127,127)">Electrical Engineer</font></font></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font color=3D"dimgr=
ay"></font>=C2=A0</p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font color=3D"dimgr=
ay"><strong></strong></font></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font style=3D"font-=
family:Arial;font-size:10pt;color:rgb(0,0,0);font-weight:bold">Trijicon, In=
c.</font></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font size=3D"2" fac=
e=3D"Arial"></font><font size=3D"2" face=3D"Arial"><font size=3D"1" color=
=3D"#7f7f7f"></font></font></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font size=3D"1" fac=
e=3D"Arial" color=3D"#7f7f7f">=C2=A0|=C2=A0<font style=3D"font-family:Arial=
;font-size:8pt;color:rgb(127,127,127)">P.O. Box 930059</font></font></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font size=3D"2" fac=
e=3D"Arial" color=3D"#7f7f7f"><font style=3D"font-family:Arial;font-size:8p=
t;color:rgb(127,127,127)">Wixom</font>,=C2=A0<font style=3D"font-family:Ari=
al;font-size:8pt;color:rgb(127,127,127)">Michigan</font>=C2=A0<font style=
=3D"font-family:Arial;font-size:8pt;color:rgb(127,127,127)">48393</font>=C2=
=A0<font style=3D"font-family:Arial;font-size:8pt;color:rgb(127,127,127)">U=
S</font></font></p>
<font color=3D"#000000"><font size=3D"2" face=3D"Arial">
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><font style=3D"font-=
family:Arial;font-size:8pt;color:rgb(127,127,127)"><a href=3D"mailto:cgong@=
trijicon.com" target=3D"_blank">cgong@trijicon.com</a></font><font size=3D"=
1" color=3D"#7f7f7f">=C2=A0|</font>
</p>
</font></font>
<p></p>
<p style=3D"margin:0in 0in 0pt" class=3D"gmail-m_-2900813562732785606ea7d56=
-9b56-4188-95c6-ef3d80b314e5"></p>
<p></p>
<p style=3D"margin:0in 0in 0pt" class=3D"gmail-m_-2900813562732785606ea7d56=
-9b56-4188-95c6-ef3d80b314e5"></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID">=C2=A0</p>
<p class=3D"gmail-m_-29008135627327856ImprintUniqueID"><em><font color=3D"#=
595959"></font></em></p>
<hr id=3D"gmail-m_-29008135627327856HR1">
<font size=3D"2">This electronic message contains information that may be c=
onfidential, privileged, proprietary, or subject to the export control laws=
 of the United States, including the Arms Export Control Act (22 U.S.C. 257=
1 et seq.), the International Traffic
 in Arms Regulations=C2=A0 (22 C.F.R. Part 120 et seq.), and/or the Export =
Administration Regulations (15 C.F.R. Part 730 et seq.).=C2=A0 This informa=
tion is intended for the use of the addressee only, and if you are not the =
intended recipient, any disclosure, copying,
 distribution, printing, or any other use of, the contents of this message =
is prohibited.=C2=A0 Any transfer, retransfer, or disclosure of this data t=
o a Foreign Person without United States Government authorization is also p=
rohibited.=C2=A0 If you have received this
 message in error, please notify the sender and destroy the original messag=
e.</font>=C2=A0
<br>
<p></p>
<p></p>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000003990e9058cb2572b--
