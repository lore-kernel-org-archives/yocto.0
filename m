Received: from resqmta-ch2-01v.sys.comcast.net (resqmta-ch2-01v.sys.comcast.net [69.252.207.33])
 by mx.groups.io with SMTP id smtpd.web11.6258.1596489607530420133
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Aug 2020 14:20:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=BRZenkjz;
 spf=pass (domain: comcast.net, ip: 69.252.207.33, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-10v.sys.comcast.net ([69.252.207.106])
	by resqmta-ch2-01v.sys.comcast.net with ESMTP
	id 2hoJkm3X6HaS82hsMkAP8x; Mon, 03 Aug 2020 21:20:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596489606;
	bh=9huz0RC4MryXxwMWPeXhwC8l8+YZrOMVb4f/thUbUnQ=;
	h=Received:Received:Subject:From:To:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=BRZenkjzi5tY6OBgExMwFRNzHyPuYsQdmAUwugHW9L/2LW3X1URv67t33vGQcPhjE
	 Y5Zyc+sQAdVQ/rgafSm1eM85nvlwlJfRoGN8BsSeZoTUD3ovth35F7KqRmphKywmmV
	 FKjEqeqKSs/977OXdfJYpVIwnr0PTW7an7Y2opoEbOPVCTmd20F8qUz5+li1qnacdO
	 iIZBvJ4F/esquEvHCdkqlgkUId+oFUuqWO7wciiZI4hUbtEzpcDlr7sU11xpQqTKig
	 +qh4MHvCpowQ6qa4JEUXZ8KUVnT4+mpXdNqY9hVjCEldDE8JlSiE0tvy4/o3+9ccH1
	 UhMGJuSKeH2jw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-10v.sys.comcast.net with ESMTPSA
	id 2hsJk7y8vUu2G2hsLkey0v; Mon, 03 Aug 2020 21:20:05 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrjeeggdduieduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefuhffvfhfkffgfgggjtgfgsehtkeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeejuefhfffhvddtudegveektdetuedukeeuheegtdfgfeetteefhfdvuedvjeevffenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
Subject: Re: [yocto] any kernel changes break module sysmtable
From: "Rob Prowel" <rprowel@comcast.net>
To: yocto@lists.yoctoproject.org
References: <1627D58F502E7AF2.7332@lists.yoctoproject.org>
Message-ID: <ed02c397-d38f-cc0b-a405-1a63990b60d2@comcast.net>
Date: Mon, 3 Aug 2020 17:20:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1627D58F502E7AF2.7332@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2020-08-03 14:30, Rob Prowel wrote:
> More hassle dealing with vendor supplied yocto distro.
> 
> In the original "sumo" yocto release that the vendor sent us I could 
> easily change their static flash image to a rootnfs image and tftpboot 
> the kernel, bitstream, and DTB, and use nfs as a root filesystem.  This 
> works great for development and not having to constantly go thru the 
> slow flash update process.
> 
> Problem is that their updated release (also sumo) breaks any time I 
> introduce a new kernel fragment like turning on rootnfs.  The resulting 
> image will boot but all attempts to modprobe or insmod any modules 
> result in the error
> 
> [    8.237421] xxx_dev: disagrees about version of symbol module_layout

Make a note!

Always double check the name and version of the kernel you are booting 
against the one you THINK you are loading.  This becomes particularly 
easy to screw up when doing nfs or tftp boots.

Problem was of my own doing:

concatenating a lengthy u-boot string I used ${name} instead of 
${hostname} so the wrong kernel was being tftp loaded...and I didn't 
catch this for a week!

problem solved!
