Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC866E00AE0; Mon, 20 Mar 2017 05:24:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 922A8E00AD5
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 05:24:18 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id w124so86459200itb.1
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 05:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bE9kx/2+qxOa5Iq6G+rd5M9gZ5NJ9s4Q4nYiCyzRPJo=;
	b=Zr8UteRFCXecAA8qLHKggWls6dWVLmAoZ3UOGc6+fsR3hl/gjPr5gi8U/6Ur5zi/IE
	FpFd1lFOwK9QvVRV1imXXGF8XfLX14+jz8Br3a1C7BPqU+vdCc/0rmFyNOYY9ULEXLYH
	7Z+NottVTgMDrW1bwuMRhqhj2WjkuFTO7J720=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bE9kx/2+qxOa5Iq6G+rd5M9gZ5NJ9s4Q4nYiCyzRPJo=;
	b=eLI4RJ5MmidgoLJig2HzQudMkj5NiG0dEFypR2hXvgp2Aq5kUjwHv6kRxeYJJ2Xzcy
	j/spcSzq15Ovt48Wc5qFE/Y8K6ZgeiejG4aerUn/igHM4CnGqceW444M6LdstSQQxgdp
	0cwxW+RNgUDNwzLjeITkXQ5h88zVf/GcZw1WgE5SxqJbCzYNcRisrhJ1ymiyTT5/EeNM
	UKAncaxItzQASXL9JkCPWuP9xWOJOoAojO7bsc7rZ3lxS6uj38kq+ckMMK9Ue4RwCccP
	3RyWnKVZil5ozTipPkKOxdYDIXx+LNc9lFEno9vUTxIeXgoqlLVUowlQAJ42alBCrUD2
	nGSA==
X-Gm-Message-State: AFeK/H2PrNAftgQI7UseOsAdzCqbaPEiHBI8SJF1BRbeBWZ9r2AEQXj8MxTmTMBe4wFuCO1i6f+LgvLYO/DaIQ==
X-Received: by 10.107.154.202 with SMTP id c193mr17372929ioe.109.1490012657555;
	Mon, 20 Mar 2017 05:24:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Mon, 20 Mar 2017 05:24:17 -0700 (PDT)
In-Reply-To: <CAJTo0LaAYZLN4xjspRDRR2DK4OaddYYTKd_ocwcPNOyJ6K957g@mail.gmail.com>
References: <CALDHXtc=M_cfCZO-e=2A2cib6b7v9N0jKL-99CoPTpS4kv+0iw@mail.gmail.com>
	<CAJTo0LaAYZLN4xjspRDRR2DK4OaddYYTKd_ocwcPNOyJ6K957g@mail.gmail.com>
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Mon, 20 Mar 2017 17:54:17 +0530
Message-ID: <CALDHXteq4bN9rATOKw=Hj5=nisJH6YKm=0wyK7y=818FfBUBNQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
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
X-List-Received-Date: Mon, 20 Mar 2017 12:24:21 -0000
Content-Type: multipart/alternative; boundary=001a1140e9442a2f5f054b289bf8

--001a1140e9442a2f5f054b289bf8
Content-Type: text/plain; charset=UTF-8

Thank you Ross,

I checked my recipe file and added the
LICENSE_FLAGS_WHITELIST="commercial"  local.conf file,
Now it's building properly.

Regards,
Ravikiran

--001a1140e9442a2f5f054b289bf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Ross,<br><br></div><div>I checked my recipe=
 file and added the LICENSE_FLAGS_WHITELIST=3D&quot;commercial&quot;=C2=A0 =
local.conf file,<br></div><div>Now it&#39;s building properly.<br><br></div=
><div>Regards,<br></div><div>Ravikiran<br></div><div><br><br></div></div>

--001a1140e9442a2f5f054b289bf8--
