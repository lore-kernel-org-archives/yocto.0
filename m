Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC61E00749
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=f659YZFKW2bTCt35kGBZ1CQNbOf71riHMKevOosPuLY=; 
	b=j8ABdoNCJuhFKd33RVrmSrV2Gn3T7uqwV5B04cWsa9EsmSvkhAlWpaJgR+NZLkbFYW7eNe3i5IYQIYUJX8g5DFOtLEks6ac+AHjlUllgCTVinXgwE3ZlsiaKKm9GSmC78OKW7fXngCFIH37FvrNTGAiS04t8HBZREPRDIQR+yfI=;
Received: from [109.224.129.17] (port=50160
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UoApu-0002aD-Bj
	for yocto@yoctoproject.org; Sun, 16 Jun 2013 12:09:30 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 16 Jun 2013 12:09:33 +0100
Message-Id: <981EAD74-B99C-43D8-8DD1-FF06BB484CAA@keylevel.com>
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
Subject: Disabling udev NIC renaming
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
X-List-Received-Date: Sun, 16 Jun 2013 11:09:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I use a USB drive to boot systems for testing and to install the image. =
This works ok for the first, but 'eth0' gets renamed to 'eth1' on the =
second system (etc).

Is there an option I can set to stop udev creating rules which result in =
the NIC name changing, or should I just add an empty

/etc/udev/rules.d/75-peristent-net-generator.rules

file to my image?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




