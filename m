Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98EA7E00BE2; Tue,  4 Jul 2017 19:51:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A80BE00BDF
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 19:51:14 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id q86so122291131pfl.3
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 19:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=ziYuv7k7tEpDYxZlCiANBkVCQTFo8svDUZmYUI4UbsU=;
	b=lDAF/QUlQZzhSN4vYqVFRsVWVd5NicurPNPeA3kB+E2asew/vJc5YjkGXC5M6ypY82
	uHezIAoZPh2vuLV3LKZglwlAckGSjqeaYVYfh4AByR763a7Il+fejJX3+51OTJ3QDAep
	FtuheSqoFYi9PlSQ56KMvswXpF+NBQlUToJ/rb+wsXxO8ypilIAN5appmX1voV/872Uf
	JeeyfBFNpemyA4XIZJJ3voK12D3R8ZDVxZlzld2X3SlBZTETNMlO7UyZB1QQaFSHrFf5
	Pu1gAfpewHLlHoX4EK2c3EZtzzzrSLM4ateNDnTtJw2qjTwAKhCeqTgu6Szb2obpN49P
	06tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=ziYuv7k7tEpDYxZlCiANBkVCQTFo8svDUZmYUI4UbsU=;
	b=aVOueC4pLfDbo7nonGCSj+T56+9HElhdwp/a95tVGBeKG0tKkawmTMUD/hns+hGal1
	o4xdxH5DWCXpx2rRw7TtKvEY1fkGwO6a/VRlqDZ1cNva1fxcLcwHxvbzxbCAGSChZMJy
	/accYUrOsGoJBHmtIFLE7+LXZDt/KH3rzShsqB/08LnoiZtGebTQ+x54OkSfeOZxW1Oo
	McOGlHpAvZ9nUzaWugfYzUTkXtIQqA2VjhfSuxeLesdjr4m0pYc/tpvQro3OtJEPp6EY
	mFnxxNgQ4rapWFfoEpj8p0Omei8KOygdOvKoBAvs+bR9TSwsOI8CYRf2/pDqye6//0jo
	Cs8w==
X-Gm-Message-State: AIVw111yvdUCFxSx7apjjqMOffmCJNeZ/41cTh1Uu74R8jY5sdLI/j4V
	CUKyJsgrlCpRkIRi
X-Received: by 10.98.49.2 with SMTP id x2mr17817111pfx.48.1499223074460;
	Tue, 04 Jul 2017 19:51:14 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8?
	([2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8])
	by smtp.gmail.com with ESMTPSA id
	k194sm35795991pgc.31.2017.07.04.19.51.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 19:51:13 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <a17f8b13-c5ed-945c-cc2b-9f602c620f8c@gmail.com>
Date: Wed, 5 Jul 2017 10:51:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: /boot/dtbs/4.4.54-ti-r93/am335x-boneblack.dtb
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
X-List-Received-Date: Wed, 05 Jul 2017 02:51:18 -0000
Content-Type: multipart/alternative;
	boundary="------------1AAB6400A67736D882C8DA77"
Content-Language: en-US

--------------1AAB6400A67736D882C8DA77
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

Is it possible that I use this dtb with beagle yocto kernel ? if it is, 
how to do that ?

loading */boot/dtbs/4.4.54-ti-r93/am335x-boneblack.dtb *

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------1AAB6400A67736D882C8DA77
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,<br>
    </p>
    <p>Is it possible that I use this dtb with beagle yocto kernel ? if
      it is, how to do that ?<br>
    </p>
    <p>loading <b>/boot/dtbs/4.4.54-ti-r93/am335x-boneblack.dtb </b><br>
    </p>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------1AAB6400A67736D882C8DA77--
