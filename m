Return-Path: <trevor.woerner@linaro.org>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05F6EE00B93
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 20:23:47 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id eb12so3749098oac.16
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 20:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=kjTzcmCo7qVCHaEY2FvFUVF94vbN6cpvRU81TAIckb0=;
	b=GRibOcsIqoy7CgoOjgKoFSv9eMGZbr+xl9/g6T7JhsvgSxVe/ssedincPRzXbY+kiK
	HeujGddoa3XliDcGTuv664pmzS100L19jy427FoAtPKNNsC4Ot1ebjeHmpTzWWxZLYXJ
	TyejUNMEqWPt5397EM+NUWPGfJeFOJ/tIcV/D2uga1OkvsyMW8G3YykM++AuDI6fPlN3
	Tpzif7KROvPQ7KF5rqiR2w6Uul0nd+mkx6EDyQtB1rgbVioFBqOegEEhV1L73KoA2Alh
	V/TlloYcSV0oKs8tvTErE1wuKqY7P8/6S/vLJC8DPqNc4OHj33yMyAJKVw7E4HzLJbrX
	Q0wA==
X-Gm-Message-State: ALoCoQnjmnJkFdrZmWvxaXdBEo3FjR8366VHKSkm5ynqLsWJdMQvpj4sSf1ZJu/zlnADbU9Xo99N
X-Received: by 10.60.157.228 with SMTP id wp4mr71254320oeb.39.1395890627255;
	Wed, 26 Mar 2014 20:23:47 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id ec8sm1336512obb.18.2014.03.26.20.23.46
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 26 Mar 2014 20:23:46 -0700 (PDT)
Message-ID: <533399C1.8070909@linaro.org>
Date: Wed, 26 Mar 2014 23:23:45 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: OE/YoctoProject style guide
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
X-List-Received-Date: Thu, 27 Mar 2014 03:23:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

http://openembedded.org/wiki/StyleGuide and
https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide describe
different preferred variable ordering (see the R* variables). Do the two
projects recommend different ordering?

The Yocto Project page
https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide has a
section "Additional MetaData" which says: "all recipes should aim to
specify the following fields..." and then includes several variables
which aren't in the following "preferred variable ordering" list:
BUGTRACKER, LIC_FILES_CHKSUM, DISTRO_PN_ALIAS.

