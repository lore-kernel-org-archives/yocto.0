Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82544E0086B; Tue,  8 May 2018 03:26:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 461DBE005A9
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 03:26:02 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id l132so1485350qke.3
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 03:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G9pmeaioCRFC2UatoCEX21jv3vhb2VPGqGRmKU6uo9U=;
	b=MY04WdOoBqaV1iNWZTxgU1FIChIYSQCpHV7Y72tpw22Y2pSDJ5Jl5/G6Wsw6ox6gFX
	MK5Cz+suDKe68hn/A/ooDNFcD01pqzfGE08QSdj1cwmeffidPRyWqsXK/c1SMTZmLPv2
	jPdtn05lDL1tszM7F4ihRGnaKbKEHNBWlNzOoRCyxrYqL6W2RcNn9oVIizfZ5tQKlF5Z
	i7YpU43D646i/jLUZqjmnyexyvL/J+n2dhHpL/yD6oSEpta1QWfF2AHnLYH7TwUPFiPi
	7aRKVapUzqrSyNncvZrAbMKlp+HWP38pdxbsLAw1NUu9ZZFJyXhbbOI4DRbv+GaDgy7H
	UuCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G9pmeaioCRFC2UatoCEX21jv3vhb2VPGqGRmKU6uo9U=;
	b=HYkR3AFNJvYQGksQxowEbaqYsN3UtcJRkBKBK+xPz7BosRrgRk9iSTnwlNticjXl89
	RPYWlFXQG+EdcIBFs8b61Cq5z5gUh6DpCnz+JiAb3gP7b5AuwjOrkfjawgkVI52cw9c/
	wefFoxe9p+cZ9VF5wZ7NnDW8ohcShdoSvkNszSpnBALteRiQC3MfuEEKehdM/Fh6KJaH
	+8U54qEzHGQeoWIoCiPJNqbmLNZZPN7KkrIYUyIeIhdPK5d+HetmQ6Tw3TJ9blaaZgs7
	DVK2ahdxlDpLbJ2tp3d1U1xc88wOhFWS6VHv3qeYCl1yYLz3NVGBm1iI21ivgL+JCEr+
	KeDg==
X-Gm-Message-State: ALQs6tDCexSecluT0SWuCjRQzKOwgPkK7s/xP009JkUIk9sPFJz9qkNO
	7esJo0YOO98xy3h6/yURCJoZvNR/Zj3KkgnEqpc=
X-Google-Smtp-Source: AB8JxZoqM2+PzXqfDGfnAQIRAcbd5UbcjXtzWAoXB8q10xnaG/Ozi+B8Qdbk+gjPo7remHyzT+KVlJLc8lnYJC6HwKs=
X-Received: by 10.55.86.133 with SMTP id k127mr34596898qkb.264.1525775161703; 
	Tue, 08 May 2018 03:26:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Tue, 8 May 2018 03:26:01 -0700 (PDT)
In-Reply-To: <5304B3CDBC3FA44CAED287F54088A0CA236C39CD@MBCHN01.chn.nestgroup.net>
References: <5304B3CDBC3FA44CAED287F54088A0CA236C39CD@MBCHN01.chn.nestgroup.net>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 8 May 2018 12:26:01 +0200
Message-ID: <CAGAf8LwmcYuuSd5adgwgzAOdcejbqck7P35PQkgGNnLbb379TQ@mail.gmail.com>
To: "Chinthamol CS." <Chinthamol.CS@nestgroup.net>, 
	"Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QT5.8 -qtwebengine SDK generation fails
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
X-List-Received-Date: Tue, 08 May 2018 10:26:04 -0000
Content-Type: text/plain; charset="UTF-8"

> The problem can be triggered with either "bitbake -c populate_sdk image-name" or with "bitbake meta-toolchain-qt5".

Maybe this can help... Hope dies last! ;-)
http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard

Zoran
_______

On Mon, May 7, 2018 at 8:18 AM, Chinthamol CS.
<Chinthamol.CS@nestgroup.net> wrote:
> Hi,
>
> We are using a i.MX8 board and we need to develop QT application based on
> qtwebengine. QT version used here is 5.8.
>
> We are using QT Creator with an external tool chain. we have to populate the
> SDK out of our yocto image.
>
> When we start to include qtwebengine to the
> packagegroup-qt5-toolchain-target.bb, we are getting errors. This step is
> required as otherwise the qtwebengine binary will be missing in the SDK and
> QT Creator will complain about that.
>
> We are using the imx-morty branch with Kernel Version  as 4.9.51of the i.MX
> yocto BSP.
>
> The problem can be triggered with either "bitbake -c populate_sdk
> image-name" or with "bitbake meta-toolchain-qt5".
>
> Error log is attached with this email. We really cannot find the reason why.
>
> Any tips for how to proceed?
>
> Below mentioned link says, Use webkit instead of webengine.
>
> https://community.nxp.com/thread/473203#
>
> Anyway we have to use qtwebengine for web browsing, not qtwebkit.. Please
> provide one solution to resolve this issue.
>
> Any help from anyone is greatly appreciated.
>
>
>
> Thanks,
>
> Chintha
>
>
>
>
>
> ________________________________
>
> Confidentiality Statement / Disclaimer : This message and any attachments is
> intended for the sole use of the intended recipient. It may contain
> confidential information. Any unauthorized use, dissemination or
> modification is strictly prohibited. If you are not the intended recipient,
> please notify the sender immediately then delete it from all your systems,
> and do not copy, use or print. Internet communications are not secure and it
> is the responsibility of the recipient to make sure that it is
> virus/malicious code exempt.
>
> The company/sender cannot be responsible for any unauthorized alterations or
> modifications made to the contents. If you require any form of confirmation
> of the contents, please contact the company/sender. The company/sender is
> not liable for any errors or omissions in the content of this message.
>
> ________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

