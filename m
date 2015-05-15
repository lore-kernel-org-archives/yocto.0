Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4912AE009E1; Thu, 14 May 2015 19:54:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF390E009C1
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 19:54:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t4F2sQq2005273
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 May 2015 19:54:26 -0700 (PDT)
Received: from [128.224.163.153] (128.224.163.153) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Thu, 14 May 2015 19:54:25 -0700
Message-ID: <55555FE4.7060902@windriver.com>
Date: Fri, 15 May 2015 10:54:28 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ash Charles <ashcharles@gmail.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
In-Reply-To: <CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
X-Originating-IP: [128.224.163.153]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Fri, 15 May 2015 02:54:29 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/15/2015 02:21 AM, Ash Charles wrote:
> On Wed, May 13, 2015 at 7:26 PM, ChenQi <Qi.Chen@windriver.com> wrote:
>> For the nativesdk part, we can use smart/rpm to manage packages. A long time
>> ago, I tried this out and succeeded.
>> However, for the target part, we cannot do the same thing as the rpm
>> database for the target part is not usable after installation. I once tried
>> to solve this problem but failed.
>> You can have a little try and if you have some good news, let me know.
> Thanks for your response.
>
> I've not been able to use smart to install packages even on the
> nativesdk part---could you explain your steps?

I can recall that I used something like `PSEUDO_xxx=xxx PSEUDO_xxx=xxx 
smart(or rpm?) ... --data-dir=xxx <command>'. But I don't remember 
whether I tweaked something else. Sorry :(
That's really a long time ago and I didn't write a document at the time.

> What are the barriers to using the RPM database for the target part?

The rpm database is not usable. You do a query to list files that a 
package installed and you will find all the paths are not correct.

We are now working a new kind of SDK in OE. We call it extensible SDK. 
By design, its components could be updated/installed/removed using 
sstate objects. The task is not completed yet, but we are working on it.

Regards,
Chen Qi

>
> --Ash
>
>


