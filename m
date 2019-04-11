Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7479E00D30; Thu, 11 Apr 2019 07:18:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49B10E00B5C
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 07:18:15 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id l203so5040213oia.3
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 07:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=hihZSNt60IVD774SPolyK9HdXqVdPEmnJhG1O6FUnWo=;
	b=adYwVDF36qSax/Coi+2wPjaHw+6f5D2mMgBUOS99LZBS8Cuw12WsDQyPO8x8eUoHFb
	vsTFtorsQu7+cWYaj4ZOXQljsLpCbGhOj0/XEHxrOinegsd9bO676FmJDMfisVI00awf
	hB6aGys9ec7Zh/iIisTaohvkGYe28c8yQtHfrfjCuTPPQ4Sb7tGXaTSLY7NO+C1oGlfx
	y7BIFQGz+KA/GXjCyTsOsW2l2onDO8IuaeYcYo5MxSfoBL2QmA7FYCNVyFp+0+uhJkMQ
	psXKJvSt903IyALD6DG2cjELfSG4tSxKqKjswYHwrldtSMPKv1bh7uVcaT26w0N8KnQ0
	5JxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=hihZSNt60IVD774SPolyK9HdXqVdPEmnJhG1O6FUnWo=;
	b=Au+zco4pFTzLhRwLvp9veSAfZcGDUe80MAomPPujHqMh5RcDhvGiL2tqY0OwSYfE5W
	FqyqFvgvgga4e4+NZnlxBsUiWb4DIUclnqV+Lp2/JKcRgigKflwTeumGoOCKNYupDsH9
	g1QeLS8GoR7QS4CCLJwDPWXaOpzcj67LtmvFo1xMxbnjv8QVe0wiawClF3MP3whj2/rK
	UO0YE5xcMN4MEfZkTVegxUV7sADUIzjpFc9qhzt53vyDtfFAu4QHR0X50QnueXNyL7Bl
	FmvSnfCNVrZfudJjFbrPoxK6WUzo1d7KfxvNojdYcVMFJct8O9rjoLFtpz+YuSSYovzx
	yWrA==
X-Gm-Message-State: APjAAAX7v3UAMRwkC59OQeuZrxmx38lc7j2xzeT/cxdkCgHvj4k0bF8K
	IbJGyEjVPCrvf6+LHm8GeUlpG4XxljyvmXkJl0uKo3xQ6DA=
X-Google-Smtp-Source: APXvYqwMtQfQjtaHMb/EA6L0g7oxuNX5Bxoznc8a+l9VMPuyaLmOa3PeICBOKFWSvT19NRNgIbCH46C8P+03yNyVga4=
X-Received: by 2002:aca:480e:: with SMTP id v14mr6282737oia.66.1554992294370; 
	Thu, 11 Apr 2019 07:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAOT_U5a+FLBZgD55usLwxRhyWMKp6OmhpVeRJY0YPk5B0nv_rg@mail.gmail.com>
In-Reply-To: <CAOT_U5a+FLBZgD55usLwxRhyWMKp6OmhpVeRJY0YPk5B0nv_rg@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 11 Apr 2019 16:18:03 +0200
Message-ID: <CAOT_U5YuOL1V2WS_iuUrbBtQnysdWSCV0Taifo_H5cn-3J5U7Q@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Listing files/packages a packagegroup creates
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
X-List-Received-Date: Thu, 11 Apr 2019 14:18:15 -0000
Content-Type: text/plain; charset="UTF-8"

(ctrl+enter, sorry :/)

Anyways, the same (oe-pkgdata-util) approach doesn't work for
identifying what files a packagegroup installs.

```
oe-pkgdata-util list-pkg-files  packagegroup-core-ssh-openssh
    packagegroup-core-ssh-openssh:
```

A workaround seems to be finding the packagegroup source
and identifying all the packages in there and looking for each separately.

Looking if someone has a cleaner way.

Be Well,
Alan


On Thu, Apr 11, 2019 at 3:59 PM Alan Martinovic
<alan.martinovic@senic.com> wrote:
>
> Hi,
> when searching for the files a package creates I find it very
> practical to use `oe-pkgdata-util`. i.e.
>
> oe-pkgdata-util list-pkg-files busybox
>
> However the same method doesn't work when applied to
> packagegroups.

