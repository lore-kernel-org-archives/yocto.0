Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76626E01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 21:25:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q494PctW025914
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 May 2012 21:25:38 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.174) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 8 May 2012 21:25:38 -0700
Message-ID: <4FA9F1C1.8020408@windriver.com>
Date: Wed, 9 May 2012 00:25:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/9][KERNEL] meta-intel updates
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
X-List-Received-Date: Wed, 09 May 2012 04:25:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-08 5:37 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> More updates for meta-intel 1.2.
>
> Please pull into linux-yocto 3.2.

merged and pushed out. I'll send the main recipe updates as part of
my next pull request, but they are available for you to use now.

Bruce

>
> The following changes since commit 6b3d4e09aa2531e9649f3f03827b7efbccfcec03:
>    Tom Zanussi (1):
>          meta: add mei feature
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/1.2-updates-2
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/1.2-updates-2
>
> Tom Zanussi (9):
>    meta/emenlow: use usb features
>    meta/fishriver: use usb features
>    meta/jasperforest: use usb features
>    meta/sugarbay: use usb features
>    meta/jasperforest: remove boot-live options
>    meta/sugarbay: remove boot-live options
>    meta/crownbay: move smp options from recipe-space
>    meta/emenlow: move smp options from recipe-space
>    meta/fishriver: move smp options from recipe-space
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |    7 +------
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    5 +++++
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |    8 +-------
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    5 +++++
>   .../kernel-cache/bsp/jasperforest/jasperforest.cfg |   14 +-------------
>   .../kernel-cache/bsp/jasperforest/jasperforest.scc |    4 ++++
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |   14 +-------------
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    3 +++
>   9 files changed, 22 insertions(+), 39 deletions(-)
>


