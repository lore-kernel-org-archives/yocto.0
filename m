Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E2A5E00827; Wed, 28 Jan 2015 19:31:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC03BE00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 19:31:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0T3VbhW014648
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Jan 2015 19:31:37 -0800 (PST)
Received: from [128.224.163.137] (128.224.163.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Wed, 28 Jan 2015 19:31:36 -0800
Message-ID: <54C9A996.5040402@windriver.com>
Date: Thu, 29 Jan 2015 11:31:34 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
References: <1B56A49860EB2D45ADE3731B15C959FDAE7982@G08CNEXMBPEKD01.g08.fujitsu.local>
	<54C99C23.5060706@windriver.com>
	<1B56A49860EB2D45ADE3731B15C959FDAE79E2@G08CNEXMBPEKD01.g08.fujitsu.local>
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAE79E2@G08CNEXMBPEKD01.g08.fujitsu.local>
X-Originating-IP: [128.224.163.137]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help -- Where can I get the LSB test log
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
X-List-Received-Date: Thu, 29 Jan 2015 03:31:50 -0000
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

Hi Maohui,

There is a wiki page for it: https://wiki.yoctoproject.org/wiki/LSB_Result

Yi

在 2015年01月29日 11:11, Lei, Maohui 写道:
> Hi Yi
>
>> The log should be in /var/opt/lsb/test/manager/results/
>>
> sorry，my expression is not very clear。
>
> >From https://wiki.yoctoproject.org/wiki/Yocto_1.7_Overall_Test_Plan , I knew LSB test was executed on target that made by yocto 1.7.1 release.
>
> So , I want to get the LSB test history of the yocto 1.7.1 release.
>
> Lei 
>
>
>> -----Original Message-----
>> From: Yi Zhao [mailto:yi.zhao@windriver.com]
>> Sent: Thursday, January 29, 2015 10:34 AM
>> To: Lei, Maohui/雷 茂慧; yocto@yoctoproject.org
>> Subject: Re: [yocto] Help -- Where can I get the LSB test log
>>
>> The log should be in /var/opt/lsb/test/manager/results/
>>
>> Yi
>>
>> 在 2015年01月29日 10:04, Lei, Maohui 写道:
>>> Hi all
>>>
>>> Was LSB test executed  in yocto 1.7.1 release？ Where can I get the LSB test
>> log and result?
>>> Best Regards,
>>> Lei Maohui
>
>


