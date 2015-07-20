Return-Path: <lenin.muthukumar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00DF1E006EE; Mon, 20 Jul 2015 05:28:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lenin.muthukumar[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95E4FE0034B
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 05:28:49 -0700 (PDT)
Received: by ykdu72 with SMTP id u72so137066535ykd.2
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 05:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=v+dYwJYMDWgWwKRhEUoYq7vNYSFtXQrVAjoLOi43dEo=;
	b=xTIxCdCF+R4j4RX3K+5CMG7jmnoD2UDtXH+vnyyBkHYZ2y+POreO2u1l9NGC6w1Rj5
	NBBYystUv4+N9UiZ37Ozi5tl1RGxfMAci/J/A0seeHsZbwNE2jWfHhjSbAlwMRCRxGke
	Gyz678PoutNFhWqyLyGwUgk9YAPl7a2QR23T1qBSOXDVtC8odAU2ih2C7PyNrYYmbAuq
	oE7Qf9XgC6OE/KnE0DTqkyLhB6oUL63PD8OX92EZiaYK7oHh0uSEzfy5B1Df/tjCLHZx
	s6VMkkVDhdFvJDUKGz27Vfw6/heb38zCGvX2066nqPfS0xj6z0l28wxezp0+n850d/Hr
	h/Xg==
MIME-Version: 1.0
X-Received: by 10.170.75.194 with SMTP id r185mr5347045ykr.121.1437395328504; 
	Mon, 20 Jul 2015 05:28:48 -0700 (PDT)
Received: by 10.13.200.65 with HTTP; Mon, 20 Jul 2015 05:28:48 -0700 (PDT)
Date: Mon, 20 Jul 2015 17:58:48 +0530
Message-ID: <CAO0HP3E2LNpv=buzdVJG_PcNCW2wSCmho6GRk5x_ScWnge39mw@mail.gmail.com>
From: Lenin Muthu kumar <lenin.muthukumar@gmail.com>
To: yocto@yoctoproject.org
Subject: How to add bluetooth "bluez4" to core image sato (valleyisland)
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
X-List-Received-Date: Mon, 20 Jul 2015 12:28:52 -0000
Content-Type: multipart/alternative; boundary=001a1139bbe2f51a19051b4dada9

--001a1139bbe2f51a19051b4dada9
Content-Type: text/plain; charset=UTF-8

Hi,
    i have created the image for atom E3800 processor (valleyisland -
core-image-sato). now i need to add bluetooth service to that image. i need
a detailed steps how to do it. im expecting positive reply from you. thanks
in advance.

--001a1139bbe2f51a19051b4dada9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 i have created the image for atom E3=
800 processor (valleyisland - core-image-sato). now i need to add bluetooth=
 service to that image. i need a detailed steps how to do it. im expecting =
positive reply from you. thanks in advance.</div></div>

--001a1139bbe2f51a19051b4dada9--
