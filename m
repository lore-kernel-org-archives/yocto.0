Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FC61E00BE0; Thu,  5 Jun 2014 04:28:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34022E00B74
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 04:28:21 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id pn19so478680lab.20
	for <yocto@yoctoproject.org>; Thu, 05 Jun 2014 04:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SnlciAZHhIhvFjln6PReZ6CZ1+/YbSuh5oEmpLSlLWs=;
	b=ekLwImSZ5LpqXeKOl6WU/GoHYMhpX2LkPwQtQuAKvy2BnVNf3jTIznSeGadhYlUMe/
	G53SaLXwgAQ1LOMm4hjwK4XgF7JcD3wQMcYC74EAAHEF6bkDynzFKPZOiRcNg1ThhuQV
	9akECfw8jXWAAiAUqXroS6uu+wRaPxjzGbhAXuTla8BL6Ai3yc6HvfU11dBS3kPirJTd
	RGyVzf4f30bTH44LPz1AJc2NbKmcGiCxQF5a9tLsBTRkRwwk7SPYvTIC4N2LjNiOK2Pn
	MYhpDJRKEbmBXYZirx/gMlHH8VMgQ2/AgIoV2PVTIeJUh/WOf1eeRIn4CoVixCP0aHCT
	Pg8Q==
MIME-Version: 1.0
X-Received: by 10.112.143.98 with SMTP id sd2mr42525440lbb.15.1401967699736;
	Thu, 05 Jun 2014 04:28:19 -0700 (PDT)
Received: by 10.114.29.132 with HTTP; Thu, 5 Jun 2014 04:28:19 -0700 (PDT)
Date: Thu, 5 Jun 2014 16:58:19 +0530
Message-ID: <CANJXcUYmMp5SzgBsr3icysjVqBDr8Ksz41141r1KQ6rtKSAUMQ@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building for Boards not supported by Yocto Project
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
X-List-Received-Date: Thu, 05 Jun 2014 11:28:27 -0000
Content-Type: multipart/alternative; boundary=089e0115fb1ababf8904fb150a51

--089e0115fb1ababf8904fb150a51
Content-Type: text/plain; charset=UTF-8

Hello.

I have successfully built and tested core-image-sato through the process
given by the quick start guide at the yocto project website. Now I intend
to build an image for a board which is not officially supported by yocto
project. I have a FriendlyArm mini6410 whose BSP is available for linux.

I would like to know how should I proceed further.
Is it possible to use the same BSP without any changes and make an image
using Yocto?

Kashyap Gada

--089e0115fb1ababf8904fb150a51
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello.<div><br></div><div>I have successfully built and te=
sted core-image-sato through the process given by the quick start guide at =
the yocto project website. Now I intend to build an image for a board which=
 is not officially supported by yocto project. I have a FriendlyArm mini641=
0 whose BSP is available for linux.</div>
<div><br></div><div>I would like to know how should I proceed further.</div=
><div>Is it possible to use the same BSP without any changes and make an im=
age using Yocto?</div><div><br></div><div>Kashyap Gada</div></div>

--089e0115fb1ababf8904fb150a51--
