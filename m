Return-Path: <anders.roxell@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D528E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 08:39:36 -0700 (PDT)
Received: by yenm12 with SMTP id m12so494962yen.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 08:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZJ1jxnJj1lwoRIRg+8PBTvVCU9bE0W4Q1iPMV+XnrV0=;
	b=UXN6FbkgQpJz7+JCK6qeqouoH7DckXibbg10NGjpkc/tyZa964BW1mro+5AsOxfGbh
	Ly/TG4OMo+TTc6oykljocwcxiToRxB0edp5mZyG7nsndqrNPM3HV79BWobMNuCDNHOy7
	YRyCj5/PnWXEQv5EYKtfgGqpB3pDrpWJSOeAqWHt1UXm9OCXJhnc/G+/jTdGFJDGy7fu
	MWAUU/IkfNjEpmYY9SsgPxGi8TkmYMXc9VJs+qAhuHx7+/sgIUWpSdWJadVjUQfK8l/F
	h/nIVWGyU53Mn0IDkLscs2fX4Q8YepTayQBgL+MNDgzr+tH7KSid2Parh+GnCvb/FzvY
	h0FA==
MIME-Version: 1.0
Received: by 10.60.14.227 with SMTP id s3mr1016835oec.36.1344440375383; Wed,
	08 Aug 2012 08:39:35 -0700 (PDT)
Received: by 10.182.116.3 with HTTP; Wed, 8 Aug 2012 08:39:35 -0700 (PDT)
Date: Wed, 8 Aug 2012 17:39:35 +0200
Message-ID: <CAEUf8FuMUNFAuGfqSq_yFpx2355OiKOca9Oun=pG2OyK41MBUg@mail.gmail.com>
From: Anders Roxell <anders.roxell@gmail.com>
To: yocto@yoctoproject.org
Subject: Is there a way to order to kernel_do_configure_prepend?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Aug 2012 15:39:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm trying to build a p2041rdb i use the meta-fsl-ppc and poky release 1.2.
I've created my own meta-layer where I add my own cfg kernel config so
I added my own bbappend on the linux-qoriq-sdk.bb.
In the linux-qoriq-sdk.bb file they have added a
kernel_do_configure_prepend and I did my own
kernel_do_configure_prepend in my linux-qoriq-sdk.bbappend file to add
the kernel config that I need.
I have set BBFILE_PRIORITY (BBFILE_PRIORITY_mylayer="5").

my problem is that my kernel_do_configure_prepend is applied before
the fsl-ppc's kernel_do_configure_prepend and that is a problem
because fsl-ppc's kernel_do_configure_prepend over writes the .config
file (so my .config get over written).

does anyone have any idea how I can change the order of
kernel_do_configure_prepend?

with kind regards,
Anders

