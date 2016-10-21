Return-Path: <adapau00@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11011E00C60; Thu, 20 Oct 2016 21:18:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adapau00[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C510AE00C22
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 21:17:58 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id x79so128248097lff.0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 21:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=SuJ7g5wKZKdPueLlUHmGbNB8LmglO8RfIj07nvo8l2s=;
	b=IXw/xs+dVyhvGLGczWc+LaQMgvxVbKY+VOqVlZXOVUqJocmw+xiI2ogArQjPstyyZ4
	Y6UeD5aUYaCr+5wd+V2MBn+EZpNCSuL3EnIaGG/rmPlWPyjrIdvv0Y5RA2RT2VlK+xzm
	hsaOL6Js2p6yEynJCfkf4Uki2JQx8McXZZ8FzR4XlcZp7q2/76U06R5YKE2GJi3G9NKQ
	7+WQeIXBydppAnGKWtq1yd9WixYtiAeFmSNQWHJfLOjNHgoh7cGPyBC6LctTN2qMRUUy
	CToGymTi+UJe4oLdJnUvUtn3xXYmQOs3bOz0zDS0j+HXeW8wLuKBc1KzzUC3z6ngdsUO
	iRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SuJ7g5wKZKdPueLlUHmGbNB8LmglO8RfIj07nvo8l2s=;
	b=YIOLBilKNWbOUjsJtiOSpFodNca1do2f07EI1mB+tbXWKDEEbiWNBF90CC6iKkELSQ
	vUwBW+KayWrmpr6dLJBmSV0vG2XrjJZP38bpCBF+lg9pDqW602KgxJSx6i8tAR0G13aR
	z2B3+38suaeGsJxXxwRPQSLzc0FKnqDP2MfQjEKUg979peNeI+ttA4Xze5SaWyzCEK/O
	lmV1l0XCqeuZSSV4ahJumFpbfVtQiuZQQ3XP0T8kKJRYiQ2t2vXVXOjoZtkv6eGsx0So
	03quQeYkHvqRje0S+H4otn6cmIy3aWiVa1w9ueYucKAaUaWHzbmpAPd5T5Rlq3AIrPiW
	m8Zg==
X-Gm-Message-State: ABUngveTqorNnUwLWI2WyK9+tQ75eXl79NpnJ8obL/QVuh1xs67JRaTftof5wxP7Sc2HrTvdutSVhsU1Oxuf3g==
X-Received: by 10.25.27.69 with SMTP id b66mr5211105lfb.36.1477023476640; Thu,
	20 Oct 2016 21:17:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.74.213 with HTTP; Thu, 20 Oct 2016 21:17:55 -0700 (PDT)
From: adam paul <adapau00@gmail.com>
Date: Fri, 21 Oct 2016 09:47:55 +0530
Message-ID: <CAPd5en-LgksAxOe4RdPLgGVyMVd6ktkvssDZxm_eHJG-PyLAXQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 21 Oct 2016 12:40:37 -0700
Subject: no wlan interface on raspberry pi 3
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
X-List-Received-Date: Fri, 21 Oct 2016 04:18:04 -0000
Content-Type: multipart/alternative; boundary=001a1140153ea67030053f5853cb

--001a1140153ea67030053f5853cb
Content-Type: text/plain; charset=UTF-8

Hi,
    I have loaded yocto krogoth branch bsp to boot raspberry pi 3. After
the boot up, ifconfig lists only eth0 and lo. no wlan0 is listed.
i have checked the loaded modules, lsmod lists cfg80211. How to enable
wlan0?

--001a1140153ea67030053f5853cb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi,</span><div style=3D"f=
ont-size:12.8px">=C2=A0 =C2=A0 I have loaded yocto krogoth branch bsp to bo=
ot raspberry pi 3. After the boot up, ifconfig lists only eth0 and lo. no w=
lan0 is listed.</div><div style=3D"font-size:12.8px">i have checked the loa=
ded modules, lsmod lists cfg80211. How to enable wlan0?</div></div>

--001a1140153ea67030053f5853cb--
