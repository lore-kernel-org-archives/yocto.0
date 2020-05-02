Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.9641.1588441552281175706
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 10:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 3726240C50;
	Sat,  2 May 2020 17:45:51 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id phmCwh0XBRhm; Sat,  2 May 2020 17:45:51 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 1DD8940C4F;
	Sat,  2 May 2020 17:45:50 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 7C9CA172F71; Sat,  2 May 2020 13:45:49 -0400 (EDT)
Date: Sat, 2 May 2020 13:45:49 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] short form for unpacking recursively into WORKDIR?
Message-ID: <20200502174549.GA11927@denix.org>
References: <alpine.LFD.2.21.2005021150090.931595@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2005021150090.931595@localhost.localdomain>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

https://lists.yoctoproject.org/g/yocto/topic/73258946


On Sat, May 02, 2020 at 11:55:59AM -0400, Robert P. J. Day wrote:
> 
>   was playing with shadow and PAM stuff, and noticed this in
> shadow.inc:
> 
> # Additional Policy files for PAM
> PAM_SRC_URI = "file://pam.d/chfn \
>                file://pam.d/chpasswd \
>                file://pam.d/chsh \
>                file://pam.d/login \
>                file://pam.d/newusers \
>                file://pam.d/passwd \
>                file://pam.d/su"
> 
> which results in that pam.d/ directory (and the identified files)
> being copied into pam.d/ in WORKDIR. but since the above is the entire
> contents of that directory under files/, i wondered if one could just
> refer to the directory alone and it would unpack recursively, and it
> seems to work fine using:
> 
>   PAM_SRC_URI = "file://pam.d/"
> 
> i'd never noticed that before, and am not sure if that's actually
> mentioned in the docs (is it?). in any event, if the above shortcut is
> officially supported, is there a reason to spell it out in full anyway
> as is done in shadow.inc? (i mean, other than to be selective and
> cherry-pick what you want unpacked.)
> 
> rday

> 

