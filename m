Return-Path: <pedro@algarvio.me>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDD97E0054C
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:07:27 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@algarvio.me;
	x-dkim-adsp=none (insecure policy)
Received: by wibhq4 with SMTP id hq4so12254191wib.35
	for <yocto@yoctoproject.org>; Mon, 02 Jan 2012 11:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=algarvio.me; s=mail;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:openpgp:content-type:content-transfer-encoding;
	bh=KHQ6WnqPELcF9jWPcH01yMLn6lxMVH97I4dUOcxLn/0=;
	b=hzUc9O4DXb+npKzKV6HOLDhxas+pBF0lyVoEDbnWfw7iWaUXrRRhuaZ4DVNMC1pky2
	hWRWgfTewCEtJ2Pc5EHChRV+M4w4o7NS18VQbm3++whLWL1JsHJAKXzK0kESpAeJEKST
	VIbgd6LdVNm5B+q3N6idwXM13fZtdWoecwuPY=
Received: by 10.180.19.138 with SMTP id f10mr136677594wie.3.1325531245498;
	Mon, 02 Jan 2012 11:07:25 -0800 (PST)
Received: from [10.1.0.33] (a89-154-151-86.cpe.netcabo.pt. [89.154.151.86])
	by mx.google.com with ESMTPS id g26sm25399207wbo.16.2012.01.02.11.07.12
	(version=SSLv3 cipher=OTHER); Mon, 02 Jan 2012 11:07:25 -0800 (PST)
Message-ID: <4F02005F.4080705@algarvio.me>
Date: Mon, 02 Jan 2012 19:07:11 +0000
From: Pedro Algarvio <pedro@algarvio.me>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.3.4
OpenPGP: id=9C558009
Subject: Python Math Module
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
X-List-Received-Date: Mon, 02 Jan 2012 19:07:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I've started to port the Mini2440 openembedded layer found at
http://code.google.com/p/mini2440/ and also PySide from Angstrom or
the old OpenEmbedded layers I think(can't remember now).

My layers can be found at http://dev.ufsoft.org/projects/yocto

I found out while porting PySide's examples that python does not ship
with it's math module, is there a specific reason why?

I need to add that I'm pretty new to all this, so I might be doin'
things the wrong way...

Anyway, any pointers on how to add the python's math module to an
image is more than welcome, I'd like to include it as a dependency for
the pyside examples bb script.

