Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AEB2E00927; Tue,  6 Oct 2015 23:10:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0897E0049B
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 23:10:48 -0700 (PDT)
Received: by vkfp126 with SMTP id p126so4558813vkf.3
	for <yocto@yoctoproject.org>; Tue, 06 Oct 2015 23:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=t7EvOw9Y0EVrAeWaiHXy+aEgnP95VccaZHpMI/ix2IA=;
	b=P/8uPsu/+5O5qRaUBje1LKRbAJKKgXlyl2pQdwH184/CG5LObhA/Ol1BcA/Nz6lmyb
	VSj0hvDFcADRQzBz/rr+9UzFu6CiVaCTPrQr9mDTHgkJmvmTEC3VS2Z/yF18wCYSkCpC
	QWHusph1k/0tlTnWKtI6ZlAZSMwb/bGxisFxqS3Tx2LUQpbXZQZUVRzpQp1Zld/OiQXI
	8HLl16jS1WqP37YbIw3uD5jjmegSvuIwVeB6P4u121FG3qy9BO5XAAn4uNHAwRmyOKGy
	Z0AQ4f+XSMqTqKtTxDPAjeRKyp3yHz7nz1KrspltKCjO8qij1mfljqyAdGX2eyAL4FRb
	LE+w==
MIME-Version: 1.0
X-Received: by 10.31.15.212 with SMTP id 203mr25297581vkp.30.1444198247927;
	Tue, 06 Oct 2015 23:10:47 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Tue, 6 Oct 2015 23:10:47 -0700 (PDT)
Date: Wed, 7 Oct 2015 11:40:47 +0530
Message-ID: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: can any one please tell the difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Wed, 07 Oct 2015 06:10:55 -0000
Content-Type: multipart/alternative; boundary=001a1143b1ac8d981005217d9bb7

--001a1143b1ac8d981005217d9bb7
Content-Type: text/plain; charset=UTF-8

Hi,
     Can any one please tell the what is the exact difference between
DEPENDS and RDEPENDS . I am not able to get it . How these variables are
exactly parsed.


regards
vivek

--001a1143b1ac8d981005217d9bb7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0Can any one please tell the wh=
at is the exact difference between DEPENDS and RDEPENDS . I am not able to =
get it . How these variables are exactly parsed.</div><div><br></div><div><=
br></div><div>regards</div><div>vivek</div></div>

--001a1143b1ac8d981005217d9bb7--
