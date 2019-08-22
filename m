Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F9F8E00DE6; Thu, 22 Aug 2019 01:09:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3EDAE00DF7
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 01:09:02 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id 18so10053249ioe.10
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 01:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=PC5hqeFlC2myRrE86uwF53n5aorEmVOdgaP44HhBc2A=;
	b=KqVxHWRbUVEc5+toGldH76pB+yu7W/TvNImO4//VAtH10P6IzMPq1tBjnZUCXao3kr
	bqk+/5I/aYD2yFv8a+M5m0lYPCF3isZ1ocAcPituYjHOxQpwOY0jKslQkcmOk5vs0VNj
	HmSwo5x29gJ4NnBmwk1mBh+ipTz8Rog9HinCzsoBJP0hDT6BK9gW6fY+R5CR7cxGdMx6
	VctmHnvAs1M2SuRVva5xo0QwScMGYEcsYwQkmAe5V6PhIfArCNTk3omJRKwGqBcGn4XU
	dUgvtbwFJBMqEYI6/D1Fckhhu+Tlm/4FxmXP2LHTMpOtxKDnmcJ8BlEJpOS/564bxjdo
	O5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=PC5hqeFlC2myRrE86uwF53n5aorEmVOdgaP44HhBc2A=;
	b=THxn5JoblQ3kRj8bMLFwU9rGitKBopCbvkT6v4i2k39Edp/3O9MF1VwvHvMZp+Gty8
	y4vBM/ghdJODgckwvyv6EvIENPD17pWzVvED/QVxY50OfX6Z/CUN9M8Y48Llx3xDqi6L
	BRujbLd0Ma9cL7c7foqUurWV9BUoWUhDGu8WWudO2raVvOqvR/ZiL7rfKvJ69PxPWFza
	dHDjg8YBU6shE2rQXbWb1mVgKwp7VI56qiVvyLrz/bTP71nLy6NSlHB4PJ/WepqIeGKI
	8imVz31K9MyVL7NasS5qQlaXqpfUo5guVIEzIl+kwakQGsIrCAs3vpxkCCCYmHoE8n2r
	0n2Q==
X-Gm-Message-State: APjAAAWCnQWh26oGsr72WbPr1BSonGAPyA7t+WjApO4634CzHwLxL+BU
	dlcSHSmZxcyJCYBHEflSOLOe6mrJZshUm7NyN7n07BP/
X-Google-Smtp-Source: APXvYqz4Q1D/4Na2fSGDXmQDqnGQJrC12zIANQ4L5rMvYcUf6sBdcnZbBdO4omoMLEYEUToPjXmaP1NsA4H4bDiXTOQ=
X-Received: by 2002:a5d:964a:: with SMTP id d10mr4041776ios.301.1566461341806; 
	Thu, 22 Aug 2019 01:09:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a3c1:0:0:0:0:0 with HTTP; Thu, 22 Aug 2019 01:09:01
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 22 Aug 2019 18:09:01 +1000
Message-ID: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Can Yocto build to set up process running priority in service?
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
X-List-Received-Date: Thu, 22 Aug 2019 08:09:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

How to set up process running priority for services in Yocto build
using renice or some method?

Thank you.

Kind regards,

- jupiter

