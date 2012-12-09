Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 258B6E006C0
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 16:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=QnJ8cEmOT+fVVGCWR6nghi52iEuAjZ0V3AVF27ioLUQ=; 
	b=CPmkTQ99xjcsNtDu21KB5ovqNyZzHROme0AQxtjL7sh2uvPmPYlJH9cK0QKjjGbMPdeQlDd2+CcmuPeL13OPXYa1G6VopyLtW6kNxY+De4lnAcsIs1eHY4wK34aDM8rd;
Received: from [109.224.129.17] (port=42102
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1ThUQp-0002Nh-FV
	for yocto@yoctoproject.org; Sun, 09 Dec 2012 00:07:43 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 9 Dec 2012 00:07:42 +0000
Message-Id: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
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
Subject: bbappending a bbappend
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
X-List-Received-Date: Sun, 09 Dec 2012 00:07:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Is it possible to have more than one bbappend applied to a recipe?

I'm using meta-cedartrail with my own layer (which is set as lower =
priority).

Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to =
enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep =
meta-cedartrail 'clean'). Is it possible to use another =
linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not =
working and I thought it would be an idea to see if it __should__ before =
I try and fix it ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




