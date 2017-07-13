Return-Path: <afenkart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26E29E009E7; Thu, 13 Jul 2017 01:52:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (afenkart[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 878D2E009A4
	for <yocto@yoctoproject.org>; Thu, 13 Jul 2017 01:52:33 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id y70so26027785vky.3
	for <yocto@yoctoproject.org>; Thu, 13 Jul 2017 01:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OH2tmCUTeRGvPAT6e/NfO9iR1whEW01c9wQc/7g2TD8=;
	b=D0hzMI/16ZQaqxIbmnuMuyiO/AmVtmXbFGtXILvkOscHvCbVdAvWiu80o3IQpgtrsk
	TcyPVWhMfkyYO1PZ0SxHGwIwmTQJqjaCvdkOx/THoyTCZcZcr42DBx9SFh0rkBGP571I
	a7L+TaNaeaOA7QeBdRf5UoasekrsKFGgIzVkHYkgM3Y21o9QNnKnn4yaWJqObNnJXoWb
	aS+5zgBh03jHRO819BwL/HO9o8DMZTsFIX8emhkwYykbLDZkePhaouRMCVfla4JpiUd9
	pvkCK1XGtn19IRX/2Mfg7Gd1vNWlbBVom9aVVxpGyazuKYknTCHM3aAqXjhAFiPTAm7U
	yCTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OH2tmCUTeRGvPAT6e/NfO9iR1whEW01c9wQc/7g2TD8=;
	b=QFHQx0FODBNMxzo9koi8TrKSf8ZVBGzEDiwitZ+ZLNDm8gxAK0yXeC+Yw2WGY+Y6jE
	RXRioDbTVnhLIWuHT+815bgGgza0jONLJKd+rZIyqlraOTmiRVByY26IOGnr6E4VEc01
	QhM+l/RaVAKxeSTH4NMT7K6xEitE1RcsSRDCnMHH2sBWNkVavZ4MpibXpYHPnaDf2qwI
	LV5hc5B9A83sZ7ZP5AvbvwbcuCpw6uqUt3pMnXOXfNi7Xtek/c3x0Q3V55qBrCsA/685
	QlPni13653R0QkWgDAn03qF3pDyNnhs8Xdl9sNszcSDnbVNegkumNAZTqtA+uhOcJCe9
	AMwQ==
X-Gm-Message-State: AIVw110ukvt1n9MNVhITck35yWxf9jdpY3Lp66I/KVL9TxOVw27/idO8
	9DQWs8gVCmMEf0q1tgziMLAqcD1KR6E+
X-Received: by 10.31.3.135 with SMTP id f7mr1547333vki.120.1499935951872; Thu,
	13 Jul 2017 01:52:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.108.137 with HTTP; Thu, 13 Jul 2017 01:52:31 -0700 (PDT)
From: Andreas Fenkart <afenkart@gmail.com>
Date: Thu, 13 Jul 2017 10:52:31 +0200
Message-ID: <CALtMJEAHnhZJBRsAwm6KHdahp59Wy8PD+O8F3JKDNN3gJCbfgA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: sstate cache not used when adding custom task
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
X-List-Received-Date: Thu, 13 Jul 2017 08:52:37 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

A custom task in a bbclass causes all recipes including it to be
rebuilt every time. Link to full bbclass attached below.

I already stripped that task down to this


    addtask check after do_compile before do_build
    addons_do_check() {
        :
    }

If I remove the addtask line, the recipe is not rerun:

$ bitbake recipe_name
NOTE: Tasks Summary: Attempted 2746 tasks of which 2746 didn't need to
be rerun and all succeeded.

With the 'addtask check' all task of the recipe from fetch till
rm_work_all is executed every time.

From the cooker log, do_populate_sysroot is the last task running
before do_build was, hence I changed the addtask line to this:
addtask check after do_populate_sysroot before do_build

Then the recipe will not start from do_fetch on rerun, but will
reuse the previous do_populate_sysroot run. Hence only the last 4
tasks are run (do_check, do_build, do_rm_work, do_rm_work_all)

I experimented with bitbake-diffsig/bitbake-dumpsig, but the hash
of the stamp files (do_check) are identical on each run, of
course its content too. Only the timestamp of the stamp file
changes each run.
I'm confused what triggers the rebuild. I looked into bitbake
trying to understand how the task dependency is calculated, how
the sstate files are used. But it's quite a biest and will take
me quite some time to understand.

Any hints or regarding the issue or simply where to put a print
in bitbake to get me started was welcome.

This is still yocto 2.0.2 as we missed a couple of upgrades.

The full bbclass with the do_check task
https://git.digitalstrom.org/dss-oe/dss-oe/blob/master/yocto/dS/meta-digitalstrom-devel/classes/addons.bbclass#L46

/Andreas

