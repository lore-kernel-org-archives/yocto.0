Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4ED2E00C71; Thu, 14 Feb 2019 16:14:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F995E009EB
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 16:14:19 -0800 (PST)
Received: by mail-qk1-f182.google.com with SMTP id h28so916273qkk.7
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 16:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7CCGLjePFxD6vXUNoH7XAnnMTUOdLZqLC430SnOxI1I=;
	b=UL2SlrC2pRVnLw6Ee31b0QRfLlsi1QFWHnIA7YzRLlqL35O0vYc/jglPJBPxHiQZWb
	tbSLLQq1hIOFaIlhtRju90KtkBGPPeq68OOzGyehe/967G+6bMiWtSGZziOyqaZlkKif
	AvO/jzxxx7lQwhaGr16tJFcMklyR+2exZTnFKJPykV3WPwKp7cPRKlRdi3ICOWaR6dQt
	0gNMScg9sOm9PLPgAr2vAGTiyZZr+vBeQe/UA9hhKLoTy70C8TQ3SlbnrGsq+d5EN/qI
	Gu0Uq9yCbG52/NZdmaLgxwbNbvlyJocw1F+C3io/3XXQdPvRBYLCKAGHqD8/0LcvBXUE
	V8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7CCGLjePFxD6vXUNoH7XAnnMTUOdLZqLC430SnOxI1I=;
	b=PrnL0vgIj79ohwRiq/bbTwKcOihXmGy9qcm9fbNqCx5ZO4P3YDgFbvIUSzjwNwCxGO
	7CZJ+yzMw6pq7/PuxOXRi9qrWxy9gjteBcMp+Xkmey1f0uIiRexgPW0aG49ULGxbP3nZ
	t6+eZdhEbTZEcz/mRmowahEezYmlvJrF9RDgM76iGs/LkdrJooOVDPlL9Apsek6ZLXft
	neJ2p2AqN6luNBLXhPDVo8GSklkGVmpT3EQUY6/dK5CX+zvXnLn7WjzyfQxz3uKDw/Lj
	yg1bnQKj8eOJEg9q2DbUNajuK7uOUES2UJMq5mP57IA6E5fFLsJjffwde+ciAHwdiG+d
	Ryog==
X-Gm-Message-State: AHQUAuanIeiA3djx2e8ufN5Tt/IZ0HQRaPT9BBcnPPgSpP4LK4zGlR0/
	Jg6EfO5+ipYOL4ioOK3+1qj3sUgzaeOY5XMf6jM=
X-Google-Smtp-Source: AHgI3IYGx+4TKj7jL+8LdqGcvEoOLSrWixkn/XgF5j75nvosoas09JSDlLtKZjbRQ8eIP4d7VW/OjN4nRgqfio2le2g=
X-Received: by 2002:a37:9585:: with SMTP id x127mr4997242qkd.315.1550189658426;
	Thu, 14 Feb 2019 16:14:18 -0800 (PST)
MIME-Version: 1.0
References: <5C4C5702-7F30-4817-90FE-CFAEDCB8E0D9@cisco.com>
In-Reply-To: <5C4C5702-7F30-4817-90FE-CFAEDCB8E0D9@cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Feb 2019 16:13:51 -0800
Message-ID: <CAMKF1sp19wQiKUpB6Sn0bHEWA9=y==7kt2uu_PLKpE_CqnDR6Q@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky/meta/recipes-connectivity/bind
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
X-List-Received-Date: Fri, 15 Feb 2019 00:14:20 -0000
Content-Type: multipart/alternative; boundary="000000000000ecd6450581e3a71c"

--000000000000ecd6450581e3a71c
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 14, 2019 at 3:47 PM Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote:

> Gurus,
>
>
>
> What was the main reason why nslookup has been removed from
> Poky/meta/recipes-connectivity/bind/<xxx>>.bb?
>
>
>

nsloopup is supposed to go away as the upstream maintainers of this has
stopped maintaining it. using dig or host
utility is suggested.



