Return-Path: <smoosvi.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE31EE008D9; Tue, 25 Nov 2014 12:57:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (smoosvi.work[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
Received: from mail-vc0-f193.google.com (mail-vc0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D535E0084E
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 12:57:30 -0800 (PST)
Received: by mail-vc0-f193.google.com with SMTP id hq11so120021vcb.4
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 12:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fxSP8REHAN+MYWHh//NmbOxOGgue/0CKzo4U73KdKN4=;
	b=sUBZb1uXWzmPEtmX1KwrHt1IbSDIhHNtrD1zA5wp12XDhzz+HEYGs7VzyO3CsC2O82
	6yPTqRHtOW1AMnlw9o1FROuQ1p9DFqVtOtSODU/lBEba3ITuaY6CThI8Dvvd+dyrJel1
	mc7A6yl4QGkRBa46/39KOiGpOZH6cRfTkedoEJPgRl4XUQF4NdsWVRTqOvSzpNoXCssy
	pnFDOSuM/tDOqygghEZmnupu6aen1gB5lS5H2xoWykxsBkVTI3jaSJ/RCFWFzXip8eVx
	O0mZilojFIL4y24hk5+k4W1RCXX6gfQTOABKM5bH7LdqtOk2PaZHOukdIWKurcjUWwZe
	zgUA==
MIME-Version: 1.0
X-Received: by 10.52.28.7 with SMTP id x7mr13574898vdg.27.1416949049880; Tue,
	25 Nov 2014 12:57:29 -0800 (PST)
Received: by 10.31.33.65 with HTTP; Tue, 25 Nov 2014 12:57:29 -0800 (PST)
Date: Tue, 25 Nov 2014 20:57:29 +0000
Message-ID: <CADuAu8Qw_EZdNBN15LMoYz9tLX8PBP7pYWc_AgXd-+41yrPEFA@mail.gmail.com>
From: Syed Moosvi <smoosvi.work@gmail.com>
To: yocto@yoctoproject.org
Subject: Headers missing in generated SDK
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
X-List-Received-Date: Tue, 25 Nov 2014 20:57:34 -0000
Content-Type: multipart/alternative; boundary=20cf3078153ec8793c0508b528a1

--20cf3078153ec8793c0508b528a1
Content-Type: text/plain; charset=UTF-8

Hi All,

           I am working on danny branch and having an issue with respect to
adding headers in the generated SDK toolchain.

I am generating the SDK using

$ bitbake -c populate_sdk image_name

When I generate the SDK, the openssl and alsa headers were missing from
/opt/poky/1.3/sysroots/image-poky-linux-gnueabi/usr/include

Adding the following did add the ALSA headers but the openssl headers are
still missing

TOOLCHAIN_TARGET_TASK_append = " openssl-dev"

TOOLCHAIN_TARGET_TASK_append = " alsa-dev"

Therefore can anyone please let me know the following

1) What headers ar populated in /opt/poky/1.3/sysroots/image
-poky-linux-gnueabi/usr/include.

2) How do I make the openssl headers appear in /opt/poky/1.3/sysroots/image
-poky-linux-gnueabi/usr/include

3) I though all the headers for all the libs used in target will be
populated in the SDK. Is this not true?

4) Also noticed the headers are present in but not in generated SDK.
/tmp/sysroots/image/usr/include/openssl/


Thanks,
Syed

--20cf3078153ec8793c0508b528a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>Hi All,<=
br><br></div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I=
 am working on danny branch and having an issue with respect to adding head=
