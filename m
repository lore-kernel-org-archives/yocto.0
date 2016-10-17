Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12CE5E00A7D; Mon, 17 Oct 2016 16:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85F4E00A21
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 16:01:46 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id q126so143096578vkd.2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 16:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rawfCgVAgritvO2yo5tPELVJRzKGSf1Ioam8/1N041M=;
	b=pBHURgy8vjv9yebpe0VISCa7sWrZONvtOJFkKOFvF0uxP2LLktlqiWf08+Sc/jLoxN
	1eZ85B9NhQgEmFvBpbNwKfx1txCwed1+UfvkEiK3Szqwfw4er+7ZcROy3sHc5+f9XZeu
	lI6TifJ/6Vwm6V5s9MrolQSmp05DR+QmCc+7JhDvyfm6Y/eExMlv6/7kNz0DkSzU9kNZ
	PCX6CgL8DCCQjEDZmc51P5CRYWfGdlXgERPpEsde0f5g3jrRFYnB9WrMGY8mdyhbquPH
	QCdC8hFB+AwfoEQY74dhCzGKZwORZhCI2qokDl7vwo7E3yml7KTkULNyWde8oXYP4cUG
	CDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rawfCgVAgritvO2yo5tPELVJRzKGSf1Ioam8/1N041M=;
	b=e+SR5uMNzGgdzXtxWUN0QKiqj+ivlGTlXQhr8PdK3Kkr4qhTlkrB4wJaW08vZyyd4m
	Ftb97SUdVKPD6jVw4D0yEvmWvJySCzuQIIiW3AY5OzTa9cegN7XF2xg3Ptt/oWpafSXa
	VmXUCm9MPUTjqZh730/CRj7NnkjJ2/x4I27ocIN0x02rKRVSP0Ye5Izn/G9gIP7/Lp9y
	QnEhY4wWlf/ei5qLhCqigpSTI8dwlR0knzO787FIxddBtPNaxBcFpA0rNc2Ecs461Qkq
	tMddCf0Jn2u8SVAi8akqSms+oEnnrfg2UPtFUD/zBfMMIKOeBvtHx08Sy+hpjRLtxp1G
	wfEw==
X-Gm-Message-State: AA6/9RlW7Zo4hXIGUcl9VEgC+Ci27W8OFmrwrjWqp8kc+kEid2JQ30Asep/VnVAH9HwRT46vSsNhO+tuY36+BA==
X-Received: by 10.31.244.14 with SMTP id s14mr20212527vkh.31.1476745305773;
	Mon, 17 Oct 2016 16:01:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 17 Oct 2016 16:01:15 -0700 (PDT)
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Oct 2016 16:01:15 -0700
Message-ID: <CAMKF1sp_qLfdeFvHzi+VD-6tFbX-f372uiRmKjeXRG3w1WVwkQ@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Mon, 17 Oct 2016 23:01:48 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 17, 2016 at 12:11 PM, Sona Sarmadi <sona.sarmadi@enea.com> wrote:
> Hi all,
>
> From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
>
> General policies:
>
> Fixes must go into master first unless they are applicable only to the
> stable branch; if back-porting to an older stable branch, the fix should
> first be applied to the newer stable branches before being back-ported to
> the older branch
>
> Does anyone know the reason for the policy above i.e. why fixes have to go
> to master first?
>
> 1)      It makes more sense at least for users  to get CVE fixes as soon as
> possible in the maintenance branches.

this is to ensure, that we do not regress next time when we release next version
from master. So its important to ensure that the fix has been applied to master
sometimes you can assert that the fix has gone into new version of a package
that is due to be uprevved in master and will be done soonish. Such information
is helpful when making security patches for release branches.

Actually there was a suggestion at OEDEM on informing CVE ml that we have
as the CVE fixes get applied to metadata. Thats a good suggestion to have
implemented.

>
> 2)      Normally the versions are different in master and maintenance
> branches so different patches are required.
>
> Thanks
>
> //Sona
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

