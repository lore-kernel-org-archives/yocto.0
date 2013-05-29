Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F4E4E01515
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 06:26:15 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id gf12so6396845vcb.13
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 06:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=E5xrQl2oatNzdAYMuWaePIKhj+/GlWo0Amr9XBoqkYA=;
	b=EPNg9u1McuuvFs+G9IsmtOOHQHQZ1W2VmvpGncFKric58tIEiDogNcpkHOyCGlAVaU
	rHKCn5CmKOztS/QNOZKw7ScFG6kEpf7C9QJYpNll3dOTnQW7u9vGlJscqU3zf9FnSTTY
	8c7sZ17Ruc3z0HVvVDERnEti5+D6WR+AjFUg7ihy1rsabjDmXA7jCpOT1iIIvwll8IRC
	nB5xSjjR9THuoFzpJAACV6hOl0XFVDNvUPWE98To3VcaacTyPoagRXsJwP5/ILdQr6aK
	DzelhSGPY8qdspLCYoekEndLJCl1cYgv/BItCx2/CXEon8+c9+E6+c9DY/tHOCkVYh2K
	iONg==
X-Received: by 10.52.69.200 with SMTP id g8mr1331437vdu.4.1369833974596; Wed,
	29 May 2013 06:26:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 29 May 2013 06:25:54 -0700 (PDT)
In-Reply-To: <51A5FC51.7050106@ge.com>
References: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
	<516555F8.50006@gmail.com> <5554864.lTrseEoNhs@helios>
	<51A5FC51.7050106@ge.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 May 2013 14:25:54 +0100
Message-ID: <CAJTo0LbjnM=MRaL78v27JW60By0xj0+HUyL2aHA4LaWS-u1Stg@mail.gmail.com>
To: Martyn Welch <martyn.welch@ge.com>
X-Gm-Message-State: ALoCoQnujeGQLnPuQzlsUZG/sdMNCdqdUbNo+e8+DvANEllF8VeYbPAQH40iAtbN5ebRUh9+L2jC
Cc: Jean-baptiste DUONEA <jbduro2@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: "trap: 80: SIGHUP: bad trap" comes up when building core-image-sato.
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
X-List-Received-Date: Wed, 29 May 2013 13:26:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi Martyn,

On 29 May 2013 14:02, Martyn Welch <martyn.welch@ge.com> wrote:
> I've just hit this exact problem building busybox from Yocto 1.4 on Ubuntu 10.04.

This was root-caused down to a bug in a script in the kern-tools
package.  You can either switch from 1.4 tarball to the dylan branch
from git (where it's already fixed), wait for 1.4.1 (due early July, I
think), or apply the fix yourself:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3faa5039c8147d0bf9e352dc5ad1e9e12cf2086a

Ross

