Return-Path: <rohitj.chd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25C8BE0083D; Sat,  7 Jan 2017 07:05:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rohitj.chd[at]gmail.com)
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
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72587E006F1
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2017 07:05:15 -0800 (PST)
Received: by mail-lf0-f48.google.com with SMTP id k86so70814274lfi.0
	for <yocto@yoctoproject.org>; Sat, 07 Jan 2017 07:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=vMRCgHd8kQcifSK1a9DH5yUu+XLMoUSfcpyYbU07Fvo=;
	b=eNUcPoVRfVF/lxKwYT1ZDyOKTiv25K6W2FcbkaEc4IOYzge1cJW52axxo4Ro0sIpCm
	OahXRWLp4CjP97JceZgC+uZIrzYMX6oSHHHMiqnAR5YO/vDrok4pmJu3WrP94fP1hNtD
	z1JdI55qT3QejjwoCV6m0GIH7d/rvZnFsiFq+xvH2M7xDg6MfnaeAY+qtjcvK10mUphV
	IYvf8kl4VhzBHA0zzwFacdXf1+5kQoeaVgMHe0TQikc4T34CuIdf4nMQexiKvrb+us9s
	/f6rZWaewAuoej/6Tmah5gHTBCiezlw/m/u+Akk2wihfguXFmntKSrAzPSJdtaftxAme
	4dGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vMRCgHd8kQcifSK1a9DH5yUu+XLMoUSfcpyYbU07Fvo=;
	b=OwcIrxvCZlPCXW/oCjnSC3SMcFiVZQDlpjwr3xByOexwOoqMXpiPp//kPBxW/q4BPG
	lrqGLb3k0aS3K7k+OJ3HShYEguArBJ5RZkhJTXRtwKP0lzsRpkGzDA2YveXWgIadnqkY
	Y2qFW9IwLceN56A/l1d1ZsQM/+D0DgyOfzBEtryHDCKd4jtmzwGPmT/4PvFS1fNJVeJF
	3oHvChUgT15PdbK1RSr3RhymCcOAGunT8EgntLdm7onnlYc2fB/o8pOrbAATVhcLrZKS
	MTMNKtQuG9C7V8Gvtq1liusYkMUjNPUR+CgnOC1jW24BMA0DE+NMmn8sZwtqg+piWnnh
	BLHw==
X-Gm-Message-State: AIkVDXKKOsBZEvFmd8mHCdsxROdDBsElKj7zObo/iPNi5vE6Mg+OdTaiGOpxuh6mYMgRoXwASbQqvGq6kdnC1A==
X-Received: by 10.25.1.130 with SMTP id 124mr4538855lfb.60.1483801513650; Sat,
	07 Jan 2017 07:05:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.114.187.47 with HTTP; Sat, 7 Jan 2017 07:05:13 -0800 (PST)
From: Rohit Jindal <rohitj.chd@gmail.com>
Date: Sat, 7 Jan 2017 20:35:13 +0530
Message-ID: <CAHX_jjtT_JE9L9A4hmxL1QgftWEfC75nabgfGYEYCYWaKTKdNg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: openjdk 8 support compile for arm with jit support
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
X-List-Received-Date: Sat, 07 Jan 2017 15:05:18 -0000
Content-Type: multipart/alternative; boundary=001a113c9e9a2372760545827645

--001a113c9e9a2372760545827645
Content-Type: text/plain; charset=UTF-8

Please suggest me the solution for compiling
Openjdk 8 for arm adding support for any jit compiler like shark or jamvm

--001a113c9e9a2372760545827645
Content-Type: text/html; charset=UTF-8

Please suggest me the solution for compiling <br>Openjdk 8 for arm adding support for any jit compiler like shark or jamvm<br>

--001a113c9e9a2372760545827645--
