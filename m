Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CBAEE00D82; Wed, 14 Dec 2016 18:14:06 -0800 (PST)
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
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC8D0E00D49
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 18:14:02 -0800 (PST)
Received: by mail-vk0-f44.google.com with SMTP id 137so57517004vkl.0
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 18:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hnqOTzjAMYChZLrMs3223uR7a2A/4ri5DZdfcZP0kqk=;
	b=IWk09L1QspO5wv5WaSAx3eUyT9YSHON4t/VywU53viYrzPLQzXWXt3BIfczKhAGwk5
	Rl/thFrLRwElHeq1VJ7twiaOxZFHJqERstRVSqcxgMsTzrR+/gUnDzyHAksnGS9J1Gme
	R/tnz+B3C5Exxv/KB+rmIDsCzSZGY/UJPSeBJqvdCURlJVryYmEeea3xau0bTE8L8Ish
	XGEgJevAshLQKlS1c0ZC75/HQE1S0b8VwxRJuIPTw7REQjZ5sID98aaXYykmv4lnIrsD
	DkJGVFZGhHGh9CvfgaD9Sj3meA6i/t8YGTTscy7WnKfX7vxrogTcFDn3twV6N56OzQkH
	Elmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hnqOTzjAMYChZLrMs3223uR7a2A/4ri5DZdfcZP0kqk=;
	b=SoZ+mntU4SUnEOKOGbNC+KICJ+B1DeHJmYOatv7+BixhvdZkE4eeP83PnuJGJu6F7a
	Tosr8O/zrCaZYNvLEVjrvecrZd3uMrumyR5aa4IOeD6ZSgBud0xSAHQnXYlsskVviT4n
	X9CqrMevmWdNUalncIvp2gRsvMoYxlX3vxVxOIrGikauqMAxIawW7CeeXmfVfSbEf90M
	2cmWIb49W2ERB3B68dkFoCbzZEufvq0MozF0W1vjDOmUN1qXfwQ4lUfkPdmUmHI8bo/O
	9wSE1jUyyMX0QggREMNQ/28MF5JMUbs6SyxnRV9W23mh/8tyBMTpjre6L93Qdn3CdMHB
	YHSQ==
X-Gm-Message-State: AKaTC00Sym6KPvt2e4eEviB0G4qOwRT9xmu0QCkDBRU5JntBiGfuIb8ysMOzRPYT3jCadQ7TrqXvlISGhVjpeA==
X-Received: by 10.31.153.195 with SMTP id b186mr49262034vke.140.1481768041731; 
	Wed, 14 Dec 2016 18:14:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Wed, 14 Dec 2016 18:13:31 -0800 (PST)
In-Reply-To: <5851F18E.3020401@gmail.com>
References: <5851F18E.3020401@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 Dec 2016 18:13:31 -0800
Message-ID: <CAMKF1squ1LT+5hZ8UtX_f7cjtV-UPkDhvBbDgQ5p_V5TveWDqw@mail.gmail.com>
To: John Rama <john.rama01@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NFS rootfs: mount: only root can mount proc on /proc
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
X-List-Received-Date: Thu, 15 Dec 2016 02:14:06 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 14, 2016 at 5:27 PM, John Rama <john.rama01@gmail.com> wrote:
> Dear Yocto specialists
>
> I would like to know how people, who familiar with Yocto, prepare NFS rootfs for target.
>
> When running bitbake with image recipe, the target rootfs is generated at the following directory
> {YOCTO_BUILD_DIR}//tmp//work/{TARGET}-poky-linux-gnueabi/{IMAGE}/1.0-r0//rootfs/.
> However it's UID and GID is based on the account with which you runs the bitbake.
> If you export this rootfs for the target, it will results in the problem reported in following thread.
>
> http://www.linuxquestions.org/questions/linux-software-2/nfs-rootfs-mount-only-root-can-mount-proc-on-proc-4175595326/
>
> I would like to hear how people avoid this problem.
>
> The ideas I can come up with are followings, but those of them are not perfect..
> 1. Run the bitbake as root account
>   - would not run as root since the all of generated files are root permission even for the log files.
> 2. Change UID and GID whenever generating new image
>   - I guess next build would fall into the trouble because of the owner change.
> 3. Untar the tar ball under  {YOCTO_BUILD_DIR}//tmp//deploy/image/{TARGET}/*rootfs.tar.bz2 to  the export dir
>   - takes additional time.. Not good.
>
> So, is there any good idea to workaround this problem ?

Perhaps this will be helpful
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#qemu-running-under-a-network-file-system-nfs-server
https://wiki.yoctoproject.org/wiki/Poky_NFS_Root


> Any insights and comments are really appreciated.
>
> Kind Regards,
> John Rama
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

