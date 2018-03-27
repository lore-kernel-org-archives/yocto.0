Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C5A4E00CA6; Tue, 27 Mar 2018 02:11:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.193 listed in list.dnswl.org]
Received: from mail-ot0-f193.google.com (mail-ot0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A5D9E008E4
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:11:24 -0700 (PDT)
Received: by mail-ot0-f193.google.com with SMTP id x6-v6so22273785otg.11
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=3WJoRHOh6a1IZNQhQzioluk0kOcvEKsflQv/G9+wk50=;
	b=UKkZ/y7YMBpvJHqFGmK4jS+iIpv2J6sO7o6KHId8Y7oJc+g03+0mLXqms5Hvj8E0tE
	adyWAhiOePgM3KJEI4OQyNKPn6CPCPR4URGIXY7hC+kMsXsrSHCQoMPDPMt6wKzoMpLh
	Vd8z6LBu1yhoErxuV97kbp2CxURbbCDZnbkQGmMEQiRc5bnPZuBl6v6K64WF6qc2JCL4
	IETlE0hVgs3upnJjB85xEhrjoYEbx0WRvkhs2FAXAeZTgjLEIyE3eIT5Cm0jOc8fcs2h
	qOdVAmL1rlyu9ELdKeFHd9ZbAnHhXjOlUfb9FPrPefkltV2SVucNa83pf6ZI1rTyRLwb
	8N1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=3WJoRHOh6a1IZNQhQzioluk0kOcvEKsflQv/G9+wk50=;
	b=aTP9SJvqz20kjobvgKrvEB8JNNG0OStI7ew4xIotPb+rc//I4MPFVr46cHwxW4s4++
	PFihSIqHWyFhlF9RS7Q0KCMs3EdDTItNPmrt8GLbdw9tQKH4CAfer2+0Pva2H7e97sbp
	lzkYXT5KPQRIFqeycXVvlw9kaxNZk1XXNjJOyMj+k2D4hTFlnLRX8Hr0P9ljUQEV3n+T
	Zl/cYc24PJ8rYsu6RQ4XlbnUueBPC7WJpagauf7NkT8ENFsBFCB0CzLktZfGUzGOXoEI
	UimiBKEZdlBaIf1jF3gHeKvrrz2Y9V9GLcN59VwimHVZMAzbqrmv9+f3PBEW6PqiAK7W
	HeSQ==
X-Gm-Message-State: AElRT7GVSCgyEYtuySlAmyBJ8rV6FckEwaKSinB1NMOWKOZA2y8OxFQy
	0UXbZystVZPsG1fFXXI5xFDuA+7SAKzfi3WvJv+1OI7x
X-Google-Smtp-Source: AG47ELsOEJ/1V1WDb7/u76SOB9iDwIZs6FOD03iYsDi6AiMb/90w48PEkQUlomGjGiZlrd0W1pwa1DE0PSIdrTY0/9Q=
X-Received: by 2002:a9d:f29:: with SMTP id
	38-v6mr20885792ott.119.1522141884457; 
	Tue, 27 Mar 2018 02:11:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 27 Mar 2018 02:11:03 -0700 (PDT)
In-Reply-To: <0db82a0a-841a-dd39-4225-524c0c6a1fca@emagii.com>
References: <a4c194cc-78bc-08c3-491b-3130d7d3d019@emagii.com>
	<CAJTo0LYdof+yo+92aB3SMv-r-1eTLdFegNFJhBS5gywuPmta_Q@mail.gmail.com>
	<0db82a0a-841a-dd39-4225-524c0c6a1fca@emagii.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Mar 2018 10:11:03 +0100
Message-ID: <CAJTo0LYTiA25vDznwLQYorNB7MF6FkjEhMZuVCs1BQKU3A6Kqw@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to add a module to python-native
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
X-List-Received-Date: Tue, 27 Mar 2018 09:11:26 -0000
Content-Type: text/plain; charset="UTF-8"

Please remember to send to the list.

On 26 March 2018 at 22:16, Ulf Samuelsson <yocto@emagii.com> wrote:
> I do not see however why "inherit pythonnative" would make python-restkit
> importable. Why is that?
>
> My python script start with
> #!/usr/bin/python
>
> Does that mean that I use host python, instead of native python?
> $bindir_native is "/usr/bin", so what is the difference?

python-restkit-native installs the modules into
/whatever/your/tmp/dir/is/sysroot/usr/lib/python/site-packages/restkit.
The host Python doesn't know to look in there, and if the module was
built from C sources the chances are the ABI doesn't match anyway.
You need to run the nativepython in the sysroot which 1) matches API
2) knows to look in the sysroot for modules.

This is why 1) you need to either inherit pythonnative (in a recipe)
or 2) run the right Python explicitly.  *Any* python code using
/usr/bin/python explicitly is broken, the best practise everywhere
(not just in Yocto) is to use #! /usr/bin/env python as you can't
assume the one in /usr/bin is the right one.

Ross

