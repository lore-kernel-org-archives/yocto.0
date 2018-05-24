Return-Path: <brian@walsh.ws>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57DB5E00720; Thu, 24 May 2018 10:18:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D39E006B4
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 10:18:30 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id f3-v6so1617996uan.9
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 10:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walsh.ws; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=rJwJ8dj5HWhYf5uV3OcLzaZXT/rW2cReTvtt9MJA50o=;
	b=ZvbixDfaz5O8q2ramTX+UwA8PuXoHM8/7R1oGhUXrRtnHtRjae8P89JX+8SH2W+lkJ
	e/jR85jkUTlKOpvlHx1h2PqPAYZrIah7Bh862RvppuTkvDi2R+X4oWbtmp1OEKoLNbo4
	jVKU52d+Nl1hFyW2Hn5Ma8OI8DqtDXT2MMBDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rJwJ8dj5HWhYf5uV3OcLzaZXT/rW2cReTvtt9MJA50o=;
	b=c6Keg/LUQINztpNCD9TGHaMtNyBYsnM4zg9FV87wXWC8e7VuhKsQOSZWvGCLeodHq/
	vF+SP7YrGWXqSVKXsk6WpY6xTak4dXZDZ+Kik1O/bQHoSv2tQAG6CWMb5skb1BT7Skhz
	7vshOgigBW/ROOwwfenwV27FMWqF78Cmi7Dx13zaAhPpDwCssj5t/2o6WCPXlrQ/on8T
	uWE+REJhX2iKMMQhjwPKZT3U33tXS0EYfyumhL1Yt+V6xM0ycl6ooonwBTyQ78TdqIb5
	CdBgQBCUWr2lLkWabgbFGJ7yU0dYsPIe712pS0m5WCdvnbG9364WSp9m2TDch9HRH3XD
	clkw==
X-Gm-Message-State: ALKqPwdKq0VaRXTbMt4wFfOCsYIyNJK/XPj4yIIDvQ6XriTHnpZu/6ZS
	CP7Mnua9sGNm63cseluWYJC2JxSxsZWEA+W//zE4HyC6
X-Google-Smtp-Source: AB8JxZqk2rQIyX7aIzSuN4t3Dd6hQelXa3saGm+pOzSrViMxOe/MxlYLZdmCC/4/3WxJ93SghluwmUtWZnr+COb1ez0=
X-Received: by 2002:ab0:51b3:: with SMTP id
	g48-v6mr240056uaa.195.1527182309285; 
	Thu, 24 May 2018 10:18:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:58ca:0:0:0:0:0 with HTTP; Thu, 24 May 2018 10:18:08
	-0700 (PDT)
In-Reply-To: <8ef5b821-df26-0c89-60d8-7c55d13d4275@windriver.com>
References: <CAG0OLMaBuq05knexO=gnaQnDadhQsHdiZSFiYFRsFu4ZCsDj+Q@mail.gmail.com>
	<8ef5b821-df26-0c89-60d8-7c55d13d4275@windriver.com>
From: Brian Walsh <brian@walsh.ws>
Date: Thu, 24 May 2018 13:18:08 -0400
Message-ID: <CAG0OLMbsV512+Exr3owEwV+kDBffNWE2K5DV6UPc8o=V3rsGGg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: busybox / sysklogd post install conflict
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
X-List-Received-Date: Thu, 24 May 2018 17:18:32 -0000
Content-Type: text/plain; charset="UTF-8"

Yes if the links for busybox klogd and syslogd were only generated in
busybox-syslog that would fix the problem instead of putting the
update-alternative back in sysklogd.


On Tue, May 22, 2018 at 10:41 PM, ChenQi <Qi.Chen@windriver.com> wrote:
> Is it because that these two commands are packaged into busybox instead of
> busybox-syslog?
> If some layer introduces such change, then a bbappend file in that layer
> needs to be added to also modify sysklogd recipe accordingly.
>
> Anyway, thanks for raising this problem up. When checking the sysklogd
> recipe, I found a typo from my previous patch.
> I've sent out patch to fix it.
>
>   git://git.pokylinux.org/poky-contrib ChenQi/sysklogd-typo
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/sysklogd-typo
>
>
>
> Best Regards,
> Chen Qi
>
>
>
> On 05/22/2018 11:28 PM, Brian Walsh wrote:
>
> I have run into an issue building against sumo branch (using opkg if that
> matters). This patch removed the update-alternatives for sysklogd.
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c83eb10f70b714ce3a8c165fad547d800f3ed27d
>
> However, busybox is still configured with syslog support. The script that
> generates all of the symlinks for busybox runs during the main busybox
> package post install. This causes the post install to exit with an error
> since it can't create the links for klogd and syslogd if sysklogd is
> installed without update alternatives.
>
> From busybox.postinst:
>
> update-alternatives --install /sbin/klogd klogd /bin/busybox.nosuid 50
> update-alternatives --install /sbin/syslogd syslogd /bin/busybox.nosuid 50
>
> I think that patch needs to be reverted. The rconflicts for busybox-syslog
> and sysklogd takes care of the conflicting config file name that is shared
> between the two packages but we still need the update-alternatives. Unless
> the function that generates the busybox symlinks gets smart enough to
> generate the symlinks only in the busybox-syslog package.
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

