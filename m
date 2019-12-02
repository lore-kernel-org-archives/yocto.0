Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web09.1475.1575295309921083047
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 06:01:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=ne5g72KQ;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47RRcR1Pjpz4R;
	Mon,  2 Dec 2019 15:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1575295305;
	bh=wOeDNfJRGQi0F9TJbLzLihBhw0ygXx8csEuVW7Y+koQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ne5g72KQuNOEO8N9sPhCvACPn8omM73Hl8uhAegxtCq5efwjQdHO0TuwI4oB0mS6f
	 ckJwIvcuzFZr1kP5asIt6ljbsfgHcPRY7XpkB55DIr/8GtFscsP37s/TG0iZbIMDiB
	 QQprzJ41wKriufZ0Hpx5hZBGkd6ysK8lJI2HLWsje0NHofJAWfhmqdrc495lgMteWc
	 mfWZGpzSx7c4vMeClyNgGdhHzuwQ/awx0Ah8c26Gb2BprFzpW6ce8Nl/tVRKPBS9v5
	 7GaCRA+Ik+iA4C7fKUJJS6klNzFxexR2z6HCJX3FoQXx0hBwHnFoYqhpACZwcM5xxk
	 I5XLz7rQS6cILbJaoCifxBqLQLj4fKRi8FwgT83xjjgRF8nF/ogxF6XyRXDHYHHKFV
	 ue5tDMjZNtXIsdT1z7aZ/1la8ThCuDYCw1h41k1Iy4PHSpCFBJXUtRYHsFmIw/Y5Hi
	 rekHfie9wSQArVcbg40uif1UdLbd7iPJW54eyuqXXxy13CbPmatJXyLaismSOqNPum
	 b9xbLJaHjswHltsEy+RFvSvdZYbV15fgcnalNVx8nVH2QAKLj1tg5DbeL3ICaIG8uC
	 N59Qvl8HGsJRfLvD9j86T1lXPzl231jIYAp3N4P2s1V0Vt57D2gYeYVyGtEPNi57Q0
	 QKc5sGh1qMdFWyTohRvQieis=
Date: Mon, 2 Dec 2019 16:01:41 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Mikko Rapeli <mikko.rapeli@bmw.de>
Cc: mike.looijmans@topic.nl, peter@berginkonsult.se,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Message-ID: <20191202140140.GB1581@localhost>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
 <20191202091942.GF3527@hiutale>
 <aa713358-4ec7-5215-25f6-ef13f513c97f@topic.nl>
 <20191202093333.GI3527@hiutale>
MIME-Version: 1.0
In-Reply-To: <20191202093333.GI3527@hiutale>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Dec 02, 2019 at 09:33:33AM +0000, Mikko Rapeli wrote:
>...
> On Mon, Dec 02, 2019 at 09:28:03AM +0000, Mike Looijmans wrote:
> > One solution I can think of is to put the header into it's own 
> > recipe/repository and then refer to it like any other library would. Refer to 
> > that recipe from the module (or kernel) recipe that needs it. This way you 
> > have your header in a single maintainable location and dependencies properly 
> > taken care of.
> > 
> > If that's not something you could live with, share your recipes, since vague 
> > problem descriptions will only get you vague solutions...
> 
> This is the problem I see with multiple BSPs. In the end for every one of them
> the best solution is to fork linux-libc-headers.
>...

The fork can be a .bbappend with a patch adding the required
definitions to linux-libc-headers.

> Cheers,
> 
> -Mikko

cu
Adrian
