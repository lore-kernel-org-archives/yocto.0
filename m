Return-Path: <stiffstone@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BCA0E004F1; Thu, 20 Oct 2016 09:25:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stiffstone[at]gmail.com)
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
	*      [209.85.214.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6153CE00404
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 09:25:28 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id 66so99229448itl.1
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 09:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=5Szz4JUQO6mVKPE6CM+8aiEtkkaeNvpoYMt9KgD2fWg=;
	b=HBEDp6DRm2MiK8Bc0Jkdp734A6boR1wy9ed4vl24VOTqxhXodZfvP7EZfvkboCJpw0
	OR9UiU1CCb+Aw8JW62YYSj9zK1/0QVnRoCuuu21SP8rIxw9rRdaYV4DR1BxnCyLqGuRE
	vxNIOnaQeixH4yqRruVNFd46g/AGfcA84R4UvUqb3iiI9yCgM+967tFWxhkhIljLfFYI
	7ZsABTA4YJF1j2rZEUxIttcfEG/6Nj8yG8ZWVBX9+QvEKxojAWXf8kyrb5t6tUis+m5T
	x6fFw2vdrbyX1VonHz1uzjY/LpXtfTO1tqt67yBSck/3Oub+g0izM6zmnPo/n2D6dnEg
	vR0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=5Szz4JUQO6mVKPE6CM+8aiEtkkaeNvpoYMt9KgD2fWg=;
	b=EJCjIAW0cFp8QhjNA6dNgwuXbhySPpiXZ5sE9UubWh77RUSk/dPnEAHSkmxNbGIasb
	ssxGryESHhRqUkgAqeugIzwQ78huWouT8hTOS8VIUfLJhKBUE8FXOqsHf2pQfck6BLV5
	CqvUNFo+yMi1bXbdQl1zlkyDf/LUOFex5sfwOFnNwUR1om/kmkulZdV/d9S0yGSC1tXO
	qz7n9SiwrxWTc5cgY9GFeiytjA7nPs4NqVism2j45V3xUmCknw92kehBgwJo7nt7NO/w
	Cc0LAzhlJ9rb4W4tbd1JLa37FMxxdRP1DCDOUSlR1zDI/+oDyltxAEOcLA8T34skychi
	Nl4w==
X-Gm-Message-State: AA6/9Rmyal6bye0J797xp9TiD4YE181c8+eiLCDzM7H0SKipdhObX/0vQtVeZzUWQP/D0EV64XdF5zGAEkDsmQ==
X-Received: by 10.107.50.15 with SMTP id y15mr1808374ioy.30.1476980715822;
	Thu, 20 Oct 2016 09:25:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.52.6 with HTTP; Thu, 20 Oct 2016 09:25:15 -0700 (PDT)
From: Yile Ku <stiffstone@gmail.com>
Date: Thu, 20 Oct 2016 10:25:15 -0600
Message-ID: <CAAGP=A-A-ffYuEEZFE6w4jGdqp19ZCQKCb_NMK6b8JwsD4jAJQ@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: tomas.novotny@tbs-biometrics.com
Subject: ODROID-C2 and meta-odroid
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
X-List-Received-Date: Thu, 20 Oct 2016 16:25:31 -0000
Content-Type: multipart/alternative; boundary=001a1144789ae83a0c053f4e5ed9

--001a1144789ae83a0c053f4e5ed9
Content-Type: text/plain; charset=UTF-8

I am having some issues getting the odroid c2 board to boot with images
built with meta-odroid and yocto 2.2.  Is there someone I can correspond
with regarding these issues?

Thanks,
Yile

--001a1144789ae83a0c053f4e5ed9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I am having some issues getting the odroid c2 bo=
ard to boot with images built with meta-odroid and yocto 2.2.=C2=A0 Is ther=
e someone I can correspond with regarding these issues?<br><br></div>Thanks=
,<br></div>Yile<br></div>

--001a1144789ae83a0c053f4e5ed9--
