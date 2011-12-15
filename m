Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83234E00744
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 18:14:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBF2E3vt006312
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Dec 2011 18:14:03 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 14 Dec 2011 18:14:03 -0800
Message-ID: <4EE957EA.9000007@windriver.com>
Date: Wed, 14 Dec 2011 21:14:02 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <cover.1323878947.git.rahul.saxena@intel.com>
	<A75BCAD09CE00A4280CDD4429D85F1F92621BD19C3@orsmsx501.amr.corp.intel.com>
In-Reply-To: <A75BCAD09CE00A4280CDD4429D85F1F92621BD19C3@orsmsx501.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][KERNEL] meta: Add cedartrail: Corrected machine branch name
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
X-List-Received-Date: Thu, 15 Dec 2011 02:14:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-14 7:54 PM, Saxena, Rahul wrote:
> I made a mistake in specifying the machine branch name:
>
>
> The new machine branch should be:
>
> "yocto/standard/cedartrail"
>
> instead of
>
>   "yocto/standard/cedartview"
>
> Sorry about that.

No problem at all. I read the right thing even if you didn't
type it :)

This looks fine to me, I'll queue it up ASAP.

Bruce

>
> Thanks
> Rahul
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of rahul.saxena@intel.com
> Sent: Wednesday, December 14, 2011 9:28 AM
> To: yocto@yoctoproject.org; bruce.ashfield@windriver.com
> Subject: [yocto] [PATCH 0/1][KERNEL] meta: Add cedartrail
>
> From: Rahul Saxena<rahul.saxena@intel.com>
>
> This is the initial version of a BSP for the Cedar Trail platform.
> The Cedar Trail platform consists of the Intel Cedarview Atom processor
> and Tiger Point Chipset.  I have succesfully booted Sato image on Cedar Trail
> CRB, desktop and mobile pre-production sample boards and tested features
> such as wired networking, VESA graphics, SATA, USB ports
>
> Please pull into linux-yocto-3.0/meta and linux-yocto-dev/meta
>
> Also, please create a new "yocto/standard/cedarview" machine branch in each
> of the above, based on yocto/standard/base.
>
> Thanks
> Rahul
>
> Signed=off-by: Rahul Saxena<rahul.saxena@intel.com>
> ---
>
> The following changes since commit caa74f86f42f6ecc22c3e9f380176b2695579e18:
>    Darren Hart (1):
>          Add EFI scc and cfg files
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib rsaxena/meta-cedartrail
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=rsaxena/meta-cedartrail
>
> Rahul Saxena (1):
>    meta: Add cedartrail     Signed-off-by: Rahul Saxena
>      <rahul.saxena@.intel.com>
>
>   .../bsp/cedartrail/cedartrail-preempt-rt.scc       |    7 +++
>   .../bsp/cedartrail/cedartrail-standard.scc         |    7 +++
>   .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   58 ++++++++++++++++++++
>   .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   17 ++++++
>   4 files changed, 89 insertions(+), 0 deletions(-)
>   create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
>   create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
>   create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
>   create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


