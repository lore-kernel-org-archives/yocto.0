Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D40FE0070B
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 21:51:15 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 06 Jun 2012 21:51:14 -0700
Received: by lbbgh12 with SMTP id gh12so205052lbb.25
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2012 21:51:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=8vd6eA2C8JanRwTD2uw14+g9TTT8o7wtPH+FYUKDiKk=;
	b=fyiZAo67HiK3X3fZzVa8KOZkooX+P0lDprJYi9lzLt0xL6C2j5+Inx0jp9NCpHqogz
	fhamo/6VNuLofpDomW2RKBw7FAN7MrJrROMw2rV7L559ysqPzvSb6ds7IaBvYspMdrbB
	fbqNosD/mmX4l0y5I/WU685yDb2ChoNhbw1YqLtb0ZZLpZ6Xx7FC89qic1YgcpMNqUdk
	C09pk9u04qHK8LeV7tip9qhdpWONqDe1KUsKUxkJcy8yf85n2v0hxRALcL5i5W51rKJO
	Hgn1ljnc/FK6Mow+nuUnlwPJx1S7BfAsQQ/oCBd7ZyWOw7hZwyD8+gh7A86XKs0c7tQh
	RcDQ==
MIME-Version: 1.0
Received: by 10.152.109.166 with SMTP id ht6mr629969lab.46.1339044672584; Wed,
	06 Jun 2012 21:51:12 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 6 Jun 2012 21:51:12 -0700 (PDT)
In-Reply-To: <90741FE9B50D654690EB940EDB456C8E13FE37@SHSMSX101.ccr.corp.intel.com>
References: <CAPhnLPBtE3qBgPE5+BfOkTfiLvHz6zqPzYNH82VcXH_RtCqw8A@mail.gmail.com>
	<90741FE9B50D654690EB940EDB456C8E13FE37@SHSMSX101.ccr.corp.intel.com>
Date: Wed, 6 Jun 2012 21:51:12 -0700
Message-ID: <CAPhnLPBR=UhevDjKO0hmpLfigF2zzVco9P_zTkGD7LvWi9Fu_w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>
X-Gm-Message-State: ALoCoQkc6D+YT4Iu+oJ9YkaKGz5TZlP0Nv5VOLGdkNeWQlJz78OruZZDK/AOcwZHGB+37bEBAhMp
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Weekly build 1.3_M4 Week 4
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
X-List-Received-Date: Thu, 07 Jun 2012 04:51:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 6, 2012 at 5:57 PM, Xu, Jiajun <jiajun.xu@intel.com> wrote:
> Hi Beth,
> Will we have a new meta-intel build or we should use the old builds(20120605) for BSP testing?

I'll kick one off tonight. I need to bring the ab down for a few
minutes and didn't want to have to wait for meta-intel bsps.

-b

>
>> The weekly build of 1.3_M4 Week 4 will soon be available at:
>>
>> http://autobuilder.yoctoproject.org/pub/nightly/20120606-1
>>
>> Some minor issues with the buildhistory sync step have been identified
>> and fixed in the autobuilder. They are pending testing before being
>> pushed to the autobuilder master. These issues do not effect build
>> artifacts and are safe to ignore for QA purposes.
>>
>> -b
>>
>
> Best Regards,
> Jiajun
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

