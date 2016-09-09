Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00A54E00444; Fri,  9 Sep 2016 08:55:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52086E00404
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 08:55:18 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id w12so39163642wmf.0
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 08:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=B29GG1nsZFOcpqQ3V+petF2qiw36nw8mRVS/sd9b858=;
	b=Kx4bvZEZVZRD9uHUBBmYJBxAG780Oigl2baCp454wjIYImvPBtD9Jt3uupKOPgMIOZ
	c3o9POUvuPq7IBSmIQoI/MNWWdgSNHx7CWDbpD0NZAVJVvDlCfuaedMR52Q/5HiTTc5Z
	5f7IrfkG9XTitipWd+ToRizr5zpxLcXwnqJMeRGD5ZUloQbonEhpgYAdzdTN/IkkDTg1
	SKuhlVbmy0f3jL/vTXy2OlnkDKo2LGh76az5axziHd0tWumdQdaqZrzFiN9hrAW0LXxg
	zOPVTayb4MhcAaUwRKjxZByqhUp+49BztwAMns98g5arWleR5xDIqiduM8k/A1Loikte
	Md4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=B29GG1nsZFOcpqQ3V+petF2qiw36nw8mRVS/sd9b858=;
	b=IljVgPaseAWSxL+IYOFUsXbF4f/0kpSFuGo56RP84wubL1clBE3smJ6Lj/WLIh/4VO
	kq/WX7E/OUFB0//ugCqTNyCskUIQGXnC+2+VeXtTtCMnRFVXVJIDJRcr1Ml8Umr6iGDA
	3oBUzL5nR55Tw6HwI31mzFqtqALvjSqruZ43z0RYai7B+ygE19qUNo2RlIHXQhKRBprA
	Li/NGWyVPlmPQU0kAY5FNATSn+jgC4dIKSjdvP+S7mmgrnB5haAeDl+gY0VOV/0xMdpk
	+R7d0oziVKZB+LvxuMSCdMcjN1xGqIWDpVC+Dbq7DSGZdaJEESPbsqOza3bBf/+z5cDi
	16eA==
X-Gm-Message-State: AE9vXwMSD/6MHT3lmp08kHiMPK2NgQ6DZ8CxT0gN3LWJLOG+4oBhuIFhQGPHifpLiwdcySr+xTQbIcJtlDcHGQ==
X-Received: by 10.28.132.131 with SMTP id g125mr3570400wmd.97.1473436517629;
	Fri, 09 Sep 2016 08:55:17 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.80.151.3 with HTTP; Fri, 9 Sep 2016 08:54:57 -0700 (PDT)
In-Reply-To: <CA+YB3raLEFHAECfBVAspQni9fG0_X0oTPM-Z_F64FzV6PuNdUw@mail.gmail.com>
References: <CA+YB3raLEFHAECfBVAspQni9fG0_X0oTPM-Z_F64FzV6PuNdUw@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Fri, 9 Sep 2016 08:54:57 -0700
X-Google-Sender-Auth: YqXEYItfk1vrHpu1pZHnGipE-_s
Message-ID: <CA+YB3rZfZ8fQ_s85ZQ5aSWyWbq+jS1DK3paM_RximC6wvxwCAQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: Subjects for YP Developer Day at ELCE
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
X-List-Received-Date: Fri, 09 Sep 2016 15:55:19 -0000
Content-Type: text/plain; charset=UTF-8

...aaaand HERE's the link
https://www.yoctoproject.org/yocto-project-developer-day-europe-2016

On Fri, Sep 9, 2016 at 8:51 AM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> Hi all - we are in the planning stages for DevDay at ELCE right now,
> particularly the advanced track. This track changes every session,
> usually to cover the things we are working on hardest - for example,
> in San Diego we covered CROPS, devtool, the latest Toaster features,
> and much more.
>
> Whether you are able to attend DevDay or not, we would be grateful to
> hear your suggestions for subjects to cover in the advanced track. We
> are currently planning talks about CROPS, devtool and the ESDK,
> Toaster, wic, smack, security, and a few other things. If you have a
> burning desire to hear about something specific, please let us know.
>
> Also, we'd love to see you at DevDay, here's the link:
>
> --
> Jeff Osier-Mixon - Open Source Community Engineer, Intel Corporation



-- 
Jeff Osier-Mixon - Open Source Community Engineer, Intel Corporation

