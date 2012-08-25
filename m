Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C238E00347
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 09:49:04 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-112-181.range81-153.btcentralplus.com
	[81.153.112.181]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id DE9729AE3
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 17:48:48 +0100 (BST)
Message-ID: <503901EF.8050908@r-finger.com>
Date: Sat, 25 Aug 2012 17:48:47 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <33FA7F6F-5C7B-40A0-AE08-18E0058A4C31@gmail.com>
	<CAK18fxFu6M11cia+C9EnJovtqFYnV4AaHzmoNZ1vJrRWMtLoUg@mail.gmail.com>
In-Reply-To: <CAK18fxFu6M11cia+C9EnJovtqFYnV4AaHzmoNZ1vJrRWMtLoUg@mail.gmail.com>
Subject: Re: WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires a shared library under exec_prefix (/usr)
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
X-List-Received-Date: Sat, 25 Aug 2012 16:49:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/08/12 16:29, Andrei Gherzan wrote:
> The obvious fix would be to move libgudev in /usr but before
> doing this we need to be sure that nobody needs this in the early stages of
> booting.

That does not really matter; as things are if something is trying to use
libgudev before /usr is mounted, it will not work anyway, so moving it
under /usr/lib will not break anything that is not already broken per
se. But it could possibly break libgudev itself -- I think this is an
upstream bug that would be best pursued with the udev developers.

Tomas

