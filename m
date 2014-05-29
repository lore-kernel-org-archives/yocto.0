Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25253E00B68; Thu, 29 May 2014 08:07:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mxout-08.mxes.net (unknown [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BEBDE00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 08:07:15 -0700 (PDT)
Received: from [192.168.0.11] (unknown [50.52.11.43])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 138CB50A85
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 11:07:14 -0400 (EDT)
Message-ID: <53874D1F.8090504@bsmucker.eu.org>
Date: Thu, 29 May 2014 08:07:11 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <537F9583.50407@bsmucker.eu.org>
In-Reply-To: <537F9583.50407@bsmucker.eu.org>
Subject: Re: Yocto with Initial RamFS
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
X-List-Received-Date: Thu, 29 May 2014 15:07:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Was wondering why this has not been answered.  Maybe it is too dumb of a 
question? If so, let me know or point me to some documentation.

Thanks.

Brian

On 5/23/2014 11:37 AM, Brian Smucker wrote:
> Hello,
>
> I have an initial ramfs image that I want to convert to Yocto. That is 
> in addition to the main yocto-based custom distro.
>
> The initial ram fs is a tiny image based on uclibc (poky-tiny) and 
> having busybox and two other compiled apps.  The main file system is 
> eglibc-based.
>
> How is this sort of thing typically done in the Yocto world? Since the 
> toolchain is totally different for the initial ramfs, do I need to 
> have another distro and totally different directory for creating the 
> initialramfs, giving two different distros and yocto directories?  Or 
> can I somehow do it under the umbrella of one Yocto distro?
>
> I would like some feedback on how this should be done.
>
> Thanks,
>
> Brian


