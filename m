Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB8AE004F1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 07:35:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8FEZww2000957
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 07:35:58 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 15 Sep 2011 07:35:51 -0700
Message-ID: <4E720D40.9080409@windriver.com>
Date: Thu, 15 Sep 2011 09:35:44 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC00638@WX-ExchMB.insigma.com.cn>
	<1865303E0DED764181A9D882DEF65FB6BC05D6E36B@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6BC05D6E36B@shsmsx502.ccr.corp.intel.com>
Subject: Re: tcf-agent fail to run on imx28evk
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
X-List-Received-Date: Thu, 15 Sep 2011 14:35:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On 9/15/11 8:43 AM, Cui, Dexuan wrote:
> Can you please try to remove “image-prelink" from conf/local.conf’s USER_CLASSES
> and re-build an image to see if that would make a difference?
> 
>  
> 
> Recently looks prelinking was broken and this causes segfaults in some packages.
> 

I believe the latest prelinker update went in this morning (US time).  So try
again and see if that resolves the issue.

To check if you are running the latest version of the prelinker,
meta/recipes-devtools/prelink/prelink_git.bb should reference the SRCREV of
3e3f9b0876aa5ac83a783a95b8bab52cb38ed785

There was a printf issue that was causing things using threading, specifically
thread local storage, to not always prelink properly.  ARM seemed to have
components that were randomly affected.

--Mark

> 
> Thanks,
> 
> -- Dexuan
> 
>  
> 
> *From:*yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> *On Behalf Of *蔡振军
> *Sent:* Thursday, September 15, 2011 5:27 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] tcf-agent fail to run on imx28evk
> 
>  
> 
> Hi ALL,
> 
>          I build one image for imx28evk. But tcf-agent fail to start in boot
> process and get same fault when I run it manually.
> 
> Log like this:
> 
>                 /INIT: Entering runlevel: 5/
> 
> /Starting syslogd/klogd: done/
> 
> /Starting tcf-agent: Alignment trap: tcf-agent (1526) PC=0x4e704ca4
> Instr=0xe7913103 Address=0xfffffffe FSR 0x001/
> 
> /Segmentation fault/
> 
> /FAIL/
> 
> /Stopping Bootlog daemon: bootlogd./
> 
>          I have tried to update the version of tcf-agent. Error still exist.
> 
>  
> 
> Best regards
> 
> Feye
> 
>  
> 
>  
> 
> 蔡振军
> 
> 网新技术有限公司物联网事业部
> 
> 杭州天目山路226号网新大厦
> 
> 电话-138 6745 1910
> 
>  
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


