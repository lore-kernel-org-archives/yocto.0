Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 565C0E00AF0; Tue, 11 Apr 2017 03:45:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.178 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f178.google.com (mail-yb0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB00E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 03:45:27 -0700 (PDT)
Received: by mail-yb0-f178.google.com with SMTP id l201so42678708ybf.0
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 03:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sSw3FmbCRKOwpPHgEkpjXK5amCH4oPh2sMOqMCHBc64=;
	b=k+h1r+V1dYBlYetWGpk4IT1ed89yTbN2gK9iaVI7FsGmYkYrpsVeK4NknvbUA3kGud
	G73S8M6fI4pe9j+GZ/Yg7BZtNgrpnv7tCk+Otx3wnAkewsydsY26bfN4vG+0rewJTbC1
	u0XqRkRk1P/iEbUWsrnNFmhKmYAHZmH4JV1kLf3B85dOS2emDuU8Oo2uzi2ZCY598D5e
	wvYi6yXN7YmE5UhfGH/wxH+IWDX4omULg96IvUk1adycT7M67FBSV+MCiIZGfJRSDssh
	8seETEYfwKL84plyUNQJh/55HKygMW2F9RHxxkvy4WmVaqCXudwRv8KPpgdPK9beqU4S
	AFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sSw3FmbCRKOwpPHgEkpjXK5amCH4oPh2sMOqMCHBc64=;
	b=E9ZMoWo36fkEMoCMxbSmWRhHhJNSleUjPyOJt0tyAJ0sjtNQWotU5LBpkTr6nYdi8u
	s+OCQKSHQhx6ULd2Qh7wk4EWmSXLpeMSpasU10x/+4e5uaYjr6KKtJ1AYb92x+6pxsU0
	sY8TGJxoiA0HcLt8uDIIU8ef/BwDb8fdQjAXvgn5YP93EbH7dZ/fC6IxaFLC+ZAMOxNG
	aFiUsUvVQR13NqADV10vJ4wLJ/FTY7tZk/LUlomt9sg5/NfBodDXhVa62imvH5Ulg4C+
	iDNR5hC8k9fPxtOATVvpnxCV7OA6lMAQ4Ja0hlSeYcsSHbS0sDfsjIdKHNCuYqBFjQkh
	EwcA==
X-Gm-Message-State: AFeK/H1HoPsD4sc7T3ptdVB+wboujILynODwhf6ZSJjlQX6szmVqVgtuhdzoVT3pR19wCitsWnfHTLlbQD7aIw==
X-Received: by 10.37.163.166 with SMTP id e35mr38313893ybi.74.1491907526628;
	Tue, 11 Apr 2017 03:45:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.36.130 with HTTP; Tue, 11 Apr 2017 03:45:26 -0700 (PDT)
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Tue, 11 Apr 2017 11:45:26 +0100
Message-ID: <CALf_N3ZPpeyL7Z1VSDGhC0aJgH4_we0C9dOszhnaK+tTNPC0pQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Modifying CFLAGS in .bbappend
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
X-List-Received-Date: Tue, 11 Apr 2017 10:45:28 -0000
Content-Type: multipart/alternative; boundary=f403045c9436299e08054ce1ca97

--f403045c9436299e08054ce1ca97
Content-Type: text/plain; charset=UTF-8

Hi,

If I add an include path to CFLAGS in a .bbappend  is it only applied for
that recipe or is it present in CFLAGS for all recipes built after that ?

Cheers,
Mark

--f403045c9436299e08054ce1ca97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>If I add an include path t=
o CFLAGS in a .bbappend=C2=A0 is it only applied for that recipe or is it p=
resent in CFLAGS for all recipes built after that ?<br><br></div>Cheers,<br=
></div>Mark<br></div>

--f403045c9436299e08054ce1ca97--
