Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A397FE0121A
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 05:52:20 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so2587640qcs.35
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2012 05:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=5dHIk26zxMGcIauTlSUeBKn8xVc0ks27Fz43ROvOvo4=;
	b=VQn2jBqp1BZ+ZpWUTIGo2zcUS9l69FNRE7GgmfMU1rHEe628Rgw9JwL1ZSmDBweqAG
	tt2w3ZUpF1ZuGgEfvizSHI7B3oLBP0Kx+gJdhQGUdhHqD9nB4Jz4fowfV6Zla7K/iTfP
	UjqzGSFW3E4FwaB6GI6VL5buVnYfouau4w8EI=
Received: by 10.229.78.211 with SMTP id m19mr5634678qck.156.1326117139953;
	Mon, 09 Jan 2012 05:52:19 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	df3sm143094955qab.6.2012.01.09.05.52.18 (version=SSLv3 cipher=OTHER);
	Mon, 09 Jan 2012 05:52:19 -0800 (PST)
Message-ID: <4F0AF110.4040403@gmail.com>
Date: Mon, 09 Jan 2012 08:52:16 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: builds failing
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
X-List-Received-Date: Mon, 09 Jan 2012 13:52:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Starting Friday, I noticed builds(n450) failing due to files not being 
found. This morning it's still failing on 4 kernel.org modules:
i.e.

http://kernel.org/pub/linux/utils/kernel/module-init-tools/module-init-tools-3.16.tar.bz2

