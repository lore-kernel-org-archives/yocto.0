Return-Path: <andreapicaro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01BEEE00AF0; Wed, 17 May 2017 07:32:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreapicaro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.178 listed in list.dnswl.org]
Received: from mail-yw0-f178.google.com (mail-yw0-f178.google.com
	[209.85.161.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4003E00ADB
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 07:32:03 -0700 (PDT)
Received: by mail-yw0-f178.google.com with SMTP id l14so6746915ywk.1
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 07:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=l1k5nl38M47pmNy9SIHi28FsX2AaALAjoBr9xLM8LqE=;
	b=ppSFRcxMnanh9fVqIzbijrO7viMolpOnirDmynkowR1AD4fYir/VSA4+f47RxYIKJV
	fxYAZBOhOAmqodLNmtgehPsSBWhT4hTQYxSGcr8y4eY03UNNxCcShdRZ/Abq0jAw9MLT
	vWdAs/+mvtMBEY2NkwowK5WzwyhzlqfhKOjY3g+oWvOGB+YLOnxlWi4NK6cyp6OOCEBk
	2kZ4wc6qgVTe+3rzLBnc+TMd+zXsKX2Tfqvd8xM+Q4ko+rtifzf7cq8U/nfede5XWc3x
	S3MvDpukCWeDkQwUdqfV8ya1ziLDv9Wi8CpH/5zDtWux4jRCQ6d5FAqzDH27qC+nHSrf
	O/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=l1k5nl38M47pmNy9SIHi28FsX2AaALAjoBr9xLM8LqE=;
	b=msN0fbdN9UXZgDoKPWeqkzkTgmDENKhfXTLUbqxt0dubKHCME1H5S7w+rzJuEEoslB
	K83wzyKFpV2xGJRvqi4zpWEwtPnIIEJJzkEVAGFWPqCOexzO+DJSeCR0YOQ79BW/eos/
	eQCElYImrNqlp8GQULW+P+cWJn+cb/FUBb+scKco01A5fIg4mqexbEygW6XhPDNi3Daq
	N1gdHDlztDt7BTSbAeW2C1ys2qmJ5jeOVvgCsLpzOLcFVAQ2ixtKtp4gUHQ9NuNmkkEV
	rRwzqDP6eOTBO1XuJSMYk3mFIX9OofbI4McWD3xRX9OsO7DJZZktia2Y2tYmfaZTzSZE
	EKjA==
X-Gm-Message-State: AODbwcCdrOIaSmtbM1O5IQAjE9TgqC3U4eyJe9wFGfo2sG/qrmE8lrVH
	gPl8diLxLshpwtWXn2eg+iuCW4JKRw==
X-Received: by 10.129.111.135 with SMTP id k129mr3062290ywc.39.1495031522523; 
	Wed, 17 May 2017 07:32:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.4.200 with HTTP; Wed, 17 May 2017 07:32:02 -0700 (PDT)
Received: by 10.129.4.200 with HTTP; Wed, 17 May 2017 07:32:02 -0700 (PDT)
In-Reply-To: <CAA7DeJAbGF+RP5o+rb-U_2SNcnh406qBLwMd+kK07egs7L8VUA@mail.gmail.com>
References: <CAA7DeJAfVXzNtgpmkKFA5P3LRWkURgH0YGBVpk=WxpsJd0LUCw@mail.gmail.com>
	<CAA7DeJCsunm+DYDRw9d8P5SZVHOEggxkzcPHKq27nbm-WGj=UQ@mail.gmail.com>
	<CAA7DeJBeA4F7yEF5Our7VJ485xpbBTR5Hr_FAK7hMATPynPVqA@mail.gmail.com>
	<CAA7DeJAbX0HzAQ-PSfVx-wmLURmVD8Pe_xzrRDe3TK9mc=pcJg@mail.gmail.com>
	<CAA7DeJDhAGXHTA_rbP98ixkUmz2HSXzpkSjPPYgVbdEa6QipWw@mail.gmail.com>
	<CAA7DeJAbGF+RP5o+rb-U_2SNcnh406qBLwMd+kK07egs7L8VUA@mail.gmail.com>
From: Andrea Picaro <andreapicaro@gmail.com>
Date: Wed, 17 May 2017 16:32:02 +0200
Message-ID: <CAA7DeJDDeNHquFeQdC=Q7bGPopC2Kp7UuKKk_Tpan5fECXcFcg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Enable qt web engine mp4 support in yocto
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
X-List-Received-Date: Wed, 17 May 2017 14:32:07 -0000
Content-Type: multipart/alternative; boundary="001a11493656d40985054fb9265c"

--001a11493656d40985054fb9265c
Content-Type: text/plain; charset="UTF-8"

Hello i'd like to enable mp4 video support for QWebengine. I've read many
threads regarding WEBENGINE_CONFIG+=proprietary_codecs to be passed to
qmake But,  how can i do this through a recipe?

--001a11493656d40985054fb9265c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello i&#39;d like to enable mp4 video support for QWeben=
gine. I&#39;ve read many threads regarding WEBENGINE_CONFIG+=3Dproprietary_=
codecs to be passed to qmake But, =C2=A0how can i do this through a recipe?=
=C2=A0</div>

--001a11493656d40985054fb9265c--
