Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A415E009FC
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 18:35:44 -0800 (PST)
Received: by mail-ve0-f178.google.com with SMTP id jw12so3549629veb.37
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 18:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=KePUSOBQRRS5fFqGl7KYZsxnpLFyaMUiN5E3co4jzHo=;
	b=kK3aRJWGubgzaUP6eZdtSVNOyBDZYpyS82gFrl1o8oh1auhtQ0rDlt3g886o8kDtRq
	KfLMiU1F/ddNxftOv9bhicibosJdteE/oN1MVCsyY6IG1faMUCWOmSXrmUhaZCTU/hAB
	OdAta613JWnrE71/iF3ag+k8MD8nNjay6JTJKD2QUbJWLAFh1ndcOfjsxkIun/hrYvzy
	8te2YDjSUuN2wOSdLeHNY4pKkQJiXWy3TquKIsZU6gkD31CoRyVYf8sI57IlwUF5AASQ
	If/ps4fa6MzJt1qIzZoW02JWxe8PIcToDPFpq/rX2NebdGx6Ut730QIBTFQxxKz+UtGX
	d7lQ==
X-Gm-Message-State: ALoCoQlqEWwRAMhrazKj5jp+dcNJi5IcOfhJh7cTYpdNe/iwsuWFOqwlcnv13ZESKUE9zdcENcOG
MIME-Version: 1.0
X-Received: by 10.221.26.10 with SMTP id rk10mr8012099vcb.0.1394159743975;
	Thu, 06 Mar 2014 18:35:43 -0800 (PST)
Received: by 10.52.76.201 with HTTP; Thu, 6 Mar 2014 18:35:43 -0800 (PST)
Date: Fri, 7 Mar 2014 02:35:43 +0000
Message-ID: <CAPhnLPCjUzdpQ71A1T6pGsOwnvre7ST78E0XRyRj9Sb4ji8-0A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: Yocto Project 1.4.3.rc3 now available for testing
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
X-List-Received-Date: Fri, 07 Mar 2014 02:35:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Please begin QA as soon as possible:

http://autobuilder.yoctoproject.org/pub/nightly/20140306-3

bitbake 66d01338ab1095775b854ad7509f4d2631c6e6ed Trigger
eclipse-poky-juno dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7 Trigger
meta-fsl-arm 24caed8ff6f6088033d00d4567f7a7cad7fd5dd3 Trigger
meta-fsl-ppc e4876c9193fc92a3978fcd7dd4858b86c3da5af5 Trigger
meta-intel 0a0605d258783bfd18c75029d9d1ccb663ffd139 Trigger
meta-minnow d5849d5ea14bc9b34ddd05b92c3a7ea46bd1863a Trigger
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605 Trigger
oecore fae45abd37636741d51e5b75ad2c09f43b72d01d
poky 7ab82abcad9ede847c42c01d2a4f4c2c18877e6f

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

