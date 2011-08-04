Return-Path: <raj.khem@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3374E011B7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 16:27:06 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxl11 with SMTP id 11so2035255yxl.35
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2011 16:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ED0oawdk3D7iDE5bU6dxg8QVo7hVajERmYXBksE1sns=;
	b=Zb8X346xBTcr/5VMLlLc9XTgjoTQP96LNq+B9HEXH0SI57Zaurcd2oa4n08ASb2eFa
	qGcsh06CWGfXNOVX3rddPV1uiZ7KXrLJzDLIRuYm560ChbE+CJiHXxieWb9nehtORFOJ
	flP/r4CfhsoPEcjsOIghGZM3iL+3FzVVAtjOk=
Received: by 10.42.170.130 with SMTP id f2mr1198419icz.213.1312500434355;
	Thu, 04 Aug 2011 16:27:14 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id fr11sm1559213ibb.29.2011.08.04.16.27.13
	(version=SSLv3 cipher=OTHER); Thu, 04 Aug 2011 16:27:13 -0700 (PDT)
Message-ID: <4E3B2ACF.1090201@gmail.com>
Date: Thu, 04 Aug 2011 16:27:11 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:5.0) Gecko/20110627 Thunderbird/5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1312469680.14274.8.camel@rex>
	<1312487155.2135.9.camel@vorpal.jf.intel.com>
In-Reply-To: <1312487155.2135.9.camel@vorpal.jf.intel.com>
Subject: Re: Yocto post 1.1 development focus areas?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Aug 2011 23:27:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/04/2011 12:45 PM, Joshua Lock wrote:
> On Thu, 2011-08-04 at 15:54 +0100, Richard Purdie wrote:
>> [Cross posted but please reply on the Yocto list]
>>
>> We're starting to think about the development focus for post Yocto 1.1
>> and are collecting ideas on the unscheduled feature list on the wiki:
>>
>> https://wiki.yoctoproject.org/wiki/Yocto_Project_Unscheduled_Feature_List

My good browser presented me with ssl error that "The site's security 
certificate is not trusted!" :)

I would like to add a taks to curb bitbake memory consumption

Thanks
-Khem


