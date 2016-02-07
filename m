Return-Path: <renjithvjn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72A27E00D6A; Sat,  6 Feb 2016 21:37:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (renjithvjn[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E374E00B44
	for <yocto@yoctoproject.org>; Sat,  6 Feb 2016 21:37:55 -0800 (PST)
Received: by mail-yk0-f175.google.com with SMTP id z7so75950450yka.3
	for <yocto@yoctoproject.org>; Sat, 06 Feb 2016 21:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RTIuuDpHGaAGQ10yMYrOhlUnUeARhRgOnlIOyVKQmwI=;
	b=vHB3nCzGm1pbeXsGUOLv9AOAaw4H6/9Kz0FtmrQphVXZLC/FTOIZd0am2SFD66cjDc
	DYz9EOFIN3Nhs3QIBSDJOOJioWy3dvC6rs7DBPrydsNGJ0hzcy1vHYDB2j72AShVWpOH
	6ZYOZWFSxFmekeSLhxSH3xwvrhZE5Yar0mnRg7y2rA39c3lU6mz9fsiK+Tm09nPGGaKc
	+6FSV9C5sLtAsLDAt8Y9TBloAuQ8lOmQ81T4BVUMelUlgnE/zRpzPNS000YzMaZxtX9T
	7yncbXtAnmMF66OHXMje9srL0bg4JnNlQ8KM+2mYtckt7Ntu7r3Yf0kuLEnEFIYPRvDF
	l52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=RTIuuDpHGaAGQ10yMYrOhlUnUeARhRgOnlIOyVKQmwI=;
	b=PFJO6pIcg8rsaIxePCWD8ATWneR3sr6p7GqDTYwaQUGljega0TKa/AIGFx1kH+vpAp
	BE+cNxhlpJNbC9zE7I2a0jEVrC9Juosw09yX83aUsPrSelmV+x6YR/rRPmdE7JObADKL
	dodx1yTqomn6HYY/pHMVB5ro5J6dxSCJRMd9i+fvhSLuAo9uDKFggMRsN+5iwduuYCah
	Gmvu/voHJQU7Ejm4+AgnSqXkasno5CLHYBXhzccSQs4lOieby9gJDIPA2t9m7jOLA7yX
	dgpz2bMTS8zEvxVW226Y+vYxF2kOti2Uw1NC2FZPTA/zakbz773CnXxXcv1wGisiTO90
	IgfQ==
X-Gm-Message-State: AG10YOTZfR+lr0L3cpAI9rQBJawsgXEiWoOSN4RNCvdhc1t0Rjyn9XSQRXiDHy6Vy4oPbcad9CVymhOnS+9IzQ==
MIME-Version: 1.0
X-Received: by 10.37.230.214 with SMTP id d205mr477161ybh.131.1454823474678;
	Sat, 06 Feb 2016 21:37:54 -0800 (PST)
Received: by 10.37.117.213 with HTTP; Sat, 6 Feb 2016 21:37:54 -0800 (PST)
Date: Sun, 7 Feb 2016 11:07:54 +0530
Message-ID: <CAO-QM6Momun4=aVqwgjeTa_YwFA6utngr1ovWchi+Cpn+MaCiQ@mail.gmail.com>
From: Renjith Vijayan <renjithvjn@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 10 Feb 2016 07:08:11 -0800
Subject: QA error while building bitbake package
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
X-List-Received-Date: Sun, 07 Feb 2016 05:37:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c0b08406b535f052b277c17

--94eb2c0b08406b535f052b277c17
Content-Type: text/plain; charset=UTF-8

Hi All,

I am new to Yocto bitbake concept & while building my package running in to
following QA build error.

ERROR: QA Issue: test-repo: Files/directories were installed but not
shipped in any package:
  /etc
  /etc/test
  /etc/test/yamls
  /etc/test/yamls/abc1.yaml
  /etc/test/yamls/abc2.yaml
  /etc/test/yamls/abc3.yaml
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
[installed-vs-shipped]

The following is my bb file content for installing these paths:

do_compile() {
     cd ${S}
     distutils_do_compile
     # Cmake compile changes to the B directory
     cmake_do_compile
}

do_install() {
     cd ${S}
     distutils_do_install
     # Cmake compile changes to the B directory
     cmake_do_install
}

do_install_append(){
   install -d   ${D}/etc/test/yamls
   install -c -m 755 ${S}/conf/*.yaml ${D}/etc/test/yamls
}

FILES_${PN} += "/usr/lib/cli/plugins/ \
                /etc \
                /etc/test \
                /etc/test/yamls \
                /etc/test/yamls/abc1.yaml \
                /etc/test/yamls/abc2.yamll \
                /etc/test/yamls/abc3.yaml"

inherit  setuptools cmake


Could anyone point to me what i am doing wrong here?

Thanks in Advance,
Renjith

--94eb2c0b08406b535f052b277c17
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am new to Yocto bitbake conce=
pt &amp; while building my package running in to following QA build error.<=
/div><div><span style=3D"background-color:rgb(243,243,243)"><br></span></di=
v><div><div><span style=3D"background-color:rgb(243,243,243)">ERROR: QA Iss=
ue: test-repo: Files/directories were installed but not shipped in any pack=
age:</span></div><div><span style=3D"background-color:rgb(243,243,243)">=C2=
=A0 /etc</span></div><div><span style=3D"background-color:rgb(243,243,243)"=
>=C2=A0 /etc/test</span></div><div><span style=3D"background-color:rgb(243,=
243,243)">=C2=A0 /etc/test/yamls</span></div><div><span style=3D"background=
-color:rgb(243,243,243)">=C2=A0 /etc/test/yamls/abc1.yaml</span></div><div>=
<span style=3D"background-color:rgb(243,243,243)">=C2=A0 /etc/test/yamls/ab=
c2.yaml</span></div><div><span style=3D"background-color:rgb(243,243,243)">=
=C2=A0 /etc/test/yamls/abc3.yaml</span></div><div><span style=3D"background=
-color:rgb(243,243,243)">Please set FILES such that these items are package=
d. Alternatively if they are unneeded, avoid installing them or delete them=
 within do_install. [installed-vs-shipped]</span></div></div><div><span sty=
le=3D"background-color:rgb(243,243,243)"><br></span></div><div><span style=
=3D"background-color:rgb(243,243,243)">The following is my bb file content =
for installing these paths:</span></div><div><br></div><div><span style=3D"=
background-color:rgb(243,243,243)"><div>do_compile() {</div><div>=C2=A0 =C2=
=A0 =C2=A0cd ${S}</div><div>=C2=A0 =C2=A0 =C2=A0distutils_do_compile</div><=
div>=C2=A0 =C2=A0 =C2=A0# Cmake compile changes to the B directory</div><di=
v>=C2=A0 =C2=A0 =C2=A0cmake_do_compile</div><div>}</div><div><br></div><div=
>do_install() {</div><div>=C2=A0 =C2=A0 =C2=A0cd ${S}</div><div>=C2=A0 =C2=
=A0 =C2=A0distutils_do_install</div><div>=C2=A0 =C2=A0 =C2=A0# Cmake compil=
e changes to the B directory</div><div>=C2=A0 =C2=A0 =C2=A0cmake_do_install=
</div><div>}</div><div><br></div><div>do_install_append(){</div><div>=C2=A0=
 =C2=A0install -d =C2=A0 ${D}/etc/test/yamls</div><div>=C2=A0 =C2=A0install=
 -c -m 755 ${S}/conf/*.yaml ${D}/etc/test/yamls</div><div>}</div><div><br><=
/div><div>FILES_${PN} +=3D &quot;/usr/lib/cli/plugins/ \</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc \</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/test \</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/test/yamls \</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/test/yam=
ls/abc1.yaml \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 /etc/test/yamls/abc2.yamll \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/test/yamls/abc3.yaml&quot;</div><div><br><=
/div><div>inherit =C2=A0setuptools cmake</div><div><br></div><div><br></div=
><div>Could anyone point to me what i am doing wrong here?</div><div><br></=
div><div>Thanks in Advance,</div><div>Renjith</div><div><br></div></span></=
div><div><span style=3D"background-color:rgb(243,243,243)"><br></span></div=
><div><span style=3D"background-color:rgb(243,243,243)"><br></span></div><d=
iv><br></div><div><br></div><div><br></div></div>

--94eb2c0b08406b535f052b277c17--
