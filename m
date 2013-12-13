Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CEC2E007D9
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 05:56:07 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id ij19so1331136vcb.3
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 05:56:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=otwZw27gBXatuZL0wO9E9+S0DC5Fwlz5w7+XtEgvH9w=;
	b=F7GgNU2Z8nmksC8QaGRJ+CKGCCCKEqUZmK5scfAQjr0xBP4bi8QptxfIyBWw4pJSLU
	VP1GUcNaiHumymFzrpsxNDpgGCG/olsN+nj9CVhisRUoZT4XqvejPQMUeZxCzr6wO3Vb
	K9KDCfTzkSy3QYUf5Gtc3viEfNcWkMVwK55WCIXMycbrIJzqpkQpFkT0HSwzc++aOONS
	OBv7EWDYM+5YEj58gyLMgk9i3P9QdOV2a6NIj/cqUduVazHMvoxbyZmNeDmWDpesZJDB
	upm1u3W5bCAWSWqks6k25NpMDAYvfeeR5qjqCCPTMdLm+xEIGBhHm7kNt5praTDUvgXa
	uzpg==
X-Gm-Message-State: ALoCoQmqNU4Ap1n0e8f4zS6DkkzLDqInZHVHEyO4betC2NbjfQXV+wJiIwtnlKBNWAxm/iAeNs+x
MIME-Version: 1.0
X-Received: by 10.58.241.135 with SMTP id wi7mr112617vec.70.1386942967387;
	Fri, 13 Dec 2013 05:56:07 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Fri, 13 Dec 2013 05:56:07 -0800 (PST)
Date: Fri, 13 Dec 2013 13:56:07 +0000
Message-ID: <CAPhnLPA93Ca1UkiFDgaYt+4zaqna0qsLsG3eiv6eu_cob3tkpA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Alexandru C Georgescu <alexandru.c.georgescu@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Status of dylan and dora point releases
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
X-List-Received-Date: Fri, 13 Dec 2013 13:56:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

With the failures we saw last night on the dylan point release, we're going to
ask folks to switch QA efforts to the dora point release which should be
finished building shortly. The build appliance will be built out of
band in order to fix some autobuilder build issues on it and then
added to the rc2 area.

http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2

bitbake     1484905373ad717cedcaef37a0addd
e034ebdc60
eclipse-poky-juno     2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler     ad74249895f882a8f00bdeef7a0f7c18998cc43e
meta-fsl-arm     c7cc5d5f451c9d12df9f11314f4a58ecc347b1f5
meta-fsl-ppc     b5732aeadc9eb0de933f52d0949412e12f8486bd
meta-intel     c86e39dd06571458c7dee6cf289d5b470c98f4bd
meta-minnow     edf75553643face7a0dd5b16085d59a90eb4af8d
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     d68c267f3387d7fe221d3c5653a66db8b1f78fd8
poky     7a0033cc4e1f590c5a936671f351a1b251e16726

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

