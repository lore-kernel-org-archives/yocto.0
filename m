Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AA09C74A4B
	for <webhook@archiver.kernel.org>; Fri, 10 Mar 2023 23:15:52 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.26862.1678471885397702489
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Mar 2023 10:11:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=UgDJNm2j;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=24337a7e31=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32AD8PmD022339;
	Fri, 10 Mar 2023 18:11:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=6lzBPWiE58cEZu7T+E9UGLZ90/fpQvYbNy9ujTMzotw=;
 b=UgDJNm2jZWetzf3m/Hxmt+qqcf/KxHEWl4MKytdxyaayhF+/UM6ou2GmxLLN3jcWSCp1
 4MSoP2oMX8IwyGXqMiG5tunuBnrExwHz/nDTieLN0Ss4Vpd5LNy6HN58RG80vTg7BOJf
 lhYr+jeFWCQUSgkn3wMMLo/6KtkxSHkTVw5MElCyyXiZLiM26A1KcnatOvBK++NQ4Vo7
 kb+h4iNc2KFgjQD54jJe9yM6eM2qzytViOY2icZfBAZ22wJlbQWF+zbNqB0E3CAAHSgc
 9ie3wat5ghSUXwPFf+9RibbtDiTcR9D8IXCVXs0KuA9tAyEAq8K4RYOwvos9JQ36RjeF mA== 
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p76amsy89-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 10 Mar 2023 18:11:19 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Fri, 10 Mar 2023 10:11:18 -0800
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Fri, 10 Mar 2023 10:11:17 -0800
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>, Niko Mauno <niko.mauno@vaisala.com>,
        Naveen Saini <naveen.kumar.saini@intel.com>,
        Christer Fletcher
	<christer.fletcher@inter.ikea.com>,
        Paulo Neves <paulo.neves1@inter.ikea.com>
Subject: [meta-security][PATCH RFC 0/2] initial dm-verity documentation
Date: Fri, 10 Mar 2023 13:11:15 -0500
Message-ID: <20230310181117.3344359-1-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Proofpoint-GUID: Qa_8mPNepDA7zvqaEy1KMX9UwDxfiTHt
X-Proofpoint-ORIG-GUID: Qa_8mPNepDA7zvqaEy1KMX9UwDxfiTHt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-10_08,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 mlxlogscore=861 clxscore=1011 lowpriorityscore=0 malwarescore=0
 adultscore=0 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303100143
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 23:15:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59380

As time marches on, it seems that more attention is given to the various
security features out there.  We have the framework to incorporate dm-verity
into our builds, but it seems we have a rather steep learning curve for
people to overcome in order to use it, and accordingly only two sample
conflgs for people to reference.

This changeset attempts to rectify that by capturing the Yocto specific
settings relating to dm-verity -- in two categories ; global/generic
settings and board specific settings.

Credit to Niko Mauno who laid out a lot of information in a 0/N
series preamble[1] some time ago - hopefully this puts the information
a bit closer to where people can easily find it.

This series only documents the beaglebone-black ; I'm hoping to do some
testing with systemd-bootdisk-dmverity.wks.in and get us some documentation
for other use cases involving that.  In the meantime, I figured I'd see
if there was any special doc requirements/layout/format etc. that I
might have overlooked -- or if there is any interest in this at all.

Paul.

[1] https://lists.yoctoproject.org/g/yocto/message/50621

---

Paul Gortmaker (2):
  dm-verity: add basic non-arch/non-BSP yocto specific settings
  dm-verity: document board specifics for Beaglebone Black

 docs/dm-verity-beaglebone.txt |  37 +++++++++++
 docs/dm-verity.txt            | 114 ++++++++++++++++++++++++++++++++++
 2 files changed, 151 insertions(+)
 create mode 100644 docs/dm-verity-beaglebone.txt
 create mode 100644 docs/dm-verity.txt

-- 
2.33.0


