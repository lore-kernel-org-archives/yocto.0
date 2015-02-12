Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86DEAE0093B; Wed, 11 Feb 2015 16:50:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEC10E00815
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 16:50:01 -0800 (PST)
Received: by pdbfl12 with SMTP id fl12so8077009pdb.2
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 16:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=UzeFArdukOHUlyWPTbTjsAcbkrkbtWwxb0Rsr5YTRe0=;
	b=hllgj6ndXvK+0wevczQpp2a30dZ7K6jLU8mL/pD1KLym2BuykFbw10EvWlSXd7RigF
	fvlGIvt1NLey6jP/oneHFJL5hP0ONPz33hIn3SxxOxKtubJAPeWwoy1jGdobUdza9WOZ
	ib54QcvwPxxUDMNW4Q+UqE2m57WX0ksQx5olQHrhBkdiaUnhPFgZOoHh2itfpWbPSmWO
	TDkphUxsH0dTBFb09aysY9gzV9+ilk+yRv9QDFLHIxjpWU+ThnGsvv/SqGUt1554hC4a
	hdjolHUb+3v2SpMVMNoD3h97JajdnGQeLTAF5eHdZNOqA+nyHVAZUv8tvLpkmv8pNhVJ
	HYAg==
X-Received: by 10.67.1.132 with SMTP id bg4mr1710383pad.151.1423702201417;
	Wed, 11 Feb 2015 16:50:01 -0800 (PST)
Received: from [10.22.11.16] (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id mm9sm1917386pbc.76.2015.02.11.16.49.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Feb 2015 16:50:00 -0800 (PST)
Message-ID: <54DBF8B6.5060904@gmail.com>
Date: Wed, 11 Feb 2015 16:49:58 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1502111225140.5138@localhost>
In-Reply-To: <alpine.LFD.2.11.1502111225140.5138@localhost>
Subject: Re: anyone else seeing a "ncurses-native" build error?
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
X-List-Received-Date: Thu, 12 Feb 2015 00:50:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I haven't.

- Armin

On 02/11/2015 09:27 AM, Robert P. J. Day wrote:
>
>    building for a MIPS target on a fully-updated 64-bit fedora rawhide
> system:
>
> | gcc  -DHAVE_CONFIG_H -I../ncurses
> -I/home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses
> -isystem/home/rpjday/oe/builds/vtss/minimal/tmp/sysroots/x86_64-linux/usr/include
> -D_GNU_SOURCE -DNDEBUG -I. -I../include
> -I/home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/../include
> -I/home/rpjday/oe/builds/vtss/minimal/tmp/sysroots/x86_64-linux/usr/include
> -isystem/home/rpjday/oe/builds/vtss/minimal/tmp/sysroots/x86_64-linux/usr/include
> -D_GNU_SOURCE -O2 -pipe  --param max-inline-insns-single=1200 -fPIC -c
> /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/base/lib_initscr.c
> -o ../obj_s/lib_initscr.o
> | In file included from
> /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/curses.priv.h:283:0,
> |                  from ../ncurses/lib_gen.c:19:
> | _744.c:835:15: error: expected ')' before 'int'
> | ../include/curses.h:1594:56: note: in definition of macro 'mouse_trafo'
> |  #define mouse_trafo(y,x,to_screen) wmouse_trafo(stdscr,y,x,to_screen)
> |                                                         ^
> | Makefile:1682: recipe for target '../obj_s/lib_gen.o' failed
> | make[1]: *** [../obj_s/lib_gen.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | make[1]: Leaving directory
> '/home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/build/narrowc/ncurses'
> | Makefile:134: recipe for target 'libs' failed
> | make: *** [libs] Error 2
>
>    totally new to me, about to dig in ...
>
> rday
>

