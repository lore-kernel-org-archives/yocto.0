Return-Path: <maxx1109@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A55D7E0079A; Thu, 21 Jan 2016 13:33:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxx1109[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3422CE0045F
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 13:33:02 -0800 (PST)
Received: by mail-lf0-f46.google.com with SMTP id m198so35343644lfm.0
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 13:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/NpbhoO6KcGtjCS83h5MIXTFY/Wf57lkoPrH7Scc/Vk=;
	b=G91nADVUx73k2F0DZGJLcM+iVNzwBTrBjP0URz3J4bz/7KnhnaTxUmFYiWra69CBCo
	zsOzgUTx6aQed3Ug2H8StVMt5PG10aTbPiVs5e4N44mCUe5o4jBTkJb4RUbAzhb4ELFI
	WgrY0T6+DDSoAVabTSllOyeDgURvz/IRLxr3hB3LpkprO+wzLmpd5NFYdOtsV6yD8UbR
	7nWZptEIHL/D5L3ZlC7akTvuLKhdCL3c0Pm5eZhUFn4SMc7iDTqYLBbgI7DUHZ5B4uHs
	CcgG1UhsubrNWe/OplZvQPSd5fgVcIg6ibZKiSzTyWMWeZZFoTE/Muiq075A/fEyM7Np
	ucHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=/NpbhoO6KcGtjCS83h5MIXTFY/Wf57lkoPrH7Scc/Vk=;
	b=dikcTheBnH4FlLyIikw9+6mo/8iTc77CfytvzaIyOo46MP0Mc9pei1j/uPFqWQ3WDD
	pMGi08wDRuvzRtvQkZwl2CmZpAOFF+QPUEBAWH9tcbnQUlVVoxCV9eZJuulBQg1XnWfp
	LkuNtRIbhWVcEKSzSFGMzrSs8bTeBCJw0mvAmWBxZS9DoKm/gbPUD6jxJnyh8YIvhCP+
	6exEt2c2MxpeBZ97Wfto6UmwS/hkGX0g//bxEPxkixR296KBupxMgQLA3BFNg4lZqU9C
	kFF97WuVPNETSe7rZM2jGKtUpqqNSnzQ2zl7RubIj7IxJ3j0Ea78u+Tovqe/lRaG6PPD
	L1KA==
X-Gm-Message-State: ALoCoQkriQWyv5h5u5Te/KD4EN3ZrhtpknDBl+dAYaSaoGg+z8kufznr3C/rJKgsx40UQ7lyu7vnGCRVMR4LflN6GiTR5sZ4lQ==
MIME-Version: 1.0
X-Received: by 10.25.218.137 with SMTP id r131mr13310706lfg.63.1453411980131; 
	Thu, 21 Jan 2016 13:33:00 -0800 (PST)
Received: by 10.25.133.135 with HTTP; Thu, 21 Jan 2016 13:33:00 -0800 (PST)
Date: Thu, 21 Jan 2016 23:33:00 +0200
Message-ID: <CAHpaHKnBe4KnrPMq-K20T-bQW1JZZjA6AgVPozUS-8d8iqJ6hQ@mail.gmail.com>
From: Max Sht <maxx1109@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 22 Jan 2016 08:04:39 -0800
Subject: Question about sftp package
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
X-List-Received-Date: Thu, 21 Jan 2016 21:33:05 -0000
Content-Type: multipart/alternative; boundary=001a114020cec9ca490529ded821

--001a114020cec9ca490529ded821
Content-Type: text/plain; charset=UTF-8

Hi.

Thank you in advance for your support.
I'm using Yocto project Linux for the iMX6 CPU and imx6ulevk board.

I've dowloaded and built the OS, but I having trouble activating the SFTP.
I'm able to connect to the SSH but not the SFTP, which I need for uploading
code using ECLIPSE. Is there a package that I need to add for SFTP support?

I'm very to new to Linux, and hope that you can help me.

--001a114020cec9ca490529ded821
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Hi.<br><br></div><div dir=3D"ltr">Thank y=
ou in advance for your support. <br></div><div dir=3D"ltr">I&#39;m using Yo=
cto project Linux for the iMX6 CPU and imx6ulevk board.<br><br></div><div d=
ir=3D"ltr">I&#39;ve dowloaded and built the OS, but I having trouble activa=
ting the SFTP.<br>I&#39;m able to connect to the SSH but not the SFTP, whic=
h I need for uploading code using ECLIPSE. Is there a package that I need t=
o add for SFTP support? <br></div><div dir=3D"ltr"><br></div><div dir=3D"lt=
r">I&#39;m very to new to Linux, and hope that you can help me. <br><br></d=
iv><div dir=3D"ltr"><br></div></div>

--001a114020cec9ca490529ded821--
