Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCDDCE017B1
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:02:13 -0800 (PST)
Received: by mail-qa0-f54.google.com with SMTP id j7so1630183qaq.6
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:02:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=KO7zag5iYmaXK/Rr021duqxU7rG/pLM1INCduyT5FEw=;
	b=V/bIE6yUqnuMJs1Lf6TEpo9oJoST6koS/O/W8EHhk4zQjXBxge5Ml12bKAEaUmPCvd
	DfVPZEZOlGIz8LWCL2ws5kBF3RoCx3ppdrXlcw9digwljllYU1gjgTtJzlillm6ILVDR
	LliOHllRf4MchQQtM6joqPKhghITHkYaKB/lsk7+f2HKELOqzrGu8tO7ArEpgnG+rl9R
	Ng4C968dhnZlahYc5o3dJY3YLM/eqA9HJU9Nw7HlY5rB9og9fGuj6D9TIrCWgbfpinmY
	pu/bJcz08mJ8Xuxijl2iN9Esss8uxUsSsZXSJVm84IcAtH/tHsclc1XQcDERISVWBDD/
	xa7A==
X-Gm-Message-State: ALoCoQle2VsJAxINb3iWj8MSUe8YXMRw7CfnB5JKzw2y/iOr6gRa05VyjuDQOpOSETBUhyGyrvgx
X-Received: by 10.229.79.70 with SMTP id o6mr45812075qck.21.1384164132299;
	Mon, 11 Nov 2013 02:02:12 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id h9sm56613780qaq.9.2013.11.11.02.02.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Nov 2013 02:02:11 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 11 Nov 2013 12:02:02 +0200
Message-Id: <1384164122-11926-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] mesa: Modify version to match the one from oe-core
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Nov 2013 10:02:16 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} (100%)

diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
similarity index 100%
rename from recipes-graphics/mesa/mesa_9.1.6.bbappend
rename to recipes-graphics/mesa/mesa_9.2.2.bbappend
-- 
1.8.1.4


