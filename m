Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36108E0059A
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:15:14 -0700 (PDT)
Received: by dadp13 with SMTP id p13so2540109dad.35
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=z1lxUnob+QSPviaIq78TKaX4iqX+7q4ostQmHJfxTwE=;
	b=cN22EWgvJWudVvbGF5qN/7C0L5iiNZy5h1Py9k5MrYh1jUa9gj37TSS8tc75/eOYgo
	6TjjqYP7ueU7R65Nq+U89yjR8TJBlOS+2weirEZKXkN1uRJ7lnX6TPROwzz7/WXfISkl
	xPY1YCS+pBHKJBtKtIJwICRTbXdivm/khGR1qcBfokaV452fkqUCTLZHxG7arwi5scGy
	IvPUiSoU+3bSXoWJzUm/buBhCjN6f0Ybt/qYdPImFf5ks8JJqq9t+9ynupqalpRols7h
	NjXsI+JEA1SbTb94KFyq4wQVYTPoxtIjavoHhPOWp625wD0pR9aGb1svh9/zMwetiTcR
	5WJg==
MIME-Version: 1.0
Received: by 10.68.136.69 with SMTP id py5mr14322879pbb.71.1332360914057; Wed,
	21 Mar 2012 13:15:14 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Wed, 21 Mar 2012 13:15:14 -0700 (PDT)
Date: Wed, 21 Mar 2012 16:15:14 -0400
Message-ID: <CADzUK1L1JEveHaVgdXRUGh5a=GtfDnu6hFtcUt1vSmGkAyOVjg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Graphics Acceleration on crownbay - 1.2M3 + meta-intel tip
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 20:15:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

Minor correction to the subject - I am using 1.2M3, not 1.2M2

On Wed, Mar 21, 2012 at 4:14 PM, Autif Khan <autif.mlist@gmail.com> wrote:
> I am trying to get hardware accelerated graphics (video in particular)
> to work on my crownbay based hardware. I have EMGD 1.10 driver
> integrated and working. The evidence for this is that when I use
> glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.
>
> This is good, however, when I go over to the web2 browser (enabled by
> defining WEB = "web-webkit" for recipe task-core-apps-x11-pimlico) - I
> do not get graphics acceleration for javascript graphics. I also do
> not get graphics acceleration when I watch an MP4 movie. I get 2-3 fps
> instead of the standard 25 or 29 fps.
>
> This was not the case when Yocto used EMGD 1.8 driver - video worked
> fine - I am not sure about accelerated javascript based graphics in
> browser as I was not as far ahead in the project.
>
> Is this a known issue?
>
> Thanks
>
> Autif

