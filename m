Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20A82E00E3C; Wed,  7 Feb 2018 04:17:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF73E00A44
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 04:17:22 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id t139so1053793lff.0
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 04:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=WJbPcCmwh+vELhVM3VoQGPAjoT96Ncogsg0eeD5JOIk=;
	b=acFo3sWYs3w6Md98PtBpZxA/jXqwU75dTJf93eiyLMX96VmJnPhxWdf7ISWioV/xfx
	+9L9u6vB7/7gSLhjhQa+6MkCsU5JkKsNWMIogt7SdQd8qbQsG4KEhTZ6C0B9GrQn3ARA
	30s/PnDbhD6HgiI6ErvyZRi+acB+GkbA9dHMUutjqjgQZEIN+KVdfnsKjQ3ceMuZBUsz
	j4PVOxyaoVGHsb2mYa3Ty1c9XLY2hJ+EcJcPwXeUw4HJfQ9WF0Re5PT18SKBNynIXluN
	joDjgpYzDNBI0LVxhSiA78svRHuEtNlTs8hgokZx29iu7Lqgg4bUycna6dQYaYWZUEhp
	Yn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WJbPcCmwh+vELhVM3VoQGPAjoT96Ncogsg0eeD5JOIk=;
	b=PkgUHQoyod7zqlzOZylLqClt1dMvHtl64+logOfdtCa6XOfblZ3fnYJNn7MXej4/gG
	L7vE6CbAcQVot0BAiNPk0bw2vfPP0aP603+FL8dbT9o+vcGkT8LD02oo1zGNTBQA3ePJ
	tivNBbBDqD25XnuUVHATk4x14BAzb9p92UFliE3aSB/C/or0UZux6F5d33HWMVowt1j3
	meqx3oWZL7FesA9f0qP6mJCR7K0krgTwUXmRGvcqzHchGjMeMYmLG8ZjcrGZ4UE4e1xE
	c4CmtIqfAd1/vq2vBWrSBo4J6wgZVS6S28npenKtkeU2JXk8fKALz00/xE71XgXfr7lI
	4kCw==
X-Gm-Message-State: APf1xPDxxoBvQaDvR9WUsGQgbcurOvcxDZuxn1L/xMsQJK46DrZsIGVC
	WHficI/bJ5+B5zlif+T+MkWhfGLUFeVqPI+L89SAsKRx
X-Google-Smtp-Source: AH8x225gAcl7W2+3GvqzsXxtJc0rfBbgprsSe520Hq0SpqKRFSwbI31n7L3au6NxfM0rHKTRyC2+URLrXokaN9w8OYc=
X-Received: by 10.25.157.141 with SMTP id g135mr3765442lfe.142.1518005841811; 
	Wed, 07 Feb 2018 04:17:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.28.4 with HTTP; Wed, 7 Feb 2018 04:17:21 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 7 Feb 2018 13:17:21 +0100
Message-ID: <CAOT_U5a_cTCpAHHqPfozcH0Lxu=O1BFYgVa-FkdZcR0-+X8QQQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Creating a python recipe with devtool
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
X-List-Received-Date: Wed, 07 Feb 2018 12:17:24 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I need to add a python package available on pypi:
    https://pypi.python.org/pypi/multiprocessing-logging/

Instead of manually creating the bb file, I'd like to add
it using the devtool flow.

In my build directory I execute:

    devtool create-workspace
    devtool build-image my-image
    devtool add
https://pypi.python.org/packages/65/eb/1c3db9596eddb2bd1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2.6-py2.py3-none-any.whl#md5=b7783a8c449135e5bb344b3f0caa3522

That is the URL for the sources listed here:
     https://pypi.python.org/pypi/multiprocessing-logging/

That ends up with an error:

    NOTE: Tasks Summary: Attempted 2 tasks of which 0 didn't need to
be rerun and all succeeded.
    Traceback (most recent call last):
      File "/home/alan/senic-os/oe/scripts/recipetool", line 121, in <module>
        ret = main()
      File "/home/alan/senic-os/oe/scripts/recipetool", line 110, in main
        ret = args.func(args)
      File "/home/alan/senic-os/oe/scripts/lib/recipetool/create.py",
line 512, in create_recipe
        check_single_file(dirlist[0], fetchuri)
      File "/home/alan/senic-os/oe/scripts/lib/recipetool/create.py",
line 917, in check_single_file
        with open(fn, 'r', errors='surrogateescape') as f:
    FileNotFoundError: [Errno 2] No such file or directory:
'multiprocessing_logging-0.2.6-py2.py3-none-any.whl'

What am I missing?
Is the correct URL used?

