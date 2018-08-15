Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B1E8E00726; Wed, 15 Aug 2018 10:43:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D8CDE0049A
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 10:43:00 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id w10-v6so818636pgv.2
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 10:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=aOem+ShycLtfhD1KIlmn4ljmGho6L1mbjuNqwbvep1s=;
	b=IIz3rpgu0Z16OOM7LtbJi3F4a7CwQZjCc/BWuA+mSskIk2EFkbWEE6XfozoIaYzTEA
	f7lh2xSHaL8cEZvRRO0TbMta4vrUJfKwDLNKqgxtT7f7nIE7xXIXhM6xoInlCrwkV7Z0
	MxNl64nGq3/XlSfKC/05m2XZiDvFGTLkD0Mm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=aOem+ShycLtfhD1KIlmn4ljmGho6L1mbjuNqwbvep1s=;
	b=pYmATmnefyrQosuHsroVbLjve3JNAXp7iAaMz5AoAnXVNJZsSh2Mm1qFJUIjyfbhzE
	LvUVM/Mdrh1Hb8wcw08ej0/PrdbSfx9ncs095kC7VOX/zVdJ5NlzoN85SaQesGabu0Pw
	idkDpVcJXTmJGoJK9bsQ2Kg5zzZ3ghmVu8SsnLZlYF+OTa3VNPn93HNLvLMe3Kvt6+1u
	D0Kvq9vzJIiXM6mfvSYkE/yXwfjouupm1YaXqiln5CA/I3Rrl4zibLMon0E5MfwohI9F
	X8YXQJDIU5S3CI9ZqmiUYjPmXMEVHilGkhOHxTc5NXbYxz8KEyuU05JxGVbrlGOXOEHe
	b4gg==
X-Gm-Message-State: AOUpUlHMfuvX+9KQGucycSRjDFvmWGyySoAmt3akaI+qs0oeHkgg5PEa
	nKsU/P8+mx+YjgePOfjrbUdBnssPS+4bZA==
X-Google-Smtp-Source: AA+uWPz9jsjYtsyXpVPmohBu9yC+BYUKNTUp3J+vz5hNgTqZku6qkDC6/g5mGameqOT4WCyLJXSKdQ==
X-Received: by 2002:a63:d80f:: with SMTP id
	b15-v6mr26250306pgh.347.1534354979910; 
	Wed, 15 Aug 2018 10:42:59 -0700 (PDT)
Received: from [192.168.17.78] (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	d10-v6sm22429991pgo.2.2018.08.15.10.42.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Aug 2018 10:42:59 -0700 (PDT)
From: Yocto Project Advocacy Group <mhalstead@linuxfoundation.org>
X-Google-Original-From: Yocto Project Advocacy Group
	<advocacy@yoctoproject.org>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
Message-ID: <532deb63-6b26-ba77-788f-ba4f507f8a5c@yoctoproject.org>
Date: Wed, 15 Aug 2018 10:42:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: Yocto Project Dev Day Europe 2018 - Extend your Embedded Linux Conference experience
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
X-List-Received-Date: Wed, 15 Aug 2018 17:43:01 -0000
Content-Type: multipart/alternative;
	boundary="------------94D2729A95CF8EC5DC5136BC"
Content-Language: en-US

--------------94D2729A95CF8EC5DC5136BC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Everybody,

Yocto Project is pleased to announce the Yocto Project Developer Day
Europe, Thursday, October 25, 2018, held in conjunction with the
Embedded Linux Conference Europe (ELCE) in Edinburgh, UK. Join our
knowledgeable and engaging instructors to learn about creating
custom-build Linux distributions for embedded devices using the Yocto
Project open source, high-quality infrastructure and tools, across
multiple architectures. There are two ways to register – together with
your ELCE registration or separate on the Yocto Project Developer Day
registration page
<https://www.yoctoproject.org/yocto-project-dev-day-europe-2018/>.

Register now and save
<https://www.regonline.com/registration/Checkin.aspx?EventID=2529346>.

Best regards,
Yocto Project Advocacy Team

--------------94D2729A95CF8EC5DC5136BC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <span style="font-family:&quot;Cambria&quot;,serif">Hello Everybody,<br>
      <br>
    </span><span style="font-family:&quot;Cambria&quot;,serif">Yocto
      Project is pleased to announce the Yocto Project Developer Day
      Europe, Thursday, October 25, 2018, held in conjunction with the
      Embedded Linux Conference Europe (ELCE) in Edinburgh, UK. Join our
      knowledgeable and engaging instructors to learn about creating
      custom-build Linux distributions for embedded devices using the
      Yocto Project open source, high-quality infrastructure and tools,
      across multiple architectures.
    </span><span style="font-family:&quot;Cambria Math&quot;,serif">There
      are two ways to register – together with your ELCE registration or
      separate on the
      <a
        href="https://www.yoctoproject.org/yocto-project-dev-day-europe-2018/">Yocto
        Project Developer Day registration page</a></span><span
      style="font-family:&quot;Cambria&quot;,serif">.</span><span
      style="font-family:&quot;Cambria&quot;,serif"><br>
      <br>
      <a
href="https://www.regonline.com/registration/Checkin.aspx?EventID=2529346">Register
        now and save</a>.</span><span
      style="font-family:&quot;Cambria&quot;,serif"><br>
      <br>
      Best regards,</span>
    <br>
    <span style="font-family:&quot;Cambria&quot;,serif">Yocto Project
      Advocacy Team</span>
  </body>
</html>

--------------94D2729A95CF8EC5DC5136BC--
