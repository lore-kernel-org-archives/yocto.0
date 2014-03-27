Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE51BE00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 17:54:43 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so3218226veb.39
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 17:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=KX7EdkHx2P8ANws7g5QTjYgrf0UcGVyYGhDxu/AD1tQ=;
	b=C6ljBbgFPGabpxxPLMQYOP6HKCM82QTP9AkDwO6BrL4m4aWN22NsZUbr9pe8ffLXwc
	DYh3aZskkybTGm5cKYKCwgkBBk4kvNxrR7T58+YGwC0u+Bb0Bd6trQNmtpuqYHy7zIEw
	KSi6scIFTaB04S01Ib5YmqLlvqaSbm/LLbOFBvugbwdBu2N9NvZJq0lg5WsGQqDw0pA+
	hO1A2Io8VYaTE5uz+V1ClxC1Q8Yts2qYSr1FaIMVIr0egZDJ1Rzk4h50QQD/D3svT3x5
	OBMK+LDmC7Iw2LyPT/LWyLkdumWxfd6SEMNHg32JvHwf5Hp+JfqXqlv8TqKPlzV1oqEG
	EvAA==
X-Gm-Message-State: ALoCoQnA1sQQPM7hCl3M7766+191iOJYSSWD4N0MwZIPcUwNzz08K2Yqu+cmdgq/ItzKS2CsHLiV
MIME-Version: 1.0
X-Received: by 10.58.201.5 with SMTP id jw5mr60468494vec.6.1395881683284; Wed,
	26 Mar 2014 17:54:43 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 26 Mar 2014 17:54:43 -0700 (PDT)
Date: Wed, 26 Mar 2014 17:54:43 -0700
Message-ID: <CAPhnLPCdvP5RNCDA+Buxw0N-fph5j_FV8kLWJS4U99DtKTmoMw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.6_M5.rc1 now available
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
X-List-Received-Date: Thu, 27 Mar 2014 00:54:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Please begin QA as soon as possible.

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6_M5.rc1/

bitbake 2a80735183e8faa110b4c6d8d85c4707f28e03a1
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm 1b571a2f7b3b7ea42d6b4e1a1e85f20a5b7a1ba4
meta-fsl-ppc 290a669e5480792836d4f7769ba2ef6f49799323
meta-minnow 743fa66aa0cc2265a9c1f293c305828d90b4fbbd
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 43d717df16312a8f0333aff6b8b037b4b9d51bf3
poky 47ceed0d8d60a3ddc398738acafe3aabf4ab8c90

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

