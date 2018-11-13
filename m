Return-Path: <samuli.piippo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BFB5E00C43; Tue, 13 Nov 2018 05:45:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (samuli.piippo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07494E00754
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 05:45:53 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id t81-v6so8889736iod.10
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 05:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wfuhFf0QfDKIeOTgOM6Asa1p65dK1LJvWarot8DqBTE=;
	b=RLO6iBFcpcEL6Su7mK0Ju9OYo2cRmjwf99wLnF3rFXWAJE4ry1XdWX3OAfpEyyesyM
	Vv2pD+wV5wfUQGDQBlEKuBgXSuSqpXVa4NU+FlRlLjsgVL+3GYpBPyKgxW0joVpud/+q
	euaqm5FiIM9T5x1LaKtCEXevbroUKRj1Ng+1uszK/IfDJrsME9SuNB6+czLEE/Axq5tL
	p9y+869KF1cOMSA4pndKdROLuhG0t9LwNmdSH2mSHud8nQLKvkjfGTezoXf/tye+zsTl
	6i4nJ48B/HkLOVRRvTVxE3GiXKXgULFikC/FwgDnifCk5oqpDDnxGGg+c2SH3cpS9ELV
	/EAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wfuhFf0QfDKIeOTgOM6Asa1p65dK1LJvWarot8DqBTE=;
	b=MgT7EHgpqi9lOJcde/2M+OtNErw6pQzSpu8xfpLn244cv29OFFOaSHelrsnSlFq+Vd
	xPwZdPDA675JwclOORr+0lFBd2T4xAqLsH2BHfYKuEJ/0OF89WdfQT7URUi6UHVlGR3Y
	UBsdq5dsWlBfo1NaBDfpaPVeg4DXd8fqZrIXiidgA2SrJWh2bPaliGFj/FlEMajL0rJN
	8cwtcDFicDhLW4qg6/n2NhVbEeQ5e/qXuG3PnoDLm4EmPMiEd9IQi6QQIs6tOfbXZOBV
	YnllHwzIIyXI+CQNRM4Sx0bF914ya0+WyrmCI/MEhNmim7BBc4eR8uhYiti6HmO+/0CN
	SFag==
X-Gm-Message-State: AGRZ1gLpzBdk/7HLGE4qwEuups/tVfIFtVNkR6eJTEoDo2tSvMApA3Cx
	ae3y8bCPhao0/x6PjAcjAowwotPayUD5iGEgePU=
X-Google-Smtp-Source: AJdET5c0GHLuz7pjdzmnJ85fSaaXdJY3HMSpwl6+Zsx/yeC25AGXe2HLfpMdljQjCToGO6DRP2qHEgl5yhOlk7rS45A=
X-Received: by 2002:a6b:1503:: with SMTP id 3-v6mr3960982iov.7.1542116753282; 
	Tue, 13 Nov 2018 05:45:53 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<CAJTo0Lbk4CEX3PU=k7t8BAsyiPH=4mE3fRe7hWK8p3tndDRVzA@mail.gmail.com>
In-Reply-To: <CAJTo0Lbk4CEX3PU=k7t8BAsyiPH=4mE3fRe7hWK8p3tndDRVzA@mail.gmail.com>
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Tue, 13 Nov 2018 15:45:41 +0200
Message-ID: <CABXoSoXoCkhm3OD_JzjJrR9nvgtsKiiG2LG7o+fMaTST3tTnKQ@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Tue, 13 Nov 2018 13:45:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Nov 2018 at 12:17, Burton, Ross <ross.burton@intel.com> wrote:
>
> On Tue, 13 Nov 2018 at 09:57, Samuli Piippo <samuli.piippo@gmail.com> wrote:
> > I've just upgraded poky and meta-mingw layers from sumo to thud and as a result a lot of the executables in the toolchain no longer run correctly on Windows.
> >
> > I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and exit without any output.
> >
> > Has anyone else seen this?
>
> I suspect we need to find a maintainer who actually uses meta-mingw
> and can actually test it.  Would you be willing to bisect thud to sumo
> to identify where it breaks?

I can try to setup some kind of automatic bisect run script to test this.

