Received: from mx01.optimcloud.com (mx01.optimcloud.com [46.23.89.156])
 by mx.groups.io with SMTP id smtpd.web11.4687.1627019141527599250
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 22:45:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=xa2N/BHF;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.89.156, mailfrom: yocto@optimcloud.com)
Received: from mx01.optimcloud.com (localhost [127.0.0.1])
	by mx01.optimcloud.com (OpenSMTPD) with ESMTP id 07469b11;
	Fri, 23 Jul 2021 07:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:in-reply-to
	:references:mime-version; s=obsd; bh=trTQMQJL+vdnp9HZ5a7j9k4oCli
	NTM+dii0/3f6qkjQ=; b=xa2N/BHFAQH5ABanYHfxenLi9YVpq73MW6gYVeQidds
	1o1r57m6n2Jl37NUtMQmqEXkH+udnyHKfR8yLEgaZyXw19aDq5mEatGSAGQ14P+d
	cnmCVRgVytW/0h5rkf9oVE+NUg/lihtC1eXZ82hv2noqo3APtjibfJ2skhE4sQBS
	7Hd6eRF+e8W3Jw8vefXMbkkz06Er2asiEXFesjcbbPSGuopdTrQvyPTe7UbGGzIP
	KsopEm3CkwLWxwPHCS2H3v77Bx+l596qXWivPrn0C0VaJg+gNcDuCuFPtNowF0Pa
	75TJTY9bOFBP7GJLWEdzFEWYM1mTpNltxl293iasdFQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:in-reply-to
	:references:mime-version; q=dns; s=obsd; b=qmBV+1ezxXT/D2mp7A6w+
	os/3fP4pTqMYs3RAZSUVQ+qVwXiw6RWKiI9IwWzzs91r7bWN1265Foluu+K1rgH6
	G0NOAaIiiURFAkFZu05m3jswpyzOSYlcNr3kux+pwAw3KyaLlXsxbJwL6wphQy+c
	D/++K0A0qqGx6FKUrg1qcRIDCs570UvBJrFopmSCzNKeql2PeCdgGZg20n+gu5BF
	zxzFzgBYE+LVpxGn8iT6+qdM3IGZGl3oyDD7Jh98x89eFZUscdwcORW8TsKfZfZO
	LTriwE2814METl8Qhot/eEiUyBKRXwaq1hp480OwdIZ24DXxLCaqFaVJ7PJ55NsD
	A==
Received: 
	by mx01.optimcloud.com (OpenSMTPD) with ESMTPSA id 5bce67a9 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com;
	Fri, 23 Jul 2021 07:45:37 +0200 (CEST)
Message-Id: <1627019126293.3177070240.2125681562@optimcloud.com>
From: "Yocto" <yocto@optimcloud.com>
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] consul
Date: Fri, 23 Jul 2021 05:45:33 +0000
In-Reply-To: <m8Jb.1627018667447693708.j9Cg@lists.yoctoproject.org>
References: <m8Jb.1627018667447693708.j9Cg@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="----sinikael-?=_1-16270191337270.9418234318298713"

------sinikael-?=_1-16270191337270.9418234318298713
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

SRC_URI = "git://${GO_IMPORT}.git;branch=main \

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

------sinikael-?=_1-16270191337270.9418234318298713
Content-Type: text/html; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

<html><head></head><body>SRC_URI = "git://${GO_IMPORT}.git;branch=main 
\<br><br>On Friday 23 July 2021 12:37:47 PM (+07:00), sateesh m 
wrote:<br><br><blockquote style="margin: 0 0 0.80ex; border-left: #0000FF 
2px solid; padding-left: 1ex">Hi Guys,<br><br>&nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp; I am trying to integrate consul package to my 
image.facing issue while fetching the sources.<br><br>
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

------sinikael-?=_1-16270191337270.9418234318298713--
