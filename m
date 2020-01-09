Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5789.1578556438035483811
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 23:53:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@iwavesystems.com header.s=default header.b=Y0Bty47l;
 spf=permerror, err=parse error for token &{10 18 _spf.mailspamprotection.com}: parse error for token &{10 18 _nb5.mailspamprotection.com}: limit exceeded (domain: iwavesystems.com, ip: 140.211.169.56, mailfrom: sheraz.ali@iwavesystems.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8ED7E01389; Wed,  8 Jan 2020 23:53:57 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C834FE01385
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 23:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:To:From:Message-ID:Subject:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xlR8znw2qfu86wxkOw9n6GgICxFYmzjCUfbkg1HFQzM=; b=Y0Bty47lFlo2DnsnVmgOPrvIgu
	FSSq1XCYKNppjWJu/IaODsDLtEycZekS+jgdFu7aZU9BolGUuVZbK1VvFuHrQ7C0ecxDl+EZhZ5xb
	w67qY6rDynixwZo9MfTI28i+tS5ZpZiNXNEDl8GIcD137h+ohfSXF3xAxlzH9r3GTVmHuZtm7JLG8
	bC4/xJu//S/UhUKLdCkwPbCGcIq96PrYItRNXTrCTJcRrxPUCnrWT1hhniw2bEuh7Zp02GHpr0UeI
	yTOmOGUdQAfhDqCYCClRlcSEYF6HtGYUfUtaP9tYIMTxymzI6vN5qvpRcWS4WkSCX3uZ7qGP4EP8S
	urPKA1yw==;
Received: from [223.186.148.230] (port=7656 helo=[100.101.173.122])
	by c57603.sgvps.net with esmtpsa  tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.90devstart-1178-b07e68e5-XX)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1ipSde-000BlM-Q1
	for yocto@yoctoproject.org; Thu, 09 Jan 2020 01:53:54 -0600
Date: Thu, 09 Jan 2020 13:23:48 +0530
Subject: Md5sum calculation
Message-ID: <2d928884-8964-4376-8261-198fb5cf22a1@email.android.com>
X-Android-Message-ID: <2d928884-8964-4376-8261-198fb5cf22a1@email.android.com>
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

PGRpdiBkaXI9J2F1dG8nPjxkaXYgZGlyPSJhdXRvIj5IaSZuYnNwOzwvZGl2PjxkaXYgZGlyPSJh
dXRvIj5JIGFtIGEgbmV3YmllIGluIHlvY3RvIGNhbiBhbnlvbmUgaGVscCBtZSBpbiBmaW5kaW5n
IHRoZSBtZDVzdW0gb2Y8L2Rpdj48ZGl2IGRpcj0iYXV0byI+dGhlIGZpbGUgYmVmb3JlIGRvd25s
b2FkaW5nPC9kaXY+PGRpdiBkaXI9ImF1dG8iPnRoZSBmaWxlIGluIHlvY3RvLjwvZGl2PjwvZGl2
Pg==

