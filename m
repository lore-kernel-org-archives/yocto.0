Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E599E0140A
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 15:02:46 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id ib11so25185vcb.37
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 15:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=8+D88akFJN0WIrOulsHEtqUQY3ERE+so8CcZnGSWUKE=;
	b=WDUkj+s++ratAdOVTzBynJzhtnDzfpUsbO6aatQSkQXFmno46nroFg0CPq9fXuwvV1
	ge30Q3BpQ24ooOPdSvrLk3/DjxWu55s5gSbNBh4TmkLpVlsUQQzHIXe9PdQmLKAhYKwP
	HSUkW7P9aZWpflBltygW6gsm4Pcia8q6M2s61aEGTmxLvBUWJYjqrfZXAXt3PfNQkCP5
	ibmDQ7R4E0kdF8WdKOFSyOp30UwGGa5jBv/wCFNDNUgh0qJ6uAsIxiuKH00h/jucUVit
	UFWLwXeJ/nso5YF8dv+7WbHKYbMpFEdsCASxwrHEaO0NE03QyJdCsXKHuWWgy+LWNb0+
	ovNg==
MIME-Version: 1.0
X-Received: by 10.58.213.37 with SMTP id np5mr9514241vec.54.1366322565353;
	Thu, 18 Apr 2013 15:02:45 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Thu, 18 Apr 2013 15:02:45 -0700 (PDT)
Date: Thu, 18 Apr 2013 15:02:45 -0700
Message-ID: <CAPhnLPBsJ=U7sbpO_NGGf6H77vgw5v8oBUO_FMYSJ_u7cXu8XQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
X-Gm-Message-State: ALoCoQnRp/VtiOWaPqSnC88N7uZ18vvAAxszSApbaszskUPCi1HaqrA1RuU9YNz7cDI6Lw/GQKM6
Subject: 1.4_M6.rc2
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
X-List-Received-Date: Thu, 18 Apr 2013 22:02:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

We have begun the re-roll of rc2. It will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20130418-1

poky 789b2b7e0cca404ff8ba8ed5ba823d215e6ba5b4
meta-fsl-arm fc0106bef4d9fca0117eac52f40e63fd4a21ac6a
meta-fsl-ppc 963a659205b18e6066cf5826703a60af4df71ef7
meta-intel 76f70c337e5daa9593153dfdf5107aec08610a44
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605
eclipse-poky dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7

Please begin testing as soon as possible. Thanks!

--
Elizabeth Flanagan
Yocto Project
Build and Release

