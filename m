Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 476A9E0084D; Tue, 16 Sep 2014 22:53:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA0BE00786
	for <yocto@yoctoproject.org>; Tue, 16 Sep 2014 22:53:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s8H5rFTu010014
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 16 Sep 2014 22:53:15 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Tue, 16 Sep 2014 22:53:14 -0700
Message-ID: <541921C9.4010900@windriver.com>
Date: Wed, 17 Sep 2014 13:53:13 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>
References: <1410177817-19839-1-git-send-email-flihp@twobit.us>
	<54131665.6090909@twobit.us>
In-Reply-To: <54131665.6090909@twobit.us>
X-TagToolbar-Keys: D20140917135313276
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/3] Version number cleanup
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
X-List-Received-Date: Wed, 17 Sep 2014 05:53:31 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-9-12 下午11:51, Philip Tricca 写道:
> Hello Xin,
>
> Just noticed that you pushed these patches to the meta-selinux repo but
> with your name and a slightly different commit message in one case.
> Other than forgetting to copy you on my initial message to the list was
> there a problem with my patches? Just want to be sure that the next time
> I send out patches I get them right if there was in fact an issue with
> these ones.
>

Hi Philip,

I'm sorry that I had missed your mail before pushing.

I used to do small fixes with diectly pushing and not sending review in 
the maillist, that's why I missed your mail. In the future commits, I 
will send reivews and check the maillist carefully to avoid similar missing.

Thanks you for your contribution to meta-selinux. :)

- Pascal

> Thanks,
> Philip
>
> On 09/08/2014 08:03 AM, Philip Tricca wrote:
>> Patch set to use wildcards in the version numbers of the at and shadow
>> bbappends and to remove the 3.4 kernel bbappend.
>>
>> Philip Tricca (3):
>>    shadow: Use wildcard for version number in bbappend.
>>    at: Use wildcard for version number in bbappend.
>>    linux-yocto: Remove bbappend for old 3.4 kernel.
>>
>>   recipes-extended/at/at_%.bbappend               |    7 +++++++
>>   recipes-extended/at/at_3.1.14.bbappend          |    7 -------
>>   recipes-extended/shadow/shadow_%.bbappend       |    5 +++++
>>   recipes-extended/shadow/shadow_4.1.4.3.bbappend |    5 -----
>>   recipes-kernel/linux/linux-yocto_3.4.bbappend   |    7 -------
>>   5 files changed, 12 insertions(+), 19 deletions(-)
>>   create mode 100644 recipes-extended/at/at_%.bbappend
>>   delete mode 100644 recipes-extended/at/at_3.1.14.bbappend
>>   create mode 100644 recipes-extended/shadow/shadow_%.bbappend
>>   delete mode 100644 recipes-extended/shadow/shadow_4.1.4.3.bbappend
>>   delete mode 100644 recipes-kernel/linux/linux-yocto_3.4.bbappend
>>
>
>


-- 
- Pascal

