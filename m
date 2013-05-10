Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C24D3E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 08:11:54 -0700 (PDT)
Received: by mail-pb0-f44.google.com with SMTP id wz17so2862122pbc.17
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 08:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=lNk1YI5gFxb+so/du5nECFjD1FRMo9cY3KrPAt8719c=;
	b=ZViEn4AEJyBmPiBouuCoc4iDodiCxCbX0nd3qvIiByEmX8ysKK5M+louxBhc4F1wDI
	b9gyUIBPVZj6p7aU/lhI/h0oR2Xk+jbgE2kwY+TRWlR+hGREIWlGHPfU/jy6RhRwAU+A
	7q2vwi+HttarFETYh8CmLCC+FSunbbIq6TwJT66YNHhVY/pQkVOBwrbKHftnQgZAhbed
	BTiT2ebvKyhOZV5sSYuLJ8NMYbkTcZZLvO0LmPuP90OaqNCOqFPb1Qj6emnqxr/lMttA
	ouSjrZPcf1AYeRMmWUxAdWKSskgNrgZnvndQ7MOF6reM+IS/UjHF+yja8BfOU8i8lrPG
	E++w==
X-Received: by 10.68.196.100 with SMTP id il4mr17682369pbc.170.1368198714640; 
	Fri, 10 May 2013 08:11:54 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.101])
	by mx.google.com with ESMTPSA id sq9sm3306061pab.5.2013.05.10.08.11.51
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 10 May 2013 08:11:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <518CFDE7.2030606@tiscali.it>
Date: Fri, 10 May 2013 19:11:48 +0400
Message-Id: <5518E211-421C-4289-AB1B-80AA40AF87B3@gmail.com>
References: <518CFDE7.2030606@tiscali.it>
To: Andrea Sterbini <a.sterbini@tiscali.it>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: Problems building yocto for Xilinx ML507 (with some tentative fixes)
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
X-List-Received-Date: Fri, 10 May 2013 15:11:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Andrea,

On May 10, 2013, at 6:02 PM, Andrea Sterbini <a.sterbini@tiscali.it> =
wrote:

> The problems I have found (and someway fixed) are:
>=20
> 1) when I do "bitbake meta-toolchain" I get an error complaining that =
the compiler is not able to build for powerpc with FPU
> Fix: I have changed the ml507 rules to include just the soft FPU

I never did get soft-float to work properly with gcc-4.6 or gcc-4.7. I =
got soft-float to work with gcc-4.5.4.

hard float fpu support worked with gcc-4.7.

Were you able to boot and login to the command prompt with the generated =
images ?

Best regards,

Elvis Dowson=

