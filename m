Return-Path: <emilmih@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20932E009EF; Fri,  6 May 2016 12:09:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (emilmih[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD11FE008B8
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 12:08:58 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id i5so10986219pag.3
	for <yocto@yoctoproject.org>; Fri, 06 May 2016 12:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=/PRYLlYp+UBOcrvKR3Mj3LhC765IIE/nOR74QzdWYNA=;
	b=D8DzM3xAmrmSZGyvDopVu3/mtZX67SBCuZE899eoUuix1KZJjiZxVc81IHl9Gh1neq
	x+YbhnJa58WBAG6RYCsyaLjiKycXyCy0g6q/p51tfrVLQRXJNjYTMU52ZOOFec6CUF9z
	FVuhN+hCm617f6WiJEyWqu4CC+mZMK5aVL2cLaocIhHvGl69bNutZe6V/zz5yU8iaePB
	IHsG7K+iIJX2InshSG4VIKKGq38nEc4snopbqpe3dvJh3YuFbB0EI0lOHKpWfuVjd5uT
	sXtv53ymO8sZhedpLb1YHZREvDk9pCauGzBKYRMRcthpLN+TC+JId6BepCOAy9/tMkE8
	Ymxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=/PRYLlYp+UBOcrvKR3Mj3LhC765IIE/nOR74QzdWYNA=;
	b=bm2L3koQIzOJBCPHAJW3YawuYjpLvXb2F3VEWL54RM947zKdXy0i+VzXrsELlmDZ5m
	VpxctnS74NAYhlODIiffFkDtX8iX2cV27105bWYk01HV1vLiWt13MTWmv+TvrJln05mX
	4QDCf/gmGnEz9LG/jYHDGwLHo/kS2nVMyjzoC7SaAutSA8xRmRRRM4oGuDwGBxElbhV8
	VePvI5etpVJi3TP6uC7/HcPPLFF5W2MsLIOHZWj8jsS8m1CAWlpkNZldCUdyXqWpKs3L
	Wp2lAQKQKQSDjVeCJxWMjh9LEq4coHZgVGGMuKujjmhYYI9o/sWUo+2YuZl/wy/t2Ays
	iibA==
X-Gm-Message-State: AOPr4FUmvAAEAyBrpbehhvbAPmuTwIZkggniSCXt6Y/0d3KcgyhvT+u1fjbQClJjitJiuQ==
X-Received: by 10.66.193.161 with SMTP id hp1mr31146721pac.9.1462561738682;
	Fri, 06 May 2016 12:08:58 -0700 (PDT)
Received: from [10.8.100.105] (rrcs-74-62-253-130.west.biz.rr.com.
	[74.62.253.130]) by smtp.gmail.com with ESMTPSA id
	lz5sm22841366pab.34.2016.05.06.12.08.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 06 May 2016 12:08:57 -0700 (PDT)
To: Mark Hatle <mark.hatle@windriver.com>,
	"Maxin B. John" <maxin.john@intel.com>
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
	<fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
	<e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
	<20160506091048.GA11082@mbabyjoh-desk.ger.corp.intel.com>
	<76de089c-50fb-95dc-bc93-956102ecd13b@windriver.com>
From: "Mihaylov, Emil" <emilmih@gmail.com>
Message-ID: <63ef88e0-bc41-714e-ae4a-8477c52ba689@gmail.com>
Date: Fri, 6 May 2016 12:08:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <76de089c-50fb-95dc-bc93-956102ecd13b@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Fri, 06 May 2016 19:09:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

no i am not using

PACKAGE_CLASSES ?= "package_rpm"

i did downloaded the image from oracle and i am using it instead.

unfortunate it still wants this damn

libavcodec.so.52

i have to add another recipe that pulls that package also


On 5/6/2016 10:49 AM, Mark Hatle wrote:
> On 5/6/16 4:10 AM, Maxin B. John wrote:
>> Hi Emil,
>>
>> On Thu, May 05, 2016 at 10:43:08AM -0700, Mihaylov, Emil wrote:
>>
>>> hi Mark,
>>>
>>> my oracle-jse-jdk_1.7.0.bb
>>>
>>> looks like this
>>>
>>> -----------------------------------------------
>>>
>>> # Automatically choose java package based on target architecture
>>> DEPENDS += "libav gtk+ libxslt libxtst"
>>  From the error, I assume that you are using "RPM" as package manager in your
>> local.conf:
>>
>> PACKAGE_CLASSES ?= "package_rpm"
>>
>> Could you please try to build again with "ipk or deb" as mentioned in the README
>> file in meta-oracle-java repo ?
> This will like result in a package that installs -- but not one that works.
>
> RPM has additional checking that ipk and deb do not.  (ipk and deb don't support
> SONAME style dependencies due to design differences.)
>
> So these recipes need to work in all three package formats, and most of the time
> RPM finds run-time errors the others overlook due to this.
>
> --Mark
>
>> Best Regards,
>> Maxin
>>


