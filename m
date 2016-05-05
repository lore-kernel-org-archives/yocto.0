Return-Path: <emilmih@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6416DE00DED; Thu,  5 May 2016 09:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (emilmih[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43044E00DE9
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 09:57:32 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id bt5so37525777pac.3
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 09:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version;
	bh=BLP160REDNAbRS1zL6XnGvok+8kIV/CnLyHMZkAjPmI=;
	b=q8bmhGLRNjhozWdSFeB5vPpgkrFbRMBVqWvC2NE66sBCUR8Su3F33yW8EhY8aukyrC
	/80S0LUFVOLALyL46w7J1MaPSbKyRkmo946Q1nmG8y7NsmRDNOF4fLgDe8Srt3D7UXgp
	zUtgdKoyCtFP8o9rOOwclQ2vNwMjwG86B5JqqpU46VsUaH8lhP92Fcya+9ko9HNOXokR
	VVSu4+hqbWzFwJ4DqxXeVP3WLuRFfwVPENibiXU9+lmOnS8modBYySIKSfW/coz2ch3v
	BBnSipw/oKNKBwePu9QSOI1VC5sfG17B3ED+bw6LKKghEabeGs16SOMPZPkzw+jP5Oin
	at/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version;
	bh=BLP160REDNAbRS1zL6XnGvok+8kIV/CnLyHMZkAjPmI=;
	b=b5KTUbCgXrOdICgN0cQ98uESHKTgbEK7m0l4OaX7LFn8r8JiSFhJ5WbJljk4cMXY4U
	ZCwN6foCSWZKzFgd/gZcN9xtpvztV4ZbV3wfG9fC+nbfrPpk1QUF9OO3qfaqIP6h5xkU
	xfy+sITfdqHoRhv8OfBreYcjr7Ho7vWV6xXicEdHScvjaK9JYyHof5EHVvsaK/AVXu/i
	pQ6Wld1YtVLYkr5H9qdBggg/JbQrqOU62hs6i85905Ne4+tBQWG+xdaR59R9mnyPiYXC
	2gsOPKMZ/KbGTaFonQRuK+hdUbrYsFV1b8j/jjc4cQKb8JWklUYQ3NHpC1Limov3n6z9
	9ApA==
X-Gm-Message-State: AOPr4FVIMj7V3vnE4iWHjq0ftxHReHD5WlXvLJfjhPXfBjNt1vKFcP9zJG5rZb2IixKNKA==
X-Received: by 10.66.253.68 with SMTP id zy4mr22028337pac.81.1462467452409;
	Thu, 05 May 2016 09:57:32 -0700 (PDT)
Received: from [10.8.100.105] (rrcs-74-62-253-130.west.biz.rr.com.
	[74.62.253.130]) by smtp.gmail.com with ESMTPSA id
	a14sm14672009pfc.57.2016.05.05.09.57.30 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2016 09:57:31 -0700 (PDT)
To: yocto@yoctoproject.org
From: "Mihaylov, Emil" <emilmih@gmail.com>
Message-ID: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
Date: Thu, 5 May 2016 09:57:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
Subject: oracle-jse-jdk
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
X-List-Received-Date: Thu, 05 May 2016 16:57:37 -0000
Content-Type: multipart/alternative;
	boundary="------------272902B1322088D98B0922EA"

--------------272902B1322088D98B0922EA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

ython-argparse@lib32_x86 pciutils@x86_64 
python-multiprocessing@lib32_x86 libxml2@lib32_x86
| Loading cache...
| Updating cache... ######################################## [100%]
|
| Computing transaction...error: Can't install 
oracle-jse-jdk-1.7.0-u67r0@x86_64: no package provides 
libavcodec.so.52(LIBAVCODEC_52)(64bit)
|
| Saving cache...
|

Hi i am getting this error when i add oracle-jse-jdk recipe,

Any idea how to solve the issue

thanks


--------------272902B1322088D98B0922EA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>ython-argparse@lib32_x86 pciutils@x86_64
      python-multiprocessing@lib32_x86 libxml2@lib32_x86<br>
      | Loading cache...<br>
      | Updating cache...              
      ######################################## [100%]<br>
      | <br>
      | <font color="#ff0000">Computing transaction...error: Can't
        install oracle-jse-jdk-1.7.0-u67r0@x86_64: no package provides
        libavcodec.so.52(LIBAVCODEC_52)(64bit)</font><br>
      | <br>
      | Saving cache...<br>
      | <br>
    </p>
    <p>Hi i am getting this error when i add oracle-jse-jdk recipe,</p>
    <p>Any idea how to solve the issue</p>
    <p>thanks <br>
    </p>
  </body>
</html>

--------------272902B1322088D98B0922EA--
