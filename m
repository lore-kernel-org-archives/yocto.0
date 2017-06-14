Return-Path: <dvorkin@tibbo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65BA8E00B53; Wed, 14 Jun 2017 03:47:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E48BE00888
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 03:47:02 -0700 (PDT)
Received: by mail-lf0-f47.google.com with SMTP id o83so88833608lff.3
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 03:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tibbo-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=WZQWIYwPBtLhDl139KB4KYYL/mbKd6LtRtMiXqz63K4=;
	b=X2lvOypgKGGjy/fdiiEcNIacxXZUBmeKltSLekr4yqM5Mm89lX6WvviKFzw0IIdYnr
	ozl2i5T79YcSbjToByEXCgA6bFNfF6r6rB0BAI8/2+xy33DiS8pCSNdJy0rRy6PGb3tg
	KrtO2/s1dLMkzv89YmofBcAm7UndQWiICOrVK/FKHdTtxgzN14LYIo2yVC/iABBzTyqd
	+Xresb3UbQ9DOtNSs3v/qQ2Kvy+TjEvG17sm6Ooh3hvwLaCKIle7E5mKPt+x/XM2X7Rh
	mVeEL48KMOImnThfJSAlJQuzEVBivWnSa1leghMJaM7dmivPM8rTdM9Ho3Sb2/WRNHj4
	q+1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=WZQWIYwPBtLhDl139KB4KYYL/mbKd6LtRtMiXqz63K4=;
	b=ST+kwHq1LIHUipPsILcYL5C8qyrriTUlWTrXuL55zfO6QSPwzoIQtHOqyR3OY7JTL4
	ZkPmSbOH682rt72UUJX/6zSyMIkZa6shMo2FGrjrnT+K7yfRz9X/z8Xqs51v8BXZ839f
	3/PKfwU8K9xcvR+hj/s4gaZzubA7sOuvTAy3VqejhFuPDLBieeOTZhZ/PLb8G1rnulxR
	dDCu621r2VUyhL/nAfs+crUXfW5BRDKquw42gqQxxFpnYR9v/mdTKPSq1DcwFO3kDyiy
	nvaLX5IjLVuCY+FVu+B7Q3FHp8NIBcfqjZ0k4wW0IipFSMzkivchihsFSeml/COENjjX
	u0Lw==
X-Gm-Message-State: AKS2vOz28xqbcXKTdNaB2ObL7NYqi62j2xn8MDl52UzC7Q3zl6uXMxjN
	bAQr9qWQB23uAdEddc8=
X-Received: by 10.46.80.93 with SMTP id v29mr1209523ljd.7.1497437220627;
	Wed, 14 Jun 2017 03:47:00 -0700 (PDT)
Received: from [192.168.75.150] ([176.114.204.12])
	by smtp.gmail.com with ESMTPSA id
	z205sm179602lfa.37.2017.06.14.03.46.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jun 2017 03:46:59 -0700 (PDT)
To: yocto@yoctoproject.org
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
	<20170614092057.amc6kambns3nvcoq@ad.chargestorm.se>
From: Dvorkin Dmitry <dvorkin@tibbo.com>
Message-ID: <e34fa94e-eedf-5c8f-6636-3acc9eb6fd4a@tibbo.com>
Date: Wed, 14 Jun 2017 13:46:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170614092057.amc6kambns3nvcoq@ad.chargestorm.se>
Subject: do_rootfs failed with message about host system(?) locale
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
X-List-Received-Date: Wed, 14 Jun 2017 10:47:06 -0000
X-Groupsio-MsgNum: 36549
Content-Type: multipart/mixed; boundary="------------C4124E0428089016DE522A2E"
Content-Language: en-US

--------------C4124E0428089016DE522A2E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

ERROR: MyIMG-1.0-r1 do_rootfs: [log_check] MyIMG: found 2 error messages 
in the logfile:
[log_check] Failed to set locale, defaulting to C
[log_check] Failed to set locale, defaulting to C

ERROR: MyIMG-1.0-r1 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: 
/home/dv/workspace/tpp.17/poky/x.tpp/tmp/work/tpp-tps-linux-gnueabi/MyIMG/1.0-r1/temp/log.do_rootfs.30451
ERROR: Task 
(/home/dv/workspace/tpp.17/poky/meta-tibbo/recipes-core/images/MyIMG.bb:do_rootfs) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 5400 tasks of which 5394 didn't need to 
be rerun and 1 failed.

the complete logfile is there:
https://paste.fedoraproject.org/paste/s~SuKagYWMH2wmJLB6ckFQ

I got read of any errors in my image. The only thing is my host PC 
locale. But if I set
export LANG=en_US
export LC_ALL=en_US
before running bitbake it doesn't help.

--------------C4124E0428089016DE522A2E
Content-Type: text/x-vcard; charset=utf-8;
 name="dvorkin.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="dvorkin.vcf"

begin:vcard
fn:Dmitry Dvorkin
n:Dvorkin;Dmitry
org:Tibbo Technology Inc.;Tibbo Engeneering
adr:;;9F-3, No.31, Lane 169, Kang-Ning St., Hsi-Chih, New Taipei City;Taipei;Taipei;22180;Taiwan
email;internet:dvorkin@tibbo.com
title:Embedded Linux System Architect
url:http://tibbo.com/
version:2.1
end:vcard


--------------C4124E0428089016DE522A2E--
