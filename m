Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85520E0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 07:34:06 -0800 (PST)
Received: by vcbfl17 with SMTP id fl17so621317vcb.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 07:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=yhwEWtRrTCMtXJQUhmkFh2li4Uj7Rq20A3TNmAMIoz4=;
	b=QHhz5XeYwvZumRnOrMGg0uR25JIU8T227tRVjAgFMvhG1EQwutdb66/TChqiqicbQe
	lNmeSkGMRbQw6MosMpqgd5kiUQ9ymLCabWLYQvkdXQdXcwLjmBKLxf1qAkZbofytWy64
	PswSbHu/5E0g0Hw/6FtANaRv3dLLW1WTvt8xlXrMb9NV7/6jPq2+9Nf3qwPWkxM//eoB
	f79sKhMpiAmyDq2XS8aHirwYtI2rw18oRRpP23eTbQLiHV3UtDo3ggaeF9zuCoBh+toZ
	86U+KwTN+JD49AfUEkdIYVFh7Ijk/qvsrqRNfTJsB0kfWs5qmc6dUFoNLLU0lsMQ62vP
	R40A==
Received: by 10.52.64.234 with SMTP id r10mr10752468vds.39.1331220845849;
	Thu, 08 Mar 2012 07:34:05 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id he3sm4284023vdb.2.2012.03.08.07.34.04
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 07:34:04 -0800 (PST)
Message-ID: <4F58D16C.8030309@gmail.com>
Date: Thu, 08 Mar 2012 10:34:04 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 15:34:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Suppose I want to build the meta-intel/meta-sugarbay image and also 
include some video and audio files into the /home/root directory to 
facilitate testing of the video and audio players.

Can I include these files in a recipe somewhere?

Also, I know that I can increase the spare image size so these files can 
be copied in later with the IMAGE_OVERHEAD_FACTOR and 
IMAGE_ROOTFS_EXTRA_SPACE. But where do these statements go?

conf/local.conf???

Jim A


