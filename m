Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4414E00D83; Sat, 11 May 2019 12:42:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1195 seconds by postgrey-1.32 at yocto-www;
	Sat, 11 May 2019 12:42:41 PDT
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE2E2E00D51
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 12:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-ID:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LCo1CFO9I/6dkj7cJKQLC0Dss5fIqqxwlg8+crr/Oj8=;
	b=GZNLVdh1q/zFCxmgl2ndAb4UrH
	lNNZcuE1ZBVZ/gwhhpnyz8yzqFXklqUGCEM33tZ0eMbGpeEpX/YPCXmTj1KkfGLpA5WGUI+HoK9N9
	BXm8tUJmji5Tt2DbPmb86P2oYMwgKI/sVs0b+zkpRuRqAs4mIMPm83hAyo9paBn1SPh3fFip07fkl
	f3uk1QeUTvxDxP9tpV/qDWrV+xBIqEp3CcZJI74S9nZvM7JjNBqtKnLAcv9LQ4f26B0HYAY2Weaqm
	U0eG9HAbaD3dqEW3pjt5j4IbhQRFq1GjT7kdO3Aagc/IJgLEQVUo+yo+aZvPWL7eaBssy1i6IVziS
	MGN+s/PQ==;
Received: from [213.221.150.139] (port=58446 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1hPXa1-00HJmN-0a
	for yocto@yoctoproject.org; Sat, 11 May 2019 21:22:46 +0200
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
Date: Sat, 11 May 2019 21:22:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Subject: linux-raspberrypi_4.19.bb unknown commit
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
X-List-Received-Date: Sat, 11 May 2019 19:42:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I try to use the Linux 4.19 for the RaspberryPi from the
meta-raspberrypi recipe linux-raspberrypi_4.19.bb but the commit
ab8652c03fa081b27de7e28a74c2536cb2aa3e5b from his SRCREV don't exists
into the repository github.com/raspberrypi/linux branch rpi-4.19.y . I
searched that commit on a few others branches but failed to find it.
Have anyone tested that recipe ?

Best Regards.
Jean-Christian




