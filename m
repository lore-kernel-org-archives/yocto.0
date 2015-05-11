Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8B99E00997; Mon, 11 May 2015 10:04:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06677E004F6
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 10:04:32 -0700 (PDT)
Received: by lagv1 with SMTP id v1so97919804lag.3
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 10:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=ECrJvaFzbO4noDMrpuc9LoqPrUrLw0xnregqTYZjViM=;
	b=xQdYF9OfE1x1On3EmZZrCJxxh/BWFYslbbTlz2Cv/BxlTM92FpKScpbnqVK4TY3tqE
	FqKEAM4oI2R+pJtzc9gBiboVaAvpcCUha/Ckzf12EfAZrfOgdUYbrk+avUUGtX9NVouY
	gjOBq/tKhZ5u9tQMk9aPne0tny40XMir+NBLTxMzZR5rN5b/C5eVBgHm5BvjRqrvK1cJ
	79PnZ8+LIapRqwFBdXhPexOV0r4NCPAYjNHGWsXuSZwrTTPGID0N9hCBcChR6EGc3Jjq
	tBPU/Zj9TtogUNK+PWGeDPUOdL30S8oMJbOsdXmJDjZNA2ssoB8RMY69xD+yzVtfq68D
	dTdQ==
X-Received: by 10.112.202.194 with SMTP id kk2mr9009973lbc.0.1431363870850;
	Mon, 11 May 2015 10:04:30 -0700 (PDT)
Received: from [192.168.50.2] (89-70-157-137.dynamic.chello.pl.
	[89.70.157.137])
	by mx.google.com with ESMTPSA id kf8sm3172504lbc.0.2015.05.11.10.04.29
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 May 2015 10:04:30 -0700 (PDT)
Message-ID: <5550E11C.4010400@gmail.com>
Date: Mon, 11 May 2015 19:04:28 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Qemu - problem with nfs filesytem
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
X-List-Received-Date: Mon, 11 May 2015 17:04:33 -0000
Content-Type: multipart/alternative;
	boundary="------------000305000205020600040206"

--------------000305000205020600040206
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I want to set up a nfs user space server using runqemu-export-rootfs.sh 
script.
When I run the unmodified script my exported filesystem can not be seen,
but when I remove parameters: -x $NFS_NFSPROG and -y $NFS_MOUNTPRO from 
unfsd
and remove corresponding command line parameters all is working fine.
Those parameters are responsible for setting rpc ports for nfs service.

Google says there is some patch to kernel allowing rpc services or 
higher port in yocto:
https://lists.yoctoproject.org/pipermail/yocto/2011-September/002741.html, 
but I can not see them in poky 1.6.
I am using kernel 3.14. Is there any patches that I need to apply, or 
maybe I do something wrong?

Regards,
Marcin
**

--------------000305000205020600040206
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi all,<br>
    <br>
    I want to set up a nfs user space server using
    runqemu-export-rootfs.sh script.<br>
    When I run the unmodified script my exported filesystem can not be
    seen,<br>
    but when I remove parameters: -x $NFS_NFSPROG and -y $NFS_MOUNTPRO
    from unfsd<br>
    and remove corresponding command line parameters all is working
    fine.<br>
    Those parameters are responsible for setting rpc ports for nfs
    service.<br>
    <br>
    Google says there is some patch to kernel allowing rpc services or
    higher port in yocto:<br>
    <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2011-September/002741.html">https://lists.yoctoproject.org/pipermail/yocto/2011-September/002741.html</a>,
    but I can not see them in poky 1.6.<br>
    I am using kernel 3.14. Is there any patches that I need to apply,
    or maybe I do something wrong?<br>
    <br>
    Regards,<br>
    Marcin<br>
    <b></b>
  </body>
</html>

--------------000305000205020600040206--
