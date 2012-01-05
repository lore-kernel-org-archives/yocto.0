Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0667BE0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 07:59:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadc16 with SMTP id c16so481624qad.14
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 07:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=w4yFCqSWqbcZm94QimFEyvMlW5NOrPjYo/HCwCf9NjI=;
	b=Z7ceB1/D/3Hxws9whE/3Ga7xKJdQs7MG4Qpxo7fNrgFrOpDxCqAceJVtxHOSkOwIpN
	q5beflBX6xucX4vIguu2V99lXVAg/BpKSpHky0U4KZRG5cDgxa5xvgLy8CAZhzjMKMFQ
	bfQhWCKSI4ijnP9qsfqAKDVRfTip1MuSukEkI=
Received: by 10.224.106.7 with SMTP id v7mr3328311qao.76.1325779145150;
	Thu, 05 Jan 2012 07:59:05 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	q14sm116236593qap.4.2012.01.05.07.59.03 (version=SSLv3 cipher=OTHER);
	Thu, 05 Jan 2012 07:59:04 -0800 (PST)
Message-ID: <4F05C8C6.2010603@gmail.com>
Date: Thu, 05 Jan 2012 10:59:02 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: building Yocto on Fedora 14 vs. Ubuntu 11.10
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
X-List-Received-Date: Thu, 05 Jan 2012 15:59:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm finding differences between the number of task for building 
meta-cedartrail on ubuntu 11.10 vs. doing the same thing on Fedora 14 
and wondered if this is a problem.

On a clean build of core-image-sato, the first section has 63 tasks on 
Ubuntu 11.10, but 126 tasks on Fedora 14.  126 is the number I remember 
seeing for the first section of the build on other Sato builds.

Is this an issue? is this caused by the different development O/S's?

BTW the second part of the build has 4426 tasks on Ubuntu 11.10 and also 
on Fedora 14.

