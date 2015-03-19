Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77698E0092D; Thu, 19 Mar 2015 02:07:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A71BAE0093E;
	Thu, 19 Mar 2015 02:07:26 -0700 (PDT)
Received: by iecvj10 with SMTP id vj10so61057377iec.0;
	Thu, 19 Mar 2015 02:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:content-type;
	bh=Vi3OLTwJb/CfwryKDrzKh4YU0L/AEIwoxR83Wd5RAo4=;
	b=G6hcgzt/RECGawXPovUBuYobL1VcI40PSU3MP4mGlcfHhrg2teMzA27xHEfsCfESNS
	C3FMP++XZplPF2KItUwdm53IfoqKidm78M+48G1hvhOUtLbHoPMf2XyI+9D4r1B7WanX
	qGW0SsiMiBE3z9lqWKpfl2mR7NCQYDbm2I+gqQB563QqvTaA/1iS4aJTfn0n4NSswkfv
	OOUsRLffIQJrQYlkiRNtZqMepWiMKLO8DdCtysERgEcrs89fDZnlWT39bAfVfM3xVbUQ
	wUPEod0QWwYEFXhy06LCw/xSF09lii5gwR/YEk0uuCGAhv//9Yq3Vd5ipWwhXPELzq1R
	zCEA==
MIME-Version: 1.0
X-Received: by 10.50.142.38 with SMTP id rt6mr14400216igb.39.1426756045558;
	Thu, 19 Mar 2015 02:07:25 -0700 (PDT)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.16.139 with HTTP; Thu, 19 Mar 2015 02:07:25 -0700 (PDT)
In-Reply-To: <CALTPfpGcuSDbWjqqmmAn8mG0nwRg=gGJePiWLs7U9A8FSn_5DQ@mail.gmail.com>
References: <CALTPfpGcuSDbWjqqmmAn8mG0nwRg=gGJePiWLs7U9A8FSn_5DQ@mail.gmail.com>
Date: Thu, 19 Mar 2015 14:37:25 +0530
X-Google-Sender-Auth: Pr99tic8F970A1cVspTI6vT2DRg
Message-ID: <CALTPfpEioQubDTeBdE6yoVff1_hVu4G7LDqx3On1uGraQTHi1g@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	"yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Including Static Libraries from sysroot in an autotools based package
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
X-List-Received-Date: Thu, 19 Mar 2015 09:07:48 -0000
Content-Type: multipart/alternative; boundary=001a11c3a95046dca80511a0876c

--001a11c3a95046dca80511a0876c
Content-Type: text/plain; charset=UTF-8

Hi,

I need to link some libraries which are in sysroot into my source code.
These are usdpaa libraries.

I added DEPENDS += "usdpaa" in .bb file.
Apart from that also changed the Makefile.am of my source to include the
following:
area_LDADD = -lusdpaa_of
Then I ran aclocal, autoconf, automake --add-missing and retarred my
package.

When the package is being built from recipe, do_compile fails. It shows
"undefined reference to" error.
So this means that libraries are not getting linked by just doing the above
changes. What else I need to change?

I think this problem is specific to autotools based projects as when I
include the libraries during the gcc command they are easily included.

do_compile() {
    ${CC} check.c -o check -lusdpaa_of
}
link to area.bb
http://pastebin.com/Bef2C7nX

--001a11c3a95046dca80511a0876c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I need to link some libraries w=
hich are in sysroot into my source code. These are usdpaa libraries.<br><br=
></div><div>I added DEPENDS +=3D &quot;usdpaa&quot; in .bb file.<br>Apart f=
rom that also changed the Makefile.am of my source to include the following=
:<br></div><div style=3D"margin-left:40px">area_LDADD =3D -lusdpaa_of<br></=
div><div>Then I ran aclocal, autoconf, automake --add-missing and retarred =
my package.<br><br></div><div>When the package is being built from recipe, =
do_compile fails. It shows &quot;undefined reference to&quot; error.<br></d=
iv>So this means that libraries are not getting linked by just doing the ab=
ove changes. What else I need to change?<br><br>I
 think this problem is specific to autotools based projects as when I=20
include the libraries during the gcc command they are easily included.<br><=
div style=3D"margin-left:40px"><br>do_compile() {<br>=C2=A0=C2=A0=C2=A0 ${C=
C} check.c -o check -lusdpaa_of<br>}<br></div>link to <a href=3D"http://are=
a.bb" target=3D"_blank">area.bb</a><br><a href=3D"http://pastebin.com/Bef2C=
7nX" target=3D"_blank">http://pastebin.com/Bef2C7nX</a></div>

--001a11c3a95046dca80511a0876c--
