Received: from resqmta-ch2-01v.sys.comcast.net (resqmta-ch2-01v.sys.comcast.net [69.252.207.33])
 by mx.groups.io with SMTP id smtpd.web10.10558.1596731838281859716
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 09:37:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=mZ7FjUjn;
 spf=pass (domain: comcast.net, ip: 69.252.207.33, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-07v.sys.comcast.net ([69.252.207.103])
	by resqmta-ch2-01v.sys.comcast.net with ESMTP
	id 3hW0kpaSyHaS83itJkHr6K; Thu, 06 Aug 2020 16:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596731837;
	bh=6iSVcVGxu0pgZlWbWapUdVuLDYJHLfWhrRFTXrIOM0c=;
	h=Received:Received:Subject:From:To:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=mZ7FjUjnhIqBJHVQIf/VPyqHuvd+APPuVvSbjXSKfbZ4W5efJ5Cf8WYX34tDXeQwY
	 KIImWfG5XYVOsOQ8S+qAMc5enp6uYq9iMjxHibwIzGwDCtzZZgvQNAlLWPM3vA9a6U
	 rkmDBxN48ZsR3hms09edy6o8gaD1OZD+RR0yWBgF0IKnA7JkFNpQVxd8pn04Hzim6V
	 66+aeaDchexmfr3ixCrLPMjl31oM4iAKK3smVJwcgK9CEHzwMDGQRLygW8PimHLj1x
	 5w85Xw0tYXXEXBVqjmcgMvuwfHxWqvaG2ZMFTk0s59JA4724mxGB+rdf1agVbZZlHm
	 8oxWOdaw9tGvw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-07v.sys.comcast.net with ESMTPSA
	id 3itHkHCRuNxwX3itIkPXSu; Thu, 06 Aug 2020 16:37:17 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrkedtgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefuhffvfhfkffgfgggjtgfgsehtkeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeejuefhfffhvddtudegveektdetuedukeeuheegtdfgfeetteefhfdvuedvjeevffenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
Subject: Re: [yocto] out of kernel custom module build fails
From: "Rob Prowel" <rprowel@comcast.net>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <1628B85095AAFBAF.11636@lists.yoctoproject.org>
Message-ID: <b5d9e9cd-b868-6945-1756-82defd0b94b8@comcast.net>
Date: Thu, 6 Aug 2020 12:37:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <1628B85095AAFBAF.11636@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2020-08-06 11:45, Rob Prowel wrote:
> the important bb file content is:
> 
> inherit module
> SRC_URI = "file://Makefile \
>             file://customslip.c \
>             file://customslip.h \
>             file://COPYING \
>            "
> S = "${WORKDIR}"
> 
> RPROVIDES_${PN} += "kernel-module-customslip"
> 
> ------------------
> What yocto override variable can I set in the bb to make it not care 
> what the localversion appended to the kernel name is?
> 

adding DEPENDS_${PN} = "virtual/kernel" seems to have fixed this (making 
the kernel build the single dependency?), but the more important 
question is whether that is the "right" way to fix it.

