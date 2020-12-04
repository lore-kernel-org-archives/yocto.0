Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7547.1607044552304876613
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 17:15:53 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@cpdesign.com.au header.s=default header.b=AGhQPEnV;
 spf=softfail (domain: cpdesign.com.au, ip: 198.145.29.25, mailfrom: marc@cpdesign.com.au)
Received: from out103-7-vmse02.mailcluster.com.au (out103-7-vmse02.mailcluster.com.au [103.250.20.7])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1B38E38C089E
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2020 01:15:52 +0000 (UTC)
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1kkzhK-0007LO-L9
	for yocto@yoctoproject.org; Fri, 04 Dec 2020 12:15:50 +1100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NsZi4+laA4arYFTmtIXWTLtyyeyGZDLvXg8E0HFXqsY=; b=AGhQPEnVp/SxsGA/pj0DbCp+zR
	wmrWusGLWZ1slNy1lq4x3uI1t+c2ueydUdNa2rKfBlF+R6GUOfgET/mI553LKZOht0oizpztnvL7S
	nvMFHAObpyPETckYrk0yMDz9g6DDLS6IPhh6eMQjXRJoZ4u0LisvC/fxRaVres/Dlth+BPsABqRTE
	MyKvZO+vh51fDI+7EuSC2IylHfW6o51YhK8vMye1yLRfy42e35NVBVkUSemonqnW9NSIs8xaKRM5N
	Xjo4x8rNHZBuT1X1W9Osf0JIVUCD3mYamMXlw6zUkmPP7fbea8cZWJIQyXmzTS7s17gGhSJ6SRHwE
	y906Eydg==;
Received: from 220-244-57-157.tpgi.com.au ([220.244.57.157]:60042 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <marc@cpdesign.com.au>)
	id 1kkzgg-00AEBL-15; Fri, 04 Dec 2020 12:15:06 +1100
From: "Marc" <marc@cpdesign.com.au>
To: yocto@yoctoproject.org
Cc: Marc Reilly <marc@cpdesign.com.au>
Subject: [psplash][PATCH] Supress initial background clearing if using a full screen img
Date: Fri,  4 Dec 2020 12:15:00 +1100
Message-Id: <20201204011500.24684-1-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.08)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0ecN11dQIc3aKzz9DU5dqGmpSDasLI4SayDByyq9LIhVI1BGhdMsjR7e
 8XjLz1Xvt0TNWdUk1Ol2OGx3IfrIJKywOmJyM1qr8uRnWBrbSAGDw6SccWMDC+EBBTuK3o3KE+75
 j72WW85xlNZxOclfEry4UyI6YGhrUUWzfq7+cl/6BMmyNbDn7R5kilAhwr3KtPRgtEKbbJiCf5yI
 2OixqpvspDSc4W0IfP9gRvjem4tIH6WxrrLjmIHz9UvhfVBCX1aVLNwE1p6017hA3VETZiIBXoXq
 fdxZ6Xsc9abISq4CNGoqfnoTWICr6hBuM2yp1/+e6PeShGGfYGUTt1ehPSn1viqvDTv04RAs6CDK
 45UDkvbi9BEgir4WY8vaSGsXRmotBr+cGd3n+unWq7SgKpRz6kMld43+5s6sPTZLbtJ/esZvUUaf
 hLcns8UOFaESxCBD02xJQ5iD6JtkonsiPd7mRO2CcIQVgm9T5haIwTso17NirEYyqwqMBGrw8ELi
 qANPFSYHIThyBVTUrj3aFn+AZXoyQyTUfq60XV88j0n1IK/1NH5THMtlYvyHAYGOGqz2oidVuoQM
 okQutY3pHcCHFzboKDhGx0chVC6Uo5u4n3/KWfbq3t5NmLSY+EPGe5rQ2ojdwIakySu98vWAEeKc
 i2jzEOEu94SLs4hIaAhFzu3EFWjUEINJOCtV9o2h66Q4UwpFooCjuhsOEsua2uEbSbfW1Fh6b68V
 mzBE1hiJ+p7RcSyEW4r8ak1PtqvzG8q0hQ+69d/+Q1lzA/OZ9w3H5NKWBwSIJWBNyC5R69PZwvd2
 oJzYeHh5J+VrgD9FaOwlvwvyW1FbB1R68PGnlZZt+tyL34glJJQK9lx3Y70arM/U5N7ApLTbtz3N
 ljk3XVEeznGoVG0eufxbcqCvuURtALl6tE9e8KCaN2ryngAyLAzRB+6xmsMQFNv2pv7VzZ7dBGGO
 ckz7KuHxT27eWGY/Q7bYvrLDWbMJ6rUVK5bNAFDzNQBFf2eJwTI6sevirnbYX9Dq6F3FXVUZNPO/
 4Y140eE5bAHFhGpPfit4wSoQJaF3XXNMyxTR5ykzAxyoEFhMEDwL9n8X97NIiIRJNAs3omQmDi3Q
 MnIghIatunH8
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
Content-Transfer-Encoding: quoted-printable

If a full screen image is used there is no need to clear the background
as it will just be drawn over again shortly.
This provides a small performance speed up when using full screen images.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 psplash.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/psplash.c b/psplash.c
index 1a56629..ec2e419 100644
--- a/psplash.c
+++ b/psplash.c
@@ -292,9 +292,11 @@ main (int argc, char** argv)
   sd_notify(0, "READY=3D1");
 #endif
=20
+#if !PSPLASH_IMG_FULLSCREEN
   /* Clear the background with #ecece1 */
   psplash_fb_draw_rect (fb, 0, 0, fb->width, fb->height,
                         PSPLASH_BACKGROUND_COLOR);
+#endif
=20
   /* Draw the Poky logo  */
   psplash_fb_draw_image (fb,=20
--=20
2.26.2

