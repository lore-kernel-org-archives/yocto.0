Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACBEDE003BF
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 17:24:15 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id ia10so1687166vcb.34
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 17:24:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=MKzwuOCNXsNNgfwiVhD3bBbRs8h8VoPhjMQuYWlVGnQ=;
	b=gec9GYCTJABTx7VaUHS/BLIrM7W5bTYizoI9ISn3C745AzSn/ZA7YUOMFS/RPiXg0D
	6BXOb7cw5xlrYNIEJMGObi1wfsOYXRTATks+3N9Z+0wE4lBbLWvSOFn22vQND3VhK64U
	Pv7bYbIxrTFHFR/+tMHZoyjpOOP9SB6Ouqoo9dGII7HZuedmuJyP4oOSThz6bDQr5QE2
	RzF67GyD7Uh5kX9uOHgWK/UpFHMKquCCXkFwhLs/10IL4DihPTYqwVUBqzH/PSOT9Hrl
	bwHp+WfstDLRpbcjyiEq07L+LKKe4D6hOxh5XwYuAcB0T9sPiRVuCZ17LjF5j5s5oDAK
	d4UA==
X-Gm-Message-State: ALoCoQkIZeZC6IQQ9Ra2w0bqXUNWu9tIWYwBjJiQ1JH8x0eSB2UZGxXx2n2tjGuVoEmXLYguPqSC
MIME-Version: 1.0
X-Received: by 10.52.75.165 with SMTP id d5mr4865678vdw.1.1378427055448; Thu,
	05 Sep 2013 17:24:15 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Thu, 5 Sep 2013 17:24:15 -0700 (PDT)
Date: Thu, 5 Sep 2013 17:24:15 -0700
Message-ID: <CAPhnLPDDo1iU=CDoANPJp6sm=STk1fom=YqoTR4+VLNwM2CPrg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>, 
	Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
Subject: 1.5_M4.rc3 buildout available
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
X-List-Received-Date: Fri, 06 Sep 2013 00:24:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The buildout of rc3 will be complete in a few hours and available at:
http://autobuilder.yoctoproject.org/pub/releases/1.5_M4.rc3

The one issue we're seeing at this time is sanity failures in qemuppc
and qemumips. They appear to be slow/hung boot issues. This seems to
be a new issue (https://bugzilla.yoctoproject.org/show_bug.cgi?id=5131)

poky ed3ef0823fde89371a473d20c0127c0bd16d062b
meta-fsl-arm c3c1d2616e59ba314c6ff602b99909da632a11d5
meta-fsl-ppc 1ddf5e66c635e086864ce15931628ce1a2d6ff0a
meta-intel a30089ab6a38541f729c680f1b3f05c3fbdc6ecf
meta-minnow 7719e114bd0c2118c3d4c2a1a7c06e966103ab09
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
eclipse-poky-juno e9f450883a4df106dd84dd85644753ced1aa40d9
eclipse-poky-kepler e21e4285ecffa30e0931bc09d04fb8585618043c

Please begin testing as soon as possible.

Thanks.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

