Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10194.1580650541195050100
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 05:35:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=eupj6ZCx;
 spf=neutral (domain: stusta.de, ip: 140.211.169.56, mailfrom: bunk@stusta.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E9DCE014B6; Sun,  2 Feb 2020 05:35:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 412 seconds by postgrey-1.32 at yocto-www; Sun, 02 Feb 2020 05:35:37 PST
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DEF6E0049C
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 05:35:37 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 489Wxk1YXSz23;
	Sun,  2 Feb 2020 14:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1580650122;
	bh=YohtYfJ+B60L4IE5NTQLjILJwGe0o4XglQcfMndgPwA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eupj6ZCxB2RmSOrMf/s3EX0qxyYdhnrUqeu28SR/A0e4wpU98UGQaDMR71ybCoyDW
	 +h9VRp1jxL/gjEgp9gs26rhKKimGlu2phXyzHm1RUPS9YrxlVNkdvBXa3F6yh96Huj
	 YRKZblxfyFVDigBouhteHlTaSN7VQNGFiVy4zBrRt5FfHzrjQ6UETNlld29xkDgzmC
	 fUf+n5+jDkDZw5ITBprxdlW0BK93MKxDuVe6WfvkKI63+fGEfbxFO+TSqEg73P2jE4
	 kLt1VHaEm9iSvT+EjX3LsC++7Jblw8zXwtMNPuZg9zxKf0W3RLocbBhT3l+zVGCpRI
	 NnSkQucxKmbutfWrXydIom2eIkWU5qBBsL7ZSleI3tFr6VuepT38bERKwmsYUnoquF
	 tt0Y2JjLIOiNwSWhBznt5tP7Kkr89rQ1PpNTOdWRRdbzhCF4gjy8KuehxXTTdZQMVo
	 bWGcf2DZiICz8Z7GK6344h2nOhl4ZINaFGjKsUGKDvW4x+SX9N/RAGPY/PRcJei4kD
	 BFR7AcfVFmjSNtih9ivBQmnUkROIqNIVWHrL0T2dMHlc9KesZePFQMsYJIW/7bizJr
	 SCQW5YOyEKJUwm4Mwdp/eI7gZKS45TBQrOP1O+e0R9nbzTV3z/PBrz1fXsJPfl8ug9
	 FmGua218HtAgaTeppDCqX808=
Date: Sun, 2 Feb 2020 15:28:40 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Stephen Jolley <sjolley.yp.pm@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Project Status WW04'20
Message-ID: <20200202132840.GA6805@localhost>
References: <086201d5d5f4$307b2150$917163f0$@gmail.com>
MIME-Version: 1.0
In-Reply-To: <086201d5d5f4$307b2150$917163f0$@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
>...
> *	We have created a "documentation" list and a "licensing" list on the
> yocto project mailing list infrastructure. We believe these topics would
> benefit from dedicated discussions, the people involved usually aren't
> interested in bulk email as would be found on other lists. The new lists can
> be found at:  <https://lists.yoctoproject.org/g/licensing/join>
> https://lists.yoctoproject.org/g/licensing/join and
> <https://lists.yoctoproject.org/g/docs/join>
> https://lists.yoctoproject.org/g/docs/join 
>...

Would it be possible to also create a yocto-devel or yocto-core
mailing list for discussing development of Yocto?

Currently the yocto list is a mixture of core development list and forum 
for newbie user questions, with no easy way to have them separate.

Thanks
Adrian
