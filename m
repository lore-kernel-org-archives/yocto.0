Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web09.19558.1618157315132536237
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 09:08:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lVcdV-0001FB-80
	for yocto@lists.yoctoproject.org; Sun, 11 Apr 2021 18:08:33 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Sun, 11 Apr 2021 18:08:27 +0200
Message-ID: <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org,
 yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org,
 Ferry Toth <fntoth-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
In-Reply-To: <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Op 11-04-2021 om 17:55 schreef Alexander Kanavin:
> On Sun, 11 Apr 2021 at 17:49, Gmane Admin <gley-yocto@m.gmane-mx.org 
> <mailto:gley-yocto@m.gmane-mx.org>> wrote:
> 
>     Yes, and make project doesn't care, because make is called with -j
>     16 so
>     that is what it does.
> 
>     So here's my pitch: bitbake can stop processes spawned by make, because
>     it knows that it started make on 4 recipies, each with -j 16. The
>     individual makes don't know about each other.
> 
> 
> And neither they should. They can simply abstain from spawning new 
> compilers if used RAM is, say, at 90% total. Then bitbake does not have 
> to get involved in babysitting those makes.
> 
> Alex
Bitbake does a lot of babysitting anyway :-) And is pretty good at it too.

To me, fixing make et al. is more work and less effective then adding a 
feature to bitbake. The only way to know how much memory the compiler 
will use for each spawned compiler is to let it run. And then it's too late.

This memory issue is all over our eco system and nobody cares (kernel, 
make etc.) The only thing moving is systemd's oom killer will arrive and 
start killing processes. So that will just stop our builds from completing.

Yeah, I prefer a babysitter over a child murderer :-)

Ferry

