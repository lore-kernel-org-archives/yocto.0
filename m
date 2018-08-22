Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93E11E00AB3; Wed, 22 Aug 2018 08:11:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1017E00726
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 08:11:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7MFBFVE027867
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Aug 2018 08:11:15 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Wed, 22 Aug 2018 08:11:15 -0700
To: Sarayu Sivanandam <sarayu@m5nv.com>, <yocto@yoctoproject.org>
References: <CAG3Cyz9ZqDr1fH5PhctavTzTdD6CHYu1J4yuEvkCMvDWqTRUOA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <43ddb1df-5d4e-d077-f599-1739bb6b00bb@windriver.com>
Date: Wed, 22 Aug 2018 11:11:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAG3Cyz9ZqDr1fH5PhctavTzTdD6CHYu1J4yuEvkCMvDWqTRUOA@mail.gmail.com>
Subject: Re: LXD on yocto
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
X-List-Received-Date: Wed, 22 Aug 2018 15:11:18 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 08/22/2018 10:40 AM, Sarayu Sivanandam wrote:
> Hi all, Is anyone currently working on creating a recipe for LXD? I want 
> to create a recipe for LXD for my project and any inputs for the same is 
> welcome. Thanks and Regards

check on the meta-virtualization list. We already have lxc and the
support tools, and lxd has been discussed there in the past.

So asking there, will find you someone that may already have a recipe
or is working on one.

If you do write a recipe, meta-virt is the best place to send it, so
you'll be on the right list for that as well.

Bruce

> 
> Sarayu
> 
> 
> 
> 


