Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 569BAE006C3
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 21:01:13 -0800 (PST)
Received: by mail-qa0-f53.google.com with SMTP id z4so2226855qan.19
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 21:01:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=o8FA1tYdaZ1Y2vIur6PlBod1ISPSW2qVqzyZefDVlJ4=;
	b=lNtO+23V9qnLMZR+qZ0bM2aZ4F2yCMjb7dXeeK7X0F/t4Pq1KmROQ/AamYdmQ3oUmN
	bp8w0FNYMZ9HXdwGDNfwtylIHVrtp4JzgRuIovW2FSP6tSHSZ7HVeLu0BF5s4xpmLUni
	EWfumvCJhIXlnn3bL+0CX+FZFJ7PRfy3yX9PBUSXHZ5m8tvb8gPgkLtlsHqKrnkMPmbp
	iiRcsk1DcWt0a8UWNoPB2lc0HOzjWQRVnXG65XoAvtEz5g52gNgU9y1nWtPb1yutxPxb
	dfbbOLR0asXpoMAFMKmBxmRoeNQ6hKtDTmbEREuP6fL1IRuk+pw4EQsmJa+dkVkSNLNj
	rKYA==
MIME-Version: 1.0
X-Received: by 10.49.24.132 with SMTP id u4mr8722413qef.55.1361336471951; Tue,
	19 Feb 2013 21:01:11 -0800 (PST)
Received: by 10.49.85.167 with HTTP; Tue, 19 Feb 2013 21:01:11 -0800 (PST)
Date: Tue, 19 Feb 2013 21:01:11 -0800
Message-ID: <CAPhnLPDViQzWOD2kHQ7g=omLutmNdBJ1eqzCzMnS6kBNo87+UA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQl9VAmJnBwcafP5Wrhmc1dYoGeqiV/hJxud3zPE8lNXKfioC5wdVCd+YezMwN/ZfqUE30xP
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build
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
X-List-Received-Date: Wed, 20 Feb 2013 05:01:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I'm currently at ELC and am going to be a little slow with email.
However, tonight I will be building M4 rc1. We are looking pretty
green and had been hoping to use the last build for rc1, but we want
to get it a little closer as to have it all green. I will be building
it from current master head and will branch/tag in the morning. If you
maintain a layer that I don't have branch access for, please create
the milestone branch for it from the git hashes I send out in the
morning. Thanks.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

