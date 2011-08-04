Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by mx1.pokylinux.org (Postfix) with ESMTP id 534D94C8009A
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 22:21:43 -0500 (CDT)
Received: from mail8-ch1-R.bigfish.com (216.32.181.168) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 03:21:43 +0000
Received: from mail8-ch1 (localhost.localdomain [127.0.0.1])	by
	mail8-ch1-R.bigfish.com (Postfix) with ESMTP id F3ADDA58081	for
	<yocto@yoctoproject.org>; Thu,  4 Aug 2011 03:21:42 +0000 (UTC)
X-SpamScore: -25
X-BigFish: VPS-25(zzbb2dK9371K936eK1432N98dK14ffOzz1202hzz8275dhz2fh668h839h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail8-ch1: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail8-ch1 (localhost.localdomain [127.0.0.1]) by mail8-ch1
	(MessageSwitch) id 1312428102783295_7972;
	Thu,  4 Aug 2011 03:21:42 +0000 (UTC)
Received: from CH1EHSMHS015.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.243])	by mail8-ch1.bigfish.com (Postfix) with ESMTP id
	BB7883004C
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 03:21:42 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by CH1EHSMHS015.bigfish.com
	(10.43.70.15) with Microsoft SMTP Server id 14.1.225.22;
	Thu, 4 Aug 2011 03:21:42 +0000
Received: from mail1x.sgo.in.sel.sony.com (mail.sgo.in.sel.sony.com
	[43.130.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with
	ESMTP id p743LfVs008819	for <yocto@yoctoproject.org>; Thu, 4 Aug 2011
	03:21:42 GMT
Received: from [43.148.60.182] ([43.133.110.2])	by mail1x.sgo.in.sel.sony.com
	(Switch-3.4.2/Switch-3.4.2) with ESMTP id p743LU2O026213	for
	<yocto@yoctoproject.org>; Thu, 4 Aug 2011 03:21:31 GMT
Message-ID: <4E3A1039.2080108@am.sony.com>
Date: Wed, 3 Aug 2011 20:21:29 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4E39E30B.3080206@am.sony.com> <1312418434.31410.8.camel@scimitar>
	<1312419051.31410.10.camel@scimitar>
In-Reply-To: <1312419051.31410.10.camel@scimitar>
X-OriginatorOrg: am.sony.com
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 03:21:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/3/2011 5:50 PM, Joshua Lock wrote:
> On Wed, 2011-08-03 at 17:40 -0700, Joshua Lock wrote:
>> On Wed, 2011-08-03 at 17:08 -0700, Tim Bird wrote:
>>> Hi all,
>>>
>>> I'm not sure where to report this, but I tried again to build
>>> Yocto, without success.
>>>
>>> I downloaded poky-bernard-4.0.tar.bz2, and followed instructions
>>> for installing it.
>>>
>>> I am using 'MACHINE ?= qemuarm' and doing 'bitbake poky-image-sato'
>>>
>>> bitbake error messages follow below.
>>>
>>> The first error is a failure to fetch the kernel, and a follow-on
>>> failure to do a git-clone on the kernel.  I'm behind a firewall and
>>> this is a perennial problem for me.  Is there another way to get this
>>> code?  If I do a git-clone on a remote machine and copy it over to
>>> my development host, where do I put it?  (Why did the first http-based
>>> fetch fail, anyway?)  Any help would be appreciated.
>> We seem to be missing the kernel tarball on our sources mirror... Let me
>> try and chase that.
> Chased and caught:
>
> joshual@scimitar:~/mess/31
> $ wget
> http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> --2011-08-03 17:50:18--
> http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> Resolving autobuilder.yoctoproject.org... 140.211.169.118
> Connecting to autobuilder.yoctoproject.org|140.211.169.118|:80...
> connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 449232265 (428M) [application/x-gzip]
> Saving to: `git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz.1'
Thanks very much.  I'll give it another try.

I've visited the "behind a proxy" help page before.  I guess I should 
have checked that for an update before asking.
  -- Tim


