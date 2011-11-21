Return-Path: <marc.ferland@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4876AE00306
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 07:35:33 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iakh37 with SMTP id h37so10070781iak.35
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 07:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fyKN50crC4QHm5nl53HQXRGyZ2f4VGMwjtGO+mbr3lY=;
	b=rwkPyaX9rBRuw+F/l7NAr56MinDg77nqmZ6NtPdcl3lE/TVoEXvqetFBdQiOqCwXuw
	qrsz/O52NmZ5Y2S/9BUUpgjVaMNrirVAUJAd/HH+4Mr1bvFwXbBItZ2vTPvm4MdF5iVP
	oc1rLUhHRkzWOarqMrMAeaZNoE0vyvdbTNIB4=
MIME-Version: 1.0
Received: by 10.42.147.65 with SMTP id m1mr12534076icv.27.1321889732582; Mon,
	21 Nov 2011 07:35:32 -0800 (PST)
Received: by 10.50.34.166 with HTTP; Mon, 21 Nov 2011 07:35:32 -0800 (PST)
Date: Mon, 21 Nov 2011 10:35:32 -0500
Message-ID: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding line to ld.so.conf
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
X-List-Received-Date: Mon, 21 Nov 2011 15:35:33 -0000
Content-Type: multipart/alternative; boundary=90e6ba1efd3af15b8a04b2406f91

--90e6ba1efd3af15b8a04b2406f91
Content-Type: text/plain; charset=UTF-8

Hi,

What's the proper way to add a line to the ld.so.conf file for a new
library I am adding?

Regards,

Marc

--90e6ba1efd3af15b8a04b2406f91
Content-Type: text/html; charset=UTF-8

Hi,<br><br>What&#39;s the proper way to add a line to the ld.so.conf file for a new library I am adding?<br><br>Regards,<br><br>Marc<br>

--90e6ba1efd3af15b8a04b2406f91--
