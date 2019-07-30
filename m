Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C15F7E00D44; Mon, 29 Jul 2019 20:25:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D645E00D1C
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 20:25:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6U3P1rX009014
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 29 Jul 2019 20:25:17 -0700
Received: from [128.224.162.157] (128.224.162.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.468.0;
	Mon, 29 Jul 2019 20:24:58 -0700
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
	<80dad6f993d4420ec0f324fc2268d72218207e37.camel@intel.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <87d33e72-ec61-1014-245b-20cb33fb0a34@windriver.com>
Date: Tue, 30 Jul 2019 11:24:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <80dad6f993d4420ec0f324fc2268d72218207e37.camel@intel.com>
Subject: Re: [PATCH 1/3] intel-media-driver: check for "opengl" feature
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
X-List-Received-Date: Tue, 30 Jul 2019 03:25:45 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 7/29/19 9:12 AM, Mittal, Anuj wrote:
> Hi Hongxu
>
> I have merged these changes but could you send these to meta-intel list
> in future please?

OK, I got it

//Hongxu

> On Wed, 2019-07-24 at 18:11 +0800, Hongxu Jia wrote:
>> Since comit [a78c420 libva: check for "opengl" feature] applied in
>> oe-core,
>> and intel-media-driver depends on libva, it should check for "opengl"
>> feature too.
>>
>> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>> ---
>>   recipes-multimedia/libva/intel-media-driver_19.2.0.bb | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
>> b/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
>> index 8656992..8084567 100644
>> --- a/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
>> +++ b/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
>> @@ -14,6 +14,9 @@ LIC_FILES_CHKSUM = "
>> file://LICENSE.md;md5=6aab5363823095ce682b155fef0231f0 \
>>   # Only for 64 bit until this is resolved:
>> https://github.com/intel/media-driver/issues/356
>>   COMPATIBLE_HOST = '(x86_64).*-linux'
>>   
>> +inherit distro_features_check
>> +REQUIRED_DISTRO_FEATURES = "opengl"
>> +
>>   DEPENDS += "libva gmmlib"
>>   
>>   SRC_URI = "git://github.com/intel/media-
>> driver.git;protocol=https;branch=intel-media-19.2 \



