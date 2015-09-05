Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5D11E00B05; Sat,  5 Sep 2015 11:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC83E0076A
	for <yocto@yoctoproject.org>; Sat,  5 Sep 2015 11:17:04 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so52311396pad.1
	for <yocto@yoctoproject.org>; Sat, 05 Sep 2015 11:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=HvK0/HE1XTSXERrP7XKSOwBtZ4q/BgalKRFuhffkcbY=;
	b=00o51+w6ZOif3ulTAHlEDDPbrNtj+JXlcM2ulXFj+jKK4+gJ7ZEIz0DM3lNJGvtuv4
	eGgjWgPb8UpYfKkGCbY32Gwd/p4hklIzdNx7t2J2LhgHodMcBVL32E3K6qlndZXjKaSN
	LP8gaROyPXhvGgvaQpxQQ4fJMj88fTJyrXVaobVN4PNi5WeOrr1Q9UwvIGd1hKN54UaW
	JaK96/IJbe9DpjlG/QYUIgGQeReqro5dypTZrak60rwGGaQPNYzNFtTr/Ak55nIP5Eq2
	AAGk+Vxv/5VDIki3djyeAGwjW8/eOXKq+32W5K/XCCPFjHpqDwEJbntUspvgUXr10fGY
	g0rA==
X-Received: by 10.66.235.4 with SMTP id ui4mr2322448pac.119.1441477024313;
	Sat, 05 Sep 2015 11:17:04 -0700 (PDT)
Received: from rjs-mbpro.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	xi1sm6566652pac.48.2015.09.05.11.17.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 05 Sep 2015 11:17:03 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 05 Sep 2015 11:17:03 -0700
Message-ID: <1971883.3UVTULYkXL@rjs-mbpro.streifs.net>
User-Agent: KMail/4.14.6 (Linux/3.19.3-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <55EB302E.8050209@reliableembeddedsystems.com>
References: <msd33a$81v$1@ger.gmane.org>
	<1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
	<55EB302E.8050209@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: Robert Berger <gmane@reliableembeddedsystems.com>
Subject: Re: gdb/gdbserver vs. eclipse
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
X-List-Received-Date: Sat, 05 Sep 2015 18:17:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,
> 
> Which Yocto version do you use? I use 1.8

I am using 1.8, too. Just sent another e-mail about the TCF agent. However, 
that's only in addition since TCF is not used for debugging with GDB. Eclipse 
wraps around GDB which then communicates directly with the GDB server on the 
target.
> So let's try to summarize what seems to be necessary:
> 
> 1) right .gdbinit on the right place ;)

yeap

> 2) Debug Configurations -> Debugger -> Main -> Use full file path to set
> breakpoints (might not even be necessary)

I don't need that.

> 3) Debug Configurations -> Debugger -> Shared Libraries -> Load shared
> library symbols automatically
> 

yeap

Cheers,
Rudi

