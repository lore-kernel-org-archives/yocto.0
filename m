Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.9530.1613489659647601661
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=W9CRwrM2;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 25307B3D;
	Tue, 16 Feb 2021 10:34:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=RhX5UGZmtzhbx
	mvTo41gFVJpnIUyAZ03JliSOarXaiI=; b=W9CRwrM29S1k3/D/zc6XwYa0vbN+F
	u44xEA/CLvnvjWeS2iom7n4LMmaOfbU0dboAq0/MxpRrEGYm4YNDeJcisXA2+Yqe
	vVUq5W3FUgOdnC/po3FpZcjMU6RRLsxhsI258d4uhM7VhEgP9bPM+23Qx+45mRUE
	4LqUfd1O89s3Wf065vQUWmTOox3+UgIMMTFnbepdUiDC0k8wJuQ6LdLgPtj4jVvn
	Ckh9ijwoq/POtaviszHrsD3ak62bIDh9YfZHVa5Xavqq2ZnfitKXK3Hc6E5i6zxg
	jspzOQGtM8qcVbhkQnT/FtEBp7TOa9qJim6zGdx+MKIqHPTpF22Q3EG5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=RhX5UGZmtzhbxmvTo41gFVJpnIUyAZ03JliSOarXaiI=; b=UFYiOb26
	IvxHb8T2ZNMLuc1nXCI1ify0cZrmTA7YJGR7SKENJrRLNZOKTfK6WHv9rpzNRJ7F
	OmhQD6xQY99AHsTM2RBqj0xFxTxq98jq6aeacuPyd3P2yci6RuIfl2vKH9eO/A+s
	u3CzctAQ+FiLWzptNF1zU2hU9/pBS9eciSRCtqdNgJjI0gs2nzK2q7WNuPNQu9sO
	gnvOX+lKgVL6yJc+FGBNzg/sBOZSOU9eNyIlY0j6nnz04aMCMAQoqa1biWgFc7yi
	d2vTbNVbEgnFk468NCRasclAHtfxMIDcPHWUTaWV1d3KfRGlxU5CplNZlmTf32NB
	vL/krSVypbDzuA==
X-ME-Sender: <xms:-uUrYCcJXha0HsOzw-H_Lg4qwKpIYBA9cbcZegBQsgJgL7RiXakElg>
    <xme:-uUrYMMLLYzQ1wRs0Kkm5iMONa1kp4OhGqMy3mrlExDQR5EmY0f8V3wKDmSkEXIq4
    qrurbn2bRNxUl3YXYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:-uUrYDiM4xADXoajCsv_76EaPpIVxVxYxF0Y_zCToYZboLhWdiMdqA>
    <xmx:-uUrYP9vYLkSe97kPiDUAlRwRKUE50yE4qVTbLryxI1KVKKpH1yOmg>
    <xmx:-uUrYOuNBjD951lFjzYmEBPVYYo5KmFs2IaWuNlkRlZ4eSDnGdCL-A>
    <xmx:-uUrYP7TD0zcVmKHKsV2fkMc_p_dhqfhq-wHJwo29fMJjYSYfS5_Qg>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id CBB95108005B;
	Tue, 16 Feb 2021 10:34:16 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 10/15] zephyr-peripheral-hr: Add recipe for BT HR sample
Date: Tue, 16 Feb 2021 15:33:05 +0000
Message-Id: <20210216153310.79138-10-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
new file mode 100644
index 0000000..e6ef7b8
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/peripheral_hr"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
-- 
2.30.1

