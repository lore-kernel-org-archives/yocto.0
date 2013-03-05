Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 60838E01490
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 06:45:21 -0800 (PST)
Received: by mail-pb0-f46.google.com with SMTP id uo15so4506099pbc.5
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 06:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:content-transfer-encoding:subject:date
	:message-id:cc:to:mime-version:x-mailer;
	bh=qN1bfvusFqjCmLwZFJW9IKRfCV5Xorq5wQwrd3mwI8Y=;
	b=vCpRgIw0y9rBPZD6eug1sOZO+ggz5pj1nkmOUDbOxFu3ecEIpPwzh7eOG0OhoGuiwK
	3rtlhQ0dTkiIcx8pI9Hqnlb+9uT8HRtqYsM1iKm7JT0hQ0ZNnrXtE+LqtAYt6oDui9DK
	jbI4Kcs0TFsrWu3NiMpyaSJLlVzSImF08hkPAHNoqtC1VhuDUzaazKN2DeMXvry7YV/d
	oLkEpJS5ufN0sq3gaZOCq0aWgAMvtUxtOjH9cIQc9kHZcHATKH/AT9CgD8SgSrFz9WJO
	+ybZa/aMIaG/bgDd6MaaCic/7nQRWgLG4ueumTAj+T8a5LdDyv+gzHJrmUoMCZyUgCk+
	LHUQ==
X-Received: by 10.68.221.68 with SMTP id qc4mr27616854pbc.152.1362494720856;
	Tue, 05 Mar 2013 06:45:20 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id i10sm26956072pbd.1.2013.03.05.06.45.18
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Mar 2013 06:45:19 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Tue, 5 Mar 2013 18:45:14 +0400
Message-Id: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Tue, 05 Mar 2013 14:45:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                 I hope you're doing fine!=20

Could you give me the url to your gcc-4.7.2 git repo, so that I can =
develop patches against it to add support for the Xilinx MicroBlaze =
soft-processor?

I've hit the following bug

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D54663

and the patches are available with this revision

http://gcc.gnu.org/viewcvs?view=3Drevision&revision=3D195488

So, I'd like to back port it against the current gcc-4.7.2 recipe =
revision.

Or else, I will have to do a git svn import of the source, and manually =
patch it using the current list of patches in the yocto recipe, which =
would take a couple of hours. So if I can have access to your repo, it =
will save me sometime!

Thanks!

Best regards,

Elvis Dowson=

