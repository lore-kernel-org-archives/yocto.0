Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a86.g.dreamhost.com (mailbigip.dreamhost.com
	[208.97.132.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696E9E01757
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 11:21:40 -0800 (PST)
Received: from homiemail-a86.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a86.g.dreamhost.com (Postfix) with ESMTP id 10125360160;
	Thu,  7 Nov 2013 11:18:19 -0800 (PST)
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a86.g.dreamhost.com (Postfix) with ESMTPSA id 6EBF8360245; 
	Thu,  7 Nov 2013 11:00:07 -0800 (PST)
Message-ID: <527BE335.70801@aeonyx.ca>
Date: Thu, 07 Nov 2013 14:00:05 -0500
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <5277EE4D.2080303@aeonyx.ca>
	<1383849935.5378.51.camel@dvhart-mobl4.amr.corp.intel.com>
In-Reply-To: <1383849935.5378.51.camel@dvhart-mobl4.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Deploying Yocto built images on x86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Nov 2013 19:21:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

Thanks for this, it is very informative and useful.
You've been me a good number of solid leads to follow.

> Where are you storing the image? SPI, SD, USB, SATA? Assuming SATA as
> you are speaking in highly general x86 terms, which typically means "PC"
> rather than deeply embedded.

You are right, in my case, the system will be based around an Intel Atom 
processor on a PC/104 motherboard, with an mSATA solid state drive. It 
will be more of a PC type box than a deeply embedded unit. The "one 
switch, one light" appliance-like behaviour is to simply usage in the field.


> OK, so the tool you are looking for is wic. Search the mailing list for
> specifics on the tool, and Cc Tom Zanussi (Cc'd) on questions about wic
> to the list (oe-core is probably the best list since the tool has been
> integrated there).

Thanks for the lead.
I'll have a look at WIC and go from there.

Thanks again & best wishes
Markus



