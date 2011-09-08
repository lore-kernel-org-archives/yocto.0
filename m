Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E2D2E01286
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 00:38:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p887cDsk008325
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Sep 2011 00:38:13 -0700 (PDT)
Received: from [147.11.119.47] (147.11.119.47) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 8 Sep 2011 00:38:12 -0700
Message-ID: <4E6870E1.30408@windriver.com>
Date: Thu, 8 Sep 2011 03:38:09 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: =?GB2312?B?sszV8b78?= <caizhenjun@insigma.com.cn>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB829AE@WX-ExchMB.insigma.com.cn>
In-Reply-To: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB829AE@WX-ExchMB.insigma.com.cn>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemu boot fail(root-nfs: unknown option: mountprog=21111)
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
X-List-Received-Date: Thu, 08 Sep 2011 07:38:28 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

On 11-09-08 01:49 AM, 蔡振军 wrote:
> Hi ALL
> 
> QEMU run well with a pre-build kernel image from yocto site. Now just 
> change the kernel to one built myself, some error information appeared 
> about nfs. My kernel image version is 2.6.35 configured by 
> versatile_defconfig. Error information as following:
> 
> “root-nfs: unknown option: mountprog=21111”,this message search nothing 
> on google.
> 
> Is there something wrong with .config? Add normally is there some 
> special configuration I should do with kernel to fit QEMU

You can't change out the kernel version / tree and expect to use the full
functionality provided by the linux-yocto kernel. In this case there are
changes to NFS and rpc to support alternate rpc ports being used to support
usermode NFS. You would need to port and test the patches for this
which can be found on yocto/standard/base

Cheers,

Bruce

> 
> Best regards
> 
> Feye
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
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


