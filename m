Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 349D5E00576; Mon,  7 Jul 2014 23:04:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qc0-f193.google.com (mail-qc0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF2A0E004FF
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 23:04:23 -0700 (PDT)
Received: by mail-qc0-f193.google.com with SMTP id m20so1856646qcx.4
	for <yocto@yoctoproject.org>; Mon, 07 Jul 2014 23:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=JUL0jbMhQKaX5ZBYfG9pbfO/wCNhftfQpKoAqCKYCxQ=;
	b=fIdH71Bj/7Lyo8HBbDzz1lvZjd2QrlfFIckvVX4yAYbd1GUN3NMqmf9o9LpAJssWl0
	3go6PhUz0aHaCq4O2tIwrrpL/oYGxYEarUTeWDNNR8OyakcYqyZVta2m1i0/2FjqeANO
	qTbC2CN08XD/A0xaqz0pKHcQmeGHZfQhKCirPyUfgkMx93N4MNtOmFcOwaqCHB0NRobD
	SU2q9Kb4Fg9uBsvumV43RJtAvpy340MY9VU8pjFuGNj267ZSIPivo+LSqgTkYyDI/jOB
	yzKly1TZ4FvM0yBkuZw+wWceau1vH8u5gF1ZgEu/i9dQV4gdIP0wOzMpmSvrhgzKyN63
	jlqA==
MIME-Version: 1.0
X-Received: by 10.140.43.118 with SMTP id d109mr52112679qga.10.1404799462177; 
	Mon, 07 Jul 2014 23:04:22 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Mon, 7 Jul 2014 23:04:22 -0700 (PDT)
Date: Tue, 8 Jul 2014 11:34:22 +0530
Message-ID: <CAP3RZoj3A7EmMB_xeif8PVWUygTrNfFfJAj+XwcjN-hGpJzGyg@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: yocto@yoctoproject.org
Subject: kernel source code
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
X-List-Received-Date: Tue, 08 Jul 2014 06:04:25 -0000
Content-Type: text/plain; charset=UTF-8

I have run below command

bitbake -c fetchall core-image-minimal

It has created downloads directory and packages source codes are
there inside, but i am not able to find the kernel and u-boot source code.

I have build core-image-minimal without internet connectivity, and kernel and
u-boot have also built properly. I am not getting from where it is taking
the source code for kernel and u-boot.

I am building yocto sdk for imx6l evolution kit and i have checked out
daisy branch.

Please suggest where can be the source code for kernel and u-boot
before build but after running fetchall command.

