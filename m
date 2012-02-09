Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4053E0123C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 19:16:17 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 08 Feb 2012 19:16:17 -0800
Received: by iabz7 with SMTP id z7so2310637iab.25
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 19:16:16 -0800 (PST)
Received: by 10.43.134.199 with SMTP id id7mr290882icc.21.1328757300508;
	Wed, 08 Feb 2012 19:15:00 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id wn6sm3105851igb.3.2012.02.08.19.14.58
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 19:14:59 -0800 (PST)
Message-ID: <4F333A3A.8090500@intel.com>
Date: Wed, 08 Feb 2012 19:15:06 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com>
	<CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
	<4F32843F.70500@cnx-software.com>
	<E4396C3C-30C9-4878-A116-DFA1EDC638D7@gmail.com>
In-Reply-To: <E4396C3C-30C9-4878-A116-DFA1EDC638D7@gmail.com>
X-Gm-Message-State: ALoCoQnfmPurUPvVskastGpUrgFkHqM5u91UirWVG1wL+BdfyELA3HctFkZX2dOzifVKi4j/r+Ry
Subject: Re: Yocto in Virtualbox
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
X-List-Received-Date: Thu, 09 Feb 2012 03:16:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2012 07:11 PM, David Smoot wrote:
>
> On Feb 8, 2012, at 8:18 AM, cnxsoft wrote:
>
> On 08/02/2012 21:06, autif khan wrote:
>> On Wed, Feb 8, 2012 at 3:14 AM, cnxsoft<cnxsoft@cnx-software.com>   wrote:
>>> Hi,
>>>
>>> .255.0 oprofile.timer=1 "
>>> Enabling opengl
>>>
>> So, what is the problem?
>
>> Qemu starts apparently fine, but the qemu window stays black.
>
> I would try one of the pre-built images to isolate the problem between running inside virtualbox and your build.

This would be much quicker to test than my "export to VMWare Player" 
suggestion. I'd definitely try this first.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

