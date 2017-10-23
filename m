Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D42DE00928; Mon, 23 Oct 2017 12:44:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83B58E00708
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 12:44:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v9NJiGkb017116
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Oct 2017 12:44:17 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 23 Oct 2017 12:44:16 -0700
To: vishal ashapur <vishalashapur@gmail.com>
References: <CAAWyHBL094mGuwrWkcO4GhCEp+honQ+9zV8Y04bEugGjV3uhSQ@mail.gmail.com>
	<CAAWyHBKp8tNACEFR6xfDp6qKAzUKYyVrH9PuG0xajLz=FHyUMA@mail.gmail.com>
	<CAAWyHBLAwfw-JDA8HFqAeUWJyCysv2Bn3RcswfTqftHxZ+USXA@mail.gmail.com>
	<CAAWyHB+vgT1nZmpXXqWoF4iME-VVYtGeLsoSF7dRqwdfEniuwg@mail.gmail.com>
	<CAAWyHBJiYDx=+90--zJrEoPFUcU=3c0J3-qkXjjiFj_eu6pftQ@mail.gmail.com>
	<CAMKF1sqLnq1pGKjjnNNgN=j+kqX-QBFVFpsGC4zSa8Rvqn7hQQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <40186177-fde5-1edc-63ac-4e88b83c3004@windriver.com>
Date: Mon, 23 Oct 2017 15:44:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqLnq1pGKjjnNNgN=j+kqX-QBFVFpsGC4zSa8Rvqn7hQQ@mail.gmail.com>
X-Originating-IP: [172.25.44.7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling_gcc
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
X-List-Received-Date: Mon, 23 Oct 2017 19:44:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2017-10-23 01:17 PM, Khem Raj wrote:
> On Mon, Oct 23, 2017 at 4:52 AM, vishal ashapur <vishalashapur@gmail.com> wrote:
>> Hi
>> I'm building a Linux kernel from yocto, on which I have to enable gcc. Can u
>> please tell me how to enable gcc. And also usb_modeswitch package
> 
> it uses gcc, I think you need to clarify your question a bit so
> someone can provide you help.
> 

Do you mean that you want the compiler in the target image?

If so, add:
   IMAGE_INSTALL += "packagegroup-core-buildessential"
to your conf/local.conf file.


../Randy


FYI, I looked-up that up in WR's distro feature:
 
https://github.com/WindRiver-OpenSourceLabs/wr-base/blob/LB21_7.0_RCPL0002/templates/feature/target-toolchain/image.inc
since I know it well. :)

I didn't quickly find it in the YP manual:
   http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html
but it should be there.

-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

