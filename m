Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B8BDE006C7; Wed, 22 Aug 2018 01:41:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3383BE003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 01:41:17 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id s198-v6so1853224oih.11
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 01:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UWgC/0y6KSmfDIk97kttSBK9u6BZDwYNabDxztC6a1o=;
	b=KZdXgA+abqkOq33E37/gSAPU6kw/yb3aS4P9aaV42t651mwRLclCinDG5ufneZFCvr
	zgIZAkNaziTyMLUet/oG6dVuNZWTtULwAC0hrznd8PlJL8RFZ7rr/ihZmOINuq0VC+bV
	pmgwqQE7t8KNKBRCT1sdaaudlTdY1BQUbXT+7kb/HCLcFKcQlFkNyuTrlgpMUqjN2gj/
	zOupO2hDc3stEfVLWSIIYrbk9VQZmKyVBgBue0jzcIw52D13V2v+lo7JRBao0uP+CLCb
	zRcE7LNXdodmN8e01BAfrX2NhpUGRPgUrEAPa7AEz9snmj0GIzar2PTTYSgOw/uQ5JzH
	7A/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UWgC/0y6KSmfDIk97kttSBK9u6BZDwYNabDxztC6a1o=;
	b=ljkDZuR0ze5cLL31Qft3iOjKg7MuJBYGq5JHa9+FiUl9liY2Doa2IiV6oGgNQnSf63
	blxlhi7SFmVFRo0Zghze0nGOo7sUXI8r8iGGUWswQNgkFFe0ngGlKx1JLbGogDlUCNPn
	AdL5rSmR1nGRcoaqKNgGZemJsBudqZ76ysfEhNUV4bNAoCHrNUxMB48UhQtx7G3lSVXE
	0sfy2fjysAwyTwIiTKREOgaScOujlZcSYoqrgPWgf8ERasjMg02J8xpUQs8jhsKujIGG
	hTjl4W7YR77IE6LwOpy1HIvlen9qUlAIDLiE8jW9C7ZmY7HY6X4bZRl01gpfEmyo+Ydd
	QTtA==
X-Gm-Message-State: APzg51BA2zZSacT55DszTCcHNJhBvZ8GsoDekYFaI2SAg5t/FMZG5x1D
	dnnxJ3h6m49jbIUrfTLRKhT7kw/i95DUTYaMSFU=
X-Google-Smtp-Source: ANB0VdaqtRiYUms6GwCu2kFaxmMR4kybNTINA/G+TMkzLy8an9Zkp/irAxgrh2EDRTZhIW8PVh6dTGnFo/zo+4c2h2Y=
X-Received: by 2002:aca:d015:: with SMTP id
	h21-v6mr3081152oig.142.1534927276618; 
	Wed, 22 Aug 2018 01:41:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Wed, 22 Aug 2018 01:41:16
	-0700 (PDT)
In-Reply-To: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 Aug 2018 10:41:16 +0200
Message-ID: <CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
To: Jack.Fewx@dell.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 22 Aug 2018 08:41:17 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-20 20:45 GMT+02:00  <Jack.Fewx@dell.com>:
> We are encountering a build problem after migrating to Poky 2.3 and Pseudo 1.8.1, and need help to resolve this.
> It is hampering our development efforts, forcing us to rebuild images frequently.
>
> Background:
> Our build applies SELinux file contexts, during build time since our rootfs is read-only
> In Poky 2.0, using Pseudo 1.6.2 this works perfectly 100% of the time

Pseudo is not an integral part of poky, and comes via a recipe build
like anything else. You can play with that recipe, and establish which
commit in pseudo's upstream git repo broke this. Also 2.3 is better
than 2.0 but still kind of old. Do try this on the latest yocto
release, or even on the master branch.

Alex

