Received: from resqmta-ch2-02v.sys.comcast.net (resqmta-ch2-02v.sys.comcast.net [69.252.207.34])
 by mx.groups.io with SMTP id smtpd.web12.20849.1596208779413702136
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 08:19:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=ePhEwWui;
 spf=pass (domain: comcast.net, ip: 69.252.207.34, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-12v.sys.comcast.net ([69.252.207.108])
	by resqmta-ch2-02v.sys.comcast.net with ESMTP
	id 1WgVkmBxf8jIb1Workcjq9; Fri, 31 Jul 2020 15:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596208778;
	bh=0ShsrID2ITYI2NAAxhX81FyBpsoKLlIBjnlTgmsxVtQ=;
	h=Received:Received:To:From:Subject:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=ePhEwWuinX/hXElBgFEJ8FcIDhDCoRvfK3KcF0eN+1qaLFf0Q2Z/TJVK0491d4ocO
	 +Y7CgSgdK2KslXkqJFdl0L+jMjo6Kc2WAeMWRf/NGPtQ724RWP8UKu8VW9nyAE/cSj
	 YnPDsmZDeXTrHcfbKCMh5nbIM1xzjWh+fYpGsuuXmXfa3CeevjXE65Pem8QuwdViIK
	 VBzoQhBVNcn1oMGqI6A42X0GjeTIrmMnO5/niI7+ufYxs5JwPZgmFJewG7mbki3kA+
	 FYuAmNkqsDuwAbQUL486DdAeAMETBMewNOiEPbK5oHGsFS7jS+pXJltmrEhcZ6v9Ei
	 8w+tW7vBdGtFw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-12v.sys.comcast.net with ESMTPSA
	id 1WolkoJ0bQJHF1Womk68Bd; Fri, 31 Jul 2020 15:19:32 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrieekgdekjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttdefheenucfhrhhomheptfhosgcurfhrohifvghluceorhhprhhofigvlhestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepveffkeffieekfeelieejgeejffffueekudefkeeuvdduieefieejveevjeeuudetnecuffhomhgrihhnpehpnhhgrdhnohenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
To: yocto@lists.yoctoproject.org
From: "Rob Prowel" <rprowel@comcast.net>
Subject: cannot build PDF docs
Message-ID: <de5d2fa6-d353-9113-72cf-f75d2544707c@comcast.net>
Date: Fri, 31 Jul 2020 11:19:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Is there some magic to building the PDF versions of the yocto docs? 
I've tried on multiple machines running debian and differing versions of 
ubuntu and consistently the PDF docs fail to build.

Font substitution errors are trivial, but not being able to locate the 
images that get are inserted is a pretty serious build bug.

What's the secret to building PDF docs, or where are they online?  and 
no, not interested in referring to cloud based HTML docs.  I want 
offline PDF documentation.

Thanks!

$ make DOC=adt-manual pdf
cd adt-manual; ../tools/poky-docbook-to-pdf adt-manual.xml ../template; 
cd ..
Note: namesp. cut : stripped namespace before processing
             Yocto Project Application Developer's Guide

Making portrait pages on A4 paper (210mmx297mm)
Attributed 561 IDs for element, cleaned up 0
[warning] /usr/bin/fop: JVM flavor 'sun' not understood
Picked up _JAVA_OPTIONS: -Dawt.useSystemAAFontSettings=on 
-Dswing.aatext=true
[INFO] FopConfParser - Default page-height set to: 11in
[INFO] FopConfParser - Default page-width set to: 8.26in
[ERROR] FOUserAgent - Image not found. URI: figures/adt-title.png. (See 
position 2:38206)
[WARN] FOUserAgent - Font "Symbol,normal,700" not found. Substituting 
with "Symbol,normal,400".
[WARN] FOUserAgent - Font "ZapfDingbats,normal,700" not found. 
Substituting with "ZapfDingbats,normal,400".
[ERROR] FOUserAgent - Image not found. URI: figures/adt-title.png. (No 
context info available)
[INFO] FOUserAgent - Rendered page #1.
[INFO] FOUserAgent - Rendered page #2.
[INFO] FOUserAgent - Rendered page #3.
[INFO] FOUserAgent - Rendered page #4.
[INFO] FOUserAgent - Rendered page #5.
[ERROR] FOUserAgent - Image not found. URI: 
figures/using-a-pre-built-image.png. (See position 736:275)
[WARN] FOUserAgent - Font "veramono,italic,400" not found. Substituting 
with "veramono,normal,400".
[WARN] FOUserAgent - The contents of fo:block line 1 exceed the 
available area in the inline-progression direction by more than 50 
points. (See position 496:372)
[WARN] FOUserAgent - The contents of fo:block line 1 exceed the 
available area in the inline-progression direction by more than 50 
points. (See position 496:372)
[WARN] FOUserAgent - The contents of fo:block line 1 exceed the 
available area in the inline-progression direction by more than 50 
points. (See position 496:372)
[WARN] FOUserAgent - The contents of fo:block line 1 exceed
