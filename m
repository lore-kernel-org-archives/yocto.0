Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E8EE007BD
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 21:58:36 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id ik5so2066983vcb.9
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 21:58:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=+VtIM8ROt32LaKd12OCoHrtLVzpEcExsWfrMw+aDwsk=;
	b=ez0DkQWV+nFsemtRj3GgUsKBRUd7D2suTT0OympyzNXa+JKLwGE2yAKhxgr0iK9JYf
	LEs8cbiUkyh6C0EwZs8V/FHfVdlurb1ZbE3Z7RsKhXAJzbpWNVr7QVCSkxG5X2+XzABA
	RlYtAwVhoqXCRB/OP0KchO5kT6s6QM30nORashOxO9HQ8zf34NIvSS+XefiXkK5fe/EK
	kU7m81uQ34haUTifQY/gWGNie8TUSzodkjJu5sN0dw1m8UenRta9btAaarpaalA8Xi/v
	y0w3Cgx/NiJxAVojas7QWHKZlIAENdAZfcb8MVr3jjo1QkUj3Vgjr/BlN1LJ6UMvGjFk
	/U1g==
X-Gm-Message-State: ALoCoQmw+2nIZ/kYaAKWRka2Zv8wb+2CAR1ElTAjfuXwZfaJZMMj7aj5lH3n0Qj7t2lT7oq4n6hB
MIME-Version: 1.0
X-Received: by 10.52.246.42 with SMTP id xt10mr7656872vdc.9.1393480715645;
	Wed, 26 Feb 2014 21:58:35 -0800 (PST)
Received: by 10.52.76.201 with HTTP; Wed, 26 Feb 2014 21:58:35 -0800 (PST)
Date: Thu, 27 Feb 2014 05:58:35 +0000
Message-ID: <CAPhnLPB0vC85zL7U1aC2FDhQFc+u48wdggi=AMqD=UpDYQAggA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Week build available
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
X-List-Received-Date: Thu, 27 Feb 2014 05:58:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is now available at:
http://autobuilder.yoctoproject.org/pub/nightly/20140226-1

bitbake 4a5009036e9cb38f6e0260a88278948931073bc6
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm 5d2d7b49061281587f2bdb28cf97b51bf5fca961
meta-fsl-ppc 290a669e5480792836d4f7769ba2ef6f49799323
meta-intel d7026654ae4d18e7d7c193f64e4a4ce22453cfa5
meta-minnow 32e4d6f17917027c3babe1ab738480de9691024d
meta-qt3 4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore 010d5b437413156c3f4dc90a14698231bb195c2e
poky 5ab9d7e28f987fba8bab03bb7851c263f746c208


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

