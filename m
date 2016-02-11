Return-Path: <Fahad_Usman@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 017FDE00BB6; Thu, 11 Feb 2016 02:47:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D9FE00B9C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 02:47:03 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aTom6-0000GO-PW from Fahad_Usman@mentor.com ;
	Thu, 11 Feb 2016 02:47:02 -0800
Received: from [137.202.156.162] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Thu, 11 Feb 2016 10:47:01 +0000
To: <ed.bartosh@linux.intel.com>
References: <56BB7201.4080904@mentor.com>
	<20160211063627.GA4868@linux.intel.com>
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
Message-ID: <56BC66A1.7090605@mentor.com>
Date: Thu, 11 Feb 2016 15:46:57 +0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160211063627.GA4868@linux.intel.com>
X-Originating-IP: [137.202.0.76]
Cc: yocto@yoctoproject.org
Subject: Re: wic: Setting partition id value?
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
X-List-Received-Date: Thu, 11 Feb 2016 10:47:05 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2016 11:36 AM, Ed Bartosh wrote:
> This is not supported by wic, but shouldn't be hard to implement.
> Please create an issue in bugzilla and assign to me if you want me to
> do it.
Thanks Ed,
I have created this bug, 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=9096. Do let me know 
if you need any more information.

--
Regards,
Fahad.

