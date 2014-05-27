Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916E0E00B7B; Mon, 26 May 2014 21:32:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD92E00B20
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 21:32:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4R4W40J008001
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 21:32:04 -0700 (PDT)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Mon, 26 May 2014 21:32:04 -0700
Message-ID: <5384156E.6080104@windriver.com>
Date: Tue, 27 May 2014 12:32:46 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1401128516.23417.9.camel@kihei.inmotion.gotdns.com>
	<1401134068.18829.6.camel@kihei.inmotion.gotdns.com>
In-Reply-To: <1401134068.18829.6.camel@kihei.inmotion.gotdns.com>
X-Originating-IP: [128.224.162.187]
Subject: Re: update-rc.d initscript shows up as S00... rather than S09...
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
X-List-Received-Date: Tue, 27 May 2014 04:32:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darcy,

Thank you for your feedback.
I think this is a bug which needs to be fixed.
I've filed a bug in bugzilla with information in your emails.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6376

Best Regards,
Chen Qi


On 05/27/2014 03:54 AM, Darcy Watkins wrote:
> On Mon, 2014-05-26 at 11:21 -0700, Darcy Watkins wrote:
>> Hello,
>>
>> In one of my bitbake recipes, I have...
>>
>>
>> inherit update-rc.d
>> ...
>> INITSCRIPT_NAME = "watchdog-progressd"
>> INITSCRIPT_PARAMS = "start 09 S . stop 90 0 6 ."
> I found what I think the cause is.  The '09' must be parsed as a number
> rather than a sort-key string of digits so it is handled as an illegal
> octal literal.
>
> '07' and less was fine.  '08 and '09' failed.  I am guessing that the
> literal parser returned a zero value, hence the S00.
>
> So I switched to NOT use leading zero and it was handled OK.  It also
> padded the '8' or '9' with a leading zero in the output.
>
>       INITSCRIPT_PARAMS = "start 9 S . stop 90 0 6 ."
>
> This is one to add to a "...for dummies" series.  ;-)
>
>
>>
>> ...and then I install my initscript at
>> ${D}${sysconfdir}/init.d/watchdog-progressd during do_install()
>>
>> According to examples I have seen (and some of my other packages/recipes
>> that worked with no problem), this should result
>> in /etc/rcS.d/S09watchdog-progressd symlinking
>> to /etc/init.d/watchdog-progressd
>>
>> What sort of error would cause it to show up in /etc/rcS.d/ as
>> S00watchdog-progressd instead?
>>
>> That is 'S00' rather than 'S09'.
>>
>>
>> I am building for an x86 target using 'daisy' branch.
>>
>>
>>


