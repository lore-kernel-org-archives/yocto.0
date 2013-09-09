Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CE99E006B5
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 12:33:19 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hj3so3785647wib.4
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 12:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=szPfwD8LwgFYoPzsxHohZ8A818H+faVxTe8KRNvcTq4=;
	b=He2xU4Fr54zQaEyskXM20N0GSB1BdJO4tUEkIK+ajpXpDy2iNx2hF2rm7N5RJhhfFQ
	gN35RnlTVkyWKJj46HVhFE77o0BFQ5jkb1nxVEz91qHwjRQ0ci//U2c1/UlKmGNjYSpa
	lEX5FEsYxMGxcJDJ6M6hiQdzM1k7LVSJkzCf9R+w1tpud5cQWU4nlt8LMI/4i6FtJhML
	ZhAIIyt/w35pBbkAqD4P/soNbrhgGQXyxUFkzGsiqlIOBMSDiH8XqvtG5cqs9tc+DFPj
	GSQ3MzRh/SJlyaxklnle37OVCxkrp4tDttD9XoSBlZ24qfLgsqUAkzSUMCebwhRG7XtS
	I7WA==
X-Gm-Message-State: ALoCoQmV00Po42SKILtscAE2kRovtiHQ9g3VnXPgAVQCgNsAPhi2M0xDUF6Hw3X/UsBaYAZ4Quoe
X-Received: by 10.180.206.42 with SMTP id ll10mr9781713wic.50.1378755198644;
	Mon, 09 Sep 2013 12:33:18 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id dx7sm14268709wib.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Sep 2013 12:33:17 -0700 (PDT)
Message-ID: <522E227C.1080700@vtkloud.com>
Date: Mon, 09 Sep 2013 21:33:16 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Issue with SmartPM install from file
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
X-List-Received-Date: Mon, 09 Sep 2013 19:33:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to get a better hand on how smart work. I've been successful 
to create a repo, update and install from it. Now I want to go further. 
Let's assume:
- I have a working repo and a working device
- I build a new recipe (here, git) and update my repo
- I "smart update" on my device
Now instead of installing, I choose to "download" the package :

# smart download git

It's successful. Now I want to install it :

# smart install ./git-1.8.1.4-r0.armv6_vfp.rpm
Loading cache...
error: Unable to create channel for file: ./git-1.8.1.4-r0.armv6_vfp.rpm

Whatever I do I end up with this error.

Does it ring a bell to anyone? Is this the right place to ask?

Thanks a lot for your help
Regards
Jay


