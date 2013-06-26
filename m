Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4349AE01403
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 13:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=n3qWEweA8Pmf55PCcxI/H0Vlez1IhQFIzin1zAeg4U0=; 
	b=kCMDq/IXQIN5D/BXCceBW+xtimVGdLrF2YVkA1b7Svp+8mB4iPfyQKE/7FRvkrD5i2nmduuDvl0RWxioyJgwopr/WqWQhCdfvNUw3hp7rTzPbqG/RngDmqRMhCDcBrmynBTSvHKGbs4xNAFaUJpGEJIRS/+T69kvDdZVjkscONQ=;
Received: from [109.224.129.17] (port=63224
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UrwoV-003knS-29
	for yocto@yoctoproject.org; Wed, 26 Jun 2013 21:59:39 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 26 Jun 2013 21:59:44 +0100
Message-Id: <CE7F8427-5728-4299-BFC3-0C3A03C7A914@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Using meta-fsl-arm with 'danny'
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
X-List-Received-Date: Wed, 26 Jun 2013 20:59:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to get core-image-minimal to build using meta-fsl-arm / =
meta-fsl-arm-extras under 'danny' for the 'wandboard-dual' machine.

However, I can't find a tag/branch that works with 'danny'. =
Specifically, when I use the 'danny' branch there is a udev_173.bbappend =
in meta-fsl-arm, but 'danny' only supports udev_164.

I also find a similar problem with meta-fsl-arm-extras.

I must be missing something here...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




