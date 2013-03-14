Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B3A8E0121B
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 00:27:04 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id t2so894959qcq.14
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 00:27:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=7iHEM/m8DtUyTnD20HxQV6wH1rfzz0f/4c0llIFJ95M=;
	b=CRMr1T9NalaG1y7hH7VwJA0/ICerHlKrkach+tUpLGlhBPyNXTjSW6FI35yIOodS3W
	WNZINC80uYeHg58MTSiR3H39/e38EQx4h4vbLfwl4NthOOi5188dPEuFdfYipye5XrL7
	t5IdoP6s4PGeVtTpsBVMOAjhxxwEXHw+EPWwvIUfwiC2vk47qugQZ9j492QHvF0HF6VS
	CMq1K/qMpkiyZq1Fqa7wLvPG81narJnHSe4bftn0HDgmqmvAlDM22VvDpW7SZhgxYCy6
	L21LYW4IPfbhnFX9D7wJ4gTSX7ot3CBN8zQnOlfQfT1unaILfXV700BaiHj7vAD5pakX
	XkZg==
MIME-Version: 1.0
X-Received: by 10.224.220.211 with SMTP id hz19mr1016268qab.49.1363246023069; 
	Thu, 14 Mar 2013 00:27:03 -0700 (PDT)
Received: by 10.49.81.226 with HTTP; Thu, 14 Mar 2013 00:27:02 -0700 (PDT)
Date: Thu, 14 Mar 2013 00:27:02 -0700
Message-ID: <CAPhnLPC8QX75tdYBkscLjDC2+d6m3-T0dFQEpMfZSyZk1UjRBw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, Laurentiu Serban <laurentiu.serban@intel.com>, 
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
X-Gm-Message-State: ALoCoQnByF8TLIh+90UwRZFq+Xgj5/BXS4dLuC/2oVhgteyxEenuAgC5yMNm5rdjhPoipXbeGqq0
Subject: Weekly Build availability
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
X-List-Received-Date: Thu, 14 Mar 2013 07:27:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is now available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130313-3

poky: 4da406cd50cf02a63ed76810a670aba1eb561c79
meta-qt3: 06e2fe600de962cdba53c23de1207501439a9c9f
eclipse-poky: aecd7bef8485cd2a4dea6ea314a430214ac3393c

Known issues:
---------------------
- avahi-0.6.31-r6.1 for imx6qsabresd in meta-fsl-arm failed to compile
- lib32-neard-0.9-gitAUTOINC+7abdb13d106d496e1115fab49e6448a249dfb3c8-r1
do_package_write_rpm failed for nightly-multilib

Please begin QA. Thanks.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

