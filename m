Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E55FCE00C5B; Mon,  7 Mar 2016 04:45:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C60EE00C4C
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 04:45:07 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id n186so84139998wmn.1
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 04:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Y4YB1QbxE2woZm1dAMw6TIn19Abx8bwJap0ohvrvvfc=;
	b=hV842dkY5NsCXkNMqWer07v5BMxqxLyXRNbyBcb/0uVsS5aw6PIO8L9iEUtk1kRkZ6
	1gy94BjV7WHLTs7VtLuoXOCsxd7sIdaNjUHwyhH0zxU085G0nxhQL4tcV4eWnrW+70R4
	PE5rUveO+QmDv0Vx77V2ILWpUMK0IuO/mJy33xDugjqUHhLjwTYpDY6X7inMQRKiCF1u
	DoEiXjphC2jFKIlRMC1K9YHdCwnew1Zqu/XuMK8BN4j4kFepZrnQ51U/uqrD8PFB1OKo
	Srghrw8u3jZHquUxje/UKlAPf77kw/qGFxgEWU/AVsU5yLMuS1XCrr/b+C/dFyG0jtc1
	f6RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Y4YB1QbxE2woZm1dAMw6TIn19Abx8bwJap0ohvrvvfc=;
	b=cD09+g/wfCKoTjzC/g9A9wsPhLxTXWrmjm1wqxbcOpdi0rMfCkNGC4EWAAeuGrUbzS
	+1VwL6eNMk+Eq8w4dN7Yi9YZgfA3+wkGROLPyOy8JZWseUKX2BNiUiMBtUYqg+SyaAtP
	5xbkKVYcHIhQtYzwWOoOEMwd+KNC2kGtz9SWBB3sojF2h+Gz3AYBvdYfQCEw4qAg+EM9
	ncLy+QXKnFQppsV5qBwybrn8QsR8deRb9/b2dT8KNwUQ1N5e/RS5cSVgRGhOvUaOh8tj
	f93R2nsNQ9OETS6Q1Gv030btqFspmK1IzniAVrMpRs4ugx1GvDld3U19cqbcHA4lPqri
	GjYA==
X-Gm-Message-State: AD7BkJLY15GTadPyvwfRf8XQh3CUwsZxS34ektadHwBupJQol4M33SUnoocs5eR7AO3mHQ==
X-Received: by 10.28.111.12 with SMTP id k12mr8094097wmc.35.1457354706822;
	Mon, 07 Mar 2016 04:45:06 -0800 (PST)
Received: from localhost (x55b1e0d4.dyn.telefonica.de. [85.177.224.212])
	by smtp.gmail.com with ESMTPSA id
	hu1sm17790238wjb.36.2016.03.07.04.45.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Mon, 07 Mar 2016 04:45:05 -0800 (PST)
Date: Mon, 7 Mar 2016 11:51:54 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160307105154.GB19820@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
References: <20160304135527.GA769@graute-opti>
	<CABcZAN=oPmp_OUor_4poPmgzpF4uNzeUdYD2HhA+QPMATseG6w@mail.gmail.com>
	<56dac7ab.aa0ac20a.e7976.ffff9fdf@mx.google.com>
	<CAJTo0LaegZPzomrLr9yxPLCtOyDtyapzqdQ+OhzxU=Fd6Zc5XA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaegZPzomrLr9yxPLCtOyDtyapzqdQ+OhzxU=Fd6Zc5XA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: Howto change the default shell in yocto?
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
X-List-Received-Date: Mon, 07 Mar 2016 12:45:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 05/03/16, Burton, Ross wrote:
> On 5 March 2016 at 11:48, Oliver Graute <oliver.graute@gmail.com> wrote:
> 
> > first the default *system* shell (/bin/sh) is this possible? or does this
> > affect
> > to much of the yoco system itself, if I change /bin/sh to /bin/dash?
> >
> 
> bash is only the default shell (ie symlink from /bin/sh) if you install it,
> so if you don't want bash to be sh then one option is to not install bash.
> 
> If you do want to keep bash installed but change the sh link, then that is
> managed with update-alternatives.

> 
ok thx, if I do

update-alternatives  --install /bin/sh sh /bin/dash 100

on the target it works.

Best Regards,

Oliver

