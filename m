Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93ED2E0053F
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 11:32:24 -0800 (PST)
Received: by mail-ve0-f169.google.com with SMTP id pa12so6533728veb.14
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 11:32:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=KEOLBeS/40h/Bdw6NY9/WBNWMtxpGRVbzOHhiBtPOyU=;
	b=QzPBo/spHxw/ARNxJOvm02okreeBCs27Upy+BiV+NJrgrsi4FRp9CTDa4sYVBaA5S6
	HYtOtDBXlSKqTpD8Yb5DlhwYhmVKHMaji2Ge4aoNNDk60ZIuUhFOrMQS9yRsLHnLHtlg
	MiTHspTzFvRS9fcdOIWBVVZzQNUtHGx8XQERLnSaAtnH3eD6kG6Srv+D9HR7o9weuzn8
	EvxUDVNq7CccUcunGmpaOsUV/xLJyXTyegoBOeav5Y93U2fkc/w8kscReM5mn/7VaMZC
	sgVx3gK4fPxvQzvsSeA+hRG/W8P1mDVgPvzMPU379uaszBbM/5eLZtPlMQOz8pS8dUFM
	hcnQ==
X-Gm-Message-State: ALoCoQl+qgN2RW8y5tV6WHWFntzPZaUtZrMqDqzE0Bfq719UxpSyqHfWzcr6ER7pObxV2+Hq0CTs
MIME-Version: 1.0
X-Received: by 10.52.120.78 with SMTP id la14mr19317561vdb.9.1384889544308;
	Tue, 19 Nov 2013 11:32:24 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Tue, 19 Nov 2013 11:32:24 -0800 (PST)
Date: Tue, 19 Nov 2013 19:32:24 +0000
Message-ID: <CAPhnLPDG4BJTrPw127B84igkEu+PnHpMnNgiJRqQQp6-Jb6H_g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build availability
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
X-List-Received-Date: Tue, 19 Nov 2013 19:32:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The next weekly build will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20131119-7

poky     215dab864e7cf74394840621ad0754db593708f1
bitbake     a66ee0994645aa5658b2f5ea134ed17d89f8751a
eclipse-poky-juno     7b50b0cee840092b4a575c239ddf11ba50d78327
eclipse-poky-kepler     84c1361ee96b781666a23f068244d4f1252be712
meta-fsl-arm     987115d6d099a5e87d9d5b3c4e6567a5e6309fd0
meta-fsl-ppc     768c6ef13546e0f977847bc1fbb5957571fbf724
meta-intel     f5c2786e7ca190308523379706130e0c2be793c9
meta-minnow     91cff9475081a5625c1c0bb49c17c6f3130ec503
meta-qt3     b73552fb998fd30a01dbee5a172e432a16078222
oecore     0eb947454e1c92467283e6f1adeca67c7c57698b

Please begin scheduled testing when it completes.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

