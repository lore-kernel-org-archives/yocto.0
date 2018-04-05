Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8546E00938; Thu,  5 Apr 2018 02:17:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95AB1E00857
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 02:17:32 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2018 02:17:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,410,1517904000"; d="scan'208";a="40877300"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 05 Apr 2018 02:17:30 -0700
To: Aditya Tayade <Aditya.Tayade@kpit.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <8bd8e35e-d5d6-004c-4330-4f07a7259253@linux.intel.com>
Date: Thu, 5 Apr 2018 12:11:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with dropbear provided by dropbear-2017.75-r0.i586
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
X-List-Received-Date: Thu, 05 Apr 2018 09:17:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 04/02/2018 01:38 PM, Aditya Tayade wrote:
> I trying to build core-image-sato using yocto 2.5 with new package openssh.
> 
> 
> Added openssh entry in the local.conf file as follows:
> 
> IMAGE_INSTALL_append = "openssh"
> 
> 
> But facing some conflicts error. Please refer attached log file for more 
> information.
> 
> 
> Could you please help to resolve the issue. I need to use use openssh 
> for ssh rather than dropbear.

Core-image-sato specifies dropbear as the ssh server. You need to make 
your own image recipe (you can copy core-image-sato as a starting 
point), and then tweak it the way you need.

Alex

