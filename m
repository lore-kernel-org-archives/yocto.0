Return-Path: <sunil.mukundan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BBCE00A1A; Mon, 22 Oct 2018 05:47:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sunil.mukundan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE53E00826
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 05:47:23 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id a10-v6so1677054qtp.2
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 05:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=r+8OTT8nlJ05pQW4RF5RbF7zkFpfEEf+YaxxHYd4mww=;
	b=Ht/Z2/OKScia2Blj4z85MA3GhLAEwGohoCYaTfyeDDQldtBwlJ4jvbeL1WXCuzGns5
	w8IiSNZT3FXeVHy3rnvBNLF10BC20yeNJK+MKqQNARXv7CejmtSRiZtfrLw+bepejQWv
	B6f6WGV5qiRIPjcwNmaOWa1vSxBwEb+T9PwZELFPJ7cx2muiaz+OoP3sr7AFm0E9YOfk
	hF6KYJtPwL9TLh6QGVphMqvczYzn/5ipEY3r2sOJU8WJ93vjXCVGeZBm+cA1Q19JhmgA
	7Cet9/peGB7iTgUyzpUFCcoSlnhEELfmixz3FWPg/zXq+azDqQUQzPspZ2u0yhhwRG2Q
	Y6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=r+8OTT8nlJ05pQW4RF5RbF7zkFpfEEf+YaxxHYd4mww=;
	b=g7+EOEMXe5N/hDJxzmr2nmkmK00R4X8A8liP15406dQLG7NcD0hc7ilu5LWwl9c6yL
	nAIpsvGojLnUhS36B1guPdItCT9dZX3KcT3wfAL9a5hK03RcHV/sUnzbCSR2JXuDAxWU
	FXm5dnYLHhdcO+m8Rr6tKRLM97GvpD8eOD9JbXSv8TSyQM+dvvZoPDsLK1Vytmlmle62
	V1GK7KeL27+pYfv/XhmgD/cmlpFECRnsj29cvyIyb+52xmEpdS5xRhUiPFF2+gqx2qtR
	QVbmjWLtCaXp2B/0GhJEjHjWm8j2ejwJh9DSdmdPD4vOdGC2+ohI18rIqD6jbcn+RfaP
	TxvA==
X-Gm-Message-State: ABuFfojItem1XTakP7YVf0SWAf4U++RVrCUvngu5Ypa5HDkobS4FDJJB
	rT7ms6op5oW2uDgQFN/1Jn20S5wX09lg/asj5MQHy7Fl
X-Google-Smtp-Source: AJdET5cZ+fkKaVxyJoDTdDsEEL4k8nD+FIue77lO00xAWXu5d9cSyf+BmbTyRCHe4DziHrprNv3nugNzE2wZrK0/tKE=
X-Received: by 2002:ac8:35d9:: with SMTP id
	l25-v6mr13159404qtb.165.1540212442739; 
	Mon, 22 Oct 2018 05:47:22 -0700 (PDT)
MIME-Version: 1.0
From: Sunil Mukundan <sunil.mukundan@gmail.com>
Date: Mon, 22 Oct 2018 18:17:12 +0530
Message-ID: <CAD0Q=Of26LUD-3pVPp0GGjLAv9JMCdqGaL4GCMhoPS3KTz5kOg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: eSDK installation failing with sig computed mismatch with sig locked
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
X-List-Received-Date: Mon, 22 Oct 2018 12:47:24 -0000
Content-Type: text/plain; charset="UTF-8"

Hi

I built an extensible SDK and when installing the SDK, i see the
following WARNINGS first

WARNING: The netmap-modules:do_fetch sig is computed to be
b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
The netmap:do_fetch sig is computed to be
b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
The netmap:do_populate_lic sig is computed to be
45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
The netmap-modules:do_populate_lic sig is computed to be
45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64

These WARNINGS then (probably) result in the following errors
ERROR: Task netmap.do_prepare_recipe_sysroot attempted to execute unexpectedly
ERROR: Task netmap.do_configure attempted to execute unexpectedly
ERROR: Task netmap.do_compile attempted to execute unexpectedly
ERROR: Task netmap.do_install attempted to execute unexpectedly
ERROR: Task netmap.do_package attempted to execute unexpectedly and
should have been setscened
ERROR: Task netmap.do_packagedata attempted to execute unexpectedly
and should have been setscened
ERROR: Task netmap-modules.do_populate_lic attempted to execute
unexpectedly and should have been setscened
ERROR: Task netmap.do_populate_lic attempted to execute unexpectedly
and should have been setscened

Could someone help me with what could be going wrong?

I used the usual 'bitbake -c populate_sdk_ext core-image-minimal'
command to build the SDK.

thanks,
Sunil Mukundan