ers in the generated SDK toolchain.<br><br></div><div>I am generating the S=
DK using<br><br><font><span style=3D"font-size:10pt">$ bitbake -c populate_=
sdk image_name</span></font><br></div><div><br></div>When I generate the SD=
K, the openssl and alsa headers were missing from <span style=3D"font-size:=
15px;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-w=
eight:normal;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942f=
c150acb9">/opt/poky/1.3/sysroots/image</span><span style=3D"font-size:15px;=
font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight=
:normal;font-style:normal;font-variant:normal;text-decoration:none;vertical=
-align:baseline" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942fc150a=
cb9"><font face=3D"Calibri"><span style=3D"font-size:11pt">-poky-linux-gnue=
abi</span></font>/usr/include<br><br></span></div><span style=3D"font-size:=
15px;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-w=
eight:normal;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942f=
c150acb9">Adding the following did add the ALSA headers but the openssl hea=
ders are still missing<br><br></span><p dir=3D"ltr" style=3D"line-height:1.=
15;margin-top:0pt;margin-bottom:0pt" id=3D"docs-internal-guid-22e52584-e8b0=
-ea47-d356-67b9520d6b8a"><span style=3D"font-size:15px;font-family:Arial;co=
lor:rgb(0,0,0);background-color:transparent;font-weight:normal;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline">TOO=
LCHAIN_TARGET_TASK_append =3D &quot; openssl-dev&quot;</span></p><p dir=3D"=
ltr" style=3D"line-height:1.15;margin-top:0pt;margin-bottom:0pt"></p><p dir=
=3D"ltr" style=3D"line-height:1.15;margin-top:0pt;margin-bottom:0pt" id=3D"=
docs-internal-guid-22e52584-e8b0-ea47-d356-67b9520d6b8a"><span style=3D"fon=
t-size:15px;font-family:Arial;color:rgb(0,0,0);background-color:transparent=
;font-weight:normal;font-style:normal;font-variant:normal;text-decoration:n=
one;vertical-align:baseline">TOOLCHAIN_TARGET_TASK_append =3D &quot; alsa-d=
ev&quot;</span></p><br></div>Therefore can anyone please let me know the fo=
llowing<br><br></div>1) What headers ar populated in <span style=3D"font-si=
ze:15px;font-family:Arial;color:rgb(0,0,0);background-color:transparent;fon=
t-weight:normal;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-9=
42fc150acb9">/opt/poky/1.3/sysroots/</span><span style=3D"font-size:15px;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:n=
ormal;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942fc150acb=
9"><span style=3D"font-size:15px;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:normal;font-style:normal;font-variant:nor=
mal;text-decoration:none;vertical-align:baseline" id=3D"docs-internal-guid-=
22e52584-e8af-dafd-82d2-942fc150acb9">image</span><span style=3D"font-size:=
15px;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-w=
eight:normal;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942f=
c150acb9"><font face=3D"Calibri"><span style=3D"font-size:11pt">-poky-linux=
-gnueabi</span></font></span>/usr/include. <br><br></span></div><span style=
=3D"font-size:15px;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-weight:normal;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline" id=3D"docs-internal-guid-22e52584-e8af-=
dafd-82d2-942fc150acb9">2) How do I make the openssl headers appear in </sp=
an><span style=3D"font-size:15px;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:normal;font-style:normal;font-variant:nor=
mal;text-decoration:none;vertical-align:baseline" id=3D"docs-internal-guid-=
22e52584-e8af-dafd-82d2-942fc150acb9">/opt/poky/1.3/sysroots/</span><span s=
tyle=3D"font-size:15px;font-family:Arial;color:rgb(0,0,0);background-color:=
transparent;font-weight:normal;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline" id=3D"docs-internal-guid-22e52584-e=
8af-dafd-82d2-942fc150acb9"><span style=3D"font-size:15px;font-family:Arial=
;color:rgb(0,0,0);background-color:transparent;font-weight:normal;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline" =
id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942fc150acb9">image</span>=
<span style=3D"font-size:15px;font-family:Arial;color:rgb(0,0,0);background=
-color:transparent;font-weight:normal;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline" id=3D"docs-internal-guid-22e=
52584-e8af-dafd-82d2-942fc150acb9"><font face=3D"Calibri"><span style=3D"fo=
nt-size:11pt">-poky-linux-gnueabi</span></font></span>/usr/include<br><br><=
/span></div><span style=3D"font-size:15px;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;font-weight:normal;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline" id=3D"docs-inter=
nal-guid-22e52584-e8af-dafd-82d2-942fc150acb9">3) I though all the headers =
for all the libs used in target will be populated in the SDK. Is this not t=
rue?<br><br></span></div><div><span style=3D"font-size:15px;font-family:Ari=
al;color:rgb(0,0,0);background-color:transparent;font-weight:normal;font-st=
yle:normal;font-variant:normal;text-decoration:none;vertical-align:baseline=
" id=3D"docs-internal-guid-22e52584-e8af-dafd-82d2-942fc150acb9">4) Also no=
ticed the headers are present in but not in generated SDK.<br></span><font =
face=3D"Calibri"><span style=3D"font-size:11pt">/tmp/sysroots/image/usr/inc=
lude/openssl/</span></font></div><br><br></div>Thanks,<br></div>Syed<br></d=
iv>

--20cf3078153ec8793c0508b528a1--
