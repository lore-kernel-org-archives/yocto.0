Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.18.1582148693942001781
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@iwavesystems.com header.s=default header.b=X4oTm/Ya;
 spf=permerror, err=parse error for token &{10 18 _spf.mailspamprotection.com}: parse error for token &{10 18 _nb5.mailspamprotection.com}: limit exceeded (domain: iwavesystems.com, ip: 140.211.169.56, mailfrom: sheraz.ali@iwavesystems.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70A3EE01650; Wed, 19 Feb 2020 06:45:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,HTML_MIME_NO_HTML_TAG,MIME_HTML_ONLY,
	MISSING_MIMEOLE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.9 MISSING_MIMEOLE Message has X-MSMail-Priority, but no X-MimeOLE
	*  0.4 HTML_MIME_NO_HTML_TAG HTML-only message, but there is no HTML tag
Received: from c57603.sgvps.net (c57603.sgvps.net [109.199.122.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28AF5E0082A
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 06:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:To:From:Message-ID:Subject:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WWkjrhs2Z2tnno3aBl1nGwsn92ZcwzkKk/khTSNk1ak=; b=X4oTm/YahWY4IQt/WkHaIXtabC
	8+g4cchLgzSptoJZSQyvHiVZcrCT6NVfvQFppnF/o4xxcDjei7fJiOz+0t+NPws7UofdRsuliEys8
	juS9hRbNKcVsmYvlcMxoMHsTonVeONMo9jPtXsO4eUrl+JLVHhewzMqDl7YW9A5kAZyj7M+4q2coY
	84vWbKNS/R3cMyQFDrwphHpks+Y18D/+zhz1y1nqxttok+lIUdqKRlqvGeGrPooNwXOS5uPSJiCsX
	/RR7aAgxEdL7jUcqdyFCQlyMyZS4WaGQ5cOpd1f4caMY+TI0efej/PTiYqtsxyjM21mK3PSuC//77
	etCVAUbw==;
Received: from [106.206.102.62] (port=55622 helo=[100.68.94.50])
	by c57603.sgvps.net with esmtpsa  tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.90devstart-1178-b07e68e5-XX)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1j4Qb5-0007bD-Fe
	for yocto@yoctoproject.org; Wed, 19 Feb 2020 08:45:07 -0600
Date: Wed, 19 Feb 2020 20:15:04 +0530
Subject: Opentk Support
Message-ID: <9aac3a48-d611-4e0f-81fa-c7951f54662f@email.android.com>
X-Android-Message-ID: <9aac3a48-d611-4e0f-81fa-c7951f54662f@email.android.com>
From: "Sheraz Ali" <sheraz.ali@iwavesystems.com>
To: yocto@yoctoproject.org
Importance: Normal
X-Priority: 3
X-MSMail-Priority: Normal
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - c57603.sgvps.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - iwavesystems.com
X-Get-Message-Sender-Via: c57603.sgvps.net: authenticated_id: sheraz.ali@iwavesystems.com
X-Authenticated-Sender: c57603.sgvps.net: sheraz.ali@iwavesystems.com
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9J2F1dG8nPkhpLDxkaXYgZGlyPSJhdXRvIj5Eb2VzIGFueW9uZSBrbm93IGhvdyB0
byBlbmFibGUgb3BlbnRrIGluIHlvY3RvICggaS5lIGlzIGl0IGF2YWlsYWJsZSApPC9kaXY+PGRp
diBkaXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+VGhhbmtzIGFuZCBSZWdhcmRz
PC9kaXY+PGRpdiBkaXI9ImF1dG8iPlNoZXJheiBBbGkgU2hhaDwvZGl2PjwvZGl2Pg==

