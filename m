Return-Path: <developer.mattklaus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0762E00AD5; Tue,  5 Feb 2019 06:00:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (developer.mattklaus[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE87E00A0C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 06:00:48 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id m22so3791588wml.3
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 06:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=VwfNUzOXMklA8GZJ58bAARED6tAZFZTWgh57FdKNJfQ=;
	b=EE5Flqrqv3QCro1FcRg0b/y+8jNbUs6Q/goxX68mXcu1xltMAHaww+2bqzx0nBBzSh
	3MOoNzUclQG4oCWwYt9DVEIbVkpUGyVBKqQkfgnHoqLbDOWsp5Cl7h+jlLP7zXLuzJ7N
	JcJ49MLZ6rLs5mKFgTdwMIpc6nWSXZebsyuPXXk9qUyeNmarkPzpsfj0BwleGXlaTMxk
	bqJ+ekHcpjyS6zjVBgACB8OMsbtMDViybyoqt0y4VBfKriuR8lVE+A+JikuHfNF5Vq+z
	7K4rwre+LRmAoiBIYWYfoX1v3NUSWZ9h6VuZGfmt2LAPqA0PT3HnYe6br0BIUa19Zsg0
	CdWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VwfNUzOXMklA8GZJ58bAARED6tAZFZTWgh57FdKNJfQ=;
	b=mA8FlgfnrkLqu+FFOKSKU0DJMxHsE8UpAKMkC8iQdp7ApgzBUIlqVeHCqkunGrMOvB
	fsyv0RfdqoKFBwIHtxbRh2/GU5IFwo/0LU+hQBifguHZoGjpDzbfQVUlkdbz+tDrnp2w
	++O7CeZZaUE5iSeF1hIhG7IB5Vtfl5yXwwEDEi8nCPDl0X9nNMgjAJhH3XpNwqZFdmo6
	WsHlHBTg2/WxfMBYEfc75/I0fXToygCfKe3apMYE4F8i/pF1uJUv7H7XqaQ4KhR9QMt6
	PKXv5zZwTsBaCwBI2tjnB8RL3UTM6ZfFxAfrIGdr7hiBapq8mIXsBkVDBOevviEMFHHY
	mhYA==
X-Gm-Message-State: AHQUAuZZtQWe2qYI+IbTs7ikWP0De0eHGXMhSaOXSbDFworTVr1M6pMc
	u70YBGBIhevXTqYHgyM+H+hIkPVc/HPSYZUjt57CBA==
X-Google-Smtp-Source: AHgI3IZc/T6H4HUVVtOWN5sPVYXAwf1lWfnFRqcxehv5gze7emYdPzkoYeyAKtJlvuTc/gggrzTnp1m/a1op3GdNkFE=
X-Received: by 2002:a1c:c7:: with SMTP id 190mr4071058wma.74.1549375248002;
	Tue, 05 Feb 2019 06:00:48 -0800 (PST)
MIME-Version: 1.0
From: Matt-Klaus Mushi <developer.mattklaus@gmail.com>
Date: Tue, 5 Feb 2019 15:00:36 +0100
Message-ID: <CADRV0G4XTyktGV6zztid0S3kOoHO_TcdvM_CWXPVaRoYxTQgEw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Happy to be hear.
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
X-List-Received-Date: Tue, 05 Feb 2019 14:00:50 -0000
Content-Type: multipart/alternative; boundary="00000000000047f49005812609b3"

--00000000000047f49005812609b3
Content-Type: text/plain; charset="UTF-8"

Greetings, to the brains behind the YoctoProject.

My name is Mbah Matt-Klaus, an undergrad student from Cameroon.
Our community here encourages contributing to OpenSource, and there have
been a lot going on.

So, I went through a list of OS communities, and my greatest interest was
in this community (due to my love for electronics and embedded systems). My
excitement led me to watch a few videos, read from YoctoProject
<https://yoctoproject.org> and consequently subscribe. Despite this, I am
new to Yocto and Linux (I basically use Linux Mint on my dual-booted PC). I
would appreciate any materials to get me up to speed (I program in Python
and C++).

Thanks in advance.

--00000000000047f49005812609b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings, to the brains behind the YoctoProject.<div><br>=
<div>My name is Mbah Matt-Klaus, an undergrad student from Cameroon.</div><=
div>Our community here encourages contributing to OpenSource, and there hav=
e been a lot going on.</div><div><br></div><div>So, I went through a list o=
f OS communities, and my greatest interest was in this community (due to my=
 love for electronics and embedded systems). My excitement led me to watch =
a few videos, read from=C2=A0<a href=3D"https://yoctoproject.org">YoctoProj=
ect</a>=C2=A0and consequently subscribe. Despite this, I am new to Yocto an=
d Linux (I basically use Linux Mint on my=C2=A0dual-booted PC). I would app=
reciate any materials to get me up to speed (I program in Python and C++).=
=C2=A0</div><div><br></div><div>Thanks in advance.</div></div></div>

--00000000000047f49005812609b3--
