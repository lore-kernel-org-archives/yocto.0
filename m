Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B376E0123C
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 07:06:33 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so6307767qcs.35
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 07:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=0EaDihn/LQLc3VukBRXs9JqTrFOy2yJylPmsmMYZaGc=;
	b=vx5216OYdV/xCn4GYC9h9WT+pd8TxUE3SmoF7WSLvec8OlKf6yWHfse4H7bIsa9t7Q
	uui5ZGdDN24dJu9lhNN9uG9VWfOskgtbyN7Y2YRASVyxhsuEQStAhkgXYFKlFlu4ZXBM
	LNbCmcyDnWgSNeaXdMz6+mbZyiJI3p+1lz0+o=
Received: by 10.224.199.134 with SMTP id es6mr14042664qab.2.1324566392592;
	Thu, 22 Dec 2011 07:06:32 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id m4sm15687465qan.5.2011.12.22.07.06.30
	(version=SSLv3 cipher=OTHER); Thu, 22 Dec 2011 07:06:31 -0800 (PST)
Message-ID: <4EF34776.9030002@gmail.com>
Date: Thu, 22 Dec 2011 10:06:30 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: meta-ti?????
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
X-List-Received-Date: Thu, 22 Dec 2011 15:06:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I know the examples in the documentation of Yocto use meta-intel a lot 
to get the board specific BSPs like meta-crownbay or meta-n450.

Is there a meta-ti or similar that gets you the meta-beagleboard and 
meta-pandaboard?  If not how do you clone and checkout the pandaboard BPS?

Jim A

