Return-Path: <pxmyhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B398BE00D91; Thu, 14 Apr 2016 13:05:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MANY_SPAN_IN_TEXT, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pxmyhdev[at]gmail.com)
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
	*      [209.85.161.195 listed in list.dnswl.org]
	*  2.3 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B1A2E00C7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 13:05:24 -0700 (PDT)
Received: by mail-yw0-f195.google.com with SMTP id k197so12350536ywe.2
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 13:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=gX1zyWw5FbKcG6HCWjF8CfXvcvh0WVGXrgElvAXVcI8=;
	b=hbaEv+LcnqirfmM3z8ABroLseZayD1SzeBIhsv/TPGiV789ZYL8uvUXeltDUZPAVUZ
	mx6lkwAIlwoiQCVKTRFbJRVRPot6vGJW9uEVFwlLk90iYg/ZA9pGxU6JeuUveYRRbj6Y
	IhqkIQ+9SRoUKG9KWD3e0JwXLOYUO5tGaRvT1+sWt1WGteROeTV9kzSMr9A/jZ8TVClC
	1yJYDGSQk6wo8fZq2PR5YS0rSTJEJV1uZtB5JoQwsEp00tLEsOJ7gjBvhcDaoqhayXoQ
	DSB6ab+p+tGsQ78rEGVijQUVwU6iPnDGsmDvFASVL0eFspxBCypWeVCjD9D/oUBMDi5D
	BgeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=gX1zyWw5FbKcG6HCWjF8CfXvcvh0WVGXrgElvAXVcI8=;
	b=TYmcVfhHnU673N1b6QsQH0yal+cq6pxkHaQMu2GW0QWisCcGKnQKc43BnU0IyuNm3A
	aKzBtFMngrFt60hMh8V+E9M98x63AAEFXx9mU5A31szBYPNGMJhrCCJYJ413EqeEQaxC
	KuDkgYi471UA+Tmh/PgAIFN3/0CleiNTS4TpFKcAROso9omv/S8OL9grtUGAiEQQWiK0
	WcdEchQew7Pewgy1b0jaaimnvIBJ9KL6UC+xd4hhlFrzNurSFseqC0/Ocu3w9qRdckwk
	GPD22/z4SrwddYTDy2BxlmzJGTgaE1n+gL6T7Fp2+vJey/vuvDjQxZ+aXqKcBwp+n8jm
	CNqw==
X-Gm-Message-State: AOPr4FVI4EQoRP8eEicNk97Jy/h8G4KzDXuKo5qGubwxCK7RAdJ6OaVNxNBKiWxTVijPFlbFBysP9RMv2yCj3g==
MIME-Version: 1.0
X-Received: by 10.13.221.18 with SMTP id g18mr9555590ywe.316.1460664324233;
	Thu, 14 Apr 2016 13:05:24 -0700 (PDT)
Received: by 10.37.103.213 with HTTP; Thu, 14 Apr 2016 13:05:24 -0700 (PDT)
Date: Thu, 14 Apr 2016 16:05:24 -0400
Message-ID: <CAPYQ8X5omDPpo6QDPWqaQ_Grm5iwg=kiJ41zE09SYGk9oYwWhw@mail.gmail.com>
From: Michael Hu <pxmyhdev@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 15 Apr 2016 08:20:02 -0700
Subject: remove Yocto systemd features
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
X-List-Received-Date: Thu, 14 Apr 2016 20:05:27 -0000
Content-Type: multipart/alternative; boundary=94eb2c0742042e9d6d0530776a4a

--94eb2c0742042e9d6d0530776a4a
Content-Type: text/plain; charset=UTF-8

Hi,

Yocto pulls in systemd and enable certain features by default.I am trying
to remove some features in systemd *225* yocto builds such as logind (just
for testing purpose), I was trying to use a '*.bbappend' file with
'PACKAGECONFIG_append' to achieve that, but seems like it only takes
options defined in poky/meta/recipes-core/systemd/systemd_225.bb file.
systemd_229.bb has logind option, but I'd like to do it in system_225.bb


Available options in 225 are resolved/networkd/audit etc listed below.
which does not include logind, is there any way I can remove those features?


PACKAGECONFIG[xz] = "--enable-xz,--disable-xz,xz"
PACKAGECONFIG[cryptsetup] =
"--enable-libcryptsetup,--disable-libcryptsetup,cryptsetup"
PACKAGECONFIG[microhttpd] =
"--enable-microhttpd,--disable-microhttpd,libmicrohttpd"
PACKAGECONFIG[elfutils] = "--enable-elfutils,--disable-elfutils,elfutils"
PACKAGECONFIG[resolved] = "--enable-resolved,--disable-resolved"
PACKAGECONFIG[networkd] = "--enable-networkd,--disable-networkd"
PACKAGECONFIG[libidn] = "--enable-libidn,--disable-libidn,libidn"
PACKAGECONFIG[audit] = "--enable-audit,--disable-audit,audit"
PACKAGECONFIG[manpages] =
"--enable-manpages,--disable-manpages,libxslt-native xmlto-native
docbook-xml-dtd4-native docbook-xsl-stylesheets-native"
PACKAGECONFIG[pam] = "--enable-pam,--disable-pam,libpam"

