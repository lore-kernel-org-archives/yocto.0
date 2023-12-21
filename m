Return-Path: <patrick.wicki@subset.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF66C3DA6E
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 00:56:15 +0000 (UTC)
Received: from st43p00im-ztfb10073301.me.com (st43p00im-ztfb10073301.me.com [17.58.63.186])
 by mx.groups.io with SMTP id smtpd.web11.41356.1703120171469181837
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 16:56:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@subset.ch header.s=sig1 header.b=bO1s/Ijs;
 spf=pass (domain: subset.ch, ip: 17.58.63.186, mailfrom: patrick.wicki@subset.ch)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=subset.ch; s=sig1;
	t=1703120170; bh=TGNnuLN7KEddbtUtYE5CgLUtq+uNkIbFrTj+F+hZaDE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type;
	b=bO1s/Ijszt0HH372fCtZgen73ZzTliMe0RzZzOYCYRIRL2FApostuTrBlKBF50z+T
	 mI8H/CNeK/wtKxCzOpufaFzgPpETXJhsXyMV6VVdYKlDTUZfqH5iqqQNE6GYB/f3Nh
	 x0bst4IXQcRMEAOuuAF9qCfKjZ5O+6LNfAMqj/z6UCPpduJAW0Tf9KVXyryJANTAz3
	 YWcb2rkr5qMwjVsXymc11zPa3nlbbg1teEKPRmBakTbadVVR/EwPh6P9D1qTEBedb3
	 9mnA9ivRVPLt1jg8DjlVqIpcqlHtofMcSTD70L7ahSXD2d1OI99zb3ICAnRAvTjv1T
	 OheaHcEgk7YcQ==
Received: from [192.168.1.182] (st43p00im-dlb-asmtp-mailmevip.me.com [17.42.251.41])
	by st43p00im-ztfb10073301.me.com (Postfix) with ESMTPSA id EA92980000B
	for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 00:56:09 +0000 (UTC)
Message-ID: <84de8eca-c4e9-4234-98f9-84c8dc07652f@subset.ch>
Date: Thu, 21 Dec 2023 01:56:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Patrick Wicki <patrick.wicki@subset.ch>
Subject: [yocto][meta-lts-mixins] kirkstone/rust branch tracking oe-core
 master
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Sp9DWKtZjWPGQi-GV48Q859qMq7EBs-a
X-Proofpoint-ORIG-GUID: Sp9DWKtZjWPGQi-GV48Q859qMq7EBs-a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-20_15,2023-12-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 spamscore=0
 adultscore=0 phishscore=0 clxscore=1030 suspectscore=0 malwarescore=0
 mlxlogscore=494 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2312210005
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 00:56:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62001

Currently, there's the rust-1.68 mixins layer. That branch is set to 
stay on 1.68 (https://lists.yoctoproject.org/g/yocto/message/60259).

There are some use cases for a newer version. For example, we use 
kirkstone in combination with meta-virtualization master and go/rust 
mixins. The latest netavark will require rust >=1.70 to build.

I have a local kirkstone/rust branch that's based on the 1.68 one by 
Scott, but updated to 1.71 by simply backporting from oe-core master 
(leaving out some things like oe-selftest). The intention is not to 
stick to any specific version but to keep tracking oe-core master, 
similar to the go layer.

Is there any interest for having such a branch in meta-lts-mixins? How 
would we go about it? I can send the (~20) patches I have so far.

Patrick Wicki


