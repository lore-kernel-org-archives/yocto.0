Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9A83E00E0B; Tue,  6 Feb 2018 11:05:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A148AE006E3
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 11:05:21 -0800 (PST)
Received: by mail-pl0-f51.google.com with SMTP id o13so1839106pli.6
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 11:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=joHpd2uhXXrj4NFm7obyPT04TZijATkc7KQ0cTh4XWw=;
	b=TA3ZWy3mE2pnIhZaBCpzZLE5xaX+FRjFWd78HgwhRXwhH12pivi6n1j7EG7HFdcRpn
	vRUyYT07lQKVUFK+N9i4sf5I3qN0vrECmcoFx2Unf/BO4CiiMNnHSxLWXdqPn/Q8+Qs7
	QP/SNEwIDyhD3HsVjRUK4cJfyVt9wFTCaeAc33XOAPKKwqvQLjaYGYhO4YAmTnicQ3rZ
	CeJ4Sj5tcq/HdmQjS1vuZwjHaVpIjUt3pCo/jl7C/xM8NJ3lY/svJTXH4D+gVotMtmEf
	58LLnE0YTZ4hPSg0NIzbrSzjzjM7chuU7xqXtxfS6ux+5si0SvaQh2a88ujuhoI+UMl+
	X+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=joHpd2uhXXrj4NFm7obyPT04TZijATkc7KQ0cTh4XWw=;
	b=sawTgojYcGJ5zBiaVPA53QMHf3idkPkkKZXKqWKkJ6xM0iqAPXC3q7rbmlEiE5q4ee
	J3wc1o2OcdCGeimxtJV6dmq/oXzOn7rTieweS6pxOixe5BBTkiABdQeZtl2BCt/KAA3m
	Z47nvZ5Lk9926zgDD8xUm2XoSvHsBuX1cIyJz/xlmqug2ZbRrZ6X3qLbj0UceHR0QvWc
	hvOAjAwXcJqMNtIlMz9W7igb+Uz0uVQrDdVIgoH8hiZXpZ1ffTpyAMD6WCB4JP1q3oHL
	AWrB9nj5WV0uUToc18hxTzwkuG8TV4WhX/PaL+G8uFLB0t6JVoa1mHt0M4G3N4A8jz8G
	z/Uw==
X-Gm-Message-State: APf1xPC4DGhqkiIy8ozhd8jgOt5RytHp/F+M+Pc732qsDai2lnEZLcBn
	KAiRquJmeSf3O3fdRcO4OPcFgkCeIFV5jxtUEUQ=
X-Google-Smtp-Source: AH8x225sCGzlr8sHG3qFYgjk+S3G/l5AdmgQLlPNCCfFxgQSUp8aQdX2Xzjb/VyBjNCL1gyIIt3fofPk/6KLQWkrzB0=
X-Received: by 2002:a17:902:9003:: with SMTP id
	a3-v6mr3381590plp.338.1517943920950; 
	Tue, 06 Feb 2018 11:05:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.161.170 with HTTP; Tue, 6 Feb 2018 11:04:50 -0800 (PST)
In-Reply-To: <TU4PR8401MB0767D8CD30F4E69A51226771EDFD0@TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR8401MB0767D8CD30F4E69A51226771EDFD0@TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Feb 2018 11:04:50 -0800
Message-ID: <CAMKF1spMLb8VFgBOCMDdgY==Ky7kOROMUXpmivdxNZjEuLs2ZQ@mail.gmail.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install files in sysroot but not rootfs (ala -dev)
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
X-List-Received-Date: Tue, 06 Feb 2018 19:05:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 6, 2018 at 10:44 AM, Koehler, Yannick
<yannick.koehler@hpe.com> wrote:
> I have some file to install in the sysroot/${MACHINE}/usr/share/cmake/Modules, but when I do so, those files also end up on the target.
>
> Is moving those files from FILES_${PN} to FILES_${PN}-dev the proper way to fix that and what is the logic that make it so that -dev packages are installed in the sysroot but not in the rootfs?

yes

>
> --
> Yannick Koehler
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

