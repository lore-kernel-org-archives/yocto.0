Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED67E00746
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2012 09:09:45 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3V9ljM5g7sz4Kh0c;
	Sun, 18 Mar 2012 17:09:43 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3V9ljM08L3z4KK66;
	Sun, 18 Mar 2012 17:09:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id GCnCWDATI1NK; Sun, 18 Mar 2012 17:09:42 +0100 (CET)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Sun, 18 Mar 2012 17:09:41 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 055001A5F71;
	Sun, 18 Mar 2012 17:09:41 +0100 (CET)
Received: from gemini.denx.de (localhost [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id D221A206055;
	Sun, 18 Mar 2012 17:09:40 +0100 (CET)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <alpine.DEB.2.02.1203180937590.7439@oneiric>
References: <alpine.DEB.2.02.1203180550300.29125@oneiric>
	<alpine.DEB.2.02.1203180937590.7439@oneiric>
Comments: In-reply-to "Robert P. J. Day" <rpjday@crashcourse.ca>
	message dated "Sun, 18 Mar 2012 09:39:51 -0400."
Date: Sun, 18 Mar 2012 17:09:40 +0100
Message-Id: <20120318160940.D221A206055@gemini.denx.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why is YOCTO_GIT_URL defined to use http?
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
X-List-Received-Date: Sun, 18 Mar 2012 16:09:46 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Robert,

In message <alpine.DEB.2.02.1203180937590.7439@oneiric> you wrote:
> 
> > $ git clone http://git.yoctoproject.org/poky.git git
> > Cloning into git...
> > fatal: http://git.yoctoproject.org/poky.git/info/refs not found: did
> > you run git update-server-info on the server?

This is indeed an issue that should be fixed on the server.

>   now that i'm awake, i can expand on the above.  it seems that you
> simply can't use a single entity for this since you can use it in two
> different contexts:
> 
>   1) for browsing (http://)
>   2) for cloning (git://)
> 
> isn't the obvious solution to define two different entities, to be
> used depending on the context?

Umm...  I think you get this wrong.  You should be able to access the
repository thrugh git both with

	git clone http://git.yoctoproject.org/poky.git
and
	git clone git://git.yoctoproject.org/poky.git

For access though a web browser, the URL would be

	http://git.yoctoproject.org/cgit/cgit.cgi/poky

which is indeed a separate thing.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
At the source of every error which is blamed on the computer you will
find at least two human errors, including the error of blaming it  on
the computer.

