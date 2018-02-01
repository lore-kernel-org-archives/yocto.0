Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23B6DE00E4B; Thu,  1 Feb 2018 11:18:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D8BE00CE8
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 11:18:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w11JHw3n026768
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 1 Feb 2018 11:18:00 -0800
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 1 Feb 2018 11:17:56 -0800
To: =?UTF-8?B?5rC454Co5qGC?= <k-nagase@sec.co.jp>, <yocto@yoctoproject.org>
References: <20180130090752.2C12711804EE@ns.sec.co.jp>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <b0e8960d-2d6e-249c-7559-7762c84844cb@windriver.com>
Date: Thu, 1 Feb 2018 13:17:55 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20180130090752.2C12711804EE@ns.sec.co.jp>
Subject: Re: Installing Wind River Linux
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
X-List-Received-Date: Thu, 01 Feb 2018 19:18:07 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 1/30/18 3:15 AM, 永瀨桂 wrote:
> Hi,
> I'm trying to build the installer for using the WindRiverLinux9 with a  
> development board.
> 
> I want to build the installer's image using the Intel-corei7-64 BSP, but  
> I can't build wrlinux-image-glibc-small like in the guide below.
> https://knowledge.windriver.com/en-us/000_Products/000/010/050/040/000_Wind_River_Linux_Platform_Developer's_Guide%2C_9/0A0/020/020
> 

The question is specific to Wind River Linux, which is derived from the Yocto
Project, but is not the Yocto Project.

I'll respond in a separate email.

--Mark


