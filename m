Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 823AAE0172C
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 07:58:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id rABFw2Hv029039
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Nov 2013 07:58:02 -0800 (PST)
Received: from [0.0.0.0] (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 11 Nov 2013 07:58:02 -0800
Message-ID: <5280FE87.2030908@windriver.com>
Date: Mon, 11 Nov 2013 10:57:59 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1311090421080.17171@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F45998@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F45998@ORSMSX101.amr.corp.intel.com>
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: Re: does anything still use "meta-yocto-kernel-extras"?
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
X-List-Received-Date: Mon, 11 Nov 2013 15:58:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-11 10:55 AM, Rifenbark, Scott M wrote:
> Darren?  Any insight on this?

It is used by developers .. such as me :) I have some pending updates
to it as well. But generally speaking we are migrating the useful
parts to meta-skeleton and the other more 'mainstream' layers.

Bruce

>
> Scott
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>> Sent: Saturday, November 09, 2013 1:23 AM
>> To: Yocto discussion list
>> Subject: [yocto] does anything still use "meta-yocto-kernel-extras"?
>>
>>
>>   still in dev manual (where i'll be all day, i suspect), section 2.2 refers to the
>> layer meta-yocto-kernel-extras, but i don't recall seeing *anything* that uses
>> that layer (anymore?).
>>
>>   i just grepped through all of the layers i have checked out and found not a
>> single instance of the string "meta-yocto-kernel-extras", other than in the
>> documentation that mentions it.
>>
>>   is it still valid? still used somewhere?
>>
>> rday
>>
>> --
>>
>> ===========================================================
>> =============
>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                         http://crashcourse.ca
>>
>> Twitter:                                       http://twitter.com/rpjday
>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>> ===========================================================
>> =============
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


