Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E235E0172C
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 04:16:27 -0800 (PST)
Received: by mail-vb0-f49.google.com with SMTP id o19so1653227vbm.8
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 04:16:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=NISQaKl9mLYQnCjC7D1iHOu0ZcXuV7iPW3ceSZHHbs0=;
	b=LAVZLd0NKKyWKyIGSYDgaieNbQ0GusrYAt51frdbE6BGWfP8As95qsaXXRE0ah/dp7
	O+S5cyBGPxpKkeEr4FX4JTzUbAU5Yu1HzXR7do6WrqB/6LjwLymCynzCXkbaJ2HHQ1Oc
	RYlVZoqsJbYMMg4hv6gMsTuAuaYDz4LqBwbOK9nCdH0FpDnuw4PRtpC3E2NrcLZolaUb
	6ezk180jqMesvkBgSjxJtHZfv3AbBi7yk4+lsm6sbXSozTJW0s/0x6r8KO5HjmLjUKjq
	ooi+Ew7QdzwyEHujCGsosdtDqhl5G+MDqXFHOk1z/GBV5fQAYN9t+lOLOWtt1tP4nNPF
	VIew==
X-Gm-Message-State: ALoCoQl3xOw1bbFF7wX7ecR81F9LkcceU7B3LUg9dsN3dPXQvkDR3O/EWextAXStNSsXAPLZTsS6
MIME-Version: 1.0
X-Received: by 10.220.169.203 with SMTP id a11mr2598932vcz.26.1384258586841;
	Tue, 12 Nov 2013 04:16:26 -0800 (PST)
Received: by 10.52.98.2 with HTTP; Tue, 12 Nov 2013 04:16:26 -0800 (PST)
Date: Tue, 12 Nov 2013 12:16:26 +0000
Message-ID: <CAPhnLPBLZG7EdxrPoSB0CxFtCyhXb=sJnQ2zsgvnKwL09jGmAg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: poky-contrib maintenance
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
X-List-Received-Date: Tue, 12 Nov 2013 12:16:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

poky-contrib clones are getting quite bulky again. I'm seeing branches
that haven't been touched in two years. I'm going to ask folks to
please go in and remove unneeded branches. In a week, I'll be
contacting folks with really old branches to verify if they're still
needed.

So, please, be kind and clean up contrib space. Thanks!

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

