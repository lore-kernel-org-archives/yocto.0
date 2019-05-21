Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2917E00D54; Tue, 21 May 2019 10:51:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CBC4E00B58
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 10:51:38 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id p26so30695349edr.2
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 10:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ECzpY7ZG57DpJmn3PA42Pohn3SLv56Bdyy5KbKNGy9U=;
	b=l0aHLsRJcB+e3WP7TxHi9jS4s74sVjuX36Q8JpoxhVRWVSvkOs2dmunG8Orz+00WZy
	wzJkqm/6AoHXRys82PsFww+UH+HMv6fET6WqYlaQth0SHyKJsyibqz8kstBON7b3K1KE
	u/zhwYkhlIwfaSyMrDzouY+zlk9NYIM65mlnAo3/ALrzkBU5echXS0rNSC7vA8uf1hoM
	9laGxPrXK/XCep+Pr4OYc3Tr1U7QhxIee5jFaBtO9CFiEtFD3BM9gLe4F3RVCJWO8it4
	RflNdew+r/G7NTRv0Ooe2PGjtl6zgzweqNX2vIdWnvxy4r1FRMJu5FjomyPaYj10qUtB
	+rxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ECzpY7ZG57DpJmn3PA42Pohn3SLv56Bdyy5KbKNGy9U=;
	b=NjH8TuVUXKf0F1k7SNCM1cBLkl+7VjrpaqMDPxjvTC6rNWyNJT3FLp6AotH11UR5rM
	I08yMugT91o3tfcyqSB1XuGBE3We2/qdaxmsPoHyQ9UaHHEBx1KIjShnInNbN0kWPB/g
	FPxyzd7pP34moJvNFBgUG4oIv/U7uY1DhGhzX4XPN4/BstCsAoiD/TWUv8eYUA1WJMFB
	SN/C+Mi9RWJHFHhq6ARu3aAL3CuDsNQ9GmUAhsAju4/95MMM/xPo4QCksMPQ1pKtn9DB
	/BO6LLvkPgLGXN4TdVdpxdo2yYZwfjrs2q+vFCyWtUegga029OngthyGeG+VV+wh/Q/E
	ZPOw==
X-Gm-Message-State: APjAAAV6rFXWnB4MF73gkX9jtWygjcQFm5vUypLKg7uKdstA43lRqSsL
	mV1f5EDr6FxQXj4dOD6E7Xnkls9tI2KDD9s0xiBwxAo2
X-Google-Smtp-Source: APXvYqzIzzYvxXQiP2fSHmwdnAjrfdwpkHqos9VB+Ex0y4Zd4yoc1yk2GvDmjuT1D49m8FKlGKIJLZgRVau/BgcJqmw=
X-Received: by 2002:a50:970a:: with SMTP id c10mr84184717edb.2.1558461097078; 
	Tue, 21 May 2019 10:51:37 -0700 (PDT)
MIME-Version: 1.0
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 21 May 2019 10:51:25 -0700
Message-ID: <CAFNP8OvJX6LZX-LKdaX6y78BUoNSwAvm2dh6Jkw5nKoPhYabzw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: NPM Fetcher question
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
X-List-Received-Date: Tue, 21 May 2019 17:51:40 -0000
Content-Type: multipart/alternative; boundary="00000000000016753b05896980cd"

--00000000000016753b05896980cd
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to determine if the information in
https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM is relevant and
up-to-date for current YP release.  I am having trouble finding a resource
familiar with this topic.

Can anyone point me to the expert for this area?

Thanks,
Scott Rifenbark (docs)

--00000000000016753b05896980cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I am trying to dete=
rmine if the information in <span style=3D"color:rgb(0,0,10);background-col=
or:rgb(255,255,255);font-weight:normal;font-style:normal;text-decoration:no=
ne;font-size:10pt;font-family:Arial,Arial_MSFontService,sans-serif;font-var=
iant:normal;line-height:16px" class=3D"gmail-TextRun gmail-Highlight gmail-=
BCX2 gmail-SCXW188056223" lang=3D"EN-US"><span class=3D"gmail-NormalTextRun=
 gmail-BCX2 gmail-SCXW188056223" style=3D"background-color:inherit"></span>=
</span><a class=3D"gmail-Hyperlink gmail-BCX2 gmail-SCXW188056223" style=3D=
"text-decoration:none;color:inherit" href=3D"https://wiki.yoctoproject.org/=
wiki/TipsAndTricks/NPM" target=3D"_blank" rel=3D"noreferrer"><span style=3D=
"color:rgb(5,99,193);background-color:rgb(255,255,255);font-weight:normal;f=
ont-style:normal;text-decoration:underline;font-size:10pt;font-family:Arial=
,Arial_MSFontService,sans-serif;font-variant:normal;line-height:16px" class=
=3D"gmail-TextRun gmail-Highlight gmail-Underlined gmail-BCX2 gmail-SCXW188=
056223" lang=3D"EN-US"><span class=3D"gmail-NormalTextRun gmail-BCX2 gmail-=
SCXW188056223" style=3D"background-color:inherit">https://wiki.yoctoproject=
.org/wiki/TipsAndTricks/NPM</span></span></a> is relevant and up-to-date fo=
r current YP release.=C2=A0 I am having trouble finding a resource familiar=
 with this topic.=C2=A0 <br></div><div><br></div><div>Can anyone point me t=
o the expert for this area?</div><div><br></div><div>Thanks, <br></div><div=
>Scott Rifenbark (docs)<br></div></div>

--00000000000016753b05896980cd--
