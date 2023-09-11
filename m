Return-Path: <me@linux.beauty>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52AFEE49A4
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 01:49:15 +0000 (UTC)
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
 by mx.groups.io with SMTP id smtpd.web11.49740.1694396946651986559
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 18:49:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=me@linux.beauty header.s=zmail header.b=STBf1BH/;
 spf=pass (domain: linux.beauty, ip: 136.143.188.15, mailfrom: me@linux.beauty)
ARC-Seal: i=1; a=rsa-sha256; t=1694396945; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AV+POsQB+jjWEjqEw1Q1+EsLB6wljoz+RsZ1KBYWyQuzjTxfTLGfnWB8Cwak9m2NTLQ6DzesUjLEq9dZicwh6u3dtbaZqAqr+BI+El9BZz03NPyBOP4QN3AntsBwnzh9fX/DoT50bpwHc3uaRzOK5VsENcPJIaXXRYUgc3amelk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1694396945; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=iHc6NioNLLH25YW40M5EyVr+R5vfKVlkWbsV/ZJ8S+8=; 
	b=Gj7jaeZXrcv9sp6jTIwS0lrp/0ZPI1dh09xFNJSdT8G0rJxfMcHfI51hc2MxlUFLtpaKLPHvfu2+h43wQdiWs1nmT0rDSF2/o+AlKA5+yL5q9M77N39qkJreH+dlS7eJg0qt7T0HtbWYbOTZc96rHaPvX6kqJGg8+EUWoyHvetI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=linux.beauty;
	spf=pass  smtp.mailfrom=me@linux.beauty;
	dmarc=pass header.from=<me@linux.beauty>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1694396945;
	s=zmail; d=linux.beauty; i=me@linux.beauty;
	h=Date:Date:From:From:To:To:Message-ID:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=iHc6NioNLLH25YW40M5EyVr+R5vfKVlkWbsV/ZJ8S+8=;
	b=STBf1BH/UlW3tuFJaisM+Fb/kex4W9zF/GKCW5uCs3UGOYoc2dLKkAh3W6SghXty
	wW0GfzeDHkfBX/TaUL2aone1Gmu/PEpiuBplOUQeASSC9UfNMXyIjP2e9Iw8g3JVEhw
	/ucGn1GPyWbiUfnCNv84ryttOFCh/eId9gANwfF8=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 169439694225779.05678352516236; Sun, 10 Sep 2023 18:49:02 -0700 (PDT)
Date: Mon, 11 Sep 2023 09:49:02 +0800
From: Li Chen <me@linux.beauty>
To: "yocto" <yocto@lists.yoctoproject.org>,
	"yoctohelp" <yocto+help@lists.yoctoproject.org>
Message-ID: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
In-Reply-To: 
Subject: Question: Sharing SSTATE_DIR and DL_DIR through Lustre/NFS for team
 work
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 01:49:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60962

Hi Yocto experts,

I'm a Yocto newbiee and I have a concern regarding the slowness of Yocto for our team(around 100 people). There are two main reasons for this:

1. Yocto itself is slower compared to other build systems.
2. Each user in our team has their own private SSTATE_DIR and DL_DIR, which means the artifacts cannot be shared. This leads to unnecessary disk and CPU usage.
3. Every user works on SATA devices, so the IOPS and throughput are both low.

Since it's hard for us to invest in expensive enterprise NVMe for all build servers, I have an idea to address this issue. My suggestion is to use Lustre/NFS/Glustrefs along with small NVMe to share everyone's SSTATE/DL_DIR.

I prefer Lustre over NFS because Lustre offers superior IO performance scalability, making it suitable for data-intensive tasks. It splits the data, allowing it to be requested from one server but sent from one or more other servers.

For the storage of SSTATE/DL_DIR only, the size requirement would not be high, so a small NVMe should be sufficient. NVMe can provide much higher throughput and IOPS compared to our current slow SATA, so I guess it can meet our needs. If necessary, we can easily add another NVMe to another server since Lustre is a distributed file system. The overall cost would not be significant.

My questions are:
1. Are there any errors in my understanding?
2. Is this solution feasible? If not, why? If yes, can it be further improved?

I look forward to hearing from you!

Regards,
Li

