Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com (mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
 by mx.groups.io with SMTP id smtpd.web12.875.1575445600496057478
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 23:46:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=r+fU0oj1;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.1, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:cc:to:subject:from;
	bh=byO9w3Mok9Z5ZIBS+HXihePdLfUsAB+CiSR8/iVLRBs=;
	b=r+fU0oj1u5vsnzCHYfKriu7eA3jwdUt4g3kGoN75z5pqWXWp3yQFzXIVHtDpBjGY4+gL3FP2kM6GK
	 ZpHHjFvfgDcSVhCvw6qL/rLNxGYo9a2IpKT67tf9DITRtNJhk8Ps/8ghhngDGgAKhqr8OanMdl5IV4
	 C1TaF1lDJn8UUr73+DVVlMyhtKBq1mq50aNBx6enNivhVeNp/zMUSztGeh17Iq0RMh0H1YNBs9cUVB
	 7dyBiK1rthj99oTQQqO7boSYyGGHDM2qrmBY7zF+8CVUOwY4Ahu91ytjSJXCkRNvkk8YthtubUycdF
	 KKS0j8B23HbctOKg587gXiWbDGsFa0Q==
X-HalOne-Cookie: 4b00d6c4b1b53b8025827ce6929ccd2dfe216f9f
X-HalOne-ID: 332e96ba-166a-11ea-ba02-d0431ea8a290
Received: from [IPv6:2a00:801:250:52b2:3cfd:a524:6a2e:8f7f] (unknown [2a00:801:250:52b2:3cfd:a524:6a2e:8f7f])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 332e96ba-166a-11ea-ba02-d0431ea8a290;
	Wed, 04 Dec 2019 07:46:37 +0000 (UTC)
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Mike Looijmans <mike.looijmans@topic.nl>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
 <CADkTA4O_vBgX-PRssZbCgzMDsyVr6LyoscXEAe5qyHFCJPu+rw@mail.gmail.com>
 <25ffb320-1366-369c-c9f1-302fb8bcc07b@berginkonsult.se>
 <CADkTA4MPb9zU4mDr=Mn-3p_axr_uYrcvGaaMH5PSxoCcW3X1cw@mail.gmail.com>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <3a920499-aa9b-acce-7bae-c6a566ac2367@berginkonsult.se>
Date: Wed, 4 Dec 2019 08:46:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADkTA4MPb9zU4mDr=Mn-3p_axr_uYrcvGaaMH5PSxoCcW3X1cw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 2019-12-03 16:28, Bruce Ashfield wrote:
> I'm assuming that you mean those headers are in a separate package and
> are installed into the dependent packages sysroot (or the SDK in your
> descriptin) via other means that linux-libc-headers .. if so, yes,
> that is the right thing to do.
Thanks Bruce!

Yes my plan is to create a new package in the 'virtual/kernel' recipe 
where I add the additional files to '/usr/include/linux/' and then add 
that new package to my SDK (or the sysroot if needed).

Best regards,
/Peter
