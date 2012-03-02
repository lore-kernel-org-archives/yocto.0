Return-Path: <koen@beagleboard.org>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF22E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:15:31 -0800 (PST)
Received: by werc1 with SMTP id c1so1629206wer.35
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2012 09:15:31 -0800 (PST)
Received-SPF: pass (google.com: domain of koen@beagleboard.org designates
	10.216.133.130 as permitted sender) client-ip=10.216.133.130; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of koen@beagleboard.org
	designates 10.216.133.130 as permitted sender)
	smtp.mail=koen@beagleboard.org
Received: from mr.google.com ([10.216.133.130])
	by 10.216.133.130 with SMTP id q2mr2211930wei.24.1330708531145
	(num_hops = 1); Fri, 02 Mar 2012 09:15:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=m0Z8lkWBBgZbsP0kvdUtjFduoQsYsVXSVm0EzYX+q/E=;
	b=RhPFJ9IoSw+F4UJC0p4d1I0To0WBhnP7d8kLv1FS61LyK2DGJ/diS9aaXBYhBdmuF6
	EW5eZgOgWM5Z3Esnb60x0RJHVFlAm8TCYWhMDc80CDaS9VOlRtciBh86NgNzf942j6it
	+XLdDHUqWEQuTNp5wtnNDwC82z9wS34IkXfTI/hMwULr1n3OScduO2sRgiY1pmIOEpFX
	q5SztvJqQ8mS90lvHtcqVYAkeyJdiXChdibgX/cpZaM2xE98Bjk11UFusfO+mvTk3xrx
	ZUaMEI/kCayJIOmnQKmbxUCYJhTBKFV+owifXbylIM2XxISPh5S1xQuxkfd2HihHGB4Q
	n6iQ==
Received: by 10.216.133.130 with SMTP id q2mr1796184wei.24.1330708531073;
	Fri, 02 Mar 2012 09:15:31 -0800 (PST)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id dr5sm12971605wib.0.2012.03.02.09.15.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 02 Mar 2012 09:15:30 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D150846E4BF@ORSMSX105.amr.corp.intel.com>
Date: Fri, 2 Mar 2012 18:15:29 +0100
Message-Id: <F2ED0186-908B-4413-A6B1-1FDDC34B1AC3@beagleboard.org>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<0ED6D044-756A-4D76-AFE5-525A5D0DDCE2@beagleboard.org>
	<CDED78A957032E45B3239CDDA7642D150846E4BF@ORSMSX105.amr.corp.intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmP46SRPzAzuFP48Ry4TEyCQumtTK/9/2DvmzDs7IrC3n9lYIvQg0s3i7pfQeVEPSuwK4ZV
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Fri, 02 Mar 2012 17:15:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 2 mrt. 2012, om 17:45 heeft Stewart, David C het volgende geschreven:

>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Koen Kooi
>> Sent: Friday, March 02, 2012 2:07 AM
>>=20
>> Well, if you use the angstrom setupscript you get 'yocto'. Your =
phrasing seems
>> to suggest you are confusing 'yocto' with 'poky', which is a common =
mistake.
>=20
> Hey all - from the project perspective, the Yocto Project includes =
Poky, so I think it's very appropriate for Robert to think that using YP =
implies using Poky. This is in all of the project's official QA and =
communications, so I think it's reasonable.

This begs the questions where other distributions (and OSVs) fit into =
yocto.=20

regards,

Koen=

