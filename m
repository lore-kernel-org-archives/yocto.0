Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1149BC0015E
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:24 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4341.1687367660191867556
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=RdCtZjmD;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35LBJaos009708;
	Wed, 21 Jun 2023 10:14:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=pQPvMKemaZgZx3xItVbuTQ+P1Z7eA+31PyMQAKa+LRc=;
 b=RdCtZjmD+coRYtW1u7/+r8yj95s9domhK9evUJQaIHCxCk4F1D6b8Jel2yKTcjg7CmKR
 /rmLlOw2V57EV3Da8rJq9fzZxHNZ/wOQEnivZwaSiBu3noqatZDtgW+WPHF2cJ6E24cm
 QIDZa1LE1gaIAVc2mGF4hOxZGWWTs1iLDJp5KN/NEPYsYLYPmYNHvsmaaxrYNplIrT7f
 S5FUvaFIDKpHZAwOq3699weUKfPut7BHjZ7MVvMywnMprHlJggCuTTxEFx4wP+MpxOY/
 fiLoopiP1iJT2uiAN4aB6pZbf4wmzOiRUCwiQ7KQeaKhh2cWf3QOt2aDnu/M3lEoDxLY zQ== 
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:19 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:14:18 -0700
Received: from ala-lpggp3.wrs.com (147.11.105.124) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 10:14:18 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>,
        Paul Gortmaker
	<paul.gortmaker@windriver.com>
Subject: [meta-security][PATCH 0/7] dm-verity: separate device for hash storage
Date: Wed, 21 Jun 2023 10:13:28 -0700
Message-ID: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: iUCZfiCKqT0xfooBMQGtvwU3wFUL1tBy
X-Proofpoint-GUID: iUCZfiCKqT0xfooBMQGtvwU3wFUL1tBy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 clxscore=1011 impostorscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210145
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 17:35:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60380

The primary goal here is to enable storage of dm-verity hash on a separate
device/partition.

There are essentially two ways for dealing with where to put the hash data
for dm-verity block integrity checks.

You can store both in a single partition, by using ~95% of the storage space
for the filesystem and the remaining 5% tail for the hash, or you can use a
completely separate partition (or even device) for storing the hash data
elsewhere.

Method A relies on using a hash offset argument during creation, which is
generally OK from a scripted use case but is error prone when run from the
command line and the offset calculated manually.

Method B has the advantage of using the basic partition/device
compartmentalization of the kernel to ensure the fs data doesn't overwrite
the hash or vice versa.  It takes any possible errors due to math
miscalculations completely off the table.

I originally also was looking at the systemd "autoconfiguration" that only
needs the root hash on the boot line in order to autodetect the partitions
with the filesystem data and with the hash data.  However, that became a
bridge too far once I realized that using systemd instead of a simple /init
script in the initramfs was an unavoidable hard dependency.  While that is
apparently a thing, I couldn't find anyone doing it by default, even in the
desktop distro space.

That said, there are good ideas in how the autodetection is supported. Like
using partition UUIDs based on the root hash.  Setting proper GPT types that
reflect it is verity-root or verity-hash; setting sensible GPT names, etc.

So in addition to supporting a separate hash using our current script based
initramfs /init -- everything done here is done in a systemd autodetect
compatible way.  Meaning that if someone eventually tackles supporting a
systemd based /init in the initramfs, we'll have the separate hash and a
worked example that sets everything up in a compatible fashion for that.

A side benefit of doing that, is that if you run cfdisk (or similar) on
your output device after writing the wic image to it, you get useful info
on the decoding of the GPT types, see the GPT names, etc.

Testing: I boot tested the new separate hash support on both an older i7
desktop, and a slightly newer atom based netbook - using wic and a USB drive
with the included documented steps.  Since I'm touching files for our
existing appended hash, I also went back and tested that on the same two
machines.

Final note - astute reviewers may note a hard coded path to "bc" -- this is
done because even though we have "tr" at that phase of the build, we don't
have "bc" because it is a separate stand-alone package.  I've got general
agreement on IRC that adding our sysroot "bc" to that phase of the build
makes sense.  So once I've done that in oe, I'll circle back here and strip
off the paths - avoiding timing dependencies between oe and meta-security.

Paul Gortmaker (7):
  dm-verity: add descriptive strings for "wic list images"
  dm-verity: restructure the veritysetup arg parsing
  dm-verity: save veritysetup args beside runtime environment
  dm-verity: add support for hash storage on separate partition
  dm-verity: add wks.in fragment with dynamic build hash data
  dm-verity: hook separate hash into initramfs framework
  dm-verity: add sample systemd separate hash example and doc

 classes/dm-verity-img.bbclass                 | 94 ++++++++++++++++++-
 docs/dm-verity-systemd-hash-x86-64.txt        | 43 +++++++++
 .../initramfs-framework-dm/dmverity           | 29 ++++++
 wic/beaglebone-yocto-verity.wks.in            |  1 +
 wic/systemd-bootdisk-dmverity-hash.wks.in     | 18 ++++
 wic/systemd-bootdisk-dmverity.wks.in          |  1 +
 6 files changed, 184 insertions(+), 2 deletions(-)
 create mode 100644 docs/dm-verity-systemd-hash-x86-64.txt
 create mode 100644 wic/systemd-bootdisk-dmverity-hash.wks.in

-- 
2.39.0


