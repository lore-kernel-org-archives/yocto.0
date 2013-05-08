Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C82E0127D
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 17:52:29 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id cz11so1251383veb.35
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 17:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=0c5u+VE03Ot74L3hHXxTqQx2iV8XoWiXQhYXcu2SLAg=;
	b=bN7a1p34kSCKfZBv8kNYY0fVybRDmsnxBDycAU9sdb3x+IwIQ2N/KeWrAVfBkztcgT
	lb7RUOq74Y+ZlwSGBttsJ2Ut9xhKZ9LnrBq0YxIvvrVihbb/Yis7eB33R+D0HSMz3T7D
	hCVS5tmSB8P5A7vWa+/hTdIV6RGzcPv3c7snAztp9kJkhRgOcg1ymmR4aOhCVWDQse+R
	c+3jINaBCEFu6uZQRq9ZQJTFGLPV/wCNg1z5Eh+2sOvzf1y1f++PMg/5M/PvRVNVEWOF
	CaklLCuP1OGTV90P55zd6oggV6DVTxge+yU0106LPjU0tzzA4cTdeEflSlsIuC+T6007
	G/KA==
MIME-Version: 1.0
X-Received: by 10.58.34.44 with SMTP id w12mr2895944vei.54.1367974349191; Tue,
	07 May 2013 17:52:29 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Tue, 7 May 2013 17:52:29 -0700 (PDT)
Date: Tue, 7 May 2013 17:52:29 -0700
Message-ID: <CAPhnLPCCCykHUrNakw8RXcuvYpTrVQKcRCR=bpW-Rmy6jZ-s7w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnDIA8TcTOpGuweM0YfImleB80aiMSEQok8E1vvCuGjx+CmZHjfZgV2SasLEFwkvGabmCk7
Subject: 1.3.2_rc1
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
X-List-Received-Date: Wed, 08 May 2013 00:52:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We've begun a spin of 1.3.2_rc1:

poky 5e0124f00d4e50dd84f988b1d8c4ff40b0e1b371 danny
meta-fsl-arm a0e486a76af5819ee76ac34e966feb72bd3c48bd 	danny
meta-fsl-ppc 084331c6f72dfe8be2f4981c802c43ae44d3b812 	danny
meta-intel c216fec83f2941632460245de13f0b859738baae 	danny
meta-qt3 	c86fb1727ae09526c442ec29fffde3f010aa70eb 	danny

The build will be available at:

autobuilder.yoctoproject.org/pub/nightly/20130507-2

The build isn't done yet and I'm unsure at the moment if certain
patches made it in (ross, you had mentioned a kernel patch earlier?).
I'm seeing some issues around sanity test failures (which could well
be our familiar race condition although I do see quite a number of the
imagetest patches in the danny branch.) So, feel free to begin QA, but
right now, I'm not entirely certain if this won't end up needing a
respin.


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

