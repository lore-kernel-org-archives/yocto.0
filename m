Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B58E00CCE; Fri,  1 Jun 2018 03:52:33 -0700 (PDT)
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
	*      [74.125.82.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C64EFE00843
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 03:52:32 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id q17-v6so18201921otg.2
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 03:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6vkLYpnBo23icAgx/g5jd4VdBxH9ypEiIFV5PER6eyg=;
	b=D2Vzxyw6gD7RwSFEpTKvr1MIUimqGzD9Rje/rId0rWK5rmEEcW8P14KBzQWh4uFF0H
	EnPQr7H5LKuceuT4n533pBWghAFyehn1tbAlEB+IQGzcMYFHdiUelHnsk79GBh2bbIrl
	huyhhD2mMy+aOcvxZy6RfFBkpIsYyY2s9EgupZ/+BFpncGhnp0WkLiuM0OmHaKNkj3ic
	boY9J5tqXgmJHWjH2z7TMLwD4pgtkY3oP+A6zFdfh4JImiyMoUh3UpV2HA1ghWXEFRlY
	bCdh7ZNXUcaqhqlMrHhMHcI5EO8nkol3DFs3ED5Zak0hH78dgy7+M7QjU9D0QJFCwEKX
	ltMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6vkLYpnBo23icAgx/g5jd4VdBxH9ypEiIFV5PER6eyg=;
	b=B7ohJIezzHG1kjzD6G46CvOqRe0KWQB+Eod1e95o8hZdUSxsmlzGp2SDkhfSpUiek1
	e8QBEL63ZM36mIobeE5Gj2lZdaItYx1mQQtqIflAGQTUZO3MzcuDtoVjJjaZfFNOkRlX
	vD7QZA4l5KphGCQk9ijy6DqiDvnHq0mUNSgepwh6lqKkuU/oWoSQO8chx5ANWaBkQR8q
	z3YvNZTpF3qAJdyO99xJcSs5/ruDi4iSQvBoMU8vjRynnvVAMm/zMwGbvfs76Ed8PDxC
	/dRqb6EyMerr3lhrviOolg+tp7hhElHQFxg1ilT2MeAaWCITe7jptvqmUoVQH3yd/lUT
	MMxw==
X-Gm-Message-State: APt69E0RIH4UsMs/nGDAcVyKUdqDdERMCm5u+HG0p/Gikyx0GpX8lzTY
	RLtRfHrVmRHtuY2cOTPwvxTZS9frqwDpE4+O4qiVAHVF
X-Google-Smtp-Source: ADUXVKLscx6+PCaCXq2caPCq4v69Idq7lBgTGGqCfxDAzWgwGT9QYgjSyB79sGyco8CV/7Z5ZahUqkA6eWAX746QU/A=
X-Received: by 2002:a9d:1142:: with SMTP id
	p2-v6mr3470558otp.110.1527850352156; 
	Fri, 01 Jun 2018 03:52:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 03:52:31 -0700 (PDT)
In-Reply-To: <CAOT_U5b9-3yK1PRieqixN86pXSPeTdDfzca42vS2ZndXTb6_Fw@mail.gmail.com>
References: <CAOT_U5b9-3yK1PRieqixN86pXSPeTdDfzca42vS2ZndXTb6_Fw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Jun 2018 13:52:31 +0300
Message-ID: <CANNYZj-Haidas8Y4f_Wqyf-yYfhRjLe1UFT-HfOt-jxY=kNunA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wic appending ".1" to a file name on multiple images build
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
X-List-Received-Date: Fri, 01 Jun 2018 10:52:33 -0000
Content-Type: text/plain; charset="UTF-8"

2018-06-01 13:38 GMT+03:00 Alan Martinovic <alan.martinovic@senic.com>:
> Building them at the same time causes an issue:
>
> Traceback (most recent call lastd):
>   File "/home/alan/workspace/senic-os-dev/oe/scripts/lib/wic/filemap.py",
> line 120, in _open_image_file
>      self._f_image = open(self._image_path, 'rb')
>   FileNotFoundError: [Errno 2] No such file or directory:
> '/home/alan/workspace/senic-os-dev/build/tmp-glibc/deploy/images/senic-hub/u-boot-sunxi-with-spl.bin.1'
>
>
> The cause of the issue seems to be that `wic create`,
> even though it gets the correct file path through the
> wks file ("u-boot-sunxi-with-spl.bin")
> somewhere in the execution of wic create that
> fiile gets renamed (to "u-boot-sunxi-with-spl.bin.1")
> and results in an above issue.
>
> This only happens when the images are built in parallel,
> running each separately gives no errors.
>
> Am open for suggestions on how to approach this. :)

By applying code archaeology skills obviously, which are a must-have
for anyone involved in Yocto :)

Specifically here: where and how is self._image_path set? What are the
places in code that call into the path setter? Where do they get the
image name from? Does any of them manipulate the name and/or rename
the file and why?
Should the name include the image name to avoid such clashes and
races? And so on. :)

Alex

