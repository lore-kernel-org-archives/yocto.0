Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39BBFE0123C
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 09:12:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p88GBxGU000256
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Sep 2011 09:11:59 -0700 (PDT)
Received: from [147.11.119.204] (147.11.119.204) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 8 Sep 2011 09:11:59 -0700
Message-ID: <4E68E94E.60307@windriver.com>
Date: Thu, 8 Sep 2011 12:11:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB829AE@WX-ExchMB.insigma.com.cn>
	<4E68DA9A.5030407@intel.com>
In-Reply-To: <4E68DA9A.5030407@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 08 Sep 2011 16:12:00 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

On 11-09-08 11:09 AM, Scott Garman wrote:
> On 09/07/2011 10:49 PM, ²ÌÕñ¾ü wrote:
>> Hi ALL
>>
>> QEMU run well with a pre-build kernel image from yocto site. Now just
>> change the kernel to one built myself, some error information appeared
>> about nfs. My kernel image version is 2.6.35 configured by
>> versatile_defconfig. Error information as following:
>>
>> ¡°root-nfs: unknown option: mountprog=21111¡±,this message search nothing
>> on google.
>>
>> Is there something wrong with .config? Add normally is there some
>> special configuration I should do with kernel to fit QEMU?
> 
> Hi Feye,
> 
> The linux-yocto kernel has patches in it to enable booting via a
> userspace NFS server, which needs to use high port numbers for its
> mountd and nfsd daemons. You will need to include these patches in your
> custom kernel if you wish to continue using our userspace NFS boot method.

I already replied to this last night:

"You can't change out the kernel version / tree and expect to use the full
functionality provided by the linux-yocto kernel. In this case there are
changes to NFS and rpc to support alternate rpc ports being used to support
usermode NFS. You would need to port and test the patches for this
which can be found on yocto/standard/base"

Cheers,

Bruce

"

> 
> Bruce, can you point Feye to this patchset?
> 
> Scott
> 


