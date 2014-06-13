Return-Path: <marek.andrus@wp.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90260E00BEA; Fri, 13 Jun 2014 08:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.77.101.10 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.andrus[at]wp.pl)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7AA9E0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 08:22:33 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 14446 invoked from network);
	13 Jun 2014 17:22:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1402672952; bh=AaF2vB5MIOXG2kVDrLuN7tTAeSj73H1z1nxf+lv49B8=;
	h=From:To:Subject;
	b=xDSYayBjfULfJM2158+QCX/NVairqmtVAISO4EtDmsXzOT5pX0usY/dNQwC7/7qXq
	+2FCnNKwclryacJf6zlCB7SkBZQue1c+a5gpm5p+BDKtS8ToMdKGuz/zqR5niekDrf
	g7kningOw55m08ze90NRk1xKQoQ2S2Ra6ghwD9zY=
Received: from unknown (HELO [62.159.77.164]) (marek.andrus@[62.159.77.164])
	(envelope-sender <marek.andrus@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with AES128-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 13 Jun 2014 17:22:32 +0200
Message-ID: <539B1737.20402@wp.pl>
Date: Fri, 13 Jun 2014 17:22:31 +0200
From: Marek Andrus <marek.andrus@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Icedove/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53983E7B.6070001@wp.pl>
In-Reply-To: <53983E7B.6070001@wp.pl>
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [sdP0]                               
Subject: Re: put symlink into /usr in sysroot
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
X-List-Received-Date: Fri, 13 Jun 2014 15:22:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've found the solution. I created a function (fun) and added it to the 
functions called during populate_sysroot:
SYSROOT_PREPROCESS_FUNCS += "fun"

The function fun does the work: ln -s lib ${SYSROOT_DESTDIR}usr/lib64

BR,
Marek


On 11.06.2014 13:33, ext Marek Andrus wrote:
> Hi,
>
> I have to make symbolic link /usr/lib64 to /usr/lib in target sysroot. 
> I create it in install phase and it appears in output rpm package. 
> Unfortunately it doesn't appear in sysroot. I've found that if I 
> create links/files inside eg. /usr/lib the same way, they appear in 
> sysroot. So probably the question should be like this: how to put 
> anything into /usr or / in sysroot?
>
> BR,
> Marek Andrus


