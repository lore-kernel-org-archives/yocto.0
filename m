Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EB47E00C29; Wed, 16 Jan 2019 00:38:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gmshastri[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
	[209.85.217.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6F2E007B3
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:38:51 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id x64so3403570vsa.5
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=I11QnwA05TJH5qXRFRX4t9owZ7XW0c4+JQsXUP1SpIY=;
	b=VTpOTyp8QIfVUsWxuVEfpiYW1kZHV4RrSMqa7s1uiG9C0u3gxi/Ab+USHHbkb7rUmP
	9Co33GnsYdL6jetEC82Td9HZjUG7lDA5QbpblPfGxdLEhi5L/78sAXyiN7Qwe5eydUFl
	Hr8iy6AQvn1LWZpbNIZQ/lGeZpGE+k8wyN4H8siRv3Pvf8gIQ0Axyv6aSPlg2vYcDKZk
	P6LJK+lTwY558MrNxts5I4slTkHniUWsvs3b9TVmC4CFvr2Snpc4ijqmmB1csjzKHewq
	fYBuDB+b9e/+UCAbkSBxlsBj2KYuwdP0O5qW8xL8Hy7tO6hLPdnXHSLqDX4K7Y58AygL
	ld5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=I11QnwA05TJH5qXRFRX4t9owZ7XW0c4+JQsXUP1SpIY=;
	b=GZdnPnMxNO5bsCjXkxN/4sA1MEuu0DnU2z9d6G3NB1StdxFFQzzFPAqCjqyfKo7mt6
	eqOhz3m6Hp0ZUmNGDMoEbteTmN8O9ydmLAhN0uTSInCCt1Ox0KMIIXWzUGQuIKXkmZDY
	Z127ZUxpHIeKTZTyxK+jZmBg2FEVnctUmRydbkKtHdL5cmjSGoSjpfR9Hie8l6By569/
	A+RjNHJwdlvajw+VHuNqPmyfyYaWBMnW1iPOBqQ7UaakWRQYPkdhEpWKyX9OsQdpRWbO
	N91SlqtS3hlQW/rr7+YOcFOzdK8viebttQEKikO/+N4o8ENOq3YxPtPnP7AfdlMVJL8G
	iRuQ==
X-Gm-Message-State: AJcUukfY/fHTds5qtMAV5FcrCvm/Kh7AH6FCiqeT3DGKEEvNGgnLdu+J
	jlCV/Li83Z/sIHlvjnC9r+BkbFzzC3rgDIi8h2pzMUA9
X-Google-Smtp-Source: ALg8bN7/ZOKAF8OCulPwLxgOxs/XVW+p1lPsq3MpTMvBlpq/0nNypfYTw6EvNdp0ARDds179Hl1LWecctXC7hhqqUlM=
X-Received: by 2002:a67:4441:: with SMTP id r62mr3402010vsa.38.1547627930368; 
	Wed, 16 Jan 2019 00:38:50 -0800 (PST)
MIME-Version: 1.0
From: Gaurang Shastri <gmshastri@gmail.com>
Date: Wed, 16 Jan 2019 09:38:39 +0100
Message-ID: <CAE_REAuoUGr7L-Cc5_f38wy-Myq1g69D_97wA_cfEu=ULUyAQA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 21 Jan 2019 08:09:28 -0800
Subject: Community support for any Yocto release
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
X-List-Received-Date: Wed, 16 Jan 2019 08:38:53 -0000
Content-Type: multipart/alternative; boundary="00000000000008c578057f8f35df"

--00000000000008c578057f8f35df
Content-Type: text/plain; charset="UTF-8"

Hi All,

For how many years yocto community officially support any Yocto release?
(This includes like bug fixes, CVE fixes, enhancements, etc etc)

For example, the latest release happened on 11/15/2018 (Yocto 2.6), so how
long this will be supported by community?

Sorry, if this information is already present on some wiki page, but I am
not able to find it. So pointer to that wiki page will really help.

Regards,
Gaurang Shastri

--00000000000008c578057f8f35df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi All,<br><br></div>For how many=
 years yocto community officially support any Yocto release? (This includes=
 like bug fixes, CVE fixes, enhancements, etc etc)<br><br></div>For example=
, the latest release happened on 11/15/2018 (Yocto 2.6), so how long this w=
ill be supported by community?<br><br></div>Sorry, if this information is a=
lready present on some wiki page, but I am not able to find it. So pointer =
to that wiki page will really help.<br><br></div>Regards,<br></div>Gaurang =
Shastri<br></div>

--00000000000008c578057f8f35df--
