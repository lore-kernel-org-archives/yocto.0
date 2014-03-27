Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66FD9E00B93
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 05:53:48 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id oz11so3932641veb.19
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 05:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=EdZew7xhYxf9u8K+2bsO5IlwDqX3zePXDDs8+1N51vc=;
	b=O92RBCHpmKuRYHV1EDaXqVM5sg0F6q0/qktiWWTOB/EyITxwK+hLGnr8k9z3bDmc2j
	cwmJari6YClc1Sy17x0YAM8nYuFmdRb6smddS21G8sgfu/So+yAu8ZZuWzVTUrJwOkyJ
	sTXFVMiyIf6hJw7iWiG/T9Z5rulqlOilTnPgQfeUVr4H1MpTRDGSxBjGGoEslyuclN3R
	WIvqjKaFngWC6+zdcGOLJS3bE6BpnKlDiahNE61LS4rKO+OXJ/2PMbmMEj4MPZ/676wd
	dPYgq7LsWv+3GJkkyfECBBWp7DxRLWmISTuucRlJh8vY2Yy+ZT3wuQ8a3TqBqaac0x6X
	oM+w==
X-Received: by 10.221.22.71 with SMTP id qv7mr223636vcb.34.1395924828175; Thu,
	27 Mar 2014 05:53:48 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Thu, 27 Mar 2014 05:53:08 -0700 (PDT)
In-Reply-To: <CAJTo0LYF0VNwy7=rhmr7U_=tXwJtPOax3AKttn66q3qD_QXd2w@mail.gmail.com>
References: <CAMKF1soKZqqmQUVCQnUqS1GV1FO5KictTO+=up=d7Jw3+QhXMw@mail.gmail.com>
	<CAJTo0LYF0VNwy7=rhmr7U_=tXwJtPOax3AKttn66q3qD_QXd2w@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 27 Mar 2014 12:53:08 +0000
X-Google-Sender-Auth: aiKzMXh5yfx2nyT6AUIfG6buXUo
Message-ID: <CANyK_8deVKbC6xOUQHubvphfwQCQefHGWCt7Mp1QM4DUVXja5g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [oe] initial support for musl libc with OE/Yocto Project
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
X-List-Received-Date: Thu, 27 Mar 2014 12:53:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 26 March 2014 22:12, Burton, Ross <ross.burton@intel.com> wrote:
> On 26 March 2014 22:04, Khem Raj <raj.khem@gmail.com> wrote:
>> There were interest in other threads in having musl as an alternative
>> to eglibc/uclibc that we already have in OE, in that direction I have
>> poured in my on and off work and put it into a contrib tree
>
> Blimey Khem that was quick. :)
>

Agreed!

I wonder if it's worth splitting this out into its own layer though
(with fixes done via bbappends) so that it's easy for multiple people
to contribute to. It would also mean it doesn't need rebasing onto
master all the time.

I'd definitely like to get involved with this. In particular I can
ensure opkg (both current release and development branch) work with
musl and see if some of my preferred software from meta-oe will build
(vim, htop, etc).

Many thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

