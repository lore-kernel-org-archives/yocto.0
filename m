Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DFC4E00D28; Fri, 29 Mar 2019 04:54:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A6BFE00D20
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 04:54:45 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id h16so1655755ljg.11
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 04:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=S/42ZaXOVr8lSQG0/zpO2ux1jpXD2sOuDyR922nQDhA=;
	b=NVtNZBPlcYEzBqlFyC/5iR6FbLrGorxyPrfEixJhWIUN1wa+BEadoWGYmhMAgCKq4G
	GKz14uTQxsuloW89wemr30tG/CnlycPKPIO1Atw7hcJXCGY2keefxX/FCGxYzioANxiv
	HeYslctEzA02nGgYHssfus4oOZ+wyOf9nKM3qz+Wfee1uIinFmJgQmBI5lSXnex99kTN
	7+QwyLi7xRY7lAcqoM6HLYWlfoXie7SGb0LJ3Rycg9mwxBCxTOY02DL/0CWF6txFKCUc
	Ta1jfVQ7Pa0sxJOxmNHfti7N7no+jROeHbpeiPX1L2bfZ66pwBOVnYjV+o/beZKLMfDk
	lV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=S/42ZaXOVr8lSQG0/zpO2ux1jpXD2sOuDyR922nQDhA=;
	b=IFDnVEH+DfZRZURS5WDPP1stbCP6ZTwwauGR4YeFX//EFY9TsRHJGC01sBWV8fkFyN
	9W/BmFJnBiGTSoif1Gx06/r9W1SxpSxgAsb+M8J25xfTYntHgKoIzL5zxGzCd4h83qQ4
	EWgAa2Mq3AFEOWd/1QvCaNMoco8gIs2/n1NJpjMadDgXZJM9TRMVnbU4la5L7+gvIxZv
	mBG6V1cfuJF4g5DKstJV3FJZbYYBYPVAploCfX8ZBhE0AEkZBHzp79qZYVVCQ99BVSsT
	th13oJwRca5TFKycgo+Snjvojl2ioVwFIl8RYnc0kevQEDS3pvQ/la8WIJjtzMOxGVAC
	uY9w==
X-Gm-Message-State: APjAAAV8RwSA3xXuvjrsAGWSr7T00dXejnsIGsgu73bA+lh+6dotduLJ
	F/36IaDifjI/NhPSNq3D1uiiC5w9PpqKkSRD5tqPRDmE
X-Google-Smtp-Source: APXvYqwYGg8fwNj4ceOjCug2Z5TJc108/sYRkoesmTweac5+ZkouooqipOOnyzIGClb/m8iAp/vR8oF5bvzMNuOgn2k=
X-Received: by 2002:a2e:84ce:: with SMTP id q14mr20848059ljh.104.1553860484584;
	Fri, 29 Mar 2019 04:54:44 -0700 (PDT)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Fri, 29 Mar 2019 13:54:29 +0200
Message-ID: <CAAmVmrpsKT9n6=txLNf28gz-7Dez1jUGcwkXdVX_DQqRnt2fvg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Proper way to edit bootimg - image
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
X-List-Received-Date: Fri, 29 Mar 2019 11:54:46 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have created image for x86 -based hw with Yocto 2.5. Image is using
bootimg-pcbios that is then mounted to /boot when image is running.

I now need to modify that bootimg that is mounted in /boot. I think
it's created by scripts/lib/wic/plugins/source/bootimg-pcbios.py -
script.

What would be proper way to to modify the bootimg or does it has to do
with modifying that bootimg-pcbios.py - script?

-Teemu Keskinarkaus

