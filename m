Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 972C94C81065
	for <yocto@yoctoproject.org>; Mon, 17 Jan 2011 11:02:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HH2nfA027216
	for <yocto@yoctoproject.org>; Mon, 17 Jan 2011 09:02:49 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 09:02:48 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 09:02:48 -0800
Message-ID: <4D347638.3000000@windriver.com>
Date: Mon, 17 Jan 2011 11:02:48 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4D33CFB0.1030701@windriver.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com>
X-OriginalArrivalTime: 17 Jan 2011 17:02:48.0854 (UTC)
	FILETIME=[5E80BB60:01CBB668]
Subject: Re: Status for lsb test (2011.1.10-2011.1.14)
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
X-List-Received-Date: Mon, 17 Jan 2011 17:02:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/17/11 10:21 AM, Stewart, David C wrote:
> Thanks for sending.
> 
>  
> 
> I am surprised that QT3 is included in LSB. We're at QT4 now I believe.
> 
>  
> 
> For those who care about LSB: Are we OK with that failure?
> 

Unfortunately QT3 _and_ QT4 are both required by the LSB.  So we will need to
correct the issues in order to pass the certification suite.

--Mark

> 
> Dave
> 


