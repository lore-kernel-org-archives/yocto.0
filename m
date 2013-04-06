Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEA01E01552
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 22:55:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r365tAX3005210
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 5 Apr 2013 22:55:10 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.105) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 5 Apr 2013 22:55:11 -0700
Message-ID: <515FB8BD.7060202@windriver.com>
Date: Sat, 6 Apr 2013 01:55:09 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
	<13F417252F8B4CB5BB755BB07928D20C@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com>
	<2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com>
	<547521F5BFD54F2D8E6783515988F589@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
	<83730A512373431B95CA2E526DB84A99@PAULD>
	<1365204871.17697.6.camel@empanada>
	<1365221016.17697.13.camel@empanada>
	<0E036F4959FA47449AD8E358A8C85848@PAULD>
	<1365223693.17697.20.camel@empanada>
In-Reply-To: <1365223693.17697.20.camel@empanada>
Cc: yocto@yoctoproject.org, "Paul D. DeRocco" <pderocco@ix.netcom.com>
Subject: Re: This one can't be me...
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
X-List-Received-Date: Sat, 06 Apr 2013 05:55:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-06 12:48 AM, Tom Zanussi wrote:
> On Fri, 2013-04-05 at 21:15 -0700, Paul D. DeRocco wrote:
>>> From: Tom Zanussi [mailto:tom.zanussi@intel.com]
>>>
>>> I'm seeing the same thing here (# CONFIG_BLK_DEV_RAM is not set) with
>>> your bblayers and local.conf.  For some reason the base and
>>> standard .cfgs aren't being applied to the .config.  I'll have to dig
>>> around further as time permits over the weekend...
>>
>> Thanks, although this might be floobydust. I've nuked the _entire_ build
>> tree, included downloads, and am trying a rebuild from scratch, but that
>> will take until tomorrow morning to complete, since I'm doing the build on
>> an Atom. If it somehow solves the problem, I'll let you know, so you don't
>> waste your time chasing unicorns. But if it doesn't solve the problem, your
>> help would definitely be appreciated. I've been trying to get a build, any
>> build, to boot for a really long time now.
>>
>
> My guess is there's a real problem here, since I'm able to reproduce it
> with my own downloads dir and a rebuild from scratch.  Now that I have a
> reproducer, I'm pretty sure we'll be able to nail down the problem and
> at least get the kernel part right - if the kernel is missing config
> like this it just won't boot, plain and simple, so we need to get past
> that first and chances are it will be smoother sailing after that...

And as a FYI: I'm tracking down an issue with configs at the moment as
well.

I can try this board to see if I get the right configs in my final .config
once I've tracked down the issue.

Bruce

>
> Tom
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


