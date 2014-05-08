Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98113E00B60; Thu,  8 May 2014 13:12:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46DB1E00B47
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 13:11:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s48KBv7f019758
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 May 2014 13:11:57 -0700 (PDT)
Received: from msp-dhcp25.wrs.com (172.25.34.25) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 8 May 2014 13:11:57 -0700
Message-ID: <536BE50C.3000006@windriver.com>
Date: Thu, 8 May 2014 15:11:56 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <6710F7A1-6564-49CC-AE7C-1544633E5D84@keylevel.com>
In-Reply-To: <6710F7A1-6564-49CC-AE7C-1544633E5D84@keylevel.com>
Subject: Re: Does Yocto need some "LTS" releases?
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
X-List-Received-Date: Thu, 08 May 2014 20:12:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/8/14, 2:54 PM, Chris Tapp wrote:
> I've had a few potential clients ask how security updates and general patches
> are applied to embedded products built using Yocto.

The Yocto Project, via it's contributors usually provides support for the -two- 
releases + master.

That means effectively a one year community (best-effort) support model for each 
release.  So today that would be 1.5 and 1.6.  (Master is continuously 
developed, and I'd expect any relevant fixes to go there as well.)

Note, this is all contingent upon contributions from Yocto Project members and 
the Open Embedded community at large.  Without contributions, there is no support.

> If they're really embedded, then the only way to to this is by replacing the
> rootfs - especially when they boot read-only.

See the million threads on "field upgrade".  There is no one answer.  Device 
upgrade, Image upgrade, package upgrade, and file upgrades are all 
possibilities... but these need to be built into the device during it's design. 
  There are no best practices available, as everyone seems to have different 
requirements.

> A second complication is when support for a BSP gets dropped so later
> versions, which generally include updates and patches, can't be used.

If you are releasing a product, you shouldn't be expecting to migrate (in a 
product lifecycle) from YP 1.4 to YP 1.5 to YP 1.6, etc.  Each release is 
individual, and an overall target based upgrade and BSP obsolescence is not part 
of the project.  This is really the realm of the device manufacturer, OSV and 
other commercial vendors of YP components.

> It feels to me as if there should be some "LTS" releases which developers
> could focus on when choosing a version.

It all comes down to contributions in the end.  If nobody is contributing, don't 
expect updates.  There has been talk over time of an LTS type release.  I've 
heard everything from extending the 1 year to '2' years.. or as contributions 
are available.

But if you want long term support, your best bet is to find an OSV (or other 
Yocto Project participant) that is willing to do long term support and 
maintenance of a product.

(Speaking for Wind River for a second, we do offer extended support for many 
many more years then what I would ever expect the community to support.  I would 
expect the same from our competitors.)

> Or is there already some way of doing this that I just haven't spotted?

This is where community support really transitions to commercial.  The community 
is interested in enabling new designs and 'maker' projects.  Commercial is 
interested in building products and long term support.  (IMHO, others might 
disagree.)

--Mark

> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>


