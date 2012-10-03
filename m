Return-Path: <raj.khem@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5E3E011C5
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 23:24:47 -0700 (PDT)
Received: by wgbdt10 with SMTP id dt10so4178133wgb.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 23:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ylnM+UTzOjMeMhAfoqOPe1npht7gkkAUyWSeyRL/MOM=;
	b=DWCoXtaA1w1AI2xJIyviwtob9wE+nF3ioFuAZNuuW+2gaZSHpblnQwGxiXOuZJqx4q
	F5Puf2yP3RAHpVXjl6WRE2z+Lf0cMvlBGU9jgQRHNuSVKQTNKRMKxeHwi7o5+jHwYl+6
	uIQi48uHWoYysQ5b7tNLp2yAwZyZzlk3MfiaYKuRP3wDFp4jSjhS+dO6Q6ko7/cLb/cl
	CijE24Ntz6TPP4mIk8gAiNn2nnmiYxgNV+unwU15/EtfgM85WFwFWOhI2KiyfGPsNZ1g
	2taEXJa6GrK6Qo/TrAelhJSWP0jumn+QQvt5aOl7fcTfsyNb9KNJG9DVDs+vLz0l8/W+
	2WSA==
Received: by 10.216.241.200 with SMTP id g50mr623837wer.79.1349245486442; Tue,
	02 Oct 2012 23:24:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.28.38 with HTTP; Tue, 2 Oct 2012 23:24:16 -0700 (PDT)
In-Reply-To: <OFC5CA2A2E.E15C455C-ONC1257A8B.0058611B-C1257A8B.0059513B@sick.de>
References: <OFC5CA2A2E.E15C455C-ONC1257A8B.0058611B-C1257A8B.0059513B@sick.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Oct 2012 23:24:16 -0700
Message-ID: <CAMKF1srXo+DCz+SyRdvgh+aqoSfTTR-gXmkmybQivwjfDoy=Zg@mail.gmail.com>
To: Maxime Moge <Maxime.Moge@sick.de>
Cc: yocto@yoctoproject.org
Subject: Re: Tftp Server Problem P1021rdb
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
X-List-Received-Date: Wed, 03 Oct 2012 06:24:47 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 2, 2012 at 9:15 AM, Maxime Moge <Maxime.Moge@sick.de> wrote:
> Hello,
>
>
> Ich ve got to install the TFTP-Server on the Linux Virtual Machine(Ubuntu
> 10.04) :
>
>         sudo apt-get install xinetd tftpd-hpa tftp
>
>         sudo vim /etc/default/tftpd-hpa
>                 #defaults for tftp-hpa
>                 RUN_DAEMON="yes"
>                 OPTIONS="-l -s /var/lib/tftpboot"
>
> Then, I set up the TFTP Folder:
>
>         sudo mkdir /tftpboot
>         sudo chmod -R 777 /tftpboot
>         sudo chown -R nobody /tftpboot
>
> Straight after that, I startet the server:
>         sudo /etc/init.d/tftpd-hpa start
>
>
>
> The problem is that I cant get any file from the server to the device.!
> The problem remains when I try to get a file to my Windows Host  (Window 7)
>         T T T T T T retry count exceed...
>
> I tried to get a file by using another terminal within the same linux
> virtual machine
>         tftp VirtualMachineIP
>         get RunThis.sh
>         ....Timeout
> It didnt work out
> Alternatively, I configured the  xinetd Tftp script :
>         sudo vim /etc/xinetd/tftp
>
> Then I stopped tftpd-hpa.
>
> then startes xinetd (sudo service xinetd start)
>
> All that didnt work.
>
> Any Idea what I can do?
>
>

try atftp server it works ok for me
http://www.ubuntugeek.com/howto-setup-advanced-tftp-server-in-ubuntu.html

> Thank in advance
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

