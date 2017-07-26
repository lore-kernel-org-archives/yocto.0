Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8855CE00C69; Wed, 26 Jul 2017 12:23:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2146DE00C5D
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 12:23:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6QJNn0T001859
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jul 2017 12:23:49 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 26 Jul 2017 12:23:48 -0700
To: Riko Ho <antonius.riko@gmail.com>, Josef Holzmayr
	<holzmayr@rsi-elektrotechnik.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
	<3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
	<118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <515b47cb-90af-21e0-7e40-2af2be9326ce@windriver.com>
Date: Wed, 26 Jul 2017 15:23:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
X-Originating-IP: [172.25.44.7]
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Wed, 26 Jul 2017 19:23:58 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2017-07-26 02:09 AM, Riko Ho wrote:
> How can we do that ?
> 
> bitbake in which node ? I don't understand ?
> 
> 
> On 26/07/17 13:57, Josef Holzmayr wrote:
>> Hi
>>
>> On 26.07.2017 05:12, Riko Ho wrote:
>>> Does anyone know on how to run poky on mpich cluster ?

That's a rather ambiguous question.

What OS/Distro is the mpich cluster running?
Have you installed the packages that are required on the host:
    see: "The Build Host Packages" here:
 
http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html

What do you hope to achieve using bitbake?

>>
>> As far as I can see, MPICH is a userland library, basically. So it 
>> would be the other way round, you could probably run a mpich 
>> application on a number of nodes that run some OE/Poky thing.
>>
>> Greetz

There is an mpich recipe here:
http://layers.openembedded.org/layerindex/recipe/33348/

but again, it's not clear what your ultimate goal is.

../Randy

> 
> -- 
> *
> 
> /*******/
> Sent by Ubuntu LTS 16.04,
> Kind regards,
> Riko Ho
> /*******/
> 
> *
> 
> 


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

