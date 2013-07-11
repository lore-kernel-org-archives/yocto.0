Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28107E01405
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 03:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=/HU92dUkzd+pgGZkhV9NRJqKP890i/MmnJa/kWInUHs=; 
	b=q16uXLwsTqw5J0b5XNf479lkuYoUj5+w2FYEeXMX6DWJxDka+MqnHHzRkZRRRPWJd1kDwRqgXmsyCjlV7ASWt97lTvRssEpzDh3s4MoOZ+cDVZEUgFPUHfequ+Cf3wvQk9MYXa7JRGHBR3U/aEylr+d/sV2P9gTiluHJw9lmReo=;
Received: from [109.224.129.17] (port=28050
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UxERY-001Zh6-BQ
	for yocto@yoctoproject.org; Thu, 11 Jul 2013 11:49:48 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 11 Jul 2013 11:49:47 +0100
Message-Id: <FCD3D60D-CC00-48A3-89DD-7C73AB3C8404@keylevel.com>
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
Subject: Ubuntu 11.10 to 12.04 upgrade
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
X-List-Received-Date: Thu, 11 Jul 2013 10:49:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

My current build system is an Ubuntu 11.10 64-bit (server). This is now =
out of support, so I plan to upgrade to 12.04 (LTS).

Is this likely to go smoothly, or are there some gotchas to worry about? =
I'm currently building for Poky 8 if that makes a difference.

Thanks!

Chris Tapp

opensource@keylevel.com
www.keylevel.com




