Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65C51E01410
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 17:42:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3C0g9AX025725
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Apr 2013 17:42:09 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.114) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Thu, 11 Apr 2013 17:42:09 -0700
Message-ID: <51675860.3030204@windriver.com>
Date: Thu, 11 Apr 2013 20:42:08 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Saridakis, Dean (US SSA)" <dean.saridakis@baesystems.com>
References: <20130411231941.C175BE0146C@yocto-www.yoctoproject.org>
In-Reply-To: <20130411231941.C175BE0146C@yocto-www.yoctoproject.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
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
X-List-Received-Date: Fri, 12 Apr 2013 00:42:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-11 7:19 PM, Saridakis, Dean (US SSA) wrote:
>>> Think I've followed the example in the manual correctly. My append file is
>> pretty simple:
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
>>
>> It looks like you forgot the colon at the end of the path.
>> Try this:
>>    FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> -Kevin
>
> Good eye, but afraid that didn't help (maybe the path was empty before???). I think the files are getting picked up, since fetch will fail if change the file name to force a not found error.
>

What release are you using ? I tested this just last night before the
1.4 release final RC .. so it definitely still works!

How are you determining that it isn't being picked up?

Cheers,

Bruce

>>
>>> SRC_URI += "file://can.cfg"
>>>
>>> I'm doing this in a layer on top of a yocto-based SDK.  Don't think it should
>> matter, but the underlying kernel recipe has:
>>>
>>> do_configure_prepend() {
>>>                  # copy desired defconfig so we pick it up for the real
>> kernel_do_configure
>>>                  cp ${KERNEL_DEFCONFIG} ${B}/.config }
>>>
>>> Wasn't able to make much sense of the log: lots of "DEBUG: Removing
>> manifest ..." and then some kcfonig output?
>>> Any advice/suggestions?
>>>
>>> Thanks,
>>>
>>> Dean
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


