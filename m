Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC909E013EC
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 23:08:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4968gG9005284
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 May 2012 23:08:42 -0700 (PDT)
Received: from [128.224.162.223] (128.224.162.223) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 8 May 2012 23:08:42 -0700
Message-ID: <4FAA09D2.10203@windriver.com>
Date: Wed, 9 May 2012 14:08:18 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
	<CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
	<4FA94BE4.1040503@linux.intel.com>
	<CACW_hTY_wtMa4ZLwRXMdeiJyouKkG0TTSe6PdO+m8Gt02-LM=w@mail.gmail.com>
	<1336542274.43652.YahooMailNeo@web121503.mail.ne1.yahoo.com>
	<CACW_hTaOOT8XoGiA55UtcTNeCVAzvWJ7UEvfGBv3GiE4fyX1WQ@mail.gmail.com>
In-Reply-To: <CACW_hTaOOT8XoGiA55UtcTNeCVAzvWJ7UEvfGBv3GiE4fyX1WQ@mail.gmail.com>
X-Originating-IP: [128.224.162.223]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Wed, 09 May 2012 06:08:44 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年05月09日 14:01, Frans Meulenbroeks wrote:
> 2012/5/9 Yes Yanus<yesyanus@yahoo.com>:
>> If you use archiver.bbclass , you should enable three variables
>> INHERIT += "archive-original-source"
>> SOURCE_ARCHIVE_PACKAGE_TYPE = 'srpm' or 'tar'
>> SOURCE_ARCHIVE_LOG_WITH_SCRIPTS ?= 'logs_with_scripts' or 'logs'
>>
>
> Thanks. I'll try that.
> Originally I had only INHERIT += "archiver"
Hi Frans,

Thanks for your information. I will update archiver.bbclass with 
stronger coding.
you will get more description after reading 
meta-yocto/conf/local.conf.sample.
> Best regards, Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


