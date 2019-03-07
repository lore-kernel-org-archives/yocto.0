Return-Path: <michael@amarulasolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ECA4E00CEE; Thu,  7 Mar 2019 09:54:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C698EE00C71
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 09:54:14 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id i12so18487523wrw.0
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2019 09:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amarulasolutions.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=+BlSQEBVJ/1a2I73TE4FkcuRRZ+Txi2CRXYcKRstxyI=;
	b=XmFz5g6JXaz+6fqilsa7rL0Q6rTOY2bJ8Ew52tOBm/Fzs6pHd7jNIwtEWteINakeXF
	AhB+TT6UczHPc2prYbhwdkEVVCvM352nVKpe7t0w/0PDcj2juX/h9oa93x+KOsTDVs52
	ha7JWDrg2OUWd0gl7HxSv0puxwLX1OEK67cXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+BlSQEBVJ/1a2I73TE4FkcuRRZ+Txi2CRXYcKRstxyI=;
	b=rtCKIMf6c1T1KuJx48YMIWQXxlv45XdBKOVK6kFfLpNMk5RJk3pQql9k+f3TRrSjNJ
	qPqIaK/0ND/lmJlijyHlrxA5sJfTWdQF4PDH9LXzwXTDFyhqDw1NRF7v7yeuBIx+xAZA
	cy9YUR5rck68jKGOFZ3LA85C3DMT3Tra8kEiyqbOr6gg9reiq6GvYeL3J6GUQIYgbDFE
	0P9M93KcWilhx1LZ2vt7WfwGOxVX+GvhoaXHeWi7NnQKVYKaFDE2ZtRAl1FU6rNmI/YC
	nc4tWxSdzlU/0V4NGhqQ2X//mTGt9JTMq5xQ3A7fzRhjb/Ainb0WXHbTw/j6+IO5/QCl
	kUtg==
X-Gm-Message-State: APjAAAXheHe4ZdDw7OxYqueMToHm/iEmdJRS758kSqcSRGc1nxegUN3J
	JR2bLfHkcI5Qq8BrQO5sC6RmmsKlXYs4UuM/nscdXoQc
X-Google-Smtp-Source: APXvYqwm/FLZ4NEK/uhRIF3bGS/GE/DNwyMCSEeDrCl/MopTQQnqiTKHEP7WovgpIWbpk3IqA0gKxs1WwyLxzaTzwxY=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr2600033wrv.37.1551981253513; 
	Thu, 07 Mar 2019 09:54:13 -0800 (PST)
MIME-Version: 1.0
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Thu, 7 Mar 2019 18:54:02 +0100
Message-ID: <CAOf5uwmc7JutwaNE9OByoMSRGxacfF8CZUM2pcOgUymrcjS-Ug@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: uboot-sign pyro fail
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
X-List-Received-Date: Thu, 07 Mar 2019 17:54:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all

I'm trying to generate a sign image with pyro but problem is that when
uboot is compiled
the build dir depend on UBOOT_CONFIG and when the uboot-sign.class try to find
the u-boot.dtb file this is not get because the ${B} point to the base
but ${B}/${config}/...
is the directory used by uboot.inc. Anyone has some suggestions?

Michael


-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