> do_install_append() {
>
>
>
>        rm "${D}${bindir}/nslookup"
>
>        rm "${D}${mandir}/man1/nslookup.1"
>
>        rmdir "${D}${localstatedir}/run"
>
>        rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
>
>        install -d -o bind "${D}${localstatedir}/cache/bind"
>
>        install -d "${D}${sysconfdir}/bind"
>
>        install -d "${D}${sysconfdir}/init.d"
>
>        install -m 644 ${S}/conf/* "${D}${sysconfdir}/bind/"
>
>        install -m 755 "${S}/init.d" "${D}${sysconfdir}/init.d/bind"
>
>         if ${@bb.utils.contains('PACKAGECONFIG', 'python3', 'true',
> 'false', d)}; then
>
>               sed -i -e '1s,#!.*python3,#! /usr/bin/python3,' \
>
>               ${D}${sbindir}/dnssec-coverage \
>
>               ${D}${sbindir}/dnssec-checkds \
>
>               ${D}${sbindir}/dnssec-keymgr
>
>        fi
>
>
>
> Which yocto now has dig or host for DNS lookup?
>
>
>

you can install bind-utils in image which should
give you dig and host



> Thanks,
>
>   --Dinh
>

--000000000000ecd6450581e3a71c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-family:monospace,monospace"><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 14, 20=
19 at 3:47 PM Dinh Nguyen (dinhn) &lt;<a href=3D"mailto:dinhn@cisco.com">di=
nhn@cisco.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_8719919474931647220WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">Gurus,<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">What was the main rea=
son why nslookup has been removed from Poky/meta/recipes-connectivity/bind/=
&lt;xxx&gt;&gt;.bb?
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0</span><=
/p></div></div></blockquote><div><br></div><div><div class=3D"gmail_default=
" style=3D"font-family:monospace,monospace">nsloopup is supposed to go away=
 as the upstream maintainers of this has stopped maintaining it. using dig =
or host</div><div class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace">utility is suggested.</div><br></div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gma=
il-m_8719919474931647220WordSection1"><p class=3D"MsoNormal"><span style=3D=
"font-size:12pt"><u></u></span></p>
<table class=3D"gmail-m_8719919474931647220MsoNormalTable" border=3D"0" cel=
lspacing=3D"0" cellpadding=3D"0" style=3D"background:white;border-collapse:=
collapse">
<tbody>
<tr>
<td valign=3D"top" style=3D"padding:0in 7.5pt">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">do_install_append() {<u></u><=
u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L75">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC75">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)"><u></u>=C2=A0<u></u></span></=
p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L76">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC76">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rm &quot;${D}${bindir}/nslookup&quot;<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L77">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC77">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rm &quot;${D}${mandir}/man1/nslookup.1&quot;<u></u><u></u></span>=
</p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L78">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC78">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rmdir &quot;${D}${localstatedir}/run&quot;<u></u><u></u></span></=
p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L79">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC79">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rmdir --ignore-fail-on-non-empty &quot;${D}${localstatedir}&quot;=
<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L80">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC80">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 install -d -o bind &quot;${D}${localstatedir}/cache/bind&quot;<u>=
</u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L81">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC81">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 install -d &quot;${D}${sysconfdir}/bind&quot;<u></u><u></u></span=
></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L82">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC82">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 install -d &quot;${D}${sysconfdir}/init.d&quot;<u></u><u></u></sp=
an></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L83">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC83">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 install -m 644 ${S}/conf/* &quot;${D}${sysconfdir}/bind/&quot;<u>=
</u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L84">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC84">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 install -m 755 &quot;${S}/init.d&quot; &quot;${D}${sysconfdir}/in=
it.d/bind&quot;<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L85">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC85">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 if ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;pytho=
n3&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then<u></u><u></u></span></p=
>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L86">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC86">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i -e &#39;1s,#!.*p=
ython3,#! /usr/bin/python3,&#39; \<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L87">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC87">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${D}${sbindir}/dnssec-c=
overage \<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L88">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC88">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${D}${sbindir}/dnssec-c=
heckds \<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L89">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC89">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${D}${sbindir}/dnssec-k=
eymgr<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td width=3D"50" nowrap valign=3D"top" style=3D"width:37.5pt;padding:0in 7.=
5pt;box-sizing:border-box;min-width:50px;color:rgba(27,31,35,0.3)" id=3D"gm=
ail-m_8719919474931647220L90">
</td>
<td valign=3D"top" style=3D"padding:0in 7.5pt;box-sizing:border-box;overflo=
w:visible" id=3D"gmail-m_8719919474931647220LC90">
<p class=3D"MsoNormal" style=3D"line-height:15pt"><span style=3D"font-size:=
9pt;font-family:Consolas;color:rgb(36,41,46)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fi<u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">Which yocto now has d=
ig or host for DNS lookup?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0</span><=
/p></div></div></blockquote><div><br></div><div><div class=3D"gmail_default=
" style=3D"font-family:monospace,monospace">you can install bind-utils in i=
mage which should</div><div class=3D"gmail_default" style=3D"font-family:mo=
nospace,monospace">give you dig and host</div><br></div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div cl=
ass=3D"gmail-m_8719919474931647220WordSection1"><p class=3D"MsoNormal"><spa=
n style=3D"font-size:12pt"><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">Thanks,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">=C2=A0 --Dinh <u></u>=
<u></u></span></p>
</div>
</div>

</blockquote></div></div></div>

--000000000000ecd6450581e3a71c--
