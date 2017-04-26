Return-Path: <giuseppe.diguglielmo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BABFE00B01; Tue, 25 Apr 2017 17:02:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (giuseppe.diguglielmo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399D4E00AF6
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 17:02:11 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id g66so29784964ite.1
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 17:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=09+j1sbpG2+5iUpdn7qu04Ik3zZi7+1gkWVPKRoKrdw=;
	b=t9kFVPbiFnGfrh5LAhrnNrGakvuiOAcRkzCdW5HnuOjEU5KG4/oCnN2opMiZ+tzWra
	qPYvnNPJxH1KeqSNA9oc31/RyAaDFP8qFz5H1KjvAVO1zj30WCAEEbd3DU7ShbBXs1u5
	MZLEgWCcu03OKCuj+RGJWRfiEJXSo/YX/KdyBGj0CeSffe0R/GXxluFQrTJoELMitYf3
	WWh4xbSIiliWahGTv8jG30KV+t5Tnikygn6wzgrVJA0+9ZUdRF2vOok6b2sGEkBFS0b4
	RsVWUoQNK+mKuzlpayCFA+GtiEjLwiY2eODTMxzgq3J5Jye4tbaYAsx+B9zt5K/ntC0q
	73BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=09+j1sbpG2+5iUpdn7qu04Ik3zZi7+1gkWVPKRoKrdw=;
	b=VeIrLOHmHzniqq5yym7Is4OwByw2SfNnB3QXR/MIzSScQNV5HM3clZy9POlfgslv4h
	MFXxBStnybEDbepWV25M5ZUvYgkj/uikCreTZGajMeqRQNArecFENvWuepRpiJfR1lNR
	cFjO19hbWqq3QSaZeHxfTGxxK30Ig/b0SqZfSwrHarPxBGob3TXKG95bvn1PDv2VVcmx
	uME7OvMAbV5j/0zMz4a/kVhe8WcqFrYQg04F+Aat0qUrsVxFnUVZPJhN075FB9qII5NO
	43xBio0Z5ifhvNjdsDwwqBbzCMdUUfmpzDDDGdw1S7qGYwqaOXa1697PO/ERkton4Leu
	oF+g==
X-Gm-Message-State: AN3rC/4+NSdkSQ49dtwKlH2pS1SBuOcpQhF6KaDRQBo4szAl8mzI2gU+
	B/oFeXeAqAi0nt7ZOExHzgDUpiqu4Scm
X-Received: by 10.36.17.139 with SMTP id 133mr8464946itf.97.1493164930955;
	Tue, 25 Apr 2017 17:02:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.208.9 with HTTP; Tue, 25 Apr 2017 17:02:10 -0700 (PDT)
From: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Date: Tue, 25 Apr 2017 20:02:10 -0400
Message-ID: <CAOiuDAWQf==gTyYWv7eNWFxEF6wDYP4e4Ka27-1-5wcjwh8pKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Nothing PROVIDES 'python3-pyyaml-native'.
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
X-List-Received-Date: Wed, 26 Apr 2017 00:02:14 -0000
Content-Type: multipart/alternative; boundary=001a114458204d12df054e068d4c

--001a114458204d12df054e068d4c
Content-Type: text/plain; charset=UTF-8

I am using
- meta-xilinx and meta-xilinx-tools @ branch 2017.1
- meta-openembedded, poky @ branch morty

When I bitbake core-image-minimal I get the following error. Can you
suggest me a solution?

----
ERROR: Nothing PROVIDES 'python3-pyyaml-native'. Close matches:
  python-pyyaml-native
  python3-py-native
  python-py-native
ERROR: Required build target 'core-image-minimal' has no buildable
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal',
'virtual/bootloader', 'virtual/dtb', 'python3-pyyaml-native']
----

Thank you,
Giuseppe

--001a114458204d12df054e068d4c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am using=C2=A0</div><div>- meta-xilinx=C2=A0and met=
a-xilinx-tools @ branch 2017.1</div><div>- meta-openembedded, poky @ branch=
 morty</div><div><br></div><div>When I bitbake=C2=A0core-image-minimal I ge=
t the following error. Can you suggest me a solution?</div><div><br></div><=
div>----</div><div>ERROR: Nothing PROVIDES &#39;python3-pyyaml-native&#39;.=
 Close matches:</div><div>=C2=A0 python-pyyaml-native</div><div>=C2=A0 pyth=
on3-py-native</div><div>=C2=A0 python-py-native</div><div>ERROR: Required b=
uild target &#39;core-image-minimal&#39; has no buildable providers.</div><=
div>Missing or unbuildable dependency chain was: [&#39;core-image-minimal&#=
39;, &#39;virtual/bootloader&#39;, &#39;virtual/dtb&#39;, &#39;python3-pyya=
ml-native&#39;]</div><div>----</div><div><br></div><div>Thank you,</div><di=
v>Giuseppe</div></div>

--001a114458204d12df054e068d4c--
