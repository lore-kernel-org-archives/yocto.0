Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F776E00BBC; Sat,  5 Sep 2015 09:17:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A733BE009BC
	for <yocto@yoctoproject.org>; Sat,  5 Sep 2015 09:17:51 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so54002544pac.2
	for <yocto@yoctoproject.org>; Sat, 05 Sep 2015 09:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=xcza/CAuqJnhnfkG4WKkaKqunVnGLhWreIx+Bj8RmrE=;
	b=W8hypZfgbOPbyj1vthpYp/aYEIvmwtHYt8GNPaLsQ3GnmwEWxrY9tq5Ot17u6OeVe/
	zNFqMqlLDyWcjKMUi6pZeeIADs2KaiSl0S0kv+Ez0S1UDgMkXEXz4MOAb3aoAsVhy/En
	ph6Q0sYKE9AcvgrHLnnImmfna94DBKZHaYJUNwBFObtZsqUcAdRue2vwLjcAvPS5Xm/0
	VQihUMJnQ7LkhckXbc55j016fZIFBJFNflJam0gCRoXORr5e/InFFKz20i1JJwQkeySt
	JtcLQfxDZ5KeavXCEiTxlfaVf9idyxWJOKf+/sqUPjrTeKRcEUpsmltD/L7kAbRE5P2n
	njxQ==
X-Received: by 10.66.147.68 with SMTP id ti4mr22534685pab.90.1441469871032;
	Sat, 05 Sep 2015 09:17:51 -0700 (PDT)
Received: from rjs-mbpro.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id f5sm6303626pas.23.2015.09.05.09.17.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Sep 2015 09:17:50 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 05 Sep 2015 09:17:48 -0700
Message-ID: <1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
User-Agent: KMail/4.14.6 (Linux/3.19.3-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <55EB098B.7040401@reliableembeddedsystems.com>
References: <msd33a$81v$1@ger.gmane.org>
	<21521607.ihPEg5j6zl@rjs-mbpro.streifs.net>
	<55EB098B.7040401@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: Robert Berger <gmane@reliableembeddedsystems.com>, Robert Berger
	<public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@plane.gmane.org>
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
X-List-Received-Date: Sat, 05 Sep 2015 16:17:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

> 
> I think I made some progress - see attached image.

Good.

> 
> As you can see I stepped into printf and friends.
> 
> For this to work I needed a few more things:
> 
> 1) directory needs the be the same on host and target
> 
> the executable on the host:
> 
> /home/student/BBBworkspace/HelloBBBAutotooled/src/HelloBBBAutotooled
> 
> the executable on the target:
> 
> /home/student/BBBWorkspace/HelloBBBAutotooled/src/HelloBBBAutotooled
> 
I do not have to do that. As a matter of fact the executable on my target is 
copied to /usr/bin from the Eclipse workspace. See "Remote Absolute File Path" 
in the Debug Configuration.


> 2) .gdbinit
> 
> I copied my gdbinit on the host to
> 
> /home/student/BBBworkspace/HelloBBBAutotooled/.gdbinit
> 

Yes, that's where Eclipse's Debug Configuration expects it if you do not change 
the setting of "GDB Command File" in the Main subtab of the Debugger tab in 
the Debug configuration.

> that's the .gdbinit
> 
> # don't use default libs from x86/Ubuntu:
> set sysroot /opt/adt-target-sysroot/beagle-bone-black-ml
> set solib-absolute-prefix /opt/adt-target-sysroot/beagle-bone-black-ml
> set solib-search-path  /opt/adt-target-sysroot/beagle-bone-black-ml
> # point to the libraries with debug info:
> set debug-file-directory
> /opt/adt-target-sysroot/beagle-bone-black-ml/usr/lib/debug
> # point to the source code:
> set substitute-path /usr/src/debug
> /opt/adt-target-sysroot/beagle-bone-black-ml/usr/src/debug
> set substitute-path /
> /opt/adt-target-sysroot/beagle-bone-black-ml/usr/src/debug
> 

Yes, looks like mine except that my target is a MinnowBoard Max and I 
installed my SDK in a different location.


> 3) Once you enter the debug view you need to go to the gdb console and:
> 
> source /home/student/BBBworkspace/HelloBBBAutotooled/.gdbinit
> 

Strange. I don't have to do that if GDB command file is set to the path in the 
workspace. I would expect that Eclipse passes the .gdbinit from the workspace 
explicitly to GDB. However, I do have

add-auto-load-safe-path .

in my global .gdbinit (~/.gdbinit).

Cheers,
Rudi

