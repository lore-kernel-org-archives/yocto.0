Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81672E00738;
	Sun, 10 Feb 2013 18:58:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Feb 2013 18:58:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,639,1355126400"; d="scan'208";a="285560796"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2013 18:58:25 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.243]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.227]) with mapi id
	14.01.0438.000; Sun, 10 Feb 2013 18:58:24 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
Thread-Index: AQHOBlH7q+oeLxeJRUKYS7pTZbEoaZhxynkAgAIvmnA=
Date: Mon, 11 Feb 2013 02:58:24 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2541ACDA7@ORSMSX105.amr.corp.intel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
In-Reply-To: <719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Mon, 11 Feb 2013 02:58:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Chris Tapp [mailto:opensource@keylevel.com]
>Sent: Saturday, February 09, 2013 1:33 AM
>To: Bodke, Kishore K
>Cc: bruce.ashfield@windriver.com; dvhart@linux.intel.com; Saxena, Rahul;
>Liu, Song; Zanussi, Tom; linux-yocto@yoctoproject.org;
>yocto@yoctoproject.org
>Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
>
>
>On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:
>
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>
>>
>> Hi,
>>
>> This patch set is to remove the Cedartail Machine from
>> Linux-yocto-3.4 Kernel.
>> Cedartrail BSP will not be supported for Yocto 1.4 Release.
>
>Hi Kishore,
>
>Are there any plans to bring support back in? We recently committed a proj=
ect
>to using this BSP for the Intel DN2800MT...
>

Hi Chris,

The BSP is still available in 1.3 Release (danny).
Its from 1.4,  support is not available.

Thanks
Kishore.

>> Also Please remove the standard/cedartrail branch.
>>
>> Please pull into linux-yocto-3.4/meta branch.
>>
>> Thanks
>> Kishore.
>>
>> The following changes since commit
>f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
>>
>>  meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>>
>> are available in the git repository at:
>>
>>  git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove
>>  http://git.pokylinux.org/cgit.cgi/linux-yocto-
>contrib/log/?h=3Dkishore/cedartrail_remove
>>
>> Kishore Bodke (1):
>>  meta: Remove Cedartrail Machine
>>
>> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
>> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 --------------=
------
>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
>> 4 files changed, 82 deletions(-)
>> delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-
>preempt-rt.scc
>> delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-
>standard.scc
>> delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
>> delete mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>>
>> --
>> 1.7.9.5
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>Chris Tapp
>
>opensource@keylevel.com
>www.keylevel.com
>
>


