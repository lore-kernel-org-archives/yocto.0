Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99FA9E01213
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 08:09:25 -0700 (PDT)
Received: from mail-gx0-f174.google.com ([209.85.161.174])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 08 Sep 2011 08:09:25 -0700
Received: by gxk21 with SMTP id 21so59012gxk.5
	for <yocto@yoctoproject.org>; Thu, 08 Sep 2011 08:09:23 -0700 (PDT)
Received: by 10.101.131.20 with SMTP id i20mr761544ann.53.1315494563676;
	Thu, 08 Sep 2011 08:09:23 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com [207.192.74.254])
	by mx.google.com with ESMTPS id v6sm1293299anj.7.2011.09.08.08.09.17
	(version=SSLv3 cipher=OTHER); Thu, 08 Sep 2011 08:09:18 -0700 (PDT)
Message-ID: <4E68DA9A.5030407@intel.com>
Date: Thu, 08 Sep 2011 08:09:14 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.21) Gecko/20110831 Lightning/1.0b2 Thunderbird/3.1.13
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB829AE@WX-ExchMB.insigma.com.cn>
In-Reply-To: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB829AE@WX-ExchMB.insigma.com.cn>
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
X-List-Received-Date: Thu, 08 Sep 2011 15:09:26 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

On 09/07/2011 10:49 PM, ²ÌÕñ¾ü wrote:
> Hi ALL
> 
> QEMU run well with a pre-build kernel image from yocto site. Now just 
> change the kernel to one built myself, some error information appeared 
> about nfs. My kernel image version is 2.6.35 configured by 
> versatile_defconfig. Error information as following:
> 
> ¡°root-nfs: unknown option: mountprog=21111¡±,this message search nothing 
> on google.
> 
> Is there something wrong with .config? Add normally is there some 
> special configuration I should do with kernel to fit QEMU?

Hi Feye,

The linux-yocto kernel has patches in it to enable booting via a
userspace NFS server, which needs to use high port numbers for its
mountd and nfsd daemons. You will need to include these patches in your
custom kernel if you wish to continue using our userspace NFS boot method.

Bruce, can you point Feye to this patchset?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

