Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D86CE0071A
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 15:14:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p88MEr2q027544
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Sep 2011 15:14:53 -0700 (PDT)
Received: from [147.11.118.182] (147.11.118.182) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 8 Sep 2011 15:14:53 -0700
Message-ID: <4E693E5A.7040204@windriver.com>
Date: Thu, 8 Sep 2011 18:14:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E3F406F@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E3F406F@orsmsx505.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/2] [KERNEL] Cover letter for seperating 10/100 LAN feature from 1G and 10G
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
X-List-Received-Date: Thu, 08 Sep 2011 22:14:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-08 06:05 PM, Saxena, Rahul wrote:
> Cover letter for separating 10/100 LAN feature from 1G and 10G.
> Typically a machine does not need both of 10/100 and 1G/10G drivers.

The change looks fine, and I'd agree that this is a useful split.
BUT (there's always a but), there are a set of boards that are currently
including the e1xxxx feature that would currently be getting the e100,
and they'll no longer have it.

./bsp/common-pc/common-pc.scc:include features/intel-e1xxxx/intel-e1xxxx.scc
./bsp/fri2/fri2.scc:include features/intel-e1xxxx/intel-e1xxxx.scc
./bsp/fishriver/fishriver.scc:include features/intel-e1xxxx/intel-e1xxxx.scc
./bsp/romley/romley.scc:include features/intel-e1xxxx/intel-e1xxxx.scc
./bsp/emenlow/emenlow.scc:include features/intel-e1xxxx/intel-e1xxxx.scc
./bsp/crownbay/crownbay.scc:include features/intel-e1xxxx/intel-e1xxxx.scc
./bsp/common-pc-64/common-pc-64.scc:include 
features/intel-e1xxxx/intel-e1xxxx.scc

In particular the common-pc really does want that config (for qemu).
So we should do the split, but also update all those boards to include
your new feature as part of this change.

Can you try and resend with that addition ? You don't need to built/boot,
just make the touches to the files listed above and I can take care of
the rest.

Bruce

>
> Signed-off-by: Rahul Saxena<Rahul.saxena@intel.com>
>
> Rahul Saxena (2):
>
> Remove 10/100 LAN support. 10/100 LAN will be configured by seperate
>
> files
>
> Added seperate feature for 10/100 LAN support
>
> .../features/intel-e1xxxx/intel-e100.cfg | 2 ++
>
> .../features/intel-e1xxxx/intel-e100.scc | 1 +
>
> .../features/intel-e1xxxx/intel-e1xxxx.cfg | 1 -
>
> 3 files changed, 3 insertions(+), 1 deletions(-)
>
> create mode 100644
> meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg
>
> create mode 100644
> meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


