Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BCCC4C800A1
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2011 00:01:50 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5351mBr005872
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Jun 2011 22:01:48 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.7) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 2 Jun 2011 22:01:48 -0700
Message-ID: <4DE86AB9.4080901@windriver.com>
Date: Fri, 3 Jun 2011 01:01:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1306964893.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306964893.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][KERNEL] Add Ericsson 3G patches
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
X-List-Received-Date: Fri, 03 Jun 2011 05:01:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-06-01 6:03 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset adds the kernel patches needed for Ericsson 3G support,
> needed by fishriver.
>
> Please pull into linux-yocto-2.6.37.

Merged. I dropped these onto yocto/standard so any new
BSPs can leverage them as well.

Changes will be pushed out in the morning, I have a few
other pending merges to take care of at the same time.

Cheers,

Bruce

>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/fishriver-3g
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/fishriver-3g
>
> Alexey Orishko (2):
>    usbnet: changes for upcoming cdc_ncm driver
>    USB CDC NCM host driver
>
>   drivers/net/usb/Kconfig    |   19 +
>   drivers/net/usb/Makefile   |    1 +
>   drivers/net/usb/cdc_ncm.c  | 1213 ++++++++++++++++++++++++++++++++++++++++++++
>   drivers/net/usb/usbnet.c   |   45 ++-
>   include/linux/usb/usbnet.h |    6 +
>   5 files changed, 1270 insertions(+), 14 deletions(-)
>   create mode 100644 drivers/net/usb/cdc_ncm.c
>


