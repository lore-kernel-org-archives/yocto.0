Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FA44CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 09:40:49 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web11.34816.1697190044874756951
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 02:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=LhKIKWm0;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tHio29x78IwSoMJo5fxd+UOG+vaU7r/XMxb3b39L+Sw=; b=LhKIKWm0eNryRSVYpwb0aZ2OsF
	FYPvuH2CF6BJ4exXw6tyuTJZVrX+AvZ/5qwn5lAtt6M3Zj/CqlB0G3+7YoZpjjyvRjnG35sr5rDNt
	D6DCcfzhdypmoXojOMrAD5tC1qT05kHCnpf0SCOYEcfDCT2xKC79GyKwZRZ4mX5O/zYWM4nJDj7j2
	nSfkRVWesJr/llHf7kpwis3KDfgxUZd2xEmQfGpf0+32R6SeFSj8aLkTWJEJzov6z01No/JEG5E5W
	dFugLXbYBbNkcESiaYhV5oOu7KEoRCrSqM69ex3S2h0fVwCSDNHuol3DrTtGggXo+1RzhpnibS4aR
	YhiLsH1w==;
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.102.5]:53504 helo=fedora)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1qrEeu-00AxQE-15;
	Fri, 13 Oct 2023 05:40:42 -0400
Date: Fri, 13 Oct 2023 05:40:34 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Alexander Kanavin <alex.kanavin@gmail.com>
cc: Josef Holzmayr <jester@theyoctojester.info>, 
    Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] are there any plans for a RISC-V reference board?
In-Reply-To: <CANNYZj92WJ_j-Et35s6i6bfeSxH5p3h_rx=n6t+Q9AKGdBhg7Q@mail.gmail.com>
Message-ID: <d9349674-4b75-3932-f6bb-ffd5dd7b10@crashcourse.ca>
References: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca> <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com> <943d42b1-8628-e247-77b1-692f5ada7d5f@crashcourse.ca>
 <CANNYZj92WJ_j-Et35s6i6bfeSxH5p3h_rx=n6t+Q9AKGdBhg7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1992176453-1697190042=:872140"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 09:40:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61329

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1992176453-1697190042=:872140
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 13 Oct 2023, Alexander Kanavin wrote:

> Can you clarify please what LTS means here?
>
> Alex
>
> On Fri 13. Oct 2023 at 9.09, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>       On Tue, 10 Oct 2023, Josef Holzmayr wrote:
>
>       > Hi Robert,
>
>       > It has been discussed at numerous occasions. The main blocker is: we
>       > need a commitment for the maintenance. So if a high-ranking member
>       > decides to push forwards with this and allocate resources, or a new
>       > member from the RISC-V ecosystem steps up to make it happen, then
>       > the project is all ears.
>       >
>       > Greetz,
>       > Josef
>
>          Ask and ye shall receive. I just got the following private note
>       from jiaqi.dong@starfivetech.com, who obviously saw my earlier post
>       (and agreed to let me reproduce his response to me to the list):
>
>       > I think VisionFive 2 is an appropriate reference board. We offer
>       > Long Term Support for JH7110 and VisionFive 2. After being upgraded,
>       > VisionFive 2 with big improvements in the processor work frequency,
>       > multimedia processing capabilities, and scalability. Since August of
>       > last year, we have continued to promote the ecosystem of VF2, it has
>       > successively adapted to Deepin OS, Ubuntu OS, UEFI EDK2, OpenWrt,
>       > PPSSPP…you can check out the RVspace forum. So we would like to work
>       > with the developers and provide LTS if there are specific project
>       > requirements.

  I don't know, this is just the email I got from someone at StarFive
who considered me the right contact person because I asked the
question in the first place.

rday
--8323328-1992176453-1697190042=:872140--

