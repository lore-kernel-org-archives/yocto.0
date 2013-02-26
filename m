Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 559E6E002AB
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2013 18:06:03 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id k5so1990169qej.27
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2013 18:06:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=Y9A65uwADMS4/A4WDezZNvmIVvzHFXsWZknQ0Cx/q/g=;
	b=eSHZHvaUNjyjxpAstnIAuh3lnUOLPa7/BG0gBPlxGWiTgzHhJ9k6rrys+pHECk/EhY
	Yu1HPfJqaqClDP2gkXT7CKtkNxipNEV2s6ADcG43uC118ALe+2skKITziuRoioAi5lOi
	rravmis04/oiEEbE/NXLmWJ6V6GvK853Dp8OAjmQpss59SWRrWLwJr3GX0UBLOZQbZRT
	z9kL4tjAtvMAhD309FuBUO06m39u/hJrGnKqi/KixoDbFFO49CGEfX85VVhr2ITP/GBt
	nsi8t2UFlBv5+f+qH7D4JTjq/nNL6gzmPg/52Ni34MjnhByLBhbj9UoJeOvubbIp+BcZ
	za9Q==
MIME-Version: 1.0
X-Received: by 10.229.136.205 with SMTP id s13mr3326336qct.79.1361844361850;
	Mon, 25 Feb 2013 18:06:01 -0800 (PST)
Received: by 10.49.71.163 with HTTP; Mon, 25 Feb 2013 18:06:01 -0800 (PST)
Date: Mon, 25 Feb 2013 18:06:01 -0800
Message-ID: <CAPhnLPB_rcf4GBuH3NX4Qo=0Bt=q+RNMHs6bPQ7AgCnkZ8+sUQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQktRhhnvbFizrRSzYsZKsdPfm2GOG3ClBiYWChFuNmhZi4eBtT2FulVe6jq673q9bTH58Ma
Subject: 1.4_M4.rc1 git tags and branches
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
X-List-Received-Date: Tue, 26 Feb 2013 02:06:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

I know I sent out rc info for milestone 4 last week, but due to lousy
conference/hotel wireless I was unable to get the branches and tags
made. They are now currently in place. Sorry if this caused any issues
for anyone.

poky: 7d22ef28e64de06b6238d0ef9b664c0bee6efa46
meta-intel: 150be7c8fb97ac88737f6017fdf9dd47b273bb3e
meta-qt3: 06e2fe600de962cdba53c23de1207501439a9c9f
eclipse-poky: d18c45e0f5367979f7402380ee123242da2b57d5

Location of 1.4_M4.rc1 artifacts are at:
http://autobuilder.yoctoproject.org/pub/nightly/20130220-2

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

