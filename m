Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97B5EE00874; Wed, 15 Feb 2017 06:43:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE99DE00874
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 06:43:27 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id v186so43680730wmd.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 06:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=QCoXSkuiMPrxyK+V7vr4mHfLYqlqqG+pjvQarbOJBJs=;
	b=j0LNWfZVbm4+ESvEZqcXguNAwzYhHPL5RHm6JvD/ErUFo64x2qXATz8ygupxmUFUAj
	CibKib99aSRLJKLW/A2PanS2/ALuL+gk619UR5UiYeVTz56VBS7w8MThF3FEkz43D7XU
	CY6Mp2VCFglEmYE9bfr8BT84GXGsGUma+gDqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=QCoXSkuiMPrxyK+V7vr4mHfLYqlqqG+pjvQarbOJBJs=;
	b=cHxMMaaAUjIA3FgWMOfCwGS2NELr8oqU6FfABx/dref0uWIk3P/N7AhMlE/nwW+5G0
	M+dZXDzIGEdG9pyiee5guP9OgcHoHyW8/UmIR+7cNlAREwAnBbqP602szrT9YZje90KG
	Kp+moBHSL/MWysBIDQmYZ1kUE5YBdeatPl3OUVhXagUoJo8k3YBlI+4mk7IohUXNacFG
	K55zL0FuRFMnQJdo42p6mfzEUsUrO2fqNqzC0bH9d+/Ot9izWxbikFXhehRdnQ/LIT32
	1duOCNc7WH3xDDcCQgEh2kQ9s5eIjSW0Xq9mLkv9pfuGcBusS76lgPl2gIserYXSkn7V
	aAsQ==
X-Gm-Message-State: AMke39m58Wlm9Vd0Dz8qVJ3LCbk02vTsR73/kZ2T/tjoEfyUAMI+ECZzVQolAmBWZJQ70w==
X-Received: by 10.28.111.75 with SMTP id k72mr8397578wmc.39.1487169805638;
	Wed, 15 Feb 2017 06:43:25 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-131-167.w86-214.abo.wanadoo.fr.
	[86.214.82.167])
	by smtp.gmail.com with ESMTPSA id 45sm5119146wrx.60.2017.02.15.06.43.24
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 06:43:24 -0800 (PST)
To: yocto@yoctoproject.org
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
X-Enigmail-Draft-Status: N1110
Message-ID: <c5a4c802-163e-6e4b-e7c2-fc2f598c11ec@fridu.net>
Date: Wed, 15 Feb 2017 15:43:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: Changing UID GID
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
X-List-Received-Date: Wed, 15 Feb 2017 14:43:30 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Hello,<br>
      <br>
      in AGL project we are facing an issue as when we create new images
      the UID,GID of given packages can (and does) change depending of
      the build.<br>
      This induces issues when we create partial update file using image
      diffs.<br>
      <br>
      Could you let us know if we need to create our own solution, or if
      yocto already has a model to enforce a known UID-GID on packages
      coming from internal or external repo such as Open-Embedded 
      without patching (or creating a bbappend) for each imported package
      ?<br>
      <br>
      Regards<br>
    </font>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

