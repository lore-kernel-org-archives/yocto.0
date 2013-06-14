Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A15A4E013A8
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 19:31:02 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id qd12so203849ieb.2
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 19:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LOy67naNZOLeFmx+RYOiOpdR+9rmBlskDpoGe5EQE3g=;
	b=hsXJe++TdbHGWIoosZwIZfq645fuqzUETd8xtUszrRguWzQwVykoiE5mFvwVn/4CO6
	Zs3t5+1v7EmfnULs7u+hhwumsDlPK2Ypz3UKQi/3nj4tCBYXDxRno7MWAzrM+t0m2/MA
	l4oIijsGMSgbFkqxTDyzInrf0OzXTM/dB+m3O5C/1skjRcODPPssiSvdk8B4ho+C0E5h
	u4Pun+Oc2+xZYELHezWY1IDMEikICwXQQld0tCGbq8diCthPMsxGE5IBgGSORPa7NaiK
	11T2alIg00f3jGk6kKoVZNe+/xQ91DUxAYCkNoGM9Gxw6Ithv5yDT5Dc0G654KubEqHU
	oPbA==
X-Received: by 10.50.65.9 with SMTP id t9mr116199igs.102.1371177062627; Thu,
	13 Jun 2013 19:31:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Thu, 13 Jun 2013 19:30:32 -0700 (PDT)
In-Reply-To: <1370964638-30649-1-git-send-email-muhammad_shakeel@mentor.com>
References: <1370964638-30649-1-git-send-email-muhammad_shakeel@mentor.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Jun 2013 19:30:32 -0700
Message-ID: <CAMKF1sp_7WmGp02EeyFFe5imLja43=s8US-eJ5C3XP=-=fNX6w@mail.gmail.com>
To: "Shakeel, Muhammad" <muhammad_shakeel@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/3] [meta-ivi] portmap: Use systemd service type forking instead of oneshot
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
X-List-Received-Date: Fri, 14 Jun 2013 02:31:05 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 11, 2013 at 8:30 AM, Shakeel, Muhammad
<muhammad_shakeel@mentor.com> wrote:
> From: Muhammad Shakeel <muhammad_shakeel@mentor.com>
>
> portmap is a resident program and we want to start it in background.
> With service type 'forking' systemd knows that the executable is a daemon.
> Although in this case 'oneshot' + 'RemainAfterExit=yes' works but it
> is intended for non-resident programs.
>

I wonder why is rpcbind not replacing portmap for ivi ?


> Signed-off-by: Muhammad Shakeel <muhammad_shakeel@mentor.com>
> ---
>  .../portmap/portmap/portmap.service                |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-connectivity/portmap/portmap/portmap.service b/recipes-connectivity/portmap/portmap/portmap.service
> index 7f9bc94..a76754f 100644
> --- a/recipes-connectivity/portmap/portmap/portmap.service
> +++ b/recipes-connectivity/portmap/portmap/portmap.service
> @@ -3,9 +3,9 @@ Description=Portmap
>  After=connman.service
>
>  [Service]
> -Type=oneshot
> +Type=forking
>  ExecStart=/sbin/portmap -l
> -RemainAfterExit=yes
> +PIDFile=/var/run/portmap.pid
>
>  [Install]
>  WantedBy=multi-user.target
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

