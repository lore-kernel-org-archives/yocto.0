Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B4BAE003D3
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 14:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=wx/yDWL+H5hu+Tsr48HoQHfsiE1+hhBkqqNIzB2rPUk=; 
	b=S6KOuJSwXH8RyYXKYEGebmg8mitl5q+vqyR1fggODYXdIlQj2v7fkwHQ2i6S+rFc8+WGmdEPj1CKiw971CK3elESTrRflsGuh5+ega1+DwyzLm7sXCAjqvHAAZmFsBk46FBdr2ymgTO9L9PgqweB3eIVq2Pljl05o2A2bzi0PkY=;
Received: from [109.224.129.17] (port=29128
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>) id 1V5NLO-002XUM-RQ
	for yocto@yoctoproject.org; Fri, 02 Aug 2013 22:57:07 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Fri, 2 Aug 2013 22:57:05 +0100
Message-Id: <A2A1E9C8-2411-4C92-A79A-574B36B535C7@keylevel.com>
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
Subject: How/where/which scripts are run when an image boots?
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
X-List-Received-Date: Fri, 02 Aug 2013 21:57:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to understand how the various initrdscripts get called when =
an image (Cedartrail / 8.0.2) boots as I need to make a few changes.

1) Do the 'live' variants go into the core-image-minimal and the 'boot' =
ones into the rootfs image?
2) Where are the called from?

I've previously workout out that init-live calls init-install. I've made =
changes to that so it installs to my device as I want. I'm now trying to =
do something similar so I can install / boot using ipxe.

Any pointers would be really appreciated.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




