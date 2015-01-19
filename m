Return-Path: <a.renault@kaptalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9843EE0070B; Mon, 19 Jan 2015 05:20:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 308 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Jan 2015 05:20:14 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F155E004F2
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 05:20:14 -0800 (PST)
Received: from linux-le0l.site ([46.18.96.158]) by mrelayeu.kundenserver.de
	(mreue001) with ESMTPA (Nemesis) id 0MgCdZ-1YP6mG3JwL-00NQHV;
	Mon, 19 Jan 2015 14:15:01 +0100
From: "a.renault@kaptalia.com" <a.renault@kaptalia.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Jan 2015 14:14:54 +0100
Message-ID: <2088637.Uqumz9GvW0@linux-le0l.site>
User-Agent: KMail/4.10.5 (Linux/3.7.10-1.45-desktop; KDE/4.10.5; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984116BB30@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984116BB30@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
X-Provags-ID: V03:K0:h13aKfnlS8QkLjC05/xmLfxW/m7k7DFMOblPGpZ7NtU94Cd0nOI
	6kUftXe3q4wU9nG5X9i25YnSLLASRyRcpq86fxK6tG+3VZG+VqjF28cqpp4miUYFyEVpJ/M
	j+VIG7sMDMTlS0fTLicSbb/dRgwscurtCRpdRy0qO2AvYgGnsUm+7ACRPoir2JieH7QoLEy
	9aSqoaBRdugbrc9GdQRSQ==
X-UI-Out-Filterresults: notjunk:1;
Subject: Re: Qt4-embedded mkspecs question
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
X-List-Received-Date: Mon, 19 Jan 2015 13:20:26 -0000
Content-Type: multipart/alternative; boundary="nextPart2278750.AgNffczYqI"
Content-Transfer-Encoding: 7Bit

--nextPart2278750.AgNffczYqI
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

You probably miss the toolchain_create_sdk_env_script_append()=20
in meta/recipes-qt/meta/meta-toolchain-qt.inc.

Do not forget QT_DIR_NAME too.

Regards,
--=20
Adrien RENAULT
Ing=C3=A9nieur R&D
Kaptalia Monitoring
Le jeudi 4 d=C3=A9cembre 2014 19:34:20 Vuille, Martin a =C3=A9crit :


We build Qt4-embedded and export the headers and libraries
into the SDK for the application to build against.
=20
We also include nativesdk-qt4-tools in the SDK.
=20
The application team is saying that they also need the mkspecs,
and those are not included in the SDK.
=20
Are the mkspecs supposed to be exported into the SDK? I don=E2=80=99t
see a nativesdk package that contains them.
=20
We had to customize the Qt recipes somewhat, so it=E2=80=99s entirely
possible that we broke something.
=20
Any help appreciated.
=20
MV=20



--nextPart2278750.AgNffczYqI
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/=
REC-html40/strict.dtd">
<html><head><meta name=3D"qrichtext" content=3D"1" /><style type=3D"tex=
t/css">
p, li { white-space: pre-wrap; }
</style></head><body style=3D" font-family:'Sans Serif'; font-size:9pt;=
 font-weight:400; font-style:normal;">
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hi,=
</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">You=
 probably miss the toolchain_create_sdk_env_script_append() </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">in =
meta/recipes-qt/meta/meta-toolchain-qt.inc.</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Do =
not forget QT_DIR_NAME too.</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Reg=
ards,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">-- =
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Adr=
ien RENAULT</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Ing=
=C3=A9nieur R&amp;D</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Kap=
talia Monitoring</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Le =
jeudi 4 d=C3=A9cembre 2014 19:34:20 Vuille, Martin a =C3=A9crit :<br />=
</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>We build Qt4-embedded and export the headers and libraries</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>into the SDK for the application to build against.</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>=C2=A0</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>We also include nativesdk-qt4-tools in the SDK.</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>=C2=A0</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>The application team is saying that they also need the mkspecs,</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>and those are not included in the SDK.</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>=C2=A0</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>Are the mkspecs supposed to be exported into the SDK? I don=E2=80=99t<=
/p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>see a nativesdk package that contains them.</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>=C2=A0</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>We had to customize the Qt recipes somewhat, so it=E2=80=99s entirely<=
/p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>possible that we broke something.</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>=C2=A0</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>Any help appreciated.</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>=C2=A0</p>
<p style=3D" margin-top:12px; margin-bottom:12px; margin-left:40px; mar=
gin-right:40px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"=
>MV </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br=
 /><br /></p></body></html>

--nextPart2278750.AgNffczYqI--
