Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.46.1612478401605814693
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 14:40:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=WAymxzvt;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 9C947BD06F;
	Thu,  4 Feb 2021 22:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 9C947BD06F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1612478399;
	bh=FM8XOdGa0gNJ2UtzR4iL/G6HzNCQgu5cqAaH49MyrUE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WAymxzvt4u4zF9xVPoE+ml3tfDDzz3UC62X3i5+k9GTSdREO64l1gxsx9SRMzxv4x
	 LkwuWQAN+IpMsjg9p7Z45VQPm18vztl9b9H1k+b3YT6OxtQGV8tK0CYmBWbSAwMR66
	 eCwrvD6EpRBWj8eFLOpQk3lQmc2btu4hzLZYJK1K9qCnmSaypn82lYzxUELbsExhy6
	 JfLa5pq18r2wblmp801OgitpoVjFzHe3SdvM5bc4AS9AlHkyle8BVlnFK2Yn5EcmxC
	 UcOv+yjBU7Ae+CG4ChkFS87RQHPkfV/l8vi73sq8rER8/ME5spAbqXJwUdBBEKjLUl
	 lwJ07MJKb7agw==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-uo8QL4y3gC; Thu,  4 Feb 2021 22:39:55 +0000 (UTC)
Date: Thu, 04 Feb 2021 17:39:55 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net D71EEBD022
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1612478395;
	bh=FM8XOdGa0gNJ2UtzR4iL/G6HzNCQgu5cqAaH49MyrUE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fhqD+96fz+m/4PEkejrObP1DmamYGx372p1Q6QwSZqaJM3iWhwu8M/Pf6S8Nphoxl
	 44EmqnZzGMw9RJLqDOhdk6JndsfUo2VRm02cNO4knS70vM4YO0I8Xp3j3HwRWpEZV2
	 aqqoiPQj9QI3NIFEHlv6RaLSb8grUyDWlVwai2WmDToIgMzCiTGQ3LnSIlYo5tq5HI
	 3mafL8wwoIlx7gazFqhVwo4ZFFQHXOr2M1tjMJcac3XYIts7efJyH0rUQt7Ciu8vjc
	 k3w5ut/OTFJ3RDr6DUHF8GSu6hwlx6DbI3RTA7cR3eeUFtVbjMyUCmDxYsMAMaLfxp
	 9iPpTrTm4FjZg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: jchludzinski@vivaldi.net
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] RT patch for 5.4.74?
In-Reply-To: <1660AB7B19F04B29.20430@lists.yoctoproject.org>
References: <1660AB7B19F04B29.20430@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <73695736cd2d0a7d20ba76d3e22f5366@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

 From Altera/Intel?

On 2021-02-04 17:20, jchludzinski via lists.yoctoproject.org wrote:
> Is there an RT patch for 5.4.74?
> (I've used patch-5.4.44-rt27.patch.)
> 
> ---John
> 
> 
> 

-- 
NULL
