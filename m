Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1B99E006DB; Wed, 23 Jul 2014 14:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12BF5E006B7
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 14:45:00 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id f12so1985335qad.17
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 14:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1sxuYpvoNmccTe3As4gmi1ss9X9lRXY6cFDEXl7LSs0=;
	b=DO8dkOnnuZQCNu8VlPz30lLtHKUPFI3+WIoopblpsUc5g3nVbSeVrnRoE9x2DWlgz3
	9askjZMlyuEedtYFe3iy45Qbo5aWWlJSmOeE+k+Mvbsc0XvY7Z0qeI318TS7GBWYubQE
	Q8+toQsoh2rTmDREp2nvCFJcHegHE+po8waG7fYMt3+zlvqmgh+hmHBTHwihZADdffMQ
	PPp8TLyp/4YVrtDNbzDxXh4CnZ5Y2f0pKlvuaPtXknnG0BuxOWZpfqRaUD+ZJw9vxLmX
	T0QyOSomx0GlOUPiw41+I4kk3HBVI/RgJwRRZc/Fz6AFfLEEWec05N1KVUEVRou3m83k
	jFbQ==
X-Gm-Message-State: ALoCoQmYFTGzHvZMQlBeUcWgd+rqffzM++kgLsQjg37L+yuDNb1DS2pTL6ElU1pRoBSl+9bmK9OH
X-Received: by 10.224.136.70 with SMTP id q6mr7243358qat.14.1406151899505;
	Wed, 23 Jul 2014 14:44:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Wed, 23 Jul 2014 14:44:39 -0700 (PDT)
In-Reply-To: <loom.20140723T084046-919@post.gmane.org>
References: <loom.20140723T084046-919@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Jul 2014 22:44:39 +0100
Message-ID: <CAJTo0LYO7A9qU5jAguk=x7jd3QqapbXeKeN6P4=xGVO=zyZz5A@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Bitbake Error - rmp-native task failure
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
X-List-Received-Date: Wed, 23 Jul 2014 21:45:03 -0000
Content-Type: text/plain; charset=UTF-8

On 23 July 2014 07:51, Anoop <babu.anoop@gmail.com> wrote:
> patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
> directory

I just re-read this mail and remembered that this was a different
problem with rpm-native, and I fixed it in oe-core/poky.  Their fork
of poky has been updated to incorporate the fix but if you can't
upgrade then cherry-pick this commit:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=442efc3959a65fc9da73f79b3afda95d1cffadf3

Sorry for the wrong reply at first, there are several ways that the
meta-tizen rpm can fail... :/

Ross

