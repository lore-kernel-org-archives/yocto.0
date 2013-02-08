Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 48D39E003BC
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 06:24:37 -0800 (PST)
Received: by mail-vb0-f49.google.com with SMTP id s24so2344688vbi.8
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 06:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=750+6zc+9tfwtMI6QhP0sg2lLzRnoa/79BK2eK3A+gk=;
	b=hoqed/7yPzvdyRcIG7pvfPBOR/g0Lx6Zy5CvFTBeKP3Nh+/qaFUUSW5BgVWhkUTqfP
	Xj7/GLuq4UFxHCes5cLrvEME2toIGbkFBjcVEICiduzaAr9iiVzxc4E7hSVX3zYmCfCP
	Rg2cl5Bzw4vzzKpHgTU8PFvxWTwi8YMdA8vD6Rxs6zNAcAzH+4vlNv8hGa8WwYhBU/3a
	UWwcv8fmCBpDUk66yRI1c94gcsWCoCmfwxDdWIH5Wv5saIbk3hhHR/C3vgTS6XG4pIZz
	tT90FKF64Cwt/OQcO7/48BKDCyKf4Jff3wq/8bA6rHlY36YXoojZllNjXzjQfi0pJqfy
	/9HQ==
MIME-Version: 1.0
X-Received: by 10.52.177.163 with SMTP id cr3mr5988355vdc.94.1360333468825;
	Fri, 08 Feb 2013 06:24:28 -0800 (PST)
Received: by 10.58.251.195 with HTTP; Fri, 8 Feb 2013 06:24:28 -0800 (PST)
Date: Fri, 8 Feb 2013 15:24:28 +0100
Message-ID: <CACW_hTbnHePNOS6Zw7dyBi860Gy0FGBzjnPSWFBNWpBLJkcnHg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: Danny: default base_do_compile but no default base_do_install
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Feb 2013 14:24:37 -0000
Content-Type: multipart/alternative; boundary=20cf3071cc962f78eb04d5375174

--20cf3071cc962f78eb04d5375174
Content-Type: text/plain; charset=ISO-8859-1

Hi!

Apologies upfront if this is the wrong list. I'm not always sure when
things should go to the yocto list and when to oe-core.

Anyway, my question/issue with danny.

In base.bbclass I see a default base_do_compile that reads:

base_do_compile() {
    if [ -e Makefile -o -e makefile -o -e GNUmakefile ]; then
        oe_runmake || die "make failed"
    else
        bbnote "nothing to compile"
    fi
}

There is also a default base_do_install() that is empty.

Wouldn't it be more logical if the base_do_install would read:

base_do_install() {
    if [ -e Makefile -o -e makefile -o -e GNUmakefile ]; then
        oe_runmake install || die "make failed"
    else
        bbnote "nothing to install"
    fi
}

Currently people using only base, need to add a do_install to their recipe
but no do_compile (which is somewhat odd; if there is a makefile it seems
logical to use it for install too).

Appreciate your feedback, if needed i can file a bug report and/or submit a
patch

Frans

--20cf3071cc962f78eb04d5375174
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi!<br><br>Apologies up=
front if this is the wrong list. I&#39;m not always sure when things should=
 go to the yocto list and when to oe-core.<br><br></div>Anyway, my question=
/issue with danny.<br>
<br></div>In base.bbclass I see a default base_do_compile that reads:<br><b=
r>base_do_compile() {<br>=A0=A0=A0 if [ -e Makefile -o -e makefile -o -e GN=
Umakefile ]; then<br>=A0=A0=A0=A0=A0=A0=A0 oe_runmake || die &quot;make fai=
led&quot;<br>=A0=A0=A0 else<br>
=A0=A0=A0=A0=A0=A0=A0 bbnote &quot;nothing to compile&quot;<br>=A0=A0=A0 fi=
<br>}<br><br></div>There is also a default base_do_install() that is empty.=
<br><br></div>Wouldn&#39;t it be more logical if the base_do_install would =
read:<br><br>base_do_install() {<br>
=A0=A0=A0 if [ -e Makefile -o -e makefile -o -e GNUmakefile ]; then<br>=A0=
=A0=A0=A0=A0=A0=A0 oe_runmake install || die &quot;make failed&quot;<br>=A0=
=A0=A0 else<br>=A0=A0=A0=A0=A0=A0=A0 bbnote &quot;nothing to install&quot;<=
br>=A0=A0=A0 fi<br>}<br><br></div>Currently people using only base, need to=
 add a do_install to their recipe but no do_compile (which is somewhat odd;=
 if there is a makefile it seems logical to use it for install too).<br>
<br></div>Appreciate your feedback, if needed i can file a bug report and/o=
r submit a patch<br><br></div>Frans<br></div>

--20cf3071cc962f78eb04d5375174--
