Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 898B1E0055D
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 08:26:59 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id at1so14013802iec.7
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 08:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dAjw4vc9vCg+7B5xeYaX8sWnCgCN0+Q2zLhm0t0fuHw=;
	b=xwHwKgrEOGlbFBoJrt24Y2nVu78Lh5sB+cQy9IZ0BPwHm25VSbzJX1LTfC4rL5s0yn
	Vfa5unoc83+KL3tq3ZWO5y0mHBdUB2PoEcHdcufmQlzsjSDxesSGVUWPaGCZ9STGSaL/
	oKX4v4iVOi/lQ7suEoNV3qBqg4bewVG63u5Su91I7fGvDZQzZWOHAdDEQO6UskST1tkn
	e+yPMhFstEj5RLJJDu7Vm4qtPYFTnSObManmLPi3498MOPzjp4NKzduVbjgdjjKO2cIH
	wZTWE8rrxCggGA3hzshkuFgN8KwTHh9Xag1yGG3UsQ/wvMHR0O2wZ7PyC1ZSKj03E6dx
	TeMA==
X-Received: by 10.50.119.4 with SMTP id kq4mr2765602igb.40.1385656017757; Thu,
	28 Nov 2013 08:26:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 28 Nov 2013 08:26:37 -0800 (PST)
In-Reply-To: <52976604.4010908@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
	<526ECFF3.4060207@windriver.com>
	<CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
	<CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
	<CAMCfZKFPhz4odA9iMZ5aWzWtT1XR8JX_EHxJQLXyVuy+S7KLqg@mail.gmail.com>
	<CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com>
	<52771111.5000604@windriver.com>
	<CAMCfZKEE7wSrpg_7Gq5ScYbwroNn_G+gpvjnZRG36A=xEJu7pg@mail.gmail.com>
	<52976604.4010908@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 28 Nov 2013 14:26:37 -0200
Message-ID: <CAMCfZKHzjj6n2pxe6H_QETQRSPbQ=tGWim54NkakiHxyL5feZA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 28 Nov 2013 16:27:00 -0000
Content-Type: multipart/alternative; boundary=089e013c6e4ab82e4c04ec3f2ef1

--089e013c6e4ab82e4c04ec3f2ef1
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 28, 2013 at 1:49 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> And the patch I attached for the kern-tools to use the dedicated
> release branch for dylan fixed the other patching issue you were
> seeing.
>

This patch was applied in some repo?

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--089e013c6e4ab82e4c04ec3f2ef1
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div class="gmail_extra"><br><div class="gmail_quote">On Thu, Nov 28, 2013 at 1:49 PM, Bruce Ashfield <span dir="ltr">&lt;<a href="mailto:bruce.ashfield@windriver.com" target="_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=":3fm" style="overflow:hidden">And the patch I attached for the kern-tools to use the dedicated<br>
release branch for dylan fixed the other patching issue you were<br>
seeing.<br></div></blockquote></div><br>This patch was applied in some repo?<br><br clear="all"><div><div dir="ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div>

</div>
</div></div>

--089e013c6e4ab82e4c04ec3f2ef1--
