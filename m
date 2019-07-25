Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E9EAE00DD9; Wed, 24 Jul 2019 20:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B6DE00C27
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 20:10:27 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id d79so35352288qke.11
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 20:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NIOHcB8tFWEYtYIRQA1TfjPkMa2sASyhTuxoCi5095E=;
	b=DmgsPCL3e1CMDa1T4nNgG68QlUSdmM+zbnqAHdzJbcBl3ncbPBnbbuVfi/3wuaL4Q2
	O4OKTbnzXJOCdKqVJD7lYC12FNAcnxO38jWYzgfi0htnfevBnI2dWtez8QyY/0DL7O4z
	vjEn1i9NXpfnl4QbLQXcj9j2Wq6bBZQzEFsT10/QhY4zMaZ7tmi2TXoxHbJqhFg85ZOb
	833MndNl9gGAVW7LvjWwTG8Gk4hTSPoj8toK5YrtJ9nkD7niuUKUwr4Jk29cjgkhco0e
	9vsdVgz4HoSYpNEvaqZHXKiIY/OGQPafL2EW5PJ1lAdhdqBOKe8AfBbb77ANfwplvgHv
	l7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NIOHcB8tFWEYtYIRQA1TfjPkMa2sASyhTuxoCi5095E=;
	b=aifGN5YlGYW7tFuUO86GbjGmRmOLndMC8ur80M5fMzFNWRWOdBHccbpft4EMIRhkUp
	XApHlB6JILJ3cqzy5IMohHBj4RZGx9+f2UUoH+67S/us1neN0aQ6P77jDXqa3qzx+3NS
	uqLrqr+ykoFtVwTuSI7KToErIZeM5QQk6SitA5JESn7Ezl9Wara+1YCf5LAOOiz/gd1I
	oQ3F+KIIH5hJtwnOWly9xuxKCjSSQro5ZJEaCmVD/u49pJXPEVCCi6BLIfuRe96Km9Gu
	lW/ZoE3H4mo5QkTwXMmoUFL3VNcpUlqHcpioq+BL8ng9A2FsiAZKZMv1BL++lHr2mMiJ
	oseQ==
X-Gm-Message-State: APjAAAWOoMWvs2n9iS0VPxG92deSmSC+R/XDBMGEr81U1kpb+chLXLHO
	MGHM9hs4TwiEjOPW+iAt8hn977JHKQ+sKPcxTdY=
X-Google-Smtp-Source: APXvYqw2qsU7WVfUb3W6RfQo52iFT5yP9g9UKLN7W1DNE6KQZpn2+dy5YjvbRjYlqc0XoRFn5KFmPHzuGJF3CDZ6ens=
X-Received: by 2002:a37:795:: with SMTP id 143mr57135947qkh.140.1564024226922; 
	Wed, 24 Jul 2019 20:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
	<CAGAf8LzwJeTMLSVEKWdpTpbG+=XQdQxB7+zSKewm+oeDMVUrPA@mail.gmail.com>
In-Reply-To: <CAGAf8LzwJeTMLSVEKWdpTpbG+=XQdQxB7+zSKewm+oeDMVUrPA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 25 Jul 2019 05:10:15 +0200
Message-ID: <CAGAf8LyiX7-tkZf07A7bQwkndYcdGQpFm=Aq_hnMNt6e_OTvLQ@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to fix SSH interfactive promotion for Yocto Linux embedded system
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
X-List-Received-Date: Thu, 25 Jul 2019 03:10:28 -0000
Content-Type: text/plain; charset="UTF-8"

And, YES, since BysuBox supplies very reduced set of commands...

You should put these options
> -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
> ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
> UserKnownHostsFile=/dev/null ...

in the following file:/etc/ssh/ssh_config

Hope this helps.

Zoran
_______

On Thu, Jul 25, 2019 at 5:00 AM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> > scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
> > ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
> > UserKnownHostsFile=/dev/null ...
>
> Format of your command is wrong... scp assumes your options as files
> to be transferred.
>
> You need to compile better command, something like:
> scp <file to transfer> user_name@host_IP_address:/directory path>
> https://www.youtube.com/watch?v=fmMg6cyww14
>
> Zoran
> _______
>
> On Thu, Jul 25, 2019 at 3:10 AM JH <jupiter.hce@gmail.com> wrote:
> >
> > Hi,
> >
> > I am running busybox in imx6 using ssh and scp in shell scripts, but I
> > troubled to run the scripts to run ssh and scp, it did not have ssh
> > options stopped at following:
> >
> > scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
> > ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
> > UserKnownHostsFile=/dev/null ...
> >
> > ECDSA key fingerprint is SHA256:rAS+4gVqPJj7yfVDHlhG1g5bQP+VgMczooGifv+H9vk.
> > Are you sure you want to continue connecting (yes/no)
> >
> > cp: can't stat '-o': No such file or directory
> > cp: can't stat 'ServerAliveInterval=60': No such file or directory
> > cp: can't stat '-o': No such file or directory
> > cp: can't stat 'ExitOnForwardFailure=yes': No such file or directory
> > cp: can't stat '-o': No such file or directory
> > cp: can't stat 'ServerAliveCountMax=3': No such file or directory
> > cp: can't stat '-o': No such file or directory
> > cp: can't stat 'StrictHostKeyChecking=no': No such file or directory
> > cp: can't stat '-o': No such file or directory
> > cp: can't stat 'UserKnownHostsFile=/dev/null': No such file or directory
> > root@solar:/tmp# ssh-keyscan SaController >> /home/root/.ssh/known_hosts
> >
> > What will be effective and simple solution in Yocto?
> >
> > - Replace busybox by bash recipe.
> >
> > - Install openssh-client to run ssh-keyscan to write the target to
> > .ssh/known_hosts
> >
> > Appreciate your advice for Yocto Linux embedded system.
> >
> > Thank you.
> >
> > Kind regards,
> >
> > - jupiter
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

