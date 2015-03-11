Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D961E0077E; Wed, 11 Mar 2015 05:21:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DF8E0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:21:01 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t2BCKx3K010205
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Mar 2015 05:20:59 -0700 (PDT)
Received: from server.local (128.224.20.155) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 11 Mar 2015 05:20:59 -0700
Message-ID: <5500332A.3070803@windriver.com>
Date: Wed, 11 Mar 2015 08:20:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Albert K <alberk@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CACjDgAN7MoZyR8JY=Y8SFGBFCU7w4ogNimJOJFaoy+2Yx9JRbQ@mail.gmail.com>
In-Reply-To: <CACjDgAN7MoZyR8JY=Y8SFGBFCU7w4ogNimJOJFaoy+2Yx9JRbQ@mail.gmail.com>
Subject: Re: Set Default Kernel Version Q
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
X-List-Received-Date: Wed, 11 Mar 2015 12:21:06 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-11 4:47 AM, Albert K wrote:
> Hi,
>
> I have set the PREFERRED_VERSION_linux-yocto = "3.17%"  in the
>
> ~/porky/build/conf/local.conf but it does not seem to be working.
> Where can I set so that the default kernel version is used (currently
> is compiling with kernel 3.14 with dizzy).   Thanks.

Try making the override board specific, there's nothing special about
the way that the kernel preferred version works compared to other
variables.

So if you are building qemux86 (as an example), just do:

PREFERRED_VERSION_linux-yocto_qemux86 = "3.17%"

and assuming that the 3.17 recipe is available, it will work
(that's cut and pasted from my local.conf :)

Cheers,

Bruce


>
> Regards,
> Albert
>


