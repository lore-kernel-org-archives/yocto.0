Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7141E00828; Mon, 23 Jan 2017 01:19:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C90E007EB
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 01:19:07 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id j18so105764377ioe.2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 01:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=E3IMf6U3t1gQBAYvKgkO9SIGbrxul1ne49/+3ynbMhc=;
	b=0pMr3wAvVYih90cG9Br5XExYtiJ8yj6IXQkzrulliZ8NvgMghqE8kzwVcnaVkkVpN/
	Ccb3BOI6JCRxKOiQ1iVsnu6Ck0a1lczmBdJtVqF9Uquv+/vwc3xriykctHKLtkQof7KG
	gEGiCMQWH6BQuSIYjYlWuVgcTKZqvbOzpi2sN4Dx7XchE1soYZTdqOX2nqM+g4as6T+N
	pLCYeFW5XlZ5DUgfL3ua7Rqa+1bqiJAZFTWk6wmSUo6hgOkSaZUFzNMYQGvZX9GMhvNn
	dYO9ew0q/RtBkas7ZjqrkyySNyphBpFkOaoXlLj0v0sOyKjoqD36giYQgdFY6nacesft
	3uPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=E3IMf6U3t1gQBAYvKgkO9SIGbrxul1ne49/+3ynbMhc=;
	b=c+bi0v9mDX3b4+0QmCdRkKOsqrkiXU0OYEecrJCiGlqSkgbjA8P9rsf4OmDHHCnQZF
	JVHOD6kOXB1oIpmOUWc4597VJMrVjUy3BUGeP3/hXtPrUVDxICmDw6LPx91idqv7Sv6I
	0VBTnVvMQnfibpZVtHxRixAP1/gEaH/mMYVRRCiKmdgZlgWdqPUHGfflXEu+3skpkvcJ
	qBO7H0Zr3zor99kvzZDA0cW+t+ZjEDQy6ndkaojbP7bNz+EgP1jab8ZnSMjBZXS2RYpr
	UTjnCp/pDK73pL6jo1DktxXawKU4hBte/bWAJcBDQIHn3FOCdKQNAYOvw+9LmQjJuKFL
	Up9A==
X-Gm-Message-State: AIkVDXJeiriyhJJQtzp/gyfYuCn5Z6CUxeeTXE5mIjREYTuxGOFAgCI0LbiNmlli5b0EbFJN
X-Received: by 10.107.154.17 with SMTP id c17mr22633170ioe.109.1485163147208; 
	Mon, 23 Jan 2017 01:19:07 -0800 (PST)
Received: from pohly-mobl1 (p5DE8FC12.dip0.t-ipconnect.de. [93.232.252.18])
	by smtp.gmail.com with ESMTPSA id o1sm6130015itg.4.2017.01.23.01.19.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jan 2017 01:19:06 -0800 (PST)
Message-ID: <1485163143.20333.17.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: colin.helliwell@ln-systems.com
Date: Mon, 23 Jan 2017 10:19:03 +0100
In-Reply-To: <0aa701d2754c$f26ba1b0$d742e510$@ln-systems.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
	<093001d27325$7dc14cd0$7943e670$@ln-systems.com>
	<CAMjhiJiRY9cC_+cGL9j0AfVqjhPnBz2hZZur6k2iOGOyUPhBgw@mail.gmail.com>
	<0aa701d2754c$f26ba1b0$d742e510$@ln-systems.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Mon, 23 Jan 2017 09:19:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-01-23 at 07:47 +0000, colin.helliwell@ln-systems.com wrote:
> Looking at one which does seem to switch over cleanly - dropbear - I'm
> puzzled how the recipe [dropbear.inc, in poky/meta/recipes-core]
> appears to install both init.d script and .service in its do_install,
> yet only one or the other ultimately shows up in the rootfs..?
> (Relates to my other question about how to determine the init type in
> do_install)

systemd.bbclass has a rm_sysvinit_initddir postfunc for do_install which
removes sysvinit config files if the DISTRO_FEATURES enable systemd and
do not enable sysvinit.

rm_systemd_unitdir does the opposite when systemd is disabled and only
sysvinit is enabled.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




