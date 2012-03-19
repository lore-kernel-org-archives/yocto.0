Return-Path: <saul.wold@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A4A2E013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 11:26:28 -0700 (PDT)
Received: from mail-ee0-f52.google.com ([74.125.83.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 19 Mar 2012 11:26:27 -0700
Received: by eekd4 with SMTP id d4so2729692eek.25
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 11:26:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=H36aB/eqHCvPDBk10kgfV+abapwGzYAfLifaqC9RsRU=;
	b=WASWD6rPHoiAqtz7kOgFZhJ6gJAPo4laLFkOxWq2ufDYuw9YOh5bekTUaQ3mgaPr5D
	Zn59FCkBu61Au0kfy5qa1odNCBC3sJAKfYjf/q3Z/kIKFvHDERCoaSXhM9djukML0kuE
	fsKrrvXXVGMsgbvfY/g7VLHEfE4DAHx0eyjLv4vK8KltFM2nxg651v8DNjqFMkVBbMJw
	Xn2/bNggw55naRScerxQWbFVfv14dOPXp2R+RFCcjFm1rT3sC9J52yC+PEIOCDcpAa4Y
	7vmi9B46xLnfdiE5ug/NHx8/+2mo3hVxgNa0+WdBBmCizuEyI1VeCy7ELN/4/CLsRRUL
	XVMA==
Received: by 10.213.13.214 with SMTP id d22mr800026eba.34.1332181585872;
	Mon, 19 Mar 2012 11:26:25 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id r44sm52153350eef.2.2012.03.19.11.26.24
	(version=SSLv3 cipher=OTHER); Mon, 19 Mar 2012 11:26:25 -0700 (PDT)
Message-ID: <4F677A4E.6030802@intel.com>
Date: Mon, 19 Mar 2012 11:26:22 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <cover.1331713200.git.lianhao.lu@intel.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FD00FEF@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FD00FEF@SHSMSX102.ccr.corp.intel.com>
X-Gm-Message-State: ALoCoQlvgAEKftFwvwA5ahnUmpvvMvD/SK6pRQPb9HEJIj2lBJ1/1eVU/a4lantx47dCH6FmGnC1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] perfer older version of lttng-ust in poky distro
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
X-List-Received-Date: Mon, 19 Mar 2012 18:26:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/18/2012 06:18 PM, Lu, Lianhao wrote:
> Hi Saul,
>
> How about this patch's merging status?
>
Missed it becase it went to the wrong list!  should go to the 
poky@yoctoproject.org list in the future.

Sau!

> Best Regards,
> Lianhao
>
> Lu, Lianhao wrote on 2012-03-14:
>> Set the PREFERRED_VERSION of lttng-ust to use lttng-ust instead of
>> lttng2-ust in poky distro. This fixed yocto bug #2062.
>>
>> The lttng2 is very different in terms of architecture and usage model, compared
>> to lttng. The eclipse upstream lttng plugin won't be able to support lttng2 until
>> the eclipse Juno release(Jun 27th, 2012).
>>
>> The following changes since commit 8e9f6fc77ac4763f4ed1f6e7b720420c220ba6e2:
>>    Richard Purdie (1):
>>          dates: Fix unpackaged files warning
>> are available in the git repository at:
>>
>>    git://git.pokylinux.org/poky-contrib llu/bug2062
>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug2062
>> Lianhao Lu (1):
>>    poky.conf: Prefer lttng-ust instead of lttng2-ust.
>>   meta-yocto/conf/distro/poky.conf |    3 +++
>>   1 files changed, 3 insertions(+), 0 deletions(-)
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


