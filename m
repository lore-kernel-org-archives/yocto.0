Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7ACCE009C3; Mon, 17 Aug 2015 19:28:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B368BE00861
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 19:28:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7I2SgoW018248
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 17 Aug 2015 19:28:42 -0700 (PDT)
Received: from [172.25.44.6] (172.25.44.6) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Mon, 17 Aug 2015 19:28:42 -0700
Message-ID: <55D29859.7050407@windriver.com>
Date: Mon, 17 Aug 2015 22:28:41 -0400
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: wenzong fan <wenzong.fan@windriver.com>, Joe MacDonald
	<Joe_MacDonald@mentor.com>
References: <55CB0D29.9070206@windriver.com>	<20150812130556.GA16995@mentor.com>
	<55CD8DB7.5050304@windriver.com>
In-Reply-To: <55CD8DB7.5050304@windriver.com>
X-Originating-IP: [172.25.44.6]
Cc: "Radzykewycz, T \(Radzy\)" <radzy@windriver.com>, yocto@yoctoproject.org
Subject: Re: [meta-selinux] How about remove libcap-ng from meta-selinux?
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
X-List-Received-Date: Tue, 18 Aug 2015 02:28:48 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-08-14 02:41 AM, wenzong fan wrote:
> On 08/12/2015 09:05 PM, Joe MacDonald wrote:
>> [[yocto] [meta-selinux] How about remove libcap-ng from meta-selinux?]
>> On 15.08.12 (Wed 17:08) wenzong fan wrote:
>>
>>> Hi All,
>>>
>>> There's a libcap-ng in meta-oe layer, it has been updated to 0.7.7
>>> and the
>>> one in meta-selinux is 0.7.3.
>>>
>>> How about removing the one in meta-selinux and get this layer depends on
>>> meta-oe? Any suggestions?
>>
>> The last time we had this discussion my sense was that most users of
>> meta-selinux wanted to continue with it only depending on oe-core.
>> That's my preference as well.
>>
>> I'm happy to merge an updated version of libcap-ng (or maybe I'll get to
>> it myself, since I've known about it since Armin removed it from
>> meta-security, that was the time of the last discussion, I think).
>>
>> All I'm saying right now is that this isn't a case of accidental
>> duplication of recipes in multiple layers, it's the result of a
>> conscious decision.  It's totally worthwhile re-visiting that decision,
>> though to make sure the reasons are still valid.
>>
>
> Thanks for clarifying this, just send out an update patch for libcap-ng.

I still think it belongs in oe-core.

Wenzong,

Can you try to build up a case for that?
If I look at the dependencies on Ubuntu-15.04:

Reverse Depends:
   qemu-system-common,libcap-ng0
   libvirt0,libcap-ng0
   libvirt-bin,libcap-ng0
   libcap-ng0:i386,libcap-ng0 0.7.4-2
   libcap-ng0:i386,libcap-ng0 0.7.4-2
   suricata,libcap-ng0
   libcap-ng-utils,libcap-ng0 0.7.4-2
   ladvd,libcap-ng0
   heimdal-kdc,libcap-ng0
   audispd-plugins,libcap-ng0
   smartmontools,libcap-ng0
   qemu-system-common,libcap-ng0
   libvirt0,libcap-ng0
   libvirt-bin,libcap-ng0
   libcap-ng-dev,libcap-ng0 0.7.4-2
   irqbalance,libcap-ng0
   gnome-keyring,libcap-ng0
   dbus-1-dbg,libcap-ng0
   dbus,libcap-ng0

note that pkgs in:
   meta-virtualization: irqbalance, libvirt, more?
   meta-selinux: audit
   meta-security-framework: audit
could drop the local versions of libcap-ng and use the
oe-core libcap-ng.


Please check on the actual source/configure options so that
we(I!!) get a better understanding of where libcap vs libcap-ng
is used.

In fact, since meta-security-framework isn't using selinux, I'd
say that both audit and libcap-ng should both move to oe-core.


Thanks,
../Randy


>
> Wenzong


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

