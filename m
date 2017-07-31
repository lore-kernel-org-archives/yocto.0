Return-Path: <afenkart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B3C8E00E14; Mon, 31 Jul 2017 02:32:49 -0700 (PDT)
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
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A60C3E00E0F
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 02:32:42 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id g189so9747944vke.5
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 02:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8lBpZq4hYI8iwxt5Fk3lkT4suGq4+eAfIbYk9wAKo+c=;
	b=ldFCd2LQP6Rxdw7ONz5cMR1mVMEq8GzdmDUao5sdI6rvFAUywQiOKwfgxl6qFq2Z+o
	ZWF4x418sTlAKatfJpZMu6wm4UXsouMSnA6ap4eZkNcxZcWQx8tlQtp9uANgygLojgUW
	K/gL6MK3hAsfisEqrKoLA45csmw2Of5L9g/zO0lD+PKHR0qUScGt/JuHI4Q9W90djlJM
	LYKzJ8ALnbAiLmoOcV6MehbAE8ho8yqDmv/1ku8J1iZEzb8WB9QetO4QW6knwbBXjd54
	8gU6x5x6QuR9QVnB7hKveTz43WCuwkDPwiza7HY/+jKvNWwtSeIB9p9l13u0HAiOYdX9
	74IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8lBpZq4hYI8iwxt5Fk3lkT4suGq4+eAfIbYk9wAKo+c=;
	b=Rpe4I/374lq8cqxPZx/TAtP/sxVgfj/tJYC9DO9OS7bdnIvsGKrXNz7zhsPc869fJ9
	4WTX3RdB41Kyt80zy/zUy04CetZodKMTnPpawekacJ/lQu2RSUgDJrBOfjdKbv1d6btO
	p/+dMUS1v5J6bY7vB002Cijeo6ifuTi+2QY0ADpuwS/3Zv9Es3GNznK8AjkxuXxSfPUg
	gZiWbEEbkVBUqzWuypAoI0XZqa2MSUt6uVcmC6UZHqOIfvY5T1idQyqrSVgM6TrO0xIN
	sCmr+n0hJRc2BrB+3PxkpejGHeQkk2iYteFzip8MkX7TbE3dxw5H8HmWo9aJhgsOr6OW
	Fr3Q==
X-Gm-Message-State: AIVw1103PWY6kAt4loGkV6QezqH/BmlmF81J8hbhnu0sDgcwGhjDTWJl
	eGKdRmk+PVFehJ2lWs02PpK0cs86kw==
X-Received: by 10.31.155.19 with SMTP id d19mr8222907vke.197.1501493561868;
	Mon, 31 Jul 2017 02:32:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.13.209 with HTTP; Mon, 31 Jul 2017 02:32:41 -0700 (PDT)
In-Reply-To: <1499938241.3633.8.camel@linux.intel.com>
References: <CALtMJEAHnhZJBRsAwm6KHdahp59Wy8PD+O8F3JKDNN3gJCbfgA@mail.gmail.com>
	<1499938241.3633.8.camel@linux.intel.com>
From: Andreas Fenkart <afenkart@gmail.com>
Date: Mon, 31 Jul 2017 11:32:41 +0200
Message-ID: <CALtMJEBG-swLK=o_FdYU736-rBitBxM04Yrd1_oKqKsFyiBG-A@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: sstate cache not used when adding custom task
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
X-List-Received-Date: Mon, 31 Jul 2017 09:32:49 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

2017-07-13 11:30 GMT+02:00 Joshua Lock <joshua.g.lock@linux.intel.com>:
> On Thu, 2017-07-13 at 10:52 +0200, Andreas Fenkart wrote:
>> Hi,
>>
>> A custom task in a bbclass causes all recipes including it to be
>> rebuilt every time. Link to full bbclass attached below.
>>
>> I already stripped that task down to this
>>
>>
>>     addtask check after do_compile before do_build
>>     addons_do_check() {
>>         :
>>     }
>>
>> If I remove the addtask line, the recipe is not rerun:
>
> The shared state machinery doesn't know how to capture your task. There
> are some guidelines on adding shared state wrapping to a task in the
> Yocto Project reference manual Shared State Cache section:
>
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shar
> ed-state-cache
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shar
> ed-state
>
> Joshua

That did the job, thank you

>
>> $ bitbake recipe_name
>> NOTE: Tasks Summary: Attempted 2746 tasks of which 2746 didn't need
>> to
>> be rerun and all succeeded.
>>
>> With the 'addtask check' all task of the recipe from fetch till
>> rm_work_all is executed every time.
>>
>> From the cooker log, do_populate_sysroot is the last task running
>> before do_build was, hence I changed the addtask line to this:
>> addtask check after do_populate_sysroot before do_build
>>
>> Then the recipe will not start from do_fetch on rerun, but will
>> reuse the previous do_populate_sysroot run. Hence only the last 4
>> tasks are run (do_check, do_build, do_rm_work, do_rm_work_all)
>>
>> I experimented with bitbake-diffsig/bitbake-dumpsig, but the hash
>> of the stamp files (do_check) are identical on each run, of
>> course its content too. Only the timestamp of the stamp file
>> changes each run.
>> I'm confused what triggers the rebuild. I looked into bitbake
>> trying to understand how the task dependency is calculated, how
>> the sstate files are used. But it's quite a biest and will take
>> me quite some time to understand.
>>
>> Any hints or regarding the issue or simply where to put a print
>> in bitbake to get me started was welcome.
>>
>> This is still yocto 2.0.2 as we missed a couple of upgrades.
>>
>> The full bbclass with the do_check task
>> https://git.digitalstrom.org/dss-oe/dss-oe/blob/master/yocto/dS/meta-
>> digitalstrom-devel/classes/addons.bbclass#L46
>>
>> /Andreas

