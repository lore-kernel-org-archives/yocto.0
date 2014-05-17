Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DFD4E00BA1; Fri, 16 May 2014 22:19:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f175.google.com (unknown [209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EEBFE00B0B
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 22:19:15 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id y20so3390409ier.34
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 22:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+knWVigXRhlml4iEqtvi6CZizFXA79pJJ73cu8xFVzM=;
	b=JJbTMD0ruDNMZXIUnDpkEEetOsXaMuIpg6SttIDSknISFviRWvXyRI8C3xLFY+WL2y
	O/HqUbzpOhHzLYy4yT/XVpO2OwY4iNm7dv5wQg76LNe05OPvYPCI5cD7XboDjD06yhRa
	r9cWmsDVqqIXfgvD4CntXl9aKzIR+64UCK+dMt7aPWHiKjb8ONfdQ2R3c2AV9OfIj+Ab
	BIgkELUu5eLSnU5KeB8Chm7A5n1FYIMkhUfpwvwr8ulnpAK2IKb8W/xxurn+Aih+S7AN
	ZyemhpkwuoSNVY5DjFSMVy5aZ2OECQ9WOSl3kUtoxnCkHADg0wwyYdwljYv6otKDjvo/
	zHkA==
X-Received: by 10.42.21.207 with SMTP id l15mr20600559icb.8.1400303955189;
	Fri, 16 May 2014 22:19:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Fri, 16 May 2014 22:18:45 -0700 (PDT)
In-Reply-To: <ll50j2$f2p$1@ger.gmane.org>
References: <ll4sg1$jb0$1@ger.gmane.org>
	<20140516120420.GA3995@ad.chargestorm.se>
	<ll4vid$196$1@ger.gmane.org> <ll50j2$f2p$1@ger.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 May 2014 22:18:45 -0700
Message-ID: <CAMKF1srHA4_sdwUJk2dfsHet6HkV5MZOEhqZrkp5QST4-kWmcQ@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with building app recipe
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
X-List-Received-Date: Sat, 17 May 2014 05:19:22 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 16, 2014 at 5:33 AM, Neuer User <auslands-kv@gmx.de> wrote:
> If I change the sed line to "#!/usr/bin/env python3", that would
> probably work then. But would it break something else?

would be fine.

