Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60ED6E0094C; Sat, 13 May 2017 04:24:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
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
	*      [209.85.218.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.45 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21678E00812
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 04:24:05 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id h4so90269028oib.3
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 04:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=y9Q9W3QPEIVdkILNukWu66FqEoeHb6ngoy3sRnE+L5k=;
	b=ZZdNdz/THGXoJe0ICwy7IClTNpt5E+0PXOIU7Li0Xg1Igfdi2CK+PS4kuvpL2HXqUw
	R68GLRc2Lqg0dKm5DRnQIonJ2FkjMDBOmKP7lV2h9I67j4mpeU4O9hgfK7512s3U/+Ha
	si9N7PWOWOgnCNt5t/YsmFe5aCgzWGGvWo+61QOKOV0XOjpgn4b7Z/WJnzk2R3HlFAJl
	0GvlDI4c2jLlvUOIy6/Us8wKjbcO94w77/fmLUCAtv3Qq+cVGn5nq1uvOmljFWznQdVZ
	lkCYtDbvK40uBeaiFkQLDcszcs/Ucjvt0SqoDbbg/NVk56hpA/A0+ncW95VnvqOnzQAT
	/t0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=y9Q9W3QPEIVdkILNukWu66FqEoeHb6ngoy3sRnE+L5k=;
	b=dgfUqWeSjOD5pzSeRQsRj/t0xeOmG42dxV6oI/H/R+uDQE932nXYF3UFa3iLDNYHVy
	hASh4lPUMb6jIDA8+srYQ4mdYTBwo6JbrNubZDj1DzlO6T3G83OzjD1sg2Ha2PA0+z6r
	IALzOpklwC/P8ID2ZEX27J59pTBlifoghiY+JpaDGohOYKcefr7dr+aGl0HkEmWLG09c
	3LtxGStXnpncKCB5w4pQjVqSB6gErsIn3+4AcTh7MmZoTJrR9W2Y8ViwpdnYncfP6pm+
	ogWCId62j2jLxKBo9cCiqFpzRrkpGXr6danbhbPUNjNG0s9vJwYMAX21GsIaRVdz4mWG
	rE+g==
X-Gm-Message-State: AODbwcDhulWbiF2ih5UPJKYO06Yb+zZhePbrCQO6pTeXHaP/XNLXB0zL
	vF0wzg2UtiLkqm+IOB9mNl4bduPriX/B
X-Received: by 10.157.63.243 with SMTP id i48mr3748251ote.231.1494674644970;
	Sat, 13 May 2017 04:24:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.22.198 with HTTP; Sat, 13 May 2017 04:24:04 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 13 May 2017 13:24:04 +0200
Message-ID: <CAFq4t4jFTyB7pn4nrcMp+ffix20tk0LB7GtfsCsKQ=05sE_UhA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: python-opencv module
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
X-List-Received-Date: Sat, 13 May 2017 11:24:07 -0000
Content-Type: multipart/alternative; boundary="001a1145992e44b3a2054f660f13"

--001a1145992e44b3a2054f660f13
Content-Type: text/plain; charset="UTF-8"

Dears,

I'd like to have included python-opencv module, I'm running image where I
have python on my image and OpenCV as well...

root@imx:~# python
Python 2.7.12 (default, Apr  7 2017, 11:56:02)
[GCC 6.2.0] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import cv2
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named cv2
>>>


How do I include python-opencv module?

--001a1145992e44b3a2054f660f13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dears,<div><br><div>I&#39;d like to have included python-o=
pencv module, I&#39;m running image where I have python on my image and Ope=
nCV as well...</div><div><br></div><div><div>root@imx:~# python</div><div>P=
ython 2.7.12 (default, Apr =C2=A07 2017, 11:56:02)</div><div>[GCC 6.2.0] on=
 linux2</div><div>Type &quot;help&quot;, &quot;copyright&quot;, &quot;credi=
ts&quot; or &quot;license&quot; for more information.</div><div>&gt;&gt;&gt=
; import cv2</div><div>Traceback (most recent call last):</div><div>=C2=A0 =
File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt;</div><div>ImportE=
rror: No module named cv2</div><div>&gt;&gt;&gt;</div></div><div><br></div>=
<div><br></div><div>How do I include python-opencv module?=C2=A0<br></div><=
/div></div>

--001a1145992e44b3a2054f660f13--
