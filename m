Return-Path: <john-s-84@gmx.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93422E00CEA; Fri, 28 Dec 2018 03:46:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (john-s-84[at]gmx.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Dec 2018 03:46:40 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE75FE00CE4
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 03:46:40 -0800 (PST)
Received: from [31.18.253.56] ([31.18.253.56]) by web-mail.gmx.net
	(3c-app-gmx-bs66.server.lan [172.19.170.210]) (via HTTP);
	Fri, 28 Dec 2018 12:41:37 +0100
MIME-Version: 1.0
Message-ID: <trinity-74e80e4f-6b96-4543-b5c9-1d573d70d34b-1545997297433@3c-app-gmx-bs66>
From: "John Smith" <john-s-84@gmx.net>
To: yocto@yoctoproject.org
Date: Fri, 28 Dec 2018 12:41:37 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:DnZycBiS7vuOEudyi0U0WAu4VTJ3kKFfPR5zEGIfuP9SxzyFhb3lPSvkHunLceufUNb5q
	kmeWCh9ppN5Qs8bccpadAZW1/RE/3AiA85DYDOJJVKoqwcfKQkI9T5x163XywUA/O5CUPWy/kVsE
	3FhaOzoTGUw+dIWsQhMJyOveresRbj9jMTiTijLKcLaxTvoAyl7XmRQ3P7l65QPU+hKraeqT56LM
	/JKqS5xEGgzbRIvNodkTaSB57H2+1gszw9NuTfQnOJf1/ueVrNICKrGCruDLAwH6I5oDRb07FBv3
	Co=
X-UI-Out-Filterresults: notjunk:1;V03:K0:p8LzTX9f6Ws=:fXnuf+WRtu2+qiGPWehJd8
	MNvmmQCLh8J4k44F6iSczfiNpkdCIgNj7J3+wI7JFZfD+EWJb/0euP2bAjVvjCxSAPO4BizQe
	YlK3mJEtnKMKBS7bJEahEF80qpOWo8yPiGHqdlWmuTiwPTj2XDhQdP/C7D+HoRCMqSeWHCzoB
	Vmgv5EuNDBzAyHOwkGfd8JvHFJ5zCzM+K+j9w8e9ZnDJv3/GEmmtf+R5ZvqhQFcXUl1xJz8xZ
	vRC+cziOL8Eph0ZGPtEM3qRcGUeVo57sH/heiTsVcflfsw3JR2EXh7IikPOSlZoiZsakdbLE7
	YYQPysSXXXwPSCyM/93bWxpQUpdNFWJk5m2H0XAhfm33KIAM3GX2PEeF8dNTQrPKrKm7TDTZZ
	PD8brlDCDaGvppLIvoSD5FqRRysIpaw+xi0MHBqtaOleC1zayjB0dIFP9Fvts9Q9nhXiPxThv
	uz6frTf0/0x35yreChi79DbIc+8CUqbXz2KX4ny9XN8gk3VqITeKeSuOiyAdlqjXYfKgf3/FY
	NBdFGq13U9JCLO+1zWbI6VaYPApzO2HvGA39i7L1D3tm3NWRtpTklTVEmsb9vDVcGHDdnW/wO
	k0QNozM/COvIY=
Subject: Switching from udev to busybox-mdev causes errors mount: mounting proc on /proc failed: Device or resource busy
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
X-List-Received-Date: Fri, 28 Dec 2018 11:46:41 -0000
Content-Type: text/plain; charset=UTF-8

Dear list,

when using busybox mdev instead of udev, I get the following erros on startup.

[..]
INIT: version 2.88 booting
mount: mounting proc on /proc failed: Device or resource busy
mount: mounting sysfs on /sys failed: Device or resource busy


What further steps do I need to edit for a clean boot? I only set VIRTUAL-RUNTIME_dev_manager = "busybox-mdev" in local.conf

Best,
John

