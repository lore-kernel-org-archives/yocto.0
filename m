Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3194AE00B52; Wed,  7 Oct 2015 21:37:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_08,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB5D8E00B52
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 21:37:42 -0700 (PDT)
Received: by vkat63 with SMTP id t63so2389451vka.1
	for <yocto@yoctoproject.org>; Wed, 07 Oct 2015 21:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sLElCxC7PIw4ST/BvBX4hnoEFpv8xWlp2uis8QmknCY=;
	b=Nty8V4xuR2X/S+jBdmad5JwR4S9bYV4W09TRnX4tStM+eXKqRCUT+QRaTowaPO6P29
	oyKtbFC9f1tFou0wqOEw2LNXrHIeXgwjUXW88pCwEveQ3Jy2nI1/sLROdW4iIvCPWG3K
	3Nnkm/O3WiarFkmiHn4sOVcYk4afYVMkIXtG0TU3K0MsFei2+pKrVlqMZ4sLs1T1jsmJ
	EikoOq7s3WjUy5qSsPU8efshrNxtGhLoISlTY5jSMlDps+3gj7KmtYmJB6F0dEyLHRoe
	pt1YwfATs1wjODX9VRwFNWDm923pM5Hh2Gg80vetW1ym+E8jO4Mlfg9GOG/DIOtun6rO
	WSXg==
MIME-Version: 1.0
X-Received: by 10.31.152.145 with SMTP id a139mr3394280vke.20.1444279061547;
	Wed, 07 Oct 2015 21:37:41 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Wed, 7 Oct 2015 21:37:41 -0700 (PDT)
Date: Thu, 8 Oct 2015 10:07:41 +0530
Message-ID: <CALLyC8Sk+k9jJCRByejYnO1WfmOx9849XuRqB3bxG538Gs1pyQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: Can any one please tell the what is the exact difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Thu, 08 Oct 2015 04:37:45 -0000
Content-Type: multipart/alternative; boundary=001a1141d5f06b917a0521906c90

--001a1141d5f06b917a0521906c90
Content-Type: text/plain; charset=UTF-8

Hi,
     Can any one please tell the what is the exact difference between
DEPENDS and RDEPENDS . I am not able to get it . How these variables are
exactly parsed.


-regards
vivek

--001a1141d5f06b917a0521906c90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi,</span><div style=3D"f=
ont-size:12.8px">=C2=A0 =C2=A0 =C2=A0Can any one please tell the what is th=
e exact difference between DEPENDS and RDEPENDS . I am not able to get it .=
 How these variables are exactly parsed.</div><div style=3D"font-size:12.8p=
x"><br></div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-s=
ize:12.8px">-regards</div><div style=3D"font-size:12.8px"><span style=3D"co=
lor:rgb(136,136,136);font-size:12.8px">vivek</span><br></div><div class=3D"=
" style=3D"font-size:12.8px"><div id=3D":qh" class=3D"" tabindex=3D"0"><img=
 class=3D"" src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot=
.gif"></div></div></div>

--001a1141d5f06b917a0521906c90--
