Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E050EE010DC; Mon,  1 Aug 2016 13:47:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF3A9E00874
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 13:47:53 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id u134so183876690ywg.3
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 13:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=7fjRd591sQrTWtWck/yme/u6//huhQ/8ROYajG6Esfc=;
	b=SpFfko163CrRkgMH/7Te/LSsV3j/vbQtBO7rJ3bR9Peylq8ifY5UsWmmhgWKhHGPyA
	34EE5KhWk6AnpwCz/VdLyNcGJSOuc+w3UMwLhOZ8sQCWvx4tTmWbN+zQ0coOyIfXi6kK
	y6xAoPbbjYN57iH/1Daw0GWFtNYHQmyE+wx20K9DI1i1yX5YwaEtih5fU99jmdUSFyLM
	KZCX6FnQwvgNE+BFAzOqNnf/dME4kug5WE57B2F8qjuBBC9CY4SajGWmzC4NATk851St
	kO26XnfypUEjfkr5qfAaOB4xo2eUKeNplaZyOJ/wZQ6dK4BiAMX1ShNtsQree8iK3td3
	ai6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7fjRd591sQrTWtWck/yme/u6//huhQ/8ROYajG6Esfc=;
	b=CZbfdjHoLLESi3rmrFZAlalaKV5HcW9Lg3FsWtG+GDl8vuhjZBhwxlJwh9Ig1VyYo9
	8LjBVMm1Uva+3cDuLfIYBkC9ibKy7ACFbiBn/ps/akGw10gkNsYxnWUGbHoKrTQa7Nvj
	wp+XZt/2lcpyYiJ+5zMDK+3qNF9gom3K0BdGK0QbQl/CngcjLSQEDCF1/7loiS3Inf2E
	Wri4wDW8GhCIJG3um13xJrzlEAJ4YIQVZw3GN+pmhF278bTgKEcw+HtB2J7onm4yUt/F
	5IM0Cz3RQvstDkWpCFa5XW5EUMk2KYJRt9LCOwE/5I4vNbvA1NWLHlH9Y7aH9F8ErNjt
	rfWw==
X-Gm-Message-State: AEkoouv+UQO6dhYLI98kjdmmDXZjbDMiB+LZzor1DxEnosiIkbp8zT/ictxQoOOcW9QNiHiDH+Hu3IOtvHmQRw==
X-Received: by 10.37.104.20 with SMTP id d20mr46299936ybc.59.1470084472694;
	Mon, 01 Aug 2016 13:47:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.130.134 with HTTP; Mon, 1 Aug 2016 13:47:52 -0700 (PDT)
In-Reply-To: <CAFZh4h820UUrUORaVcnvHa_4EpUhhFXdCTNco102hs9qytSz7w@mail.gmail.com>
References: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
	<CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
	<CAFZh4h820UUrUORaVcnvHa_4EpUhhFXdCTNco102hs9qytSz7w@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Mon, 1 Aug 2016 16:47:52 -0400
Message-ID: <CAFZh4h_7X2toq-bynO=bw2g36s5cBAzrzzZkn9AGGMBneSZ_Mw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.8.1 - Insert USB VFAT thumb drive results in "Volume was not properly unmounted. Some data may be corrupt. Please run fsck"
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
X-List-Received-Date: Mon, 01 Aug 2016 20:47:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 1, 2016 at 9:21 AM, Brian Hutchinson <b.hutchman@gmail.com> wrote:
>> dosfsck 2.11, 12 Mar 2005, FAT32, LFN
>> Starting check/repair pass.
>> Starting verification pass.
>> /dev/sdb1: 284 files, 60465/62894 clusters
>
> Another update.  After seeing guys on the Raspberry Pi forums
> complaining about a similar thing they hinted that dosfstools was tool
> old.  Sure enough, I ran fsck.fat on the USB drive from my Ubuntu
> machine and it came back with:
>
> $ sudo fsck.fat -a /dev/sdg1
> fsck.fat 3.0.26 (2014-03-07)
> 0x25: Dirty bit is set. Fs was not properly unmounted and some data
> may be corrupt.
>  Automatically removing dirty bit.
> Performing changes.
> /dev/sdg1: 142 files, 60465/62894 clusters
>
>
> ... and now the USB drive mounts without complaint but I modified my
> box with a mount.sh from a previous release trying to get to the
> bottom of what was going on.  Now I need to put everything back the
> way it was (restore mount.sh from 1.8.1) and see if it is still a
> problem.
>
> My kernel had the USB-persist feature turned on when I first noticed
> the problem so I'm not sure if left over files (not quite sure how the
> feature keeps track of things) from that could cause problems.

I restored the original version of /etc/udev/scripts/mount.sh and now
that I've cleared the "dirty bit" with the newer version of fsck.fat
on my Ubuntu box ... inserting the USB drive works but it is mounted
in /run/media/sdb1.

What's up with this run directory?  Is this some new convention that
is to be preferred over the previous mount point which before was
/media/sdb1???

Regards,

Brian

