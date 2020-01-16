Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2437.1579205271365711510
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 12:07:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=a5JJPSOz;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAFB8E01564; Thu, 16 Jan 2020 12:07:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4C29E012A0
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 12:07:47 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id c16so20038977oic.3
        for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 12:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=jxiDyUZHjSEJNGczrm3KPVwu5yyFqtM6gAI8QtkOmXo=;
        b=a5JJPSOzBckZ+BOf28iPV7a1gv/Xt4mNkQ1/HDd7zIDt9W8foq0p25T28sDoa3z+BX
         jYXe48b+K8+dWcvOixseDbBY+h9JGt8+ApGDWxk3HtDdEv4h/eFgGAAHLfEZPvcCxPpF
         CJhg4r4hfIIOYtC0R5nUPTwOKe7y+QWX5P78I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jxiDyUZHjSEJNGczrm3KPVwu5yyFqtM6gAI8QtkOmXo=;
        b=fi+2L5zmIYrt+YKc26zdvTcPEGQqbHB+85yTgrVoD5/CJQJIVgu/l14x/iFbpHXJvS
         rTazbl8BDtpzBCDk3gIGnzFMmiHuG2gjF7Zs3G18g5mRlfqDv2tWy5LgvcrQd+OYfAta
         LKutWnHF3kZzcaJ3lY+CCIA4u11NWrduv0/jiuYlSdmus33dKfLNosRfBT6a+joW7flp
         ayOLrvjJuhaQC4qCIhaoA8p+chDIabU9d6CAmiMYVISQy5z1eyHajeiIVXViQyhxzMNz
         2M0FGC8kPTO/QN9eNAgP4f2EbZKj5h8I9uksDeGh1lH3YhGDLcwHTDbw74ztZN3/PWgY
         vPMA==
X-Gm-Message-State: APjAAAWAwvRfRQsyAu1d2qCIAAMIxCUZOPEuR63fJYEGT02dembBnKuj
	006CF16PBXd2Rp21cbPtTCq2NNDzqa4NPP3Px4HEM13o+1ef8g==
X-Google-Smtp-Source: APXvYqw8dUP/g7ZWQPph8uC5jIX7wo349q28baNBIJkqQvG7V8AQgiQ0Hi4vxbUiQ638QHV94C4ti4qWMeKDcscZiX8=
X-Received: by 2002:aca:d985:: with SMTP id q127mr653929oig.132.1579205266818;
 Thu, 16 Jan 2020 12:07:46 -0800 (PST)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 16 Jan 2020 20:07:36 +0000
Message-ID: <CAM9ZRVv1O-vdWAtN=2GXjSz=sJ+LDGZYMKv0qiFzEa5Q3J9+Wg@mail.gmail.com>
Subject: patchtest licensing
To: Yocto discussion list <yocto@yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hey folks,

I've started looking through patchtest & patchtest-oe in detail and
spotted that all the scripts, support code and test cases are licensed
under GPLv2. Is that ok given that we plan to copy this into
openembedded-core (probably under meta/lib/oeqa)? Is there any
practical effect of this not being MIT licensed?

Thanks,
Paul
