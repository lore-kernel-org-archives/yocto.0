Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D69FDE0146E
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2013 09:18:44 -0800 (PST)
Received: by mail-qa0-f54.google.com with SMTP id hg5so708867qab.13
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2013 09:18:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=Z+5kuM9/AOr1MnZnS1dNOewR4Pja5nkTUvax1VK4Who=;
	b=omxSWOFmm/s3yINWGzE9gDRyQKgZ+XWGh5U4/yqQdlcA+efSoixzKJjFpAKKO+JwmI
	oQvLwVLad9w+XLAZdw4+yIAyenkaf4mSdMOqLWbjtS5wUml7swx0uNSR77C2PMrN/NN0
	JJkainpmLalFT+Jjx5cnbaE3TiLD8+tTbgv7sVSenJw1rLfSxXwhX9J5U29qddFg999R
	HneHekpbXQUtctt0LTc8AkWASZpj1l9UHr36OP6aEvLJgfz+if+SnfIL/IjmpAPhnbMH
	G+eXQB70YDRXPV6AAGwej5n5PotpXtzKpSncqnN0zR/vjzO7Fx8SFwllKsW6+TaR+elp
	xO9Q==
MIME-Version: 1.0
X-Received: by 10.229.176.216 with SMTP id bf24mr6194719qcb.110.1362331123663; 
	Sun, 03 Mar 2013 09:18:43 -0800 (PST)
Received: by 10.49.35.16 with HTTP; Sun, 3 Mar 2013 09:18:43 -0800 (PST)
Date: Sun, 3 Mar 2013 09:18:43 -0800
Message-ID: <CAPhnLPDO4dwKoayduyX1vFhy1koDKiPjv=_Z6M+eyAhZMU0v8g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnWBBaAFSAV9QxkDgLhVFUY2O03Up9eT7rguXbcJeM09qB0euoWoBufLWvE+fUEbK8AOTli
Subject: Autobuilder cluster is back up.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 03 Mar 2013 17:18:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Testing is done. The new autobuilder cluster is back up and available.
The new software's bugs have been identified (time out issues mainly,
still tracking them down). I'll have a better idea on where we stand
in a few days for the March 8th switchover.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

