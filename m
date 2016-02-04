Return-Path: <fabatera@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53443E00BEB; Thu,  4 Feb 2016 08:35:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (fabiferro[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFD85E0090C
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 08:35:55 -0800 (PST)
Received: by mail-yk0-f169.google.com with SMTP id z13so45407008ykd.0
	for <yocto@yoctoproject.org>; Thu, 04 Feb 2016 08:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=Fs8pBF68idttOeLLX/i1SDMSYSJMTA8SMP4RRnZ+pws=;
	b=eNz2nWIjkXe/f8MLjSbqougyDPIoNgIHsuSqBmAsIbBdz9XqrabWZvFNdI+Evdo69S
	CKB2XyQvgPWMmdV3lYxcawibeVBR2HMeLLLzMcd1BIrUAOegz7qoYHYV7LxtuoB00Zg0
	Jn7ORP5URCYlfNWp5R04sGOPR5EcghCQk8/RNvoVHRBB2/X5LkIzrYWdWRyx411it1nL
	0TRDsHKt9youFqRTQ7XWHWELUWsGOkqE1MWShCdcHyXyJ7gHaUihJRPlAUR+Cous9/7K
	hcu0scDnPlmv+zg//rm7vbUuPBrUwG0WRgTcX/5NvtL33dHO1N6YWWWqnr2rHRPr69HJ
	apLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=Fs8pBF68idttOeLLX/i1SDMSYSJMTA8SMP4RRnZ+pws=;
	b=ZnNSxdmTp7Avunw+KwT1p55SKAydsOqyPDQjxgKdRHRDEtmI/voQGTjyBPAJXJIhpK
	uErLHMwi8amLK874p85THb6qmw63h2Tn74ynAsQQ/HXbj/mzOA+VybslqbCDqBoN6gfs
	NxUa3s2TbrNTzA3iLfJ22WXO65qSCBEaR3KEaR06+9oZgKK8cowzQ+EQqdoSQtWGPdY+
	fnavpjbj7XwUSyzZU8qeRkTLCmfNxNW1K/BV/hxCYRByay6pbbIB5Vy/I+em0BPPdN6R
	d8tOQyi/dGgEhrAlVjrRpXnWWhKVOdrubu8ryV9xdZf+f0rri0mH7tOphR9jY360971a
	2AEQ==
X-Gm-Message-State: AG10YOTqccO6OAU8iyib/eh1793zsx7ecJb3JQlgmRQ4Fu3p8AVUE3Kwu/S5PGJKqmMH7yB+M94+KkPMEBH2Ug==
MIME-Version: 1.0
X-Received: by 10.13.235.134 with SMTP id u128mr4230266ywe.26.1454603755220;
	Thu, 04 Feb 2016 08:35:55 -0800 (PST)
Sender: fabatera@gmail.com
Received: by 10.37.79.8 with HTTP; Thu, 4 Feb 2016 08:35:55 -0800 (PST)
Date: Thu, 4 Feb 2016 14:35:55 -0200
X-Google-Sender-Auth: EHbAK_4lMTDr614Gvgcc-TN1JCs
Message-ID: <CADTZ_t=xKu6mwyP_1NQRkJy1ch+KrhOniA6F1C6JjO+1-7yHTg@mail.gmail.com>
From: Fabiano Ferronato <fabiferro@hotmail.com>
To: yocto@yoctoproject.org
Subject: How to enable php5 (php_5.5.22.bb) support for postgresql
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
X-List-Received-Date: Thu, 04 Feb 2016 16:35:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c0854d01e79bb052af45481

--94eb2c0854d01e79bb052af45481
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all!

I=C2=B4m new to yocto recipes and never posted to this mail list.

I=C2=B4m trying to include postgresql PDO in PHP.

Something like what is informed using ./configure --help in php source:

-with-pdo-pgsql[=3DDIR]    PDO: PostgreSQL support

My recipe file is php_5.5.21.bb  and here are some default config lines:

PACKAGECONFIG[mysql] =3D "--with-mysql=3D${STAGING_DIR_TARGET}${prefix} \
                        --with-mysqli=3D${STAGING_BINDIR_CROSS}/mysql_confi=
g \

--with-pdo-mysql=3D${STAGING_BINDIR_CROSS}/mysql_config \
                        ,--without-mysql --without-mysqli
--without-pdo-mysql \
                        ,mysql5"

PACKAGECONFIG[sqlite3] =3D "--with-sqlite3=3D${STAGING_LIBDIR}/.. \
                          --with-pdo-sqlite=3D${STAGING_LIBDIR}/.. \
                          , \
                          ,sqlite3"
PACKAGECONFIG[pgsql] =3D
"--with-pgsql=3D${STAGING_DIR_TARGET}${exec_prefix},--without-pgsql,postgre=
sql"

Could somebody tell me how to configure this recipe?

Best regards
Fabiano

--94eb2c0854d01e79bb052af45481
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all!<div><br></div><div>I=C2=B4m new to yocto recipes a=
nd never posted to this mail list.<div><br></div><div>I=C2=B4m trying to in=
clude postgresql PDO in PHP.</div><div><br></div><div>Something like what i=
s informed using ./configure --help in php source:</div><div><br></div><div=
><span style=3D"color:rgb(0,0,0);font-family:&#39;Fira Mono&#39;,&#39;Sourc=
e Code Pro&#39;,monospace;font-size:14px;line-height:24px">-with-pdo-pgsql[=
=3DDIR]=C2=A0 =C2=A0 PDO: PostgreSQL support</span><br></div><div><span sty=
le=3D"color:rgb(0,0,0);font-family:&#39;Fira Mono&#39;,&#39;Source Code Pro=
&#39;,monospace;font-size:14px;line-height:24px"><br></span></div><div><spa=
n style=3D"color:rgb(0,0,0);font-family:&#39;Fira Mono&#39;,&#39;Source Cod=
e Pro&#39;,monospace;font-size:14px;line-height:24px">My recipe file is <a =
href=3D"http://php_5.5.21.bb">php_5.5.21.bb</a> =C2=A0and here are some def=
ault config lines:=C2=A0</span></div><div><span style=3D"color:rgb(0,0,0);f=
ont-family:&#39;Fira Mono&#39;,&#39;Source Code Pro&#39;,monospace;font-siz=
e:14px;line-height:24px"><br></span></div><div><div style=3D""><font color=
=3D"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D"=
font-size:14px;line-height:24px">PACKAGECONFIG[mysql] =3D &quot;--with-mysq=
l=3D${STAGING_DIR_TARGET}${prefix} \</span></font></div><div style=3D""><fo=
nt color=3D"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span s=
tyle=3D"font-size:14px;line-height:24px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-mysqli=3D${STAGING=
_BINDIR_CROSS}/mysql_config \</span></font></div><div style=3D""><font colo=
r=3D"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D=
"font-size:14px;line-height:24px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-pdo-mysql=3D${STAGING_BIN=
DIR_CROSS}/mysql_config \</span></font></div><div style=3D""><font color=3D=
"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D"fon=
t-size:14px;line-height:24px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ,--without-mysql --without-mysqli --=
without-pdo-mysql \</span></font></div><div style=3D""><font color=3D"#0000=
00" face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D"font-size=
:14px;line-height:24px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ,mysql5&quot;</span></font></div><div st=
yle=3D""><font color=3D"#000000" face=3D"Fira Mono, Source Code Pro, monosp=
ace"><span style=3D"font-size:14px;line-height:24px"><br></span></font></di=
v><div style=3D""><font color=3D"#000000" face=3D"Fira Mono, Source Code Pr=
o, monospace"><span style=3D"font-size:14px;line-height:24px">PACKAGECONFIG=
[sqlite3] =3D &quot;--with-sqlite3=3D${STAGING_LIBDIR}/.. \</span></font></=
div><div style=3D""><font color=3D"#000000" face=3D"Fira Mono, Source Code =
Pro, monospace"><span style=3D"font-size:14px;line-height:24px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --with-pdo-sqlite=3D${STAGING_LIBDIR}/.. \</span></font></div><div s=
tyle=3D""><font color=3D"#000000" face=3D"Fira Mono, Source Code Pro, monos=
pace"><span style=3D"font-size:14px;line-height:24px">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 , \</=
span></font></div><div style=3D""><font color=3D"#000000" face=3D"Fira Mono=
, Source Code Pro, monospace"><span style=3D"font-size:14px;line-height:24p=
x">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ,sqlite3&quot;</span></font></div><div style=3D""><fon=
t color=3D"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span st=
yle=3D"font-size:14px;line-height:24px">PACKAGECONFIG[pgsql] =3D &quot;--wi=
th-pgsql=3D${STAGING_DIR_TARGET}${exec_prefix},--without-pgsql,postgresql&q=
uot;</span></font></div></div></div><div style=3D""><font color=3D"#000000"=
 face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D"font-size:14=
px;line-height:24px"><br></span></font></div><div style=3D""><font color=3D=
"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D"fon=
t-size:14px;line-height:24px">Could somebody tell me how to configure this =
recipe?</span></font></div><div style=3D""><font color=3D"#000000" face=3D"=
Fira Mono, Source Code Pro, monospace"><span style=3D"font-size:14px;line-h=
eight:24px"><br></span></font></div><div style=3D""><font color=3D"#000000"=
 face=3D"Fira Mono, Source Code Pro, monospace"><span style=3D"font-size:14=
px;line-height:24px">Best regards</span></font></div><div style=3D""><font =
color=3D"#000000" face=3D"Fira Mono, Source Code Pro, monospace"><span styl=
e=3D"font-size:14px;line-height:24px">Fabiano</span></font></div></div>

--94eb2c0854d01e79bb052af45481--
