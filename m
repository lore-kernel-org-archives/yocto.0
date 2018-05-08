Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D34EDE00B8E; Tue,  8 May 2018 10:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 436CBE0084D
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 10:27:58 -0700 (PDT)
Received: by mail-pf0-f182.google.com with SMTP id f189so24273653pfa.7
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 10:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fuiu1YRLJwH8+t2Se4FvtU9PKg4/UQLz+yNSjkGoDy0=;
	b=cEJuxGEXOwZnWXiMrFhgUfM3JZXISY+1Z4JdfDq+UB1UPa6pc+HbX/iFlca/Mp7vYU
	2DdLfuVULjY1EJmTFAPRhwnBzKSWB2bXdhALvXRSPT2T16+LLi9K1KMXZsNStJEEakyS
	gFdZr1cm9+Ey4Zdm1MG5Q3zYdriwwGIak9KPz3GWLWRvEkFrs00dt7Oj6oIHM+KoG9yK
	FOi0A772CjzMND0zf3q7jN7HmcIakUh130tpQScK3wRAR0UaOkCbvgl/3C8d/VjV42Gp
	RlU2Erxuz1etMKuq+mOXTb9XJgsWq6UA2E1rmLD9V0DD4KOyFE9G+hwvbsLjSxDQjxqe
	WqGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fuiu1YRLJwH8+t2Se4FvtU9PKg4/UQLz+yNSjkGoDy0=;
	b=TufLB5eMygDO54ENA4XuRaI0WEOOHn75cnfsP2ZRwllBxnsriYY8Xcu4W/wUnNStR+
	B3aX+H22G+eyP79W3XMNpu2qvmu4LEqaekVhBw9XABuaZw9Fy5cTahY/0oxNXBRJryaT
	LtcBfjkJtxVSBIlOqxxU6lLRebcfZnzqVc4wfP3Wd4zb+7eQpfCms7RDxmE6rLZNlgBu
	EXEQ5hgnR/19miwGjF8wuqSvP4Fu1Y8IWgDFe/xbo/QFaYHSQE74uJQcAKt2dPdbtgzV
	iQEkb969hcs5LUTd/IwYyeizY1LO81hQwRTVHVjB6ouf5Ucg1ubtLgTZNuJEs/FRK2N3
	C4vQ==
X-Gm-Message-State: ALQs6tDWgD/9WXEwUY+33OsjuMuwx7+GZjDaxRMdDAOMMvGVtgEiPy68
	IB3rKjNcv+BAe+SvrymH/JOtoz3BIXRewQcSCfU=
X-Google-Smtp-Source: AB8JxZruE56HG+2tlHTtl9bfgMxZm23EVx5Oebn4Q63D+5+cZfXPJLroN5mOfG9cICtTu+99SMnS2jNk86SakQxo6Fg=
X-Received: by 10.98.91.2 with SMTP id p2mr32601016pfb.96.1525800478425; Tue,
	08 May 2018 10:27:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.187.132 with HTTP; Tue, 8 May 2018 10:27:27 -0700 (PDT)
In-Reply-To: <5304B3CDBC3FA44CAED287F54088A0CA236C39CD@MBCHN01.chn.nestgroup.net>
References: <5304B3CDBC3FA44CAED287F54088A0CA236C39CD@MBCHN01.chn.nestgroup.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 May 2018 10:27:27 -0700
Message-ID: <CAMKF1srYbXcRm_Zb=u2tqUW272VEjAGytOVsUCUSfbLqOARooQ@mail.gmail.com>
To: "Chinthamol CS." <Chinthamol.CS@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QT5.8 -qtwebengine SDK generation fails
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
X-List-Received-Date: Tue, 08 May 2018 17:27:59 -0000
Content-Type: text/plain; charset="UTF-8"

there isnt enough information in the logs that can be built upon to
help you. you might want to enable some verbosity with smart and try
to find out why it fails.

secondly, try the same with newer releases and see if the problem is
reproducible.

On Sun, May 6, 2018 at 11:18 PM, Chinthamol CS.
<Chinthamol.CS@nestgroup.net> wrote:
> Hi,
>
> We are using a i.MX8 board and we need to develop QT application based on
> qtwebengine. QT version used here is 5.8.
>
> We are using QT Creator with an external tool chain. we have to populate the
> SDK out of our yocto image.
>
> When we start to include qtwebengine to the
> packagegroup-qt5-toolchain-target.bb, we are getting errors. This step is
> required as otherwise the qtwebengine binary will be missing in the SDK and
> QT Creator will complain about that.
>
> We are using the imx-morty branch with Kernel Version  as 4.9.51of the i.MX
> yocto BSP.
>
> The problem can be triggered with either "bitbake -c populate_sdk
> image-name" or with "bitbake meta-toolchain-qt5".
>
> Error log is attached with this email. We really cannot find the reason why.
>
> Any tips for how to proceed?
>
> Below mentioned link says, Use webkit instead of webengine.
>
> https://community.nxp.com/thread/473203#
>
> Anyway we have to use qtwebengine for web browsing, not qtwebkit.. Please
> provide one solution to resolve this issue.
>
> Any help from anyone is greatly appreciated.
>
>
>
> Thanks,
>
> Chintha
>
>
>
>
>
> ________________________________
>
> Confidentiality Statement / Disclaimer : This message and any attachments is
> intended for the sole use of the intended recipient. It may contain
> confidential information. Any unauthorized use, dissemination or
> modification is strictly prohibited. If you are not the intended recipient,
> please notify the sender immediately then delete it from all your systems,
> and do not copy, use or print. Internet communications are not secure and it
> is the responsibility of the recipient to make sure that it is
> virus/malicious code exempt.
>
> The company/sender cannot be responsible for any unauthorized alterations or
> modifications made to the contents. If you require any form of confirmation
> of the contents, please contact the company/sender. The company/sender is
> not liable for any errors or omissions in the content of this message.
>
> ________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

