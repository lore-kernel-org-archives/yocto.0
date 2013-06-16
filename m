Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64672E013B8
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 14:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=3Owz7ULjB10tlJk+vdWTKmpFsPTeMx9nN9tc9w5LFfI=; 
	b=Y2gzHdVhX2lSCUI/HzsbZREFbL6X/2673HsCR2Q3cN5sp+Th+mz9AMoACsKP9qVC22s3OgCN3em1yqYyfjIGsc6Ec3vSUUsvcQpHQS8Dgp5954rKWlo6IyWho/pVdKQlEAlf7SgJNC4hZ+n8CqBRvz6mS7I9HnKe1vH7q9ZDrjQ=;
Received: from [109.224.129.17] (port=5300
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UoKrh-00245P-AD
	for yocto@yoctoproject.org; Sun, 16 Jun 2013 22:52:01 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 16 Jun 2013 22:51:59 +0100
Message-Id: <19D48B82-8A42-4CDA-9C08-C25519D19DE9@keylevel.com>
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
Subject: Danny/Cedartrail psplash not showing
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
X-List-Received-Date: Sun, 16 Jun 2013 21:52:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a custom Cedartrail image which works great, but I can't get =
the psplash screen to show on boot.

I see a message like "cannot mmap framebuffer" scroll up the screen, but =
this isn't in the message log so I don't get the full context.

I've tried looking at the code for pspash-fb.c, but there aren't a lot =
of clues (for me!). Is this something to do with the pixel format, as =
hinted at by the comment referring to 'line_length'?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




