Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A564E00D48; Fri, 20 Oct 2017 06:03:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E1BE00D46
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 06:03:58 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id m16so13162316iod.1
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 06:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=0quFmq/Yd/qEo100Yy4B7nEJ9g8M4bSlCm8cRhvAq9Y=;
	b=urFbtnKZObeSA7NdO1bVRD59FWR/91J+1CbdxhHQmk/iDtMWZIqninrbY+tpi8kZLs
	5z+PU6tfv3rzkxhdti0dFFR6jEsb8y5tObktuGPXLZi9+YobtzffYw4csAA1/s3d6fRU
	9AwM7kIQIY2uNJnNNCSwIQylIeo2tFtl47BRtm+THI7UKMAjDEZwUo2JJfiPN847MTNC
	hWgR7b84Enxsp153Kp+QaP1cyB2z3tWMx5+Dvb7oPuUkccBYu0U1ijJXKReoOK6ciXZl
	Q0STYUSO5La02FARWzBiDt/9wSEYE1OftPVp1QCy2Sa08TG3jjlrVnJxibHkk4sVx+2K
	AVuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=0quFmq/Yd/qEo100Yy4B7nEJ9g8M4bSlCm8cRhvAq9Y=;
	b=l7PNSb8jNwlI7u/yE3ZQMiL4KgEFNGewvKTxQM+19yp2d7OPXe6bgkiQEm0uT+hHV9
	ts4QdgzreJTpd0QD+daz8n+p6S08H7Q9tbbId/5/TR9Wfjzm+Wn6OTr/WniMqFWKpojt
	OT8buesXMTYM0ipk/+WzKP30q5vPfD7sDj4kCMtJF7ZVfirW77zvtG2iOfBuV2sDII+D
	nNC8CJLCynNIb+4xjltnOYQvUp3Y0Xn6DGE+bpemoHGkwa0mHvfYIYynHDhiNtPItT9l
	tf4XcsmQNeox4p6mpnnTlNYCgkWPteVuYs3C74YpGttzDgs0BVc9JugS2IprW/EgLp5N
	n8Pg==
X-Gm-Message-State: AMCzsaU54vIP2Z1S2QSXTytPAalmDzBiquE15KJDWICRcg37ujl7ubEY
	rRRZL97V/Tw1jB65VE9RoC6V/vJQ
X-Google-Smtp-Source: ABhQp+SKa3L4J1PDDu5WubebqXRClhBpKs457g/rbgwuHTNdG6j4IU/mImd/o5zFY6VQOgtFIuVNvw==
X-Received: by 10.107.138.222 with SMTP id c91mr6257886ioj.246.1508504637961; 
	Fri, 20 Oct 2017 06:03:57 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	129sm491427itx.11.2017.10.20.06.03.57
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 20 Oct 2017 06:03:57 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1508504636.2542.5.camel@gmail.com>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>, yocto@yoctoproject.org
Date: Fri, 20 Oct 2017 08:03:56 -0500
In-Reply-To: <015601d3499e$719866f0$54c934d0$@gasera.fi>
References: <015601d3499e$719866f0$54c934d0$@gasera.fi>
X-Mailer: Evolution 3.24.6 (3.24.6-1.fc26) 
Mime-Version: 1.0
Subject: Re: Overriding openssh sshd_config file in custom recipe
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
X-List-Received-Date: Fri, 20 Oct 2017 13:03:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-10-20 at 15:24 +0300, Andreas Enbacka wrote:
> Hello,
>  
> I am trying to create a .bbappend file to customize the default
> sshd_config file as part of the default openssh package in Yocto
> Fido. In the custom file I attempt to disable root login access by
> setting the PermitRootLogin to No. However, after building and
> installing the image on the custom SMARC board, the content of the
> sshd_config file still enables login (PermitRootLogin Yes). I have
> checked the content of the installed rootfs before deploying to the
> board, and the content of the sshd_config file is correct (disables
> root login). What could be the cause of this? Is some other process
> modifying the content of the config file?

If "debug-tweaks" is in IMAGE_FEATURES, it will always allow root login
 with an empty password as a post processing step in the filesystem
image generation. See ssh_allow_empty_password in meta/classes/rootfs-
postcommands.bbclass

>  
> Best regards,
> Andreas Enbacka
>  


