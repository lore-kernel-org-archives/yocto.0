Return-Path: <slavasalnikovv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE378E00A04; Tue, 10 Apr 2018 08:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (slavasalnikovv[at]gmail.com)
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
	*      [209.85.161.171 listed in list.dnswl.org]
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67694E00944
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 08:36:02 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id i187so4147018ywd.10
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 08:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FRLuBe4DPaA4TDaMiEunCXSYnHChY4ZALrH3xAwl+mI=;
	b=H9jlAnX+asqzoM++k9hsXsT+Ht3NeJJXWhauxoTo0GwtBDx1QsD676ax3pZ3mF1p+S
	yp12EaLdp0BufW8UX1p+Uer+ec+3T/MrkvA8kouj7ee00RUB3hwuozqgis16xPmqFelq
	CJOHxpaFsT2qDZU9diqW6MSdFU21JJIf7VhpL6L01mxNwFuTuDxhyEbKBzT19EBn8stL
	d88179UNsn/sAOUnT+lBiaKRtg9/YH99Rle/iWw+2IZYhVEEOnya0lwDgsKLxcf/8FsQ
	tX8WHPJHY7pjbNRG9R+ocengpX2g5gcOuAhefzTljacv4i6Z+cxGgQO9y0Okisvslruz
	U1ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FRLuBe4DPaA4TDaMiEunCXSYnHChY4ZALrH3xAwl+mI=;
	b=ZWN1NQzcyippacH/42q0z/rOHGSp1HhTi6CL3BINZgizdMNVXx891w2DuySrFTP0JI
	DnR2js7NqukiAVFcsNPOxk9nIY/uOUe7b65Xdjtn2h+OM/ggx/gDlSd8pmpKBr6jXyAu
	D5hXnzgbQGJVpfZ0oAKsuZ9Q8xrx8HiVFwL9hkzYn6AjSPKwKWtxyKyOaFovT3vhzr8C
	cxtKGpIrWsJ9Fr6b+toozShx8etb99FXkvOxyS9qJZROdKPbAFMWl1gJkQS5A4yAkvBl
	yYFPSP9/P31qRF5liLpCyjQ2coClQEGoWpz1FPDPvLqjRmn5EcTEp4tdAa3kZiw0BdXJ
	fYjw==
X-Gm-Message-State: ALQs6tCbf5tGSHnBPn5uxsethUJgI7khBOWm24fq4+hAAxiSY/8vkOPH
	5Mr3jHtrkXN+HMD//i0DynLJYaMlReEhA+sgpAw=
X-Google-Smtp-Source: AIpwx49+/u+juMAwOAcAiXV2bfJ2Zi9abcR+8cXaz7BT5boB3b1SER79XXekUBbrHtOH1kaj1Ofe/qhM27f/I6dnhig=
X-Received: by 10.13.224.129 with SMTP id j123mr573719ywe.295.1523374562199;
	Tue, 10 Apr 2018 08:36:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.52.202 with HTTP; Tue, 10 Apr 2018 08:36:01 -0700 (PDT)
From: Viacheslav Salnikov <slavasalnikovv@gmail.com>
Date: Tue, 10 Apr 2018 18:36:01 +0300
Message-ID: <CACAZDOnEWYdBmWqRjG75YXy_-QRrMbH7xVY957B8oF-F6Uj09A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 10 Apr 2018 09:11:57 -0700
Subject: : Add sources to rootfs of image
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
X-List-Received-Date: Tue, 10 Apr 2018 15:36:03 -0000
Content-Type: multipart/alternative; boundary="94eb2c0649faa3ceb4056980471c"

--94eb2c0649faa3ceb4056980471c
Content-Type: text/plain; charset="UTF-8"

Hello guys,

I have a question: is it possible to easily add source code of package(s)
to rootfs?

For example: there is a recipe which gets sources from git, unpacks,
compiles etc. In the end of all tasks this recipe adds all sources to the
rootfs.

Looking forward to your reply!

--94eb2c0649faa3ceb4056980471c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello guys,<br><br></div>I have a question:=
 is it possible to easily add source code of package(s) to rootfs?<br><br><=
/div>For example: there is a recipe which gets sources from git, unpacks, c=
ompiles etc. In the end of all tasks this recipe adds all sources to the ro=
otfs. <br><br></div>Looking forward to your reply!<br></div>

--94eb2c0649faa3ceb4056980471c--
