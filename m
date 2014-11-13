Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 378ABE008C3; Thu, 13 Nov 2014 07:05:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63655E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 07:05:03 -0800 (PST)
Received: by mail-vc0-f171.google.com with SMTP id id10so3530783vcb.16
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 07:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Dm6HocD2mUhNawGDGCsfDpYtN62RT2EpzgUO6M3Nflg=;
	b=RAcQ7ZBNx1BxwVQSkIrsfxXBxQXhaA39uiPERd4pVK6qrxilhbgCQpk4dps1X6kGs4
	qlSoWP8pq0fKHGz23/LLT10GXPO9MzqvRcYUkapBjHCmZapOwzt9NpAEFbV4IseKFcWx
	MIuQ7hF8xM5WperAeXhbiWc3qOuYok8nsZGQFjyh80Ictvnw7tmTdqdRQSQG1giRLXgg
	U68n9uIiHBmpxUNh0NwR2se4Uc0UxAh0etQejBvZ5sgXHGxpEMnCtT2LUiBZv8BHxCn0
	6BDq/TxBEMpBQMGyyGL6Z9D/W0HN4+pY1JM6t1qtn1zS8cmGYXBdWYiElPYb2v6mCqtN
	Fecw==
MIME-Version: 1.0
X-Received: by 10.221.4.135 with SMTP id oc7mr2016876vcb.6.1415891102891; Thu,
	13 Nov 2014 07:05:02 -0800 (PST)
Received: by 10.220.131.5 with HTTP; Thu, 13 Nov 2014 07:05:02 -0800 (PST)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8521E20E32E@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8521E20E32E@USSTLZ-PMSG012.emrsn.org>
Date: Thu, 13 Nov 2014 10:05:02 -0500
Message-ID: <CAPDOMVgwLM-PJVADkCL=iCoKkE1E9jLQTsF+DekQHk-kYNzo=A@mail.gmail.com>
From: Nick Krause <xerofoify@gmail.com>
To: Neil.Wu@emerson.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't find the header files after install adt_installer.tar.gz
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
X-List-Received-Date: Thu, 13 Nov 2014 15:05:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Have you read the yocto docs on ADT for building correctly your development=
 kit,
seems to me rather trivial error in either your build or bitbake
recipe for hello world.
Cheers Nick

On Thu, Nov 13, 2014 at 4:43 AM,  <Neil.Wu@emerson.com> wrote:
> Hi all :
>
>            I have installed  the adt_installer .tar.gz like fllowing:
>
>               $ cd ~
>
>               $ tar -xjf adt_installer.tar.bz2
>
>               $ cd adt-installer
>
>               $ ./adt_installer
>
>
>
>         Because the
> YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yocto/$YOCTOADT_TARGET_MACH=
INE_arm
> in adt_installer.conf file ,
>
>         then I extract the myself Root Filesystem:
>
>              $source /opt/poky/1.7/environment-setup-i586-poky-linux
>
>              $ runqemu-extract-sdk
> ~/Downloads/core-image-arm-rootfs.tar.bz2           $HOME/ test-yocto/
> qemuarm/
>
>
>
>        Try to compile  the  =E2=80=9CHelloworld=E2=80=9D, it apper this e=
rror:
>
>           hello.c:1:19: fatal error: stdio.h: No such file or directory
>
>
>
>     Do you know how to resolve the issue? Please help me !
>
>     Thank you very much!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

