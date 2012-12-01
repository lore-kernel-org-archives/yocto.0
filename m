Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B4B8E01455
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 14:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=QVt3Gk1fxqN2gxExuTAAEVXQ5+aKs9vtz0tcKYLEJQk=; 
	b=cztcw98YYd5g0kOJ5OrPINecQgR71dZERbW1pbPuGEwHahNmwAIj9dg5ZKbvfzeMK9qKTbkAn9i8ppQi6fMaCQghzFIJdsGeMCFUjrv5t5Fk0uZRMFqtCZLSc3wilN+J;
Received: from [109.224.129.17] (port=59943
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1Teviy-0001K4-3g
	for yocto@yoctoproject.org; Sat, 01 Dec 2012 22:39:52 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Sat, 1 Dec 2012 22:39:51 +0000
Message-Id: <09515033-71CF-44CC-8FD5-CA51C85CF3E0@keylevel.com>
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
Subject: Image libraries
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
X-List-Received-Date: Sat, 01 Dec 2012 22:39:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Is there a recipe available for a library which can load image files =
into memory / GL textures?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




