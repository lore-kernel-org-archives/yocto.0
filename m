Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336DFE00747
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 12:10:16 -0700 (PDT)
Received: from mail-bk0-f52.google.com ([209.85.214.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 28 Mar 2012 12:10:15 -0700
Received: by bkcjm19 with SMTP id jm19so1279304bkc.25
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 12:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=DTRgA9pt7dtOrHdcYapwNeRFqJ02b/FV70CxfIH9dmo=;
	b=EwXo8ak+rnm5VohSNJ3ZmCih0c099u1EdETVBQK/AFog8zxaQOtokgo8f1MmlkQfpW
	eHN/R40Or4x2ahN4WU8JlT7bIHJIlTYBMxvwmvueE/qCAF31kV9WNf6KuyGSHuAgu0kp
	QAMk98liQhx/pCH8B1QgQSrw2F8Kvt1aNOHnMBBqyujFgaozduYSbd6LgsZfjltX2Ojn
	o5dTh5sQbhsPD7+gGHVwZiCzOqqMwfsjf965OEkqoBwUd8QeuDJctqpH2jOrZAGI19cZ
	yBZZE9uHpmABXCUlaBOilKYdHeKW37yZzQpzJiumvaeQitiWTwOUCpgw2eDrJrqPWWNL
	MPSw==
MIME-Version: 1.0
Received: by 10.152.110.170 with SMTP id ib10mr26763411lab.7.1332961813373;
	Wed, 28 Mar 2012 12:10:13 -0700 (PDT)
Received: by 10.112.18.166 with HTTP; Wed, 28 Mar 2012 12:10:13 -0700 (PDT)
Date: Wed, 28 Mar 2012 12:10:13 -0700
Message-ID: <CAPhnLPDC=TLDLqid=TXyZ2Y_zBzbwr=a1_8erHpxXbk9Uj-A8Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlkBNDEXUFchxaINvX7aa1JSzORVutLuuXkN4sRDkcL6g50EA3AX2wM9Dyy9q3jljy4Akw7
Subject: 1.2_M4 branched.
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
X-List-Received-Date: Wed, 28 Mar 2012 19:10:16 -0000
Content-Type: multipart/alternative; boundary=f46d0408d6b562a26d04bc525b97

--f46d0408d6b562a26d04bc525b97
Content-Type: text/plain; charset=ISO-8859-1

All,

The branch for 1.2_M4 has been created and tags for 1.2_M4.rc1 have been
generated. There was a minor issue during the tag generation process and a
tag named 1.2_M4.rc4 was generated, applied and pushed. This tag is NOT
valid and was generated in error.

RC1 is currently being generated and will be available later today at:

http://autobuilder.yoctoproject.org/pub/nightly/20120328-1

Please make sure that any fixes needed for 1.2 in the meta-qt3,
eclipse-poky and poky repositories are also pushed to this branch.

thanks,

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d0408d6b562a26d04bc525b97
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>The branch for 1.2_M4 has been created and tags for 1.2_M4.rc1 =
have been generated. There was a minor issue during the tag generation proc=
ess and a tag named 1.2_M4.rc4 was generated, applied and pushed. This tag =
is NOT valid and was generated in error.<br>
<br>RC1 is currently being generated and will be available later today at:<=
br><br><a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20120328-=
1">http://autobuilder.yoctoproject.org/pub/nightly/20120328-1</a><br clear=
=3D"all">
<br>Please make sure that any fixes needed for 1.2 in the meta-qt3, eclipse=
-poky and poky repositories are also pushed to this branch.<br><br>thanks,<=
br><br>-b<br><br>-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build and Re=
lease<br>


--f46d0408d6b562a26d04bc525b97--
