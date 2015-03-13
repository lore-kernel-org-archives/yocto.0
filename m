Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81065E0087C; Fri, 13 Mar 2015 06:50:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CD45E00871
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 06:50:19 -0700 (PDT)
Received: by iecsl2 with SMTP id sl2so105835690iec.1
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 06:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=hov8eomHEO7i3WfcdY8ELS6VS9SoJBPvmAZjXwF+FCU=;
	b=cdftowf7lVXg4HgJgGsWzIsh78EO+YtfV//+8lunf1uIyVqhqKzMM4q9zQx62eH4wP
	0HYPeIzA4HcnehMgRnfF+uoWD+CE2ikMSp7ffPdHSTQZQni5iZPgDjSY+PqlFZg/RBg8
	9SAbj3CT6+aOHHYDg+CH5Fr0/IRzYuNtTm1SF7GlBi2lc4jjyAf3melRoc91Z6STqMaM
	5MuPNU2v++FVuesrLOZxBq8WW326+WZ3e8T1xzFLHgzumMvutOretXdDXZ+J+XSjUyRj
	LT+1bSaJZ4cm7z5ETiS32LlrAiUSQXGilSjWq2jpm+K3vpESTo7XV3ZiyxRXnQvxeO6p
	taRg==
X-Gm-Message-State: ALoCoQldvtnHQhle10LGRE/uPkySe2idNYCvpcW8wsB30jC4fiXGvoDDFW0KW+cFSJEUCeHXhITw
MIME-Version: 1.0
X-Received: by 10.50.79.166 with SMTP id k6mr85268271igx.27.1426254615646;
	Fri, 13 Mar 2015 06:50:15 -0700 (PDT)
Received: by 10.36.57.11 with HTTP; Fri, 13 Mar 2015 06:50:15 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
References: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
Date: Fri, 13 Mar 2015 14:50:15 +0100
Message-ID: <CAFicg85=XSAvYdmtfmnWRkMkpNPnvN19r_4kd2MKHnNJvrbhSQ@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Darshan Patel <darsh.jp@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Using Pre Built Toolchain in Yocto Tree
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
X-List-Received-Date: Fri, 13 Mar 2015 13:50:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi Darshan,

On Fri, Mar 13, 2015 at 12:43 PM, Darshan Patel <darsh.jp@gmail.com> wrote:
> Is there a way to configure Yocto to use Pre Built toolchain (like
> downloaded from CodeSourcery, etc.). I want to avoid building toolchain
> because it takes too much time and using new toolchain is not of my concern.
>
> I was using this feature in buildroot.

Download the pre-built toolchain from here:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/toolchain/

eg: armv7 toolchain for an x86_64 host machine  -

# wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/toolchain/x86_64/poky-glibc-x86_64-core-image-sato-armv7a-vfp-neon-toolchain-1.7.sh
# sudo sh poky-glibc-x86_64-core-image-sato-armv7a-vfp-neon-toolchain-1.7.sh
# source /opt/poky/1.7/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi

# arm-poky-linux-gnueabi-gcc hello.c

> Thanks in Advance!!!
>
> Regards
> Darshan

Best Regards,
Maxin

