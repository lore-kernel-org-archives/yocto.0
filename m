Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A46EEE00902; Fri,  2 Jan 2015 16:08:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC567E008EA
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 16:08:31 -0800 (PST)
Received: by mail-lb0-f174.google.com with SMTP id 10so15580403lbg.19
	for <yocto@yoctoproject.org>; Fri, 02 Jan 2015 16:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fS4WyXiJWkmmuFmy8JCNWtCK5UUFg76fRSZM2992Bmw=;
	b=krSmjFWhzPWzUnY75/538jNvfq5SRe7KX6BgV5aHAgmqfY8BADXtuR2kRlk3wKIlSD
	wAtVAByJq6MNlc3dmHh88xRIqySBQt/xA38MstmReCGSTp/aUJ8m9/G7nfQtNeTHwBqs
	tPndD8TbCPqEHmIK7FlDv5u24jnfDBN2tkHHBNr+deHljK1+tr5HJZp3Jj3WyJ79d+3L
	g4MWKaVl5Uz8AYHalPDN0q/sS+bSfi0eryxsfe/pmVBBMh31ywxsbKUNNC9dKhLtNVJ/
	5LcQBiuIs5yvxWNzIa/Z7ObQxssSbnwKDUkuhYTUlCGCKgNKg5I2FiJsJ0Fakcu5F2l+
	dWuw==
MIME-Version: 1.0
X-Received: by 10.152.203.201 with SMTP id ks9mr77629157lac.57.1420243708439; 
	Fri, 02 Jan 2015 16:08:28 -0800 (PST)
Received: by 10.112.48.41 with HTTP; Fri, 2 Jan 2015 16:08:28 -0800 (PST)
In-Reply-To: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
References: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
Date: Fri, 2 Jan 2015 19:08:28 -0500
Message-ID: <CADkTA4MDLvwaGp_rcuUsOaXEC46_dxd6QH9k0PZmofhnxNLBoQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel configuration
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
X-List-Received-Date: Sat, 03 Jan 2015 00:08:34 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 2, 2015 at 9:52 AM, Chris Tapp <opensource@keylevel.com> wrote:
> I thought I knew how to do this, but... ;-)
>
> I'm trying to add configuration items to the valleyisland BSP. I've got the following bbappend:
>
> File: linux-yocto_3.10.bbappend
> -------
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> SRC_URI += " file://enable-hid-apple.cfg"
> SRC_URI += " file://enable-R8169.cfg"
>
> However, these .cfg fragments aren't even getting pulled into the build area.
>
> Adding a reference to a non-existent file is ignored when I would have expected to see a fetch error
>
> SRC_URI += "file://fsdfsdfdsfsd"
>
> What else do I need to do to get my .cfg files pulled in?

What release / branch is this with ? What you have above is all that you need
to do. I'm not near my development machine, but will be on Monday and can
confirm that something hasn't been broken.

In the meantime, have you dumped the environment to confirm that that your
values really are on the SRC_URI and that something else in the layers
isn't coming along later and clobbering the SRC_URI (unlikely, but worth ruling
out).

Bruce

>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

