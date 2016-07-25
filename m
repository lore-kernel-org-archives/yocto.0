Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3ACBE00A03; Mon, 25 Jul 2016 07:07:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D3A4E009EF
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:07:57 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id q128so136584291wma.1
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=LhFL0/6fbK+jL1RCygtWWnuahJ8eaystVqNwx+7NYq8=;
	b=WBCf7Hr42ntaBEegLnzltSjy0lJ5QDvLKNlhIeO7Z2seFlJmINQ8J068dRO7D6bfQW
	l+BrEZPh9bEKqzutODRIXaeSRki/zOALsql+79rqLV55Pf5aoLbPRoA/5O2Jxi75DygL
	b7OEwWY+OMkov8iCQ+BpnwFO4CxUYZHxlqMb/HOFn03BLXdHEkxRjMunqInwIA9juiqf
	Yqo0kNU+2kBrsbsYMLecvMaAEjGp/8JKixLvR0ff7d5Cvr1CooZ9OBEcFa9T8UCGMieB
	pukePVWgi2AkQiGDIeKOxxnM0Lxl4gZ9dtcJpGP0Z5PJr4KoRrH6HNz0ORJ2R99VmkY4
	QKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=LhFL0/6fbK+jL1RCygtWWnuahJ8eaystVqNwx+7NYq8=;
	b=k+J73gfxCqEddvvWhp3i+Ma8QRqDm4HESRO5dilsMbDK42p82sAbWTIbfQkIgxV3Fe
	XbP9YxWT9GwaJsS26PL796ugdlfnyEoqsAPYKD/Szji5mHsRY7CeKr5+oNgBb9OZiBId
	3giIlrF8apW6UO0z7eE0l7NZR2NDE4G5x+rxcv+RCPL/489+E45VytIFw/x1s3gBJzAC
	sT6KW2fPajB8y0ijOM93FFRpx1kTHqHNOazeMTZcEGwbfp8tXl4SxoEWlh9gnVw2rJhn
	VaxyWmb4Aa3C1pIFi+WzcBMCqwmzHgTalEsQm+4R42Q3mL8160Z/47Hj/q3w84F64ck7
	u9cA==
X-Gm-Message-State: AEkooutk8oBzGpHADm3Gkk6Lv6GuET2W+tDqAa1dmk7lU1QiDnznMU4h1dP5FdA1ff5xWQ==
X-Received: by 10.194.240.4 with SMTP id vw4mr17098837wjc.22.1469455677002;
	Mon, 25 Jul 2016 07:07:57 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	207sm27604341wmb.7.2016.07.25.07.07.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Jul 2016 07:07:54 -0700 (PDT)
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b44125f5-8305-978c-2282-01e54add131d@elfin.de>
	<b85c6663-e050-6729-a639-672c1d6af55f@linux.intel.com>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <c43b98f7-117e-55d6-1446-653db31b9f2b@elfin.de>
Date: Mon, 25 Jul 2016 16:07:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <b85c6663-e050-6729-a639-672c1d6af55f@linux.intel.com>
Subject: Re: changing ownership of a file in a package
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
X-List-Received-Date: Mon, 25 Jul 2016 14:07:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Thank you. I will try this, but I wonder what is the right way of 
dealing with that when I want to change the ownership of let's say 2 
files from different packages to a user that I create?

Is using "useradd" possible in 2 separate recipes (to create the same user)?



Thanks,

Piotr



On 25.07.2016 15:58, Leonardo Sandoval wrote:
> As a workaround, have you tried using the other class to include users 
> (useradd)? Look at the 'note' of this section
>
> http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-extrausers 
>
>
> Leo
>
>
> El 07/25/2016 a las 07:22 AM, piotr.lewicki escribió:
>> Hi,
>>
>> I have a package where I want to install some files into a home 
>> directory of a user "testuser". I create a user in my image bb file 
>> using "extrausers".
>>
>> My problem is that I'm unable to change ownership of those files from 
>> root to the testuser.
>>
>> Simple "chown testuser:testuser -R /home/testuser" inside do_install 
>> task makes those files being owned by "nobody".
>>
>> How can I manage ownership of those files properly?
>>
>>
>>
>> The recipe is like so:
>>
>> DESCRIPTION = "Files installed in testuser user home directory"
>> LICENSE = "CLOSED"
>>
>> SRC_URI += " \
>>            file://authorized_keys \
>>            file://bash_profile \
>>            file://bashrc \
>>            "
>>
>> do_install(){
>>     install -d ${D}/home/testuser/
>>     install -m 0644 ${WORKDIR}/bash_profile 
>> ${D}/home/testuser/.bash_profile
>>     install -m 0644 ${WORKDIR}/bashrc ${D}/home/testuser/.bashrc
>>
>>     install -d ${D}/home/testuser/.ssh
>>     install -m 0644 ${WORKDIR}/authorized_keys ${D}/home/testuser/.ssh/
>> }
>>
>> FILES_${PN} = "/home/testuser"
>>
>>
>> Thanks,
>>
>> Piotr
>>
>


