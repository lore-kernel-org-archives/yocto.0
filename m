Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 410D1E00CAB; Tue,  2 Aug 2016 18:09:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6F09E00CA3
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 18:09:32 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id w127so7732961vkh.1
	for <yocto@yoctoproject.org>; Tue, 02 Aug 2016 18:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q/FUoku1MeCmO9pGUNFBV+T12QnLmfhb+8L0IqtHHgI=;
	b=EdW/tavJcy3Fl9CFsbruWLrj+zZrz5GTvAbzW9j0uy+rDZLOkXxXc/xom9v6ecnB2L
	2zymrux59bDSiVY5PwT/E/VfBKrwkYgyyJhwIBa5q4KDE8+8JUuY5zu+Of0GQzsMRhiM
	mnfh9UYZmJhBnLifgeL+tWNG5PtM50pMuGI2bqfYs/X/AMIYJsDeHa7IWUa8tXLEg2dZ
	qNKEZXBO1W3G08hdI2IrON8ALFNO3DErJ/7tt1KHpuAfC/lYDdIhDY6MVuTrGZc+SF5N
	DmECqH4Vc1uZ0P/9mPag3fbNDs7N6WTPj0IfMfdFx118wenLn2imqIGTVuZR35R071bZ
	BI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q/FUoku1MeCmO9pGUNFBV+T12QnLmfhb+8L0IqtHHgI=;
	b=iVtEX7UUmNq98IBn7V+y2ncHWOQOXbB+btqQOW5HXJTF6fzgfQjns1eevIK2dHxdza
	TsIJv6pja/HWJqMjCZ0toh9ZoUB3+Y84IWv59YL0M/c3fyueXaRKcppqjzDf2P85Lb29
	1wmVQLMvU1wVZfNShdTn5eBObdb0CpAAdutunARiHhLa/zk5rFWLl7Hkq7eCDlRxcP6z
	2BK4bTM1fQEG5UT3tsTv6EbKVAYWpBcHEmcU/aiWNWLHcnyrBdTG+hY0Wa00v9LeYBL4
	7UGPzkrE6o6M1l3lhuqX1BWfYAeFySBsHiqJ1OsPzJDrJi8CfHYSvH9dQqIiaW9OwRfZ
	INIw==
X-Gm-Message-State: AEkoousqTCtPH8iBX2E+1Rcbg0RIZeUObqS4wokO2fYgYhnHWXPOGmj0yRbSCYexHO47ijTI05sOl5S0RXULVw==
X-Received: by 10.31.196.199 with SMTP id u190mr32860955vkf.116.1470186571542; 
	Tue, 02 Aug 2016 18:09:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.194 with HTTP; Tue, 2 Aug 2016 18:09:30 -0700 (PDT)
In-Reply-To: <VI1PR0401MB2638304EB5805908380CE4ABEE050@VI1PR0401MB2638.eurprd04.prod.outlook.com>
References: <VI1PR0401MB2638304EB5805908380CE4ABEE050@VI1PR0401MB2638.eurprd04.prod.outlook.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 2 Aug 2016 22:09:30 -0300
Message-ID: <CAF3SDA57Np82+0pS=-5CuHTptJ4XPz_LgYS-y1y4nn+7P_aGwg@mail.gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto rootfs to support auto-login or remove the login prompt
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
X-List-Received-Date: Wed, 03 Aug 2016 01:09:34 -0000
Content-Type: text/plain; charset=UTF-8

I don't know if Yocto has something more standard but, you may edit
/etc/inittab to spawn something other than getty. You can achieve this
by ROOTFS_POSTPROCESS_COMMAND.

Take at look at this ancient link:
http://www.tldp.org/LDP/sag/html/config-init.html

2016-08-02 5:46 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
> Hi,
>
>
>
> I want to generate a rootfs image which can skip the Linux login prompt or
> auto-login Linux? Is it possible in Yocto? If yes, may I know how to
> implement it?
>
>
>
>
>
> Best Regards,
>
>
>
> Zhenhua
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