...

...



also I'd like to remove functions like graphical user session support
and display service etc. Any ideas if that's possible?


Thanks,


Michael

--94eb2c0742042e9d6d0530776a4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Yocto pulls in systemd and enable c=
ertain features by default.I am trying to remove some features in systemd <=
b>225</b> yocto builds such as logind (just for testing purpose), I was try=
ing to use a &#39;*.bbappend&#39; file with &#39;PACKAGECONFIG_append&#39; =
to achieve that, but seems like it only takes options defined in poky/meta/=
recipes-core/systemd/<a href=3D"http://systemd_225.bb">systemd_225.bb</a> f=
ile. <a href=3D"http://systemd_229.bb">systemd_229.bb</a> has logind option=
, but I&#39;d like to do it in <a href=3D"http://system_225.bb">system_225.=
bb</a></div><div><br></div><div><br></div><div>Available options in 225 are=
 resolved/networkd/audit etc listed below. which does not include logind, i=
s there any way I can remove those features?</div><div><pre style=3D"paddin=
g:0px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);font-size:13.3333px=
"><code><br></code></pre><pre style=3D"padding:0px;margin-top:0px;margin-bo=
ttom:0px;color:rgb(0,0,0);font-size:13.3333px"><code>PACKAGECONFIG<span cla=
ss=3D"">[</span>xz<span class=3D"">] =3D</span> <span class=3D"" style=3D"c=
olor:rgb(191,3,3)">&quot;--enable-xz,--disable-xz,xz&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>cryptsetup<span class=3D"">] =3D</spa=
n> <span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-libcryptset=
up,--disable-libcryptsetup,cryptsetup&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>microhttpd<span class=3D"">] =3D</spa=
n> <span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-microhttpd,=
--disable-microhttpd,libmicrohttpd&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>elfutils<span class=3D"">] =3D</span>=
 <span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-elfutils,--di=
sable-elfutils,elfutils&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>resolved<span class=3D"">] =3D</span>=
 <span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-resolved,--di=
sable-resolved&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>networkd<span class=3D"">] =3D</span>=
 <span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-networkd,--di=
sable-networkd&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>libidn<span class=3D"">] =3D</span> <=
span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-libidn,--disabl=
e-libidn,libidn&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>audit<span class=3D"">] =3D</span> <s=
pan class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-audit,--disable-=
audit,audit&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>manpages<span class=3D"">] =3D</span>=
 <span class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-manpages,--di=
sable-manpages,libxslt-native xmlto-native docbook-xml-dtd4-native docbook-=
xsl-stylesheets-native&quot;</span>
PACKAGECONFIG<span class=3D"">[</span>pam<span class=3D"">] =3D</span> <spa=
n class=3D"" style=3D"color:rgb(191,3,3)">&quot;--enable-pam,--disable-pam,=
libpam&quot;</span></code></pre><pre style=3D"padding:0px;margin-top:0px;ma=
rgin-bottom:0px;font-size:13.3333px"><font color=3D"#bf0303">...</font></pr=
e><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13.3=
333px"><font color=3D"#bf0303">...</font></pre><pre style=3D"padding:0px;ma=
rgin-top:0px;margin-bottom:0px;font-size:13.3333px"><font color=3D"#bf0303"=
><br></font></pre><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0p=
x;font-size:13.3333px"><font color=3D"#bf0303"><br></font></pre><pre style=
=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13.3333px"><code=
><span class=3D""><font color=3D"#000000"><font face=3D"arial, helvetica, s=
ans-serif">also I&#39;d like to remove functions like graphical user sessio=
n support and display service etc. Any ideas if that&#39;s possible?</font>=
</font></span></code></pre><pre style=3D"padding:0px;margin-top:0px;margin-=
bottom:0px;font-size:13.3333px"><code><span class=3D""><font color=3D"#0000=
00"><font face=3D"arial, helvetica, sans-serif"><br></font></font></span></=
code></pre><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-=
size:13.3333px"><code><span class=3D""><font color=3D"#000000"><font face=
=3D"arial, helvetica, sans-serif">Thanks,</font></font></span></code></pre>=
<pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13.333=
3px"><code><span class=3D""><font color=3D"#000000"><font face=3D"arial, he=
lvetica, sans-serif"><br></font></font></span></code></pre><pre style=3D"pa=
dding:0px;margin-top:0px;margin-bottom:0px;font-size:13.3333px"><code><span=
 class=3D""><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif">Michael</font></font></span></code></pre><pre style=3D"padding:0px;mar=
gin-top:0px;margin-bottom:0px;color:rgb(0,0,0);font-size:13.3333px"><code><=
span class=3D"" style=3D"color:rgb(191,3,3)"><br></span></code></pre></div>=
</div>

--94eb2c0742042e9d6d0530776a4a--
