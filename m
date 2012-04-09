Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B921DE01363
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 22:39:29 -0700 (PDT)
Received: by lagu2 with SMTP id u2so4157379lag.35
	for <yocto@yoctoproject.org>; Sun, 08 Apr 2012 22:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=EMK/RPkzKnmTY3QBlOyTqtW1w444kVBmsGUUqihbMio=;
	b=VvDszU3HlZDU03StASt775rjz38sFWmJOHN5MVwyBpoYxoSdseUVSz2p9zDbZBKhwv
	WcfSMoIAUA5WzBz8gkT/apaSdZ+647eKHXf4b9KCMPHqzdLui2xaFLg6OV0JLXHtFaW5
	43y4OjV6vzQ9m9I603e5bVYdGzmUQREgYqd1oXMAQAKRnVO82SYkH8NCTL9nbBE6hw18
	zufHJ9rNOFrG7RBjSZkNsSeuseNZL/H6B1vUxCsRoEEPsESwChbqOcyiL5aTRn8uUx0Z
	GUOn2XQBL0AtEXMgF/0ZCMkBzUMuqB/uJKg8hUm5IcVYvchgsvW35ITEksdPDDFe8dlN
	rkQA==
Received: by 10.152.131.74 with SMTP id ok10mr9655323lab.17.1333949968361;
	Sun, 08 Apr 2012 22:39:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Sun, 8 Apr 2012 22:38:57 -0700 (PDT)
In-Reply-To: <F3906846C0EDD246B5CF75E8EDA3C47E217021D5@szxeml532-mbs.china.huawei.com>
References: <F3906846C0EDD246B5CF75E8EDA3C47E138A7864@szxeml532-mbx.china.huawei.com>
	<4F7FE69D.3040003@gmail.com>
	<F3906846C0EDD246B5CF75E8EDA3C47E217021D5@szxeml532-mbs.china.huawei.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 8 Apr 2012 22:38:57 -0700
Message-ID: <CAMKF1sq59hus9hUrUsqfH7YCB1aOeM_=GtxHJDm6EbRT6G6Yjg@mail.gmail.com>
To: Ashish Pandey <ashishpandey@huawei.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Failure in beecrypt-4.2.1-r1 package with poky-1.2_M4.rc2 on Open Suse 12.1
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
X-List-Received-Date: Mon, 09 Apr 2012 05:39:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 8, 2012 at 9:07 PM, Ashish Pandey <ashishpandey@huawei.com> wro=
te:
>
> =C2=A0I tried woth " --disable-java" option but it is giving same error.
> Please check once again and help me to build.

post your configure logs somewhere disabling java should have disabled
any JNI detection

