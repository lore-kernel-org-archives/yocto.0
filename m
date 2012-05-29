Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3B01E006D9;
	Tue, 29 May 2012 12:58:05 -0700 (PDT)
Received: by dadz8 with SMTP id z8so7495951dad.35
	for <multiple recipients>; Tue, 29 May 2012 12:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=WGuZu9tF565i2ezY8EBCO5SNNisH9M4DZZU3Vy5Gtc0=;
	b=oA33SsHkFHRWPIxNJ0paOjdnZhEwzEeh1Om7cGAqXYoPY6JMpEazkxlZ8yqw9yKxvV
	HNMq2pwX25HxkLgYyI7xgedPKyTLjM27fYZayCXOLoKXfHft8+tnWYxjwihSmk1Hvz+L
	SBdXAFRnynxjrLJXWx4hTCgNdxABuVWfInrweDoOaTEFaaFEVYVSFjCBWUnQw3Kf9fb8
	yjmqXjnKxPq4MiiR6WsFEmTabigkc5pY1E2XWqiBcKAQQG6/xUbYYAmoKWdB9IRpDx8/
	F9ajIUf6DAllUaX3V7Zikf9ew5LHOvD9l+OSl/DCKiYeNN+vBgRLGBpHPF2Ga06ZobG8
	Ypzg==
Received: by 10.68.192.5 with SMTP id hc5mr30780237pbc.49.1338321485626;
	Tue, 29 May 2012 12:58:05 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id np8sm4828539pbc.71.2012.05.29.12.58.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 May 2012 12:58:04 -0700 (PDT)
Date: Tue, 29 May 2012 12:57:33 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Message-ID: <20120529195733.GA5528@sakrah.homelinux.org>
Mail-Followup-To: "Saxena, Rahul" <rahul.saxena@intel.com>,
	Wolfgang Denk <wd@denx.de>,
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
	<20120523054439.75DAD20025A@gemini.denx.de>
	<63ECFF2A2302B44093D7CE9E9962C490127DD2@ORSMSX103.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C490127DD2@ORSMSX103.amr.corp.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 May 2012 19:58:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (23/05/12 20:47), Saxena, Rahul wrote:
> Please see section 1.4 of the bsp-guide (http://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html) including the following text: 
> 
> " Note
> Pre-compiled images are bundled with a time-limited kernel that runs for a predetermined amount of time (10 days) before it forces the system to reboot. This limitation is meant to discourage direct redistribution of the image. You must eventually rebuild the image if you want to remove this restriction."

seems like fruits and veggies which get stale after 10 days

