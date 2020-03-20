Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web12.4966.1584725076428679647
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 10:24:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=cWj7hO6k;
 spf=pass (domain: stusta.mhn.de, ip: 141.84.69.5, mailfrom: srs0=qdqa=5f=stusta.de=bunk@stusta.mhn.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48kVxx0jBZz40;
	Fri, 20 Mar 2020 18:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1584725063;
	bh=ZN88ctOaNt9reO30634nWSSPj15aKDSqDbgG8jGoimo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cWj7hO6kaeBZvP15knarLLXpJlUTVOcrVoIVpYSq/X7v8bwhSpaRhXDLhsv0t0zNU
	 i2vl0Hzi82NoHIoGjyeYS48DfzLrqQIPVMKf0eknosYQHYe5OUCIfkKBlPCSdpMjHp
	 O7eB0mjVnKA1j4PloFduS0OyeyQwZx8RCp5MTOsbdifcQRa7rd1tQbV98ZEmoj3KCm
	 D7dfIM8EEewJjbFV9akha4Fs8iuFDIKKTrgJkrtEB76MjAbcqqzcoN+FzHssdllb0Q
	 L5+5Kk823ERXhvSxTZ1MrnNa348kgpoM3iWuaMju87jPHMBVmi+Fd8Tb0zrJ7KsD+C
	 zbPpo0oPUZCD7vYCKoq7C1L8bMMZr8dJgFrM+Pdvma+6GP3GhKExzsaKvBLYDZD+ia
	 PWRAWWk0FL5Eayi9NgsDOnW4BYWxkYGWqQGItO3hXkZcW3hSWvig9e+aINSPxfiJ7+
	 woUvi8j/q/+HQ66Tak3sjHBJcb+Vo+MHAepfONZ+XH8HnaVjDpGd1h9PpEhkRS7Rjy
	 3FIirx28t4yJeKlqYkaba486h0PoabydCZXB9DKl1KUg1kbIX5TkBiDyAXbfOegW/W
	 EPVL47O8ToFtSfN32cfX9d5lmiFmwfp9Q6QvrgI6O/AeuD9ec7rhBdKAEvmBesbMyu
	 QEF9cka00FJVuB04WWZ+eFQw=
Date: Fri, 20 Mar 2020 19:24:18 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: richard.purdie@linuxfoundation.org, Mikko Rapeli <mikko.rapeli@bmw.de>,
	ross@burtonini.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] What are the key factors for yocto build speed?
Message-ID: <20200320172418.GA20518@localhost>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu>
 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
 <20200319172141.GB29515@localhost>
 <0803bd80-bc46-373b-0b3d-8ca957379965@topic.nl>
MIME-Version: 1.0
In-Reply-To: <0803bd80-bc46-373b-0b3d-8ca957379965@topic.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri, Mar 20, 2020 at 03:58:35PM +0100, Mike Looijmans wrote:
>...
> (because octave is virtually impossible to cross-compile).
>...

The recipe in meta-openembedded cross-compiles without problem.

cu
Adrian
