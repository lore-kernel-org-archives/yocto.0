Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83960E00D4C; Thu, 30 May 2019 01:14:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38348E00D47
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 01:14:02 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id d9so3561957wrx.0
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 01:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jc1V+XOGpkJuDQf4RZjzjPCWIBEekCk+jXVe7OgRBOc=;
	b=P4RWMuRpoHPA0vWOElEAVlKdqBgvdRGNsbgBTBIKyp+Xk9bHIzf63PGWQHyJb1MU81
	m07U4zqwRx8V7FkPggP8usxUTkHPbtsJ1b7TQVdmHB3RF6bintwF0zQzqi20ZzkmgZye
	2DOjMOm2ERq3kC7c2MdknWrA6iK8HUFP39EnOwEP+wb3P42aJZKz9VN8Yccnmr1AYMRi
	5UbuDbAGb4F9g+HKtOqXV4XHk/0dFmIxZcdIOlnrPh0PWoobTTf83Gx3ThCZBdv+xCNn
	m9zsIU9AXqvWeJ4QIAaVJ0vvEvxQjpnkfoF8Mj223XEetN9AQTCf3XDUgc4uXobksm9H
	2/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jc1V+XOGpkJuDQf4RZjzjPCWIBEekCk+jXVe7OgRBOc=;
	b=a3XKbtEtdK22OkhNX1qTIIgDxANWAnOXYsEBMJbfCjSt0DYTL7H7w8VgHn+ty3ZvO6
	dAOfnv9Fxv779REEGH7LkfL6lrSA0xOxeJ/LqAM1uiyAWba2a2A7wfGGioNxb+oJuUiG
	50dPC+kdSWFKwfo9arv0zBec24R18hqORw+qwE+jDZw6V9ikAu1KXb9i5nQ+ELb6aiNV
	5ae4kt2tFhHgdxtu9c6KGM+zVzyRs9fgCAARYBE/RBrWNNVH9SCq9TcTfAzoLxabSJgx
	J/tbEtEzjK3E32L7wF55gvYBK1eMf2hVHJI7UVv9XyEQDhhwAdSM1N8xoLnJkrbqcGjg
	k2cw==
X-Gm-Message-State: APjAAAX3eaDezWvM00dmhrtFugK7N3RnHq29bohJ6ni1IETA8dOP26WS
	YszIQrJKofY/JHvMvwiAiy8whJbfh6XwQR4o6415LmAVfXfHHg==
X-Google-Smtp-Source: APXvYqwdCS7eUCVcAelF748825EOew2cxCyE6My9/467fkarS4pwhiXmB/X31gIjYEbjuCJDS8YxGQlCiAsPWrsfjYU=
X-Received: by 2002:adf:eeca:: with SMTP id a10mr1717406wrp.266.1559204040933; 
	Thu, 30 May 2019 01:14:00 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 30 May 2019 10:13:49 +0200
Message-ID: <CAAfyv37gM8Vn_ynODSKTB8v9kRYxfv28pPtkGc=fx4bEXSK9ew@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: warrior: QA issue when bump kernel to 5.2-rc2
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
X-List-Received-Date: Thu, 30 May 2019 08:14:05 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add support for latest possible released kernel in
meta-sunxi by using poky warrior and hit this QA issue:
ERROR: linux-mainline-5.2-rc2-r0 do_package: QA Issue: linux-mainline:
Files/directories were installed but not shipped in any package:
  /lib/modules/5.2.0-rc2/modules.builtin.modinfo
Please set FILES such that these items are packaged. Alternatively if
they are unneeded, avoid installing them or delete them within
do_install.
linux-mainline: 1 installed and not shipped files. [installed-vs-shipped]

I can simply drop it but would like to see if anything was updated
from actual linux-yocto (which is 5.0.3). Ideas? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

