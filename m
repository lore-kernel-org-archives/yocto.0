Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C3A5E0082B; Tue, 16 Dec 2014 12:37:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E20CBE003AB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:37:26 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id hy10so6898461vcb.0
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:37:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=lUIQ4P4uoSAfxSOs0T6HGUX+fFN/DWqOO+nzP9UjNrQ=;
	b=BhkZlMBog/tPrUZjlsxB5gwtwa+HkFYH9op6KV8ZiPajJ07GzhqNgVQGtKutgK1Rq5
	8UYups2NusCLckG+lIat6uV4Cr9fGZ4tBCRqXmEEO9Bu9H2KG3+nVXK2wxtlkL1BTOLZ
	F2hwCzWPy0XxzBEFJbJYGKGv9VirH4ZjaREb/UcFz/Fqt2cvdLoZRIT0zIg3xjyKgNed
	Rbb1GF3EW9T+KuNo7WdJalue/yEMu0l0mh+QV8+PcOaiI9GoYnf3gl82mCbR93sjCrcu
	1qf6EbzgEF6+03AIM2zo+3HwctA72pN8bce7buR3Tin/pQBOvNVFvMPwBDUfhoBU/Hd3
	AgTw==
X-Gm-Message-State: ALoCoQlq0jQmihTN6W38xszwNsFHQxHzVeQEUaa8dInQVQaXHtMM88OPQsv90HQmo9qZEgSeiq+G
MIME-Version: 1.0
X-Received: by 10.52.135.43 with SMTP id pp11mr20287945vdb.11.1418762246348;
	Tue, 16 Dec 2014 12:37:26 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Tue, 16 Dec 2014 12:37:26 -0800 (PST)
In-Reply-To: <BLUPR05MB037FA0F1CAC302C613E98F3BB630@BLUPR05MB037.namprd05.prod.outlook.com>
References: <BLUPR05MB037FA0F1CAC302C613E98F3BB630@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Tue, 16 Dec 2014 20:37:26 +0000
Message-ID: <CAPhnLPD9Dg6VYwQDJP-N5t3h_LC+z8O7Occ_Wr4teOnVvz-HDg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][GIT PULL] autobuilder: Build history modifications
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
X-List-Received-Date: Tue, 16 Dec 2014 20:37:29 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master, thanks!

-b

On 11 December 2014 at 16:55, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> Below is a pull request for some fixes in enabling build history in the autobuilder.
> I'm using a pull request this time as one line in the second commit is long enough
> that it might get truncated in e-mail.
>
> The first commit was needed in my testing to enable build history.  Before this
> commit, the buildset needed to be using poky/master to enable build history for
> that buildset.  The second patch adds documentation on how to setup build
> history.
>
> Regards,
> Bryan
>
> The following changes since commit e8183de6ff71db23a3b04cddde5ae4212ae4e677:
>
>   Documentation: Document GitPoller changesource (2014-12-08 15:45:18 -0800)
>
> are available in the git repository at:
>
>   https://github.com/evensonbryan/yocto-autobuilder.git evensonbryan/contrib
>
> for you to fetch changes up to ff16eacb4407d54c8818c9baecc000bfdf680aad:
>
>   Documentation: Add build history documentation (2014-12-11 10:37:58 -0500)
>
> ----------------------------------------------------------------
> Bryan Evenson (2):
>       CreateAutoConf.py: Modify build history inclusion
>       Documentation: Add build history documentation
>
>  docs/YoctoAutobuilderDevelopersDocument.html       |    6 ++++--
>  .../autobuilder/buildsteps/CreateAutoConf.py       |    2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

