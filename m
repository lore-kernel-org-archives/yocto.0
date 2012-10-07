Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 797A9E0045E
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 17:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=PsXQoKN5wlGIuAEkNxRuUpCZNtih7BMaMadlCtWBRDI=; 
	b=N6lrL6eYnw+xeCysZiK8oKPjteQdxc737S4jn1pFZ9Zo0Y6Ii4Tvtpo7/iqJewRF5C2cacehcDg9vChNT4v98L7GbVLjddkFN8J+FVL3dde4bYY3gJfGK82Zlki9BTc6;
Received: from [109.224.129.17] (port=34153
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>) id 1TKf0B-0004rI-SN
	for yocto@yoctoproject.org; Sun, 07 Oct 2012 01:45:52 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 7 Oct 2012 01:42:43 +0100
Message-Id: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Sun, 07 Oct 2012 00:45:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail BSP =
under Denzil 7.0.1.

However, the CONFIG_UNION_FS config flag isn't in the .config ...

Is there something else I need to enable, or do I need to find another =
way?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




