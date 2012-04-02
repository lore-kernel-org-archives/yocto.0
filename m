Return-Path: <msm-fsl@mcclintock.net>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5620CE013E9
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2012 21:08:41 -0700 (PDT)
Received: by qatm19 with SMTP id m19so1628058qat.12
	for <yocto@yoctoproject.org>; Sun, 01 Apr 2012 21:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=4fI+vwDthBhSgUBcPaJTJNaXtTNQ2KcTd8yh8U8YcNI=;
	b=OMwLOUyaTERnKqICj0L73ZkfnrXd6KctQt+89En8wBe+MKuQxvjnLN4HzmueGcR1hc
	4yHZKgHlYrEPj3nrfyIbn3H5y7FdG4J1yeb7Ulwhxqu9a8xXoeeSE9KdH0ZpYtQfG1uW
	33/k268neCBH7TWdpOR34I5voxkiEmIrHr7k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=4fI+vwDthBhSgUBcPaJTJNaXtTNQ2KcTd8yh8U8YcNI=;
	b=dU11G+JQbnNECtwirOdO7otyMvxapicqvMP28PVc+JOuLb+xlxZ8TjJ3CBPAGFqBSA
	nhgXHFIpxloqLd/AqWC+m3zkNDW9YCfApk4G+L4so23zjTN9YwzMhYUxyKx0XJyTL08J
	LX0V6/C2thzYyNexRoLxzV8OD3frFKFdRH4tEp2ltA/MWki/oiYNO7DfH+Fzq/KWVf2L
	N95F0T7pu96dXD4ql9DdgFexkUgv9jAeQGR2h6EsqBUzvHUPoqI34T25nzd+iI2bfB/H
	OMGgBXfmsukSmB02ZtCN6JYXZCI2mL1Uk4IxkHe3wSWRZq1yegsFDXtcYLd6DPJVwmTN
	zI9Q==
Received: by 10.224.173.139 with SMTP id p11mr9271546qaz.14.1333339720593;
	Sun, 01 Apr 2012 21:08:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.11.234 with HTTP; Sun, 1 Apr 2012 21:08:19 -0700 (PDT)
In-Reply-To: <1333177590.18082.160.camel@ted>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
	<1333177590.18082.160.camel@ted>
From: Matthew McClintock <msm-fsl@mcclintock.net>
Date: Sun, 1 Apr 2012 21:08:19 -0700
Message-ID: <CAEsOVNfEF9aUr4hEbaptuGoPJxyEshKxrdhRHqFXVWS-_pkUhA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQkaAquya2E/AAdC5OSNFMLGFNQHbzQY9kUR74fg7fjymbWGfD9NjywuUjsVw0ygAgenm+aV
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Mon, 02 Apr 2012 04:08:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 31, 2012 at 12:06 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2012-03-30 at 20:00 -0700, Chris Larson wrote:
>> Not to be terribly pendatic or difficult here, but technically, the
>> comparison you make here doesn't ring true. bitbake in poky *still*
>> has changes that never went into the upstream repository.
>
> I was surprised to hear that but its easy enough to test:
>
> diff -ur bitbake/ ../bitbake/
> Only in bitbake//bin: bitbake-runtask
> Only in ../bitbake/: classes
> Only in ../bitbake/: conf
> Only in ../bitbake/: .git
> Only in ../bitbake/: .gitignore
> diff -ur bitbake//lib/bb/cooker.py ../bitbake//lib/bb/cooker.py
> --- bitbake//lib/bb/cooker.py =A0 2012-03-22 14:40:40.488135297 +0000
> +++ ../bitbake//lib/bb/cooker.py =A0 =A0 =A0 =A02012-03-22 14:32:17.33612=
7747 +0000
> @@ -178,7 +178,7 @@
> =A0 =A0 =A0 =A0 self.configuration.data =3D bb.data.init()
>
> =A0 =A0 =A0 =A0 if not self.server_registration_cb:
> - =A0 =A0 =A0 =A0 =A0 =A0bb.data.setVar("BB_WORKERCONTEXT", "1", self.con=
figuration.data)
> + =A0 =A0 =A0 =A0 =A0 =A0self.configuration.data.setVar("BB_WORKERCONTEXT=
", "1")
>
> =A0 =A0 =A0 =A0 filtered_keys =3D bb.utils.approved_variables()
> =A0 =A0 =A0 =A0 bb.data.inheritFromOS(self.configuration.data, self.saved=
env, filtered_keys)
> Only in bitbake//lib/bb: shell.py
> Only in ../bitbake/: MANIFEST.in
> Only in ../bitbake/: setup.py
> Only in ../bitbake/: TODO
>
> (where one tree is on bitbake master and the other is poky master).
>
> Of these, the classes/conf/.git/setup.py/MANIFEST/TODO are deliberately
> removed. Those are upstream too. shell.py is still around as a reminder
> that at some point I think we should resurrect it in a new form. I also
> evidently never added bitbake-runtask upstream which I thought I had.
>
> So, yes, there is a one line change that we've screwed up merging and
> its not even functionally different.

I think we should consider a "standard way" of integrating layers and
other bits. One method is (and I'm not recommending it) using 'git
submodules' - another is 'androids repo command'. If all the distros
(poky, angstrom, MEL, etc) could at least consider standardizing on
something like this it starts to becoming more obvious what exactly is
going on and what version of what is being pulled in and from where...

-M

