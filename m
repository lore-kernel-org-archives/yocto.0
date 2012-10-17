Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5534BE011AF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:58:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2012 14:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; d="scan'208";a="235250317"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2012 14:58:51 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.140]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.82]) with mapi id
	14.01.0355.002; Wed, 17 Oct 2012 14:58:51 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Thread-Topic: Cedar Trail and gst-vaapi fixes
Thread-Index: AQHNrHs+UN1frKyrLUuSR0q76eMZRZe+C3gA
Date: Wed, 17 Oct 2012 21:58:51 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE233E6BAA2@ORSMSX105.amr.corp.intel.com>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
In-Reply-To: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cedar Trail and gst-vaapi fixes
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
X-List-Received-Date: Wed, 17 Oct 2012 21:58:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Ross Burton [mailto:ross.burton@intel.com]
>Sent: Wednesday, October 17, 2012 8:21 AM
>To: Bodke, Kishore K; Kamble, Nitin A; dvhart@linux.intel.com
>Cc: yocto@yoctoproject.org
>Subject: Cedar Trail and gst-vaapi fixes
>
>Hi,
>
>Make gst-vaapi work on Cedar Trail, upgrade the gst-vaapi to the latest
>version
>which doesn't need ffmpeg anymore, and remove the commercial restriction
>on
>gst-vaapi.
>
>The new gst-vaapi was tested on Cedar Trail, and played the Sintel 720p tr=
ailer
>smoothly.  ffmpeg was required for the audio (MPEG4 AAC), but without that
>present the video still plays.

Hi,

Wanted to check if you had a chance to look into the cpu uitilization?
We had less than 15% cpu uitilization, with the acceleration while playing =
the video.

Thanks
Kishore.
>
>Ross

