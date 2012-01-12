Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23584E0072A
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 04:53:43 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qats34 with SMTP id s34so73345qat.14
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 04:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=53xULJcVDAG6UVRCW2Igja+07SHULf9LX8oAipTcT5w=;
	b=xUepQFTpjgHFK8Udk6J5LS/Zi5S0YWeRWQ5PFvC+BeH1PUgEp488a8q6oLtfLS2jY2
	9M35ErepKBZBkmB13I68D5nZbojjsg677wXpNdn2btdMyoqsUmPs7nfcOPk/8y9FTKk3
	mz35KYQPZvgdmYhIAhNPnxyvdf5B+qSd8Nbkk=
Received: by 10.224.173.135 with SMTP id p7mr5047437qaz.83.1326372822273;
	Thu, 12 Jan 2012 04:53:42 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	hm10sm9922636qab.12.2012.01.12.04.53.41 (version=SSLv3 cipher=OTHER);
	Thu, 12 Jan 2012 04:53:41 -0800 (PST)
Message-ID: <4F0ED7D2.9050807@gmail.com>
Date: Thu, 12 Jan 2012 07:53:38 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: where to put IMAGE_INSTALL??
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
X-List-Received-Date: Thu, 12 Jan 2012 12:53:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

There seems to be some sensitivity to where I put the statement 
IMAGE_INSTALL += "web-webkit".

At first I just modifed the meta/receipes-sato/image/core-image-sato.bb 
file to include it.  That caused the webkit to be built.

Since that is not an ideal location, I removed it and put it into the 
local.conf file.  That also caused the webkit to be built, but I wanted 
it to be part of my BSP permanently.

I thought about creating a core-image-sato.bbappend file with the 
IMAGE_INSTALL += "web-webkit" in it and put that into the BSP, but that 
didn't cause the webkit to be built. Under the meta-intel/meta-n450 
directory, I created a receipes-jfa directory and put the 
core-image-sato.bbappend file there.

I must be missing a key rule about directory parsing and .bbappend files.

Jim A

