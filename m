Received: from mx01.optimcloud.com (mx01.optimcloud.com [46.23.89.156])
 by mx.groups.io with SMTP id smtpd.web11.4674.1627018963443440658
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 22:42:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=qdnyDOiv;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.89.156, mailfrom: yocto@optimcloud.com)
Received: from mx01.optimcloud.com (localhost [127.0.0.1])
	by mx01.optimcloud.com (OpenSMTPD) with ESMTP id 99d0b820;
	Fri, 23 Jul 2021 07:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:in-reply-to
	:references:mime-version; s=obsd; bh=EkFp+pdxmBetUBPUg8D2L3Xxq18
	CZyJB07lWgUzukK8=; b=qdnyDOivO++B7pWhlQMToEDUkb4LQKeiQB9NfG21+5d
	J0A/sw3YOyIVH78WM31GIqw4DFOerAEUJP1iKh4tcblVdbrf1ztDPflDey60SqVs
	AEHzaTp4rA/LWwaj7GwHeU4+g5ciH6hSu8JvXya4XA5KJ4o3eOxNg3sfAx6YD7tK
	KWugW+qX7jBquVcR0jmSoKCFWIpY6C0vhIWgw7UzwVtFrAn6rRmmi/nQ/VVNlbR3
	h3HfEvPdPHvawaTUXV69nB3gtmuuHa/H4GFrPvoJiAZc4MgHWB4SFrPzb0/KCssP
	7yzhFjyfaw4dzRnraIE/CNmPMWp/sRuFM+tiwcojMDw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:in-reply-to
	:references:mime-version; q=dns; s=obsd; b=f7cq6vdL7da8F6yPh1zwN
	2eO0OY34+m7nXDhTPkYaYjT3u6XyLhzJZVBynqm2eL/WVQsL4ihQDfmWN2s8I/5D
	RWrA+gsTiNzVvruEWS0/sapydyKXzQJoM3eG6ROLRzjz2OydzTqVevbuXDUu8mPG
	TLC40hY8Pbl+K13Gwbc73gVMTEMnF/7KCKKhzk5y2p1peG6XOMf2jOCAhPHf7aG5
	VDT7xrWgDDMr3SXAsB4ri2dtz3MFPG91IMnDXSu9+e8TNCt/SyzGrsBYqYBNXx9h
	iChXuwWh8aE9fGXF8oTJzxJF797DRjalrV38a2RU4EJVPx/GLokKdjlswYy+lLG2
	A==
Received: 
	by mx01.optimcloud.com (OpenSMTPD) with ESMTPSA id 46b8e7e5 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com;
	Fri, 23 Jul 2021 07:42:39 +0200 (CEST)
Message-Id: <1627018917675.3305049088.392202441@optimcloud.com>
From: "Yocto" <yocto@optimcloud.com>
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] consul
Date: Fri, 23 Jul 2021 05:42:35 +0000
In-Reply-To: <m8Jb.1627018667447693708.j9Cg@lists.yoctoproject.org>
References: <m8Jb.1627018667447693708.j9Cg@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="----sinikael-?=_1-16270189556240.4400386413341031"

------sinikael-?=_1-16270189556240.4400386413341031
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

add branch=main to the giturl github chaged a huge swatch from master to 
main

On Friday 23 July 2021 12:37:47 PM (+07:00), sateesh m wrote:


Hi Guys,

                 I am trying to integrate consul package to my image.facing 
issue while fetching the sources.


WARNING: consul-git-r0 do_fetch: Failed to fetch URL 
git://github.com/hashicorp/consul.git, attempting MIRRORS if available
ERROR: consul-git-r0 do_fetch: Fetcher failure: Unable to find revision 
944cc71026c007e7de9467ec3f38f0ad14464fcc in branch master even from 
upstream
ERROR: consul-git-r0 do_fetch: Fetcher failure for URL: 
'git://github.com/hashicorp/consul.git'. Unable to fetch URL from any 
source.

Can anybody know please  tell  which revision ID i need to used to fix this 
issue. or any patch available suggest me. 

Thanking you in advance. 
--
Regards,
Sateesh

-- 
Sent with Vivaldi Mail. Download Vivaldi for free at vivaldi.com

------sinikael-?=_1-16270189556240.4400386413341031
Content-Type: text/html; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

<html><head></head><body>add branch=main to the giturl github chaged a huge 
swatch from master to main<br><br>On Friday 23 July 2021 12:37:47 PM 
(+07:00), sateesh m wrote:<br><br><blockquote style="margin: 0 0 0.80ex; 
border-left: #0000FF 2px solid; padding-left: 1ex">Hi Guys,<br><br>&nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am trying to integrate 
consul package to my image.facing issue while fetching the sources.<br><br>
<div>WARNING: consul-git-r0 do_fetch: Failed to fetch URL 
git://github.com/hashicorp/consul.git, attempting MIRRORS if 
available</div>
<div>ERROR: consul-git-r0 do_fetch: Fetcher failure: Unable to find 
revision 944cc71026c007e7de9467ec3f38f0ad14464fcc in branch master even 
from upstream</div>
<div>ERROR: consul-git-r0 do_fetch: Fetcher failure for URL: 
'git://github.com/hashicorp/consul.git'. Unable to fetch URL from any 
source.<br><br>Can anybody know please&nbsp; tell&nbsp; which revision ID i 
need to used to fix this issue. or any patch available suggest 
me.&nbsp;<br><br>Thanking you in advance.&nbsp;</div>
-- <br>Regards,<br>Sateesh
</blockquote><br>--&nbsp;<br>Sent with Vivaldi Mail. Download Vivaldi for 
free at vivaldi.com</body></html>

------sinikael-?=_1-16270189556240.4400386413341031--
