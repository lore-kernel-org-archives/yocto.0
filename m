Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7525AE00B74; Wed,  4 Jun 2014 15:05:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB476E00B6A
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 15:05:42 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hq11so167677vcb.12
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 15:05:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=JOTU5p1jg76gSYu0+4JfrA/1BhuufFkF5FunbNl9v4U=;
	b=aAiLyGmiUDNgcF7ELq9inR/bix3nuyBpFwLN89NITQzQ9wULGw9mUcLG7vyjhNlkNJ
	NvLe/R2Va9utcI/+qLyP7aWp35L/MnnD/qGmubmV4YoD5Bqtq4ghLnStQMA3LmCrY9WC
	msG8APkaUbsl1rMqtmVKn6/sVyPW8DKG/84kwiNPPuWdHVoB8+nrcK6xQVrW7i3UNy7F
	MD5DTWP1qCbbVV5szHns0FSpwHoXPLmHuwakhy4l3H0D66bk5+JpX8VpHqaJaiu0k5qg
	qau4Tgd7y2xt+zQlnF8wZw8nAicPIJQdz4NqQrTwjSCUdautUPcO1mIaRDCM9pml8rVu
	aCtw==
X-Gm-Message-State: ALoCoQnVLjW6WISrKsrvHeScmOfm5KT+kG2fYRSBiiqat3mQ7+TQBRL2BkakbIAto14Fqjp3sNA0
MIME-Version: 1.0
X-Received: by 10.52.125.198 with SMTP id ms6mr38608115vdb.28.1401919542144;
	Wed, 04 Jun 2014 15:05:42 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Wed, 4 Jun 2014 15:05:42 -0700 (PDT)
Date: Wed, 4 Jun 2014 15:05:42 -0700
Message-ID: <CAPhnLPB5gotpQ27iJ8XRgs=0DOTF-z1KnVbmYKL5RJpYqAZ-Pw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: Weekly build now available.
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
X-List-Received-Date: Wed, 04 Jun 2014 22:05:45 -0000
Content-Type: text/plain; charset=UTF-8

http://autobuilder.yoctoproject.org/pub/nightly/20140603-2

bitbake     18f9bcbad059608e22fca20309314e1c399acec7
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     984d050eb5aa82d944dcca28c07c07876a36a061
meta-fsl-arm     849e0a68105961f8a02ddd7fb635eb3792e34464
meta-fsl-ppc     b920491d60752ffc38098266f260dacaa2c35e7a
meta-intel     50023dc8955390460bd7dd540bf9688dc7050b2d
meta-minnow     7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
oecore     f8125a1e9b6893a12355d55d4df584a8d97f0bff
poky     e7114046be6e71fb326477dc882adb814ef6a751
-- 
Elizabeth Flanagan
Yocto Project
Build and Release

