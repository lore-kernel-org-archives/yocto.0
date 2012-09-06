Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97AAFE01489
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:24:05 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so2985857pbb.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 08:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=ZruL/g/R4pfDmY6L/H78Yh6kkJAJlbEHBQFV/wQh+hI=;
	b=CRWs+nCFM01DqeanT72kQDgN/33YrhlEtVv3KPkYC716vGZ8U9mgi1BW91kRTSY85P
	/4LkO4obiISBlPdZBFs7fQQ3F2MNxiZPK4ppXcEE5HgFqO+DEqLDOg8v3viSUTaxdyjI
	pgMojhuXLZGk8SsHKZwPDtCCQtDGoivkljFCFlZSwip/AHOQvRC2WbXpxjPFdMar4x4U
	CkwX3XbKqWYivL0xOwNMVISXRHOdx1MKp6m364qCwZw3TzNTsxy68hjpWu2uR5XtP8yc
	BuqcNIt7apEC5QoOeGqEoicDEvHV1o49EiSEKVmM+9IRbMM1ZlimsSNC41OajRcICXoi
	0M+Q==
Received: by 10.68.231.168 with SMTP id th8mr5334986pbc.14.1346945045414;
	Thu, 06 Sep 2012 08:24:05 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id gf7sm1491056pbc.65.2012.09.06.08.23.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Sep 2012 08:23:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <4865264.UZoJkHz8Ho@helios>
Date: Thu, 6 Sep 2012 19:23:53 +0400
Message-Id: <FA3A0E24-467D-45F1-9809-BED60472FB8C@gmail.com>
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
	<4865264.UZoJkHz8Ho@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Thu, 06 Sep 2012 15:24:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Sep 6, 2012, at 2:17 PM, Paul Eggleton wrote:

> Elvis, did you have any further luck with this?

Unfortunately no. I've got two machines, both with quad-core intel i7 =
processors, but I just couldn't
get icecc to work with yocto. I end up regularly perform fresh builds at =
least 5 to 6 times a day,
and it takes me 2 hours to build core-image-minimal.

> Otherwise, Dmitry, any suggestions? I'm assuming you made use of =
icecc.bbclass=20
> since you made some changes to it a while ago...

Best regards,

Elvis Dowson=

