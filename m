Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8129.1587892511315505480
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Apr 2020 02:15:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mFyHEZI4;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: amayajindal786@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C603AE01A75; Sun, 26 Apr 2020 02:15:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,HTML_MIME_NO_HTML_TAG,
	MIME_HTML_ONLY,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (amayajindal786[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.4 HTML_MIME_NO_HTML_TAG HTML-only message, but there is no HTML tag
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A3CE019ED
	for <yocto@yoctoproject.org>; Sun, 26 Apr 2020 02:15:09 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id x2so3553346pfx.7
        for <yocto@yoctoproject.org>; Sun, 26 Apr 2020 02:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:references:from:to:mime-version
         :content-transfer-encoding;
        bh=8LcWW+wKD8bP88qqfyHHgIyQnsebmZX+CGRxMfnrjY0=;
        b=mFyHEZI4YG1hOSBPuBTngRoEp1p66+i8FAms80g8I+Acm1v5fl6PtnRCl3+7LGvy0O
         WyziSo94moasYZmzmj7r57JihiPqQ3kQPwF/Z8MA1BXcMB1x5ljlOQBCrqXZliOn6Hyu
         jKE6D1JfqfnU1KYOtVzNWfBEOEPRoM/CoZBy3G7NaP7lg/MEuDlzHvsI/3Z3rHfqXsVC
         GoSCxd5HuZ7eJzktmZfQQH/Nl/bv9zo7n5rsPNxGrXfRVA5pMvinGyYH95zLqOwwFdr3
         NktQCXXHnlJY8e62LNCtzu+E8FU2euocxJe5O4SH1Rc5oqfYX53Emypp7HH/+lWCwmSj
         xBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:references:from:to
         :mime-version:content-transfer-encoding;
        bh=8LcWW+wKD8bP88qqfyHHgIyQnsebmZX+CGRxMfnrjY0=;
        b=B6EZ9FezvDzqike+KUAH/q2SQComRgjkNxfhvRlxAFG31tvYeKyLYkSQVV4sHhVFlG
         DcLKLFeEZuLrWAfZRAn5z3FHA3AREGhHBAsDzt5FvUkuYy1xwqV//ihHzGsUJlhdluHM
         oWMAFcbNWsnSeNjH0bEZ1RlqhD+8ZYM6Gmw4fbjDGL+scGWOxCYwC7Y3xA+pDrXyl6GE
         6G2AXs5/nFeuyDJH6hwz6+2KwjOAbuaOTZHHyE4T4z/9ngE+Eib+V8yHHY+cmshP7+ua
         3V6imKxDBFOyPfJrdFLyTaRGxgxs8eJWFtmrFA0hNoFM2mPYqYZfWTnEybWnAJkD+jVJ
         IGQA==
X-Gm-Message-State: AGi0PuahV8EMRvFghK7rD7A+itwOVLlTXg2zOmwWO0epdr0p7nD6jf5i
	ZN+WqG6W3wd3hKQ5eC0wKPc=
X-Google-Smtp-Source: APiQypJ8TcfyRi+TUhPaBAPRxPiM9eJSeBui9COqgeJI30pByqLzrY3tCHjTfXy9BzpyfMd8vjg6cQ==
X-Received: by 2002:a65:5509:: with SMTP id f9mr18066587pgr.70.1587892508589;
        Sun, 26 Apr 2020 02:15:08 -0700 (PDT)
Received: from [100.111.37.221] ([106.78.61.93])
        by smtp.gmail.com with ESMTPSA id a196sm9763720pfd.184.2020.04.26.02.15.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Apr 2020 02:15:08 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:48:02 +0530
Subject: Re: [yocto] Adding python3 remotely
X-Priority: 3
Message-ID: <es9v1o-l7prb9jgxugb-hsgkyw-j7r05u-l7zn1a1gi3f2tfvj0687g071-9uxkrdr9r86iaaprt8-9vsd7pmbw034-893c1p1epwta-k406cp-y7777g-b0m0oxipdk8n-j5k36r-iz8fe3-gsx313nyz0p.1587619082919@email.android.com>
References: <CAAV2bM2k4+ZPaqgSK5WjEkYZ+fFwDx1uZ4ucOkoh3ParLvFSxQ@mail.gmail.com>
From: "amaya jindal" <amayajindal786@gmail.com>
To: Emily <easmith5555@gmail.com>, Yocto List <yocto@yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPk1heSBiZSB5b3UgY2FuIHRyeSB0byBmaW5kIGJ1aWx0IGJpbmFyeSBv
ZiBweXRob24gMyBmcm9tIEludGVybmV0IGlmIG5vdCBhYmxlIHRvIGJ1aWxkIGl0IHVzaW5nIHlv
Y3RvLiBJbiB5b2N0byB5b3UgY2FuIGFjY2VzcyBkZXBsb3kgZm9sZGVyIGZvciBweXRob24zLWJp
biBhbmQgb3RoZXIgZm9sZGVycyB0byBkaXJlY3RseSBjb3B5IHRoZSBzb2Z0d2FyZSB0b29sIG9u
IGJvYXJkIGlmIGNvbXBpbGF0aW9uIGluIHlvY3RvIGdvZXMgZ29vZCBmb3IgcHl0aG9uMy4mbmJz
cDs8YnI+PGJyPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8L2Rpdj48ZGl2IHN0eWxlPSJsaW5l
LWhlaWdodDoxLjUiPjxicj48YnI+LS0tLS0tLS0gT3JpZ2luYWwgbWVzc2FnZSAtLS0tLS0tLTxi
cj5Gcm9tOiBFbWlseSAmbHQ7ZWFzbWl0aDU1NTVAZ21haWwuY29tJmd0Ozxicj5EYXRlOiBXZWQs
IDIyIEFwciAyMDIwLCA4OjU1IHBtPGJyPlRvOiBZb2N0byBMaXN0ICZsdDt5b2N0b0B5b2N0b3By
b2plY3Qub3JnJmd0Ozxicj5TdWJqZWN0OiBbeW9jdG9dIEFkZGluZyBweXRob24zIHJlbW90ZWx5
PGJyPjxibG9ja3F1b3RlPjxkaXYgZGlyPSJsdHIiPkhpIGFsbCAtwqA8ZGl2PjxiciAvPjwvZGl2
PjxkaXY+SSYjMzk7ZCBsaWtlIHRvIGFkZCBweXRob24zIHRvIG15IE9TIC0gSSBjYW4gYWRkIGFu
ZCBidWlsZCBpdCBqdXN0IGZpbmUsIGJ1dCBhdCB0aGUgbW9tZW50IEkgY2FuJiMzOTt0IHBoeXNp
Y2FsbHkgYWNjZXNzIG15IGJvYXJkLiBJJiMzOTt2ZSBuZXZlciBiZWVuIGFibGUgdG8gZ2V0IHRo
ZSBPUyB0byB1cGRhdGUgcHJvcGVybHkgcmVtb3RlbHksIHRob3VnaCBJIHRoaW5rIHRoZXJlIHNo
b3VsZCBiZSBhIHdheSBzaW5jZSBJJiMzOTttIGJvb3RpbmcgZnJvbSBTRC4gVGhhdCBhc2lkZSwg
Y2FuIEkganVzdCBjb3B5IHRoZSBidWlsdCBweXRob24zIGZpbGVzIHRvIHRoZSBwcm9wZXIgcGxh
Y2VzIGluIG15IE9TICgvdXNyL2xpYiwgL3Vzci9iaW4sIGV0YykgYW5kIGhhdmUgYSB3b3JraW5n
IHB5dGhvbjMgb24gdGhlIGJvYXJkPyBJZiBzbywgd2hpY2ggZmlsZXMgZG8gSSBuZWVkPyBJJiMz
OTt2ZSBiZWVuIHVuYWJsZSB0byBnZXQgaXQgdG8gd29yayB0aHVzIGZhciBieSBqdXN0IHBva2lu
ZyBhcm91bmQgdGhlIHdvcmtkaXIgZmlsZXMuwqA8L2Rpdj48ZGl2PjxiciAvPjwvZGl2PjxkaXY+
VGhhbmtzLDwvZGl2PjxkaXY+RW1pbHkgU21pdGg8L2Rpdj48L2Rpdj4NCjwvYmxvY2txdW90ZT48
L2Rpdj4=

