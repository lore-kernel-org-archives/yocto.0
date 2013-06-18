Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97003E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 10:09:44 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id q12so3090654vbe.13
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 10:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=F4ZGnW13bxAcudPZHGO7UlTPEEOuhNHAnZDhOK5SgNQ=;
	b=jc0PDUIKUda9/sBPBW3ytHieLPbMjRz0neLVERZOWWr7zKRe1T5l3oX00m1kH2FfYZ
	yU1B60gjf6015Rrynryv4WDegzNMPKsqhsi1rlYbFTAsAdTbcXP0Q5esWv4qnkfqtL5H
	e52jh6hldYDKyDDxzRN1RqaOcVBtb5psUhKe1VBSqcdx2sy6idXlsNkJjVEllOyRhQxJ
	rrQsQQrNAe99i+0nW0s0yvYXwO6RW2mU1sntBk8pPsJtWV3d6O1ylv5b+Pxl0mbkNtMT
	VzHngoYjbwqOWPkMevz/W4W9iQL00UdB2D+EiU435iwGK3zwCE/z+PtLJTHm1uC33oxY
	BtdQ==
MIME-Version: 1.0
X-Received: by 10.220.193.202 with SMTP id dv10mr6622073vcb.24.1371575383589; 
	Tue, 18 Jun 2013 10:09:43 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Tue, 18 Jun 2013 10:09:43 -0700 (PDT)
Date: Tue, 18 Jun 2013 19:09:43 +0200
X-Google-Sender-Auth: ovx9yR-9ymYuUCESpeXorh0PEVo
Message-ID: <CAFMfyzKUxipLfow_7ZiyMGAFwmnJGuaAm543NjSgPw3OP+j+4w@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Default init_manager
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
X-List-Received-Date: Tue, 18 Jun 2013 17:09:46 -0000
Content-Type: multipart/alternative; boundary=047d7b673dba858bee04df70c7aa

--047d7b673dba858bee04df70c7aa
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

*DISTRO_FEATURES_INITMAN = "systemd"* is not working... Is there anyother
way to chnage the init manager from sysvinit to systemd

Greets,
Satya

--047d7b673dba858bee04df70c7aa
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Hi All,<div style><br></div><div style><div><i>DISTRO_FEATURES_INITMAN = &quot;systemd&quot;</i> is not working... Is there anyother way to chnage the init manager from sysvinit to systemd</div><div><br></div>
<div style>Greets,</div><div style>Satya</div><div><br></div></div></div>

--047d7b673dba858bee04df70c7aa--
