Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1C6DE0093A
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 12:59:27 -0800 (PST)
Received: by mail-we0-f175.google.com with SMTP id q59so2128022wes.20
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 12:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=FIU6iMKBU55aShlNVC7gYho0CvyxXHe1We4KOmIOzrc=;
	b=XyUS+pjV7lJP5enA31k29N+ADV/klFoPeQJXAR21B4A4uPMlUhBwbvR6+TV0Ro9vhe
	Bwzxl0soNi83e6bsEw293J42Yp3WZxZ8pmh9jQrBbeY4LP7vnIv3QjySrJ8WO1nNK4vL
	he2yzrTOFekOfgMN+o2rj2Y7RYuCMrE39vbx6O/dBUFzzFXb46cwmolTul7n9hLxhSZL
	2/GC5FtlE/p50QAqspSAIrRtO/YSTZtOeB4zuE6m1JDCvC7fTj8tRyP96TShv/wUrgkO
	t0E+DwC/HvF/MJroN523P+z5mzxL22L7GXqHmQ/7zNOUlE8fFmN8C0g5FGDdoPsRSnOq
	iVbw==
X-Received: by 10.194.22.129 with SMTP id d1mr4416231wjf.22.1393448366578;
	Wed, 26 Feb 2014 12:59:26 -0800 (PST)
Received: from [192.168.0.2] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net.
	[82.36.253.60]) by mx.google.com with ESMTPSA id
	ff7sm13468957wic.10.2014.02.26.12.59.23 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 26 Feb 2014 12:59:24 -0800 (PST)
Message-ID: <530E55AC.1020405@gmail.com>
Date: Wed, 26 Feb 2014 20:59:24 +0000
From: Alex J Lennon <ajlennon@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
References: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
In-Reply-To: <1391539498-8620-1-git-send-email-raj.khem@gmail.com>
X-Mailman-Approved-At: Wed, 26 Feb 2014 20:59:33 -0800
Subject: Re: [PATCH 1/2] mono-xsp: Fix parse warnings
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
X-List-Received-Date: Wed, 26 Feb 2014 20:59:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/02/2014 18:44, Khem Raj wrote:
> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> ${base_libdir}/*.la) replaces original key FILES_mono-xsp-dev (
> /usr/lib/pkgconfig/xsp.pc       /usr/lib/pkgconfig/xsp-2.pc     ).
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

Committed to meta-mono master, many thanks Khem

Alex


