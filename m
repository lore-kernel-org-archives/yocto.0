Return-Path: <drew.woz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE068E00877; Tue, 28 Oct 2014 06:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (drew.woz[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B06E00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 06:47:34 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id tr6so675959ieb.28
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 06:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nVRfh5kNZewbdOzKa1Mvf9+qtGashoZyhuA+00UnJOI=;
	b=dt2D77fSh9tgKhuLUYenWteYBu5VZloE2OkmNCM+AreGV1HJUfOIt46uf7xRJwewVF
	EIEAfHtuIdSYtslcrBRxuNBeoECNdsfLoWZbYiMcjBv+CehhM+rZqQ0+I79VTtoWPKct
	phTmvBRsSWUykGd54r7DJUswTeLDhtpOpg7j22nLuPQdQsw2+6s5nHP5lX3Wnw1me46h
	aEkvy7aG/7KxSfYi5mI1OrqaAhe0pCkLzCReUZkdwr80kLkKakXsQoAwQ6gAz26jFLyo
	Ujh6xB1ronbzeZox37J6BIlh01MMNzOc3TvnOAMi2Lr///GmvsH74kxt2ROWNcAV2m7D
	LdTg==
MIME-Version: 1.0
X-Received: by 10.42.105.143 with SMTP id v15mr1954550ico.90.1414504053855;
	Tue, 28 Oct 2014 06:47:33 -0700 (PDT)
Received: by 10.107.16.67 with HTTP; Tue, 28 Oct 2014 06:47:33 -0700 (PDT)
Date: Tue, 28 Oct 2014 09:47:33 -0400
Message-ID: <CANMvBxCyi6V2RzxyD=twcUMpCfFGLJcjThES+W2ihZYTbhtzTA@mail.gmail.com>
From: Andrew Wozniak <drew.woz@gmail.com>
To: yocto@yoctoproject.org
Subject: Read-only rootfs, excluding /tmp and /var/logs
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
X-List-Received-Date: Tue, 28 Oct 2014 13:47:39 -0000
Content-Type: multipart/alternative; boundary=f46d044280a8aa01ed05067be3cd

--f46d044280a8aa01ed05067be3cd
Content-Type: text/plain; charset=UTF-8

Greetings,

I'm fairly new to the Yocto environment but have worked with lower level
Linux build systems. To get started, my target needs to have a read-only
rootfs, while excluding specific directories like /tmp and /var/logs...

The Project Dev Manual 5.15 section mentions the configuration of a
read-only filesystem. I haven't tried this method yet and was wondering if
there are any options for custom exclusions other than the /tmp and
/var/run mentioned in the docs.

--f46d044280a8aa01ed05067be3cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Greetings,<br><br></div>I&#39;m fairly new to th=
e Yocto environment but have worked with lower level Linux build systems. T=
o get started, my target needs to have a read-only rootfs, while excluding =
specific directories like /tmp and /var/logs...<br><br></div>The Project De=
v Manual 5.15 section mentions the configuration of a read-only filesystem.=
 I haven&#39;t tried this method yet and was wondering if there are any opt=
ions for custom exclusions other than the /tmp and /var/run mentioned in th=
e docs.<br></div>

--f46d044280a8aa01ed05067be3cd--
