Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41736E00985; Wed,  5 Apr 2017 06:48:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A78A0E00970
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 06:48:14 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id n37so1652775qtb.3
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 06:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=DRBisUasw8m20mJVdXQ+d2SZlkI0rehRw/2ivwqM33k=;
	b=mAhEjNpSBs8vrxUOQZzE8p9ONOSS9DMEXdLQG5S6aMYRWJypscjEvE1GCHgHgT0hCO
	G/QzR0I/fubVx2/3O4k1wldI/P3Z3kl14JZQoSWoAu5Z7g+EB0erJ+U8XbW10bYGBZxa
	yOMqeO4TswjPqgN0RVqi7FdmY0XlNhvDbrQIsl2cs1t4UqBXitotvFdMUgTnsorIPbGp
	0GB++LAkm6fwt29SH/4Y2tN/HcWwuPaJFdvJyTdB3ZesQY/3AaUm9nBkIAk8dtRH0o0+
	og/Ya4z7xxIAiIhf5tbOgpkQWO3qoN2KSL0GyW7nuQwl43P6b+lnapl/Y+cA2sd6rKhb
	FH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=DRBisUasw8m20mJVdXQ+d2SZlkI0rehRw/2ivwqM33k=;
	b=pVC6K8cgRAqp3GZgyYC1b+InhNGsWiMNamouEUhfKc4+C3bTfDLe65x4aYoi6Ggimy
	raTi1FlyFMkRbZfn3gWMPrDxUpkYhcv98RdllYEKrp2GjzAyo8G/97QqPwp1sSQ6szyP
	kbj671HEy7ipVEzr5rSQgaksIEQfLyfc4LEfwjf/1wwPATRSxqkfbSLGcA69QCV65koB
	Gy54oQ0X+/ssLJJGFKMyIjNOLKGPvOYc9Ioj1xA52grNq9zhtukoigxnC88qRUa6EHPN
	gERzlzHvCNfFKTu0tYZqYTI44IAN/O9XUBcIoTftBhT8DvWqIGoPCY2i5T1wJRkjauKU
	1Fkg==
X-Gm-Message-State: AFeK/H07GHRWj1mJlCK3wSU5Hc5GHuszIZ/rCLTrcZQwVzQbzmEhmg9UX84GPsoNrCpI3A==
X-Received: by 10.200.47.47 with SMTP id j44mr31393070qta.244.1491400093139;
	Wed, 05 Apr 2017 06:48:13 -0700 (PDT)
Received: from [10.5.3.6] ([189.114.111.135]) by smtp.gmail.com with ESMTPSA id
	w35sm14002381qtc.55.2017.04.05.06.48.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Apr 2017 06:48:12 -0700 (PDT)
To: yocto@yoctoproject.org
References: <CAFq4t4gV3N8Z0epsq7K5dprhsBHu+Yk-UnNAQL4QF68AxceVjQ@mail.gmail.com>
	<1491398578.25991.24.camel@collabora.co.uk>
	<CAHUNapSu=Cg2cDH2Y1MWOAzLvf3FkVnYuPvX8bN0GJeMrvnpCg@mail.gmail.com>
From: Fabio Berton <fabio.berton@ossystems.com.br>
Organization: OS Systems
Message-ID: <c5e7440f-39d3-75ed-568a-029a224da6f9@ossystems.com.br>
Date: Wed, 5 Apr 2017 10:48:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAHUNapSu=Cg2cDH2Y1MWOAzLvf3FkVnYuPvX8bN0GJeMrvnpCg@mail.gmail.com>
Subject: Re: GNU/Octave
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
X-List-Received-Date: Wed, 05 Apr 2017 13:48:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

You can write a new recipe using 
https://github.com/openembedded/openembedded/tree/master/recipes/octave 
as a start point, and also see gentoo ebuild to check runtime depends or 
get some inspiration :)
https://gitweb.gentoo.org/repo/gentoo.git/tree/sci-mathematics/octave/octave-4.2.1.ebuild

On 04/05/2017 10:38 AM, Trevor Woerner wrote:
> On Wed, Apr 5, 2017 at 9:22 AM, Fabien Lahoudere
> <fabien.lahoudere@collabora.co.uk> wrote:
>> On Wed, 2017-04-05 at 14:45 +0200, Peter Balazovic wrote:
>>> do you know is there recipe for GNU/Octave "https://www.gnu.org/software/octave/"?
>>> Is it possible to get it running on Yocto/Linux machine?
>
> In general, when looking for a recipe a good place to start is the layer index:
> https://layers.openembedded.org
>
> After that, google is the next place to try :-)
>
>> A quick google search return this :
>> https://github.com/openembedded/openembedded/tree/master/recipes/octave
>
> That recipe comes for the "openembedded *classic*" repository, which
> was abandoned years ago. So it might work, or it might needs lots of
> tweaking to get it to work, or it might need to be rewritten.
>

