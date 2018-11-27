Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6E89E00A1A; Tue, 27 Nov 2018 02:00:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83B05E00A1A
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 02:00:45 -0800 (PST)
Received: by mail-it1-f175.google.com with SMTP id i7so33315742iti.2
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 02:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OaCLYd+AC6ygYIWHo1Hn4v6X4Cw0Jz4xQG71cYjB0so=;
	b=nS0Nzgr7Fpw8T7SYWfFJa9tjfj+NWoWCMk8s9NhTVEJXoBOEdvY/P8XguSsYklKGfv
	ZHB6lByPxFgD+mLCHY1bQKqrdL4ikpyw4KIvZhRtD0B0CDq8Ap2boB5M5Rov1vwdZ+78
	jEJv+VPb5kQymAUs7LtnIBx4Ytwb0Wm5dYCIZG/4zu72dDKOvxfRe3FJXZ7I3Ha7RTk5
	Z3TGgyxnOXnV7rzQrqDw0wi3ghXxyUpHgmroyZSswK2/BIk2LNSIiUrnRLwDAkW4fkon
	XYnrI95a4FPr0Mq0ep6eiITvDRxAZp/qffxMoLQdS5eR/zfxYnY6Iuh6AUvx1csLb9tw
	wbow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OaCLYd+AC6ygYIWHo1Hn4v6X4Cw0Jz4xQG71cYjB0so=;
	b=pvcou5X9tSAB11IudzXbqTvs4Gt5i6IdxolrJbWPz69TjR0to+alCvYammOer0qBBb
	MVPXbHgwbfP2vBb5mVQBsVPKNRyPHktnIxGC7P2rSchcTa6xKjicdFfkpWeYxFk6V9DK
	Ltb7hr0rxyvDv38DyDoFwwXOmuCgrKFPakDeAPJ/qm9ZvN2sdXf5Fr/H1OL5sMVd6Ur5
	XJIedGZjjr2RJDdqAyzUa9Hf77nIrt/H/Jn02uGBqMJIA97lMiqD/0ymO9JWxuEeFD4u
	zoIWzW+htegLvXIA4lQWVmsbtE2fHVQVeP2i+GHkDOvWGXKdYZShSQ4YuRd7ERNJwSrB
	aimQ==
X-Gm-Message-State: AGRZ1gJQsxSVBALdNbZo3hjI9x2u0JukpyXROVXEEuNYL05ZJrC1fsfl
	owIRGHqhi03qSaOEBASaioKi2C3/SHpEX/NkrUzpmg==
X-Google-Smtp-Source: AJdET5e7cyhFqIE2zrcA5UhobbVRWeH0NWA2YYN0RJBGUB+3F72ILw2yfgMg0haP9/22I1vD8ocMXuIKtZmBMIC2afc=
X-Received: by 2002:a24:9142:: with SMTP id
	i63-v6mr28861448ite.130.1543312845266; 
	Tue, 27 Nov 2018 02:00:45 -0800 (PST)
MIME-Version: 1.0
References: <53059dca-e9e9-e827-3ea3-a0d159825652@gmail.com>
In-Reply-To: <53059dca-e9e9-e827-3ea3-a0d159825652@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Nov 2018 10:00:33 +0000
Message-ID: <CAJTo0LaQBGaGRm91sXEZx8cD0a9fHB8ay-hsMBVSkcmCGJycGg@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Bitbake Recipe Failing
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
X-List-Received-Date: Tue, 27 Nov 2018 10:00:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 27 Nov 2018 at 06:40, nick <xerofoify@gmail.com> wrote:
> do_compile() {
>     ${CC} -c helloprint.c
>     ${CC} -c hello.c
>     ${CC} -o hello hello.o helloprint.o
> }

You need to pass ${CFLAGS} ${LDFLAGS} too.

Ross

