Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5CD7E011C0
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 14:51:32 -0800 (PST)
Received: from mail-da0-f72.google.com ([209.85.210.72])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 02 Dec 2012 14:51:31 -0800
Received: by mail-da0-f72.google.com with SMTP id r28so3099529daj.11
	for <yocto@yoctoproject.org>; Sun, 02 Dec 2012 14:51:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=o6jE9hyrAY/w2Vn9Rgw/QO9QCN4MgnOV4tb7Xr1igZw=;
	b=EwI4hLFvrEr9DuNNTH6HNlqc8x5drytHlP7xuoH+mp2urBtjNcYVK0Ap8tXqV4bsda
	Xy79lmErr3ImR4SzjygFCXv5gT37ELpxFBKTeDLl/SUegZOSXZmN+ZOIMU7hF5P2+ZE9
	/1LACgmBa3N7vk2Le3KGJ9jKQIRtLhe7tP4KpOibVr21OlstLmfBiTQPcV7L3D+Kxm4q
	UkNVuQeSxhzPO2O1zm5rhu4jDBvlRhhd+iB+yz1PMyznxXolMnd1X+CcU55Dqqum3CRj
	H42OWviWvdv53dnOX1qUnvfYamGs2/mm9rta9LIvoZ048MSA6Q9HxHbhzisR4loAH4TJ
	oh9Q==
Received: by 10.68.248.1 with SMTP id yi1mr24534028pbc.93.1354488690700;
	Sun, 02 Dec 2012 14:51:30 -0800 (PST)
Received: by 10.68.248.1 with SMTP id yi1mr24534019pbc.93.1354488690608;
	Sun, 02 Dec 2012 14:51:30 -0800 (PST)
Received: from [192.168.0.190] (71-20-35-93.war.clearwire-wmx.net.
	[71.20.35.93])
	by mx.google.com with ESMTPS id c1sm6882867pav.23.2012.12.02.14.51.29
	(version=SSLv3 cipher=OTHER); Sun, 02 Dec 2012 14:51:29 -0800 (PST)
Message-ID: <50BBDB70.2040803@intel.com>
Date: Sun, 02 Dec 2012 14:51:28 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQn6r8br1GGe6MgpbXJRVJNWOcj1SvZlDBoUsDDuUZB9qpl0b+cmrqAxMoz51VHdIoHhhH6qYcMxUJjJ3gdDWUtcD+efHX/9bv7+zqTm5Zlok/bOptV93VMIZZgvRT7KH9Fz5ZZbh2OYkReFQzXLijQJvDOmlQ==
Subject: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Sun, 02 Dec 2012 22:51:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hey folks,

Robert Day has brought up an inconsistency in the way we append to 
BBPATH within a couple of our layer.conf files.

In meta-hob, meta-yocto-bsp, and meta-intel, we do:

BBPATH := "${BBPATH}:${LAYERDIR}"

but in meta-yocto, we do:

BBPATH := "${LAYERDIR}:${BBPATH}"

Unless someone explains to me that it's necessary to use this different 
ordering in meta-yocto's layer.conf, I will submit a patch to make this 
more consistent.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

