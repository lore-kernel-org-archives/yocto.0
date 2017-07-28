Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D307FE00D05; Thu, 27 Jul 2017 22:56:47 -0700 (PDT)
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
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A95FE00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 22:56:46 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id v190so107002505pgv.2
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 22:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=3DlWYVes0FQ3iGezxqeukoAUQhXfxY4pqfos7PFwEuk=;
	b=exBxo/wptwrSuu7M4TEQjEEQqkctL06lRcqKmqs2MOszZ1VZ5hulj2nAsZ69d6p8dE
	zC3mV0b4KQMlsPBYMR6BVTS/wKUKcRc3FxsJLIl0NbrPl0EecR5XRf/Ge0bSXSUTMi5Y
	pKRhhPFgWBrg6lpo+4pDMUcjfwTDE1nNnackkS2P7MprsV8Lyc+ANvMAqDSlQ/lYSbcp
	JLfZq5VY0RLaXqh5SNqEfYxqXys6sZmJPvmowe74d9UiHv7GAhcFaQ4d58u47oIZYvpP
	6t7Bm0sDfEV8iXIgzvsA566K6Eu0svsLdbXmg7DjBI91ESe2dwxXNxeqweSQl2e4WTsA
	QjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=3DlWYVes0FQ3iGezxqeukoAUQhXfxY4pqfos7PFwEuk=;
	b=Fe+d9GZx8QQ7JAQJS7eKiPFRUOPa2T5cTmQwlY18haDMeh5lTU+i/vC4nFC+tax5pU
	1pcpHZiuWnHN+/tpPz0WsLFb85UKK6beEE99SUqGbYKnhIGKJ0fXXG3T05OT09nX75pX
	P5N3ryLzzF4EKPOiQohIudKKZlIrwZMBNXBewFH+imc5AJK7gZu8+P0slK89IbD32qvD
	l7dUINp0jxbXI4XtA0Ja7L/b3HqMUlDLKubppjRXIBoT0W1c+OxGMDir1/+ZArgYl+tH
	HSs+vNjT/9jqCBrgGE5QoG/a/wF3ZJVLMgTPQQfDXhkqU/ylYbHgSSyP6owHjVHlXFey
	T+tw==
X-Gm-Message-State: AIVw111n26lEwEIyCU10ZmPPPyvqLxi16SVEcUVNo2KSNPy4k/5VC4HK
	GuYNq/MaaK0bAbrW
X-Received: by 10.99.107.9 with SMTP id g9mr6260177pgc.147.1501221405320;
	Thu, 27 Jul 2017 22:56:45 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:941c:d6bf:3330:a31?
	([2001:8003:804a:b500:941c:d6bf:3330:a31])
	by smtp.gmail.com with ESMTPSA id
	h14sm36761474pgn.34.2017.07.27.22.56.43 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jul 2017 22:56:44 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
Date: Fri, 28 Jul 2017 13:56:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 05:56:48 -0000
Content-Type: multipart/alternative;
	boundary="------------4A1304E8C599C952426014BE"
Content-Language: en-US

--------------4A1304E8C599C952426014BE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I read about,

https://lists.yoctoproject.org/pipermail/yocto/2012-August/008757.html,

How can I port it to MPICH ?
Thanks
-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------4A1304E8C599C952426014BE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>I read about,</p>
    <p><a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2012-August/008757.html">https://lists.yoctoproject.org/pipermail/yocto/2012-August/008757.html</a>,<br>
    </p>
    <div class="moz-signature">How can I port it to MPICH ?<br>
      Thanks<br>
      -- <br>
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

--------------4A1304E8C599C952426014BE--
