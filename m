Return-Path: <marc.ferland@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A42E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 11:13:10 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so2078574qcs.35
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2011 11:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=58KzOmmnva7wrlKKyzdVCGZLW7NdaO97LRbCNyRkBG4=;
	b=Z7oq13CjH7qO1ce7Ax9PJL1ib29T7An8kKxkxFgD1oVpzLbEzHwIE0PgIjI+dZDhfY
	ZgrdH+E14+VPMyRRJNyHBgbpaBDz2OsaMIBO8e2exUxNcGtdv8ZxOGlD/sUej39Mgybn
	1SWfTwHc6HDK1Kzod//NodIiX91O003CBagMk=
MIME-Version: 1.0
Received: by 10.50.196.137 with SMTP id im9mr80946igc.32.1323371589437; Thu,
	08 Dec 2011 11:13:09 -0800 (PST)
Received: by 10.50.182.200 with HTTP; Thu, 8 Dec 2011 11:13:09 -0800 (PST)
Date: Thu, 8 Dec 2011 14:13:09 -0500
Message-ID: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding features to a machine
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
X-List-Received-Date: Thu, 08 Dec 2011 19:13:10 -0000
Content-Type: multipart/alternative; boundary=bcaec554008c7e89bf04b39975d4

--bcaec554008c7e89bf04b39975d4
Content-Type: text/plain; charset=UTF-8

Hi,

I have a crownbay based machine here and I would like to add the bluetooth
machine feature to it. Do I have to create a whole new BSP for this? I
haven't seen any examples showing how to _modify_ a machine description.

Regards,

Marc

--bcaec554008c7e89bf04b39975d4
Content-Type: text/html; charset=UTF-8

Hi,<br><br>I have a crownbay based machine here and I would like to add the bluetooth machine feature to it. Do I have to create a whole new BSP for this? I haven&#39;t seen any examples showing how to _modify_ a machine description. <br>
<br>Regards, <br><br>Marc<br>

--bcaec554008c7e89bf04b39975d4--
