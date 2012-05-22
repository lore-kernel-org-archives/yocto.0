Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A13E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:14:02 -0700 (PDT)
Received: by yenm14 with SMTP id m14so7511944yen.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=FLPSfsBk2b6KPivPzqtVWi5kx1KYh4ioEKOlfQUkJRs=;
	b=FC6RzrcmU4EGrGDKquY1/6+ciMKULzkcTlhFo88pobzpfxDZJpIlIlOyBMTT+9jYTO
	CWgLtESGcI5rzX9qfp7HSrOpBcGNd6z4rFr5J5gvwMB6hH+v6ixG5G4p4hx37obecd2r
	K51PRL6YPcwsN+uXoZJJEixbA6gx5DSAFkBp3omdyRrnKrshyU/Lr60a39xSFs6AWOFm
	pzazSnuVqu6xi2nV0+7x2a4FFUbrWNJNmdRNc9xawhDCFcz193wSns+MzllS81df2dmq
	R4I2g2R8idCGiYjPRKjLds8pdWD/vNAPKEmsDAayhzEgRPJkUuKlIjEohNH2TyW356ha
	8I3g==
Received: by 10.236.180.1 with SMTP id i1mr480856yhm.88.1337717641910;
	Tue, 22 May 2012 13:14:01 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	p14sm39916630ani.8.2012.05.22.13.14.01 (version=SSLv3 cipher=OTHER);
	Tue, 22 May 2012 13:14:01 -0700 (PDT)
Message-ID: <4FBBF389.9030606@gmail.com>
Date: Tue, 22 May 2012 16:14:01 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1337621438.git.kishore.k.bodke@intel.com>
	<1337717064.32464.33.camel@elmorro>
In-Reply-To: <1337717064.32464.33.camel@elmorro>
Subject: Re: [PATCH 0/1] [meta-intel] Update PVR Graphics drivers.
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
X-List-Received-Date: Tue, 22 May 2012 20:14:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2012 04:04 PM, Tom Zanussi wrote:
> On Mon, 2012-05-21 at 10:55 -0700, kishore.k.bodke@intel.com wrote:
>> From: Kishore Bodke<kishore.k.bodke@intel.com>
>>
>> Pointing to the latest version of PVR
>> Graphics drivers for the Cedartrail BSP.
>>
>> Please pull into meta-intel/denzil
>>
> Pulled into meta-intel/master.
Tom, how long does this take before a git pull will get the changes into 
my system?  I tried when I saw your email and nothing was updated.

Jim A

> Thanks,
>
> Tom
>
>> Thanks
>> Kishore.
>>
>> The following changes since commit 7c1086df3f92d76ca1a062f9b4b1daf6823bfb63:
>>
>>    emgd-driver-bin: skip insane ldflags check (2012-05-17 20:15:53 -0500)
>>
>> are available in the git repository at:
>>
>>    git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvrupdate
>>    http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvrupdate
>>
>> Kishore Bodke (1):
>>    meta-cedartrail: Update PVR Graphics drivers.
>>
>>   .../xorg-driver/cdv-pvr-driver.inc                 |   14 +++---
>>   .../xorg-driver/cdv-pvr-driver_1.0.bb              |   46 ++++++++++----------
>>   2 files changed, 28 insertions(+), 32 deletions(-)
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


