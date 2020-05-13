Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3380.1589367098976419438
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 03:51:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@skidata.com header.s=selector1 header.b=ST/WuloX;
 spf=softfail (domain: skidata.com, ip: 140.211.169.56, mailfrom: prvs=395352de3=richard.leitner@skidata.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C347E01B4C; Wed, 13 May 2020 03:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www; Wed, 13 May 2020 03:51:36 PDT
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 602DEE01B0B
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 03:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=skidata.com; i=@skidata.com; q=dns/txt; s=selector1;
  t=1589367096; x=1620903096;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/TL28lmLjvtrVYM3kHljSw0veC6hy/+7zS0J/jqLQL0=;
  b=ST/WuloXFuD9yOkdDZcnqJySSKv4CLiXCCibz7VxmSjVolRkXCO2tI+f
   AYnPBKG3i/BLJz17TjRuqq+6O0w+7nbo3QaW1n1MJvc5Niv1R67ddPYyJ
   xmnbQcHKEMOkQRwN4IfHCuEIw/pN5c3XslcE5xrMKkLWocd0W9NP2rOhh
   qudd+GPVEAuQ33s2b7v0UF7Vi6NQcexMt+OO1U0YnrK20RkmdEqYWEXu5
   dC+T4HL7bu6cS018hmsLS4O+dJlsBzIZjWqdQ9hlViKqCbEQHMiuBy93K
   KcRIIEXe4wCE+SwvJbWohXC5HgVl5TlyXMNUx2pcpTid8+OJja7gRl3JE
   Q==;
IronPort-SDR: 5TfgfHt1q3kNTdn1ycH2a46UpG8hEf3JkuVqmjTezTjjBxOqiAWAPaA8TXaQET6b7c+f+QTad5
 NVpn5kHgP1NE1ab1qT7J8KR9FuWG0sBygSrHfbDMo1hn1XSxvpXZBjQB7gpnb8+xUeR5JLlm/i
 qNTM5JKIHB6G1RnOX2JcitF+XdLxQIXAd+7FrES0rPKhBxWhegoYRHhsbRpJnlVF3VBg1svFrh
 2xDY2s1bid1tLcgX8o8cpuJc6aaNjTkcwny7xckTz8hzyFw+ZQp/96SUsHabq9Xwv7oJ7KW/AI
 n3c=
X-IronPort-AV: E=Sophos;i="5.73,387,1583190000"; 
   d="scan'208";a="24308659"
Date: Wed, 13 May 2020 12:50:30 +0200
From: "Richard Leitner" <richard.leitner@skidata.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
CC: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
Message-ID: <20200513105030.GA225130@pcleri>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain>
 <20200513103944.5d7jjdnqs352htpy@qschulz>
MIME-Version: 1.0
In-Reply-To: <20200513103944.5d7jjdnqs352htpy@qschulz>
X-Originating-IP: [192.168.111.252]
X-ClientProxiedBy: sdex3srv.skidata.net (192.168.111.81) To
 sdex5srv.skidata.net (192.168.111.83)
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Wed, May 13, 2020 at 12:39:44PM +0200, Quentin Schulz wrote:
> On Wed, May 13, 2020 at 06:25:01AM -0400, Robert P. J. Day wrote:

...

> If it's really widely used, maybe something to add to
> openembedded-core/files/common-licenses/ ? So that you don't need any of
> the suggested ways?

+1 for adding Unlicense to openembedded-core's common-licenses

regards;rl

> 
> Quentin
