Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7684E00BC0; Tue, 25 Jul 2017 20:12:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A4DE00B6F
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 20:12:35 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id b8so1526883pgn.0
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 20:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=7t0yxBq8pS8aI4qY4Uibr1Sd+3yxstbk8NS3qTzues4=;
	b=eJv9sCYV2CrYnUNRj+b+Yee5zsOK3onXwEB4Ply/EkRZ4dqkPhilvXE8aWlKyjWBiG
	lI6mJpjsDt4SReQzW9BMV0Of6CF6LzpidXijyEee+xgVeQuvZtrqCWtprJTnIPpVUR1I
	kjQjCNUvL8GNbuN6UFAZocytt9SmjiAt1THv1bWdz7rlCWjdHJGSyuSlOhw5uNLAhmTp
	U753hMSwymieEkndzDOHCHjwOVGFxY0ZnGDAQaRy0As8N2h9CtPgbnEdqWqHjRnB6eue
	a2ygbddGl7lzJ7RI4q95RxJzy+3frhf044vrg9NnDfkW8kY4oADjkk8tMmvL7pL6sEBB
	qMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=7t0yxBq8pS8aI4qY4Uibr1Sd+3yxstbk8NS3qTzues4=;
	b=YukWiKTEAbK5J538JyXiewCkcIbok04bAR4oWnlx7+U96poAjTmStFEnO8cqJwDHIT
	Br4xOIzgxJyp6I+R7SgIcstk8pZf/DnBbAOIagnxWDFHPZ4Qb8pv1m7Fy8gFDG02eVaw
	1cqnGuk5InxIhLBY/KCNR1OJxIe5P+tCiISeTDCXS03Hb81kUxD1JuJJ7Ryuhl4G5N6I
	FR/QqeFX0kb63tyNcS2YsvG0HRWDNeiFXL+uy3LRBOM/8FqhnYaZb0Ve04fUWsOEqA8Z
	mfSw0WbiWbwGizBovn5eNIQviWRKs5+vgDeaXQ/V39a39bMjaYeN6c6QHtL0cRaFackZ
	BypA==
X-Gm-Message-State: AIVw113bCADCJ+b6TQ0StnaDXfUY+vvl8Z+pdwOxPWBM8UBGuVLK8QEo
	65okxIZiA6uUh+9/
X-Received: by 10.84.232.79 with SMTP id f15mr23809878pln.172.1501038755069;
	Tue, 25 Jul 2017 20:12:35 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:3c0c:83f6:8591:c912?
	([2001:8003:804a:b500:3c0c:83f6:8591:c912])
	by smtp.gmail.com with ESMTPSA id
	z74sm31192411pfd.112.2017.07.25.20.12.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Jul 2017 20:12:34 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
Date: Wed, 26 Jul 2017 11:12:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Mpich and yocto ?
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
X-List-Received-Date: Wed, 26 Jul 2017 03:12:36 -0000
Content-Type: multipart/alternative;
	boundary="------------FB607F1287AE65325D230268"
Content-Language: en-US

--------------FB607F1287AE65325D230268
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Member,

Does anyone know on how to run poky on mpich cluster ?

Thanks,

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------FB607F1287AE65325D230268
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Member,</p>
    <p>Does anyone know on how to run poky on mpich cluster ?</p>
    <p>Thanks,<br>
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

--------------FB607F1287AE65325D230268--
