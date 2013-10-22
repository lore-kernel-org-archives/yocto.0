Return-Path: <cristiana.voicu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64BE6E01730
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 03:31:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Oct 2013 03:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="311019859"
Received: from cvoicu-vostro-460.rb.intel.com (HELO [10.237.105.65])
	([10.237.105.65])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Oct 2013 03:31:47 -0700
Message-ID: <52665531.2010205@intel.com>
Date: Tue, 22 Oct 2013 13:36:33 +0300
From: "cristiana.voicu" <cristiana.voicu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Houkes, Bart" <bart.houkes@sogeti.nl>
References: <FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE5C@SOGMB1.SGTI.NL>
In-Reply-To: <FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE5C@SOGMB1.SGTI.NL>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remote debugging with Yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 10:31:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bart,
On 10/21/2013 07:31 PM, Houkes, Bart wrote:
> Hi,
>
> 2 issues are blocking for my development:
>
> last few weeks I was able to download my own kernel on the ARM board with SAMA5d3S.
>
> However, with HOB I cannot add TCF-agent or any other project.. HOB will give some error, becomes red and stops. I cannot compile anymore.
>
> I need TCF-agent to do remote debugging.
Regarding tcf-agent, you can find documentation at 
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#getting-the-images.
If you already have tools-debug as extra feature in local.conf, and you 
receive an error in Hob, can you please provide a screenshot with it?

Cristiana
>
> Another:
>
> There are some presentations about standard projects. How about kernel drivers with cross compilers or Video 4 Linux. How to start those projects?
>
> greetings,
> Bart
> bart.houkes@sogeti.nl
>
> Disclaimer:
> This message contains information that may be privileged or confidential and is the property of Sogeti Nederland B.V. or its Group members. It is intended only for the person to whom it is addressed. If you are not the intended recipient, you are not authorized to read, print, retain, copy, disseminate, distribute, or use this message or any part thereof. If you receive this message in error, please notify the sender immediately and delete all copies of this message.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto




