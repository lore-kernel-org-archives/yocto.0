Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2849.1588164071042085212
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Apr 2020 05:41:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Esk73Umz;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A78D1E01A1B; Wed, 29 Apr 2020 05:41:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.52 listed in list.dnswl.org]
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B732AE01A17
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2020 05:41:09 -0700 (PDT)
Received: by mail-ej1-f52.google.com with SMTP id gr25so1408125ejb.10
        for <yocto@yoctoproject.org>; Wed, 29 Apr 2020 05:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MAuzglUW/0ByQ96BYBg3Gb3gJrVcA3tMF/QXgfLoWR8=;
        b=Esk73UmzP1wEf9zURZb5XWZnnKkvJY+vUBW16Wb43FgitAmND8dgQIHXtu18ueuCj0
         msCVMtcTOHhPam5JtXr5FfSdsO10iVUYK1+VsoqYGlUOMvanbPJLPpDHBXe8ufHPkaTy
         10KHMNeBrBGI8bB6qRM5vAaAr7jfplX3QNAUIQlTK8lDmAyr4Of0Q8Bt9TJEfI+iBAdn
         l0q0aE1q9vWJz7lx7TU20Z9PaHG+CDTvIUqUtLVcCHTYG3tedzWcUdTvi1ay+T5U6TKs
         lm3xPM+4JTeLVXuBdDvxxpW7OQXHHlMylVh8lfdqeCQSiEUfHgxxCy407fiaia8Yacho
         0XRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MAuzglUW/0ByQ96BYBg3Gb3gJrVcA3tMF/QXgfLoWR8=;
        b=XuOVOKs+/1juiTU3cCfTddMIgV2Efhm4RrrhSuzXVTK7oiDmtFWjxQZQX6irCtcmYw
         NLCsAVvKw73SJi7dHltsuebVB9aeBeWolgBUNoEnyR/OdWkEO3V4y701enVLbj0qx7wM
         81lc+Nbz/Jcfd+mRCdXv+s7s9rVWwYzJyi20rWHIkXhhmj/ZZ1/4/ElY6kC0hjzKBjWO
         fMr+ExLl8Hl1D1OKKX9eYxeyD822KaoG7ubn1fP04GerbD/zwQpCkSHtRS63vEgEp0F/
         BLZdgiYJr1GaNadnU1p0OYtCUuRPy83RHyb2SBkiDFwLSB4bz8/u8LTPcxrrHKRTRT4R
         8kaA==
X-Gm-Message-State: AGi0PubXxYnXySn6CdrOqHnkujGo1pkrBwf+Sk4hXCgpgBgssDTJHv34
	pFOMwZZ6CIY7BRnJ9b06zJ2X0hOvho2DDfbdT17ntuhdZj4=
X-Google-Smtp-Source: APiQypJe6u7507qgqAUYYON0eFimvctKKvwxacqGscu6a/julwRNc+WxEOZSxnoYgLZXins6aQNggEE/9zqUHZabajo=
X-Received: by 2002:a17:907:214f:: with SMTP id rk15mr2389374ejb.301.1588164068387;
 Wed, 29 Apr 2020 05:41:08 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 29 Apr 2020 14:40:57 +0200
Message-ID: <CAAfyv37pt_QP_kGSNfAN=BnR0_hWbt_e1Bh_TAZv=-d=9CDB0w@mail.gmail.com>
Subject: python3-misc-native issue
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using poky zeus release and need to add python3-werkzeug recipe. I
extend recipe with bbappend with BBLACCEXTEND = "native nativesdk".
But when added that it complains about :

ERROR: Nothing RPROVIDES 'python3-misc-native'

I just saw that python3 recipe provide package python3-mic but not
native ? I checked latest poky but there is no mention about this. Any
ideas?

Thanks,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
