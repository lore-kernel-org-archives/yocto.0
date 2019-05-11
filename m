Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54191E00C1E; Sat, 11 May 2019 13:51:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C380DE0097C
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 13:51:35 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id m141so13326260ita.3
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 13:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qx4rp3F7fDPUoQUi833L7Uf/+0ktLWRTCOdYjbRf1+4=;
	b=MMF/HoiJEMRs6eo0L8ITBZLsOdM8BRmB1gIR9nvZWGla16KcydzOKnQbQnJJtfFp8d
	N5gYnL7MqU0yF3t69TUkmP0Qp6QKap5gMyE/s7tYRp4tXL17hvwaVbtJ3O6nx6VuFBIK
	2axPR6izH0YHNcIOnvaAB3awb3dgkQPntOT7Rv1rj/p6VuEB9n+Mzd/amrGmo3aI+gp9
	qaQVoy7f3V+Bnacnpje8czQk6DYCuoj3EP+pBFNQsXvAz799uKeukoURguJ8Ue8bQAR6
	Ux5ZJUI57q9r9NQ52ewKItyPmTROhXq7+uJVKMFBlyPLffITdkF2aYBfmMp8YDH+bvpm
	YezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qx4rp3F7fDPUoQUi833L7Uf/+0ktLWRTCOdYjbRf1+4=;
	b=eZ8SaOdtDemJfoCJ5TKum1WgS8cdQplJ/tyxwRjZdbPNH0hUG5XcYLun2Wo1HoYOf5
	ZB/ui6I3qmIKdYQld+QUXJtV0fR5G/BAUE30AbBnOKaDpll6NK66E3/L/nfLcaqYBtTs
	r/Sazx4Ia84/poy5fUGd8GLiO0UgRTk5K9WlejGLNeMurRUzonZP5PFZzpm6430MIW3d
	PnpgY8tplBt7hOGtbKpQ2vglQyhGU06WwgGBJrKmf3CMC2z1JRy8oY7fBCEyxw5k/G2f
	mx5TUTWUMoAJBtSpKgWfMR0wtIwEs1QN5MrLyvyPs54MxXIP/GJ5PCk5snjYjZq7Pkys
	Rphg==
X-Gm-Message-State: APjAAAXqo+0nFcZSF4/JZ7ZTrNZOPpCAVw+PuXGrDn6wMWrC9sTgIKR6
	EnE9er7Tu5wyzxF6PY6IUEjRjOfHwfyLg8SDdkiFZA==
X-Google-Smtp-Source: APXvYqwO73RA7h6jxOUnehXydLbXR8Bfk2VEVgkDunPD1CSN+3K4KI4IVX1kCbraNRAi9+I3+D8AeUKhFuBBYCfEZnY=
X-Received: by 2002:a24:4cd2:: with SMTP id a201mr11835197itb.26.1557607895217;
	Sat, 11 May 2019 13:51:35 -0700 (PDT)
MIME-Version: 1.0
References: <230317904.2732545.1557532426303.ref@mail.yahoo.com>
	<230317904.2732545.1557532426303@mail.yahoo.com>
	<CAJTo0LZa2vc8CDQCdqYSZTTSzdo+PG6fMnxb5NLisvwKxMJEBQ@mail.gmail.com>
	<960266067.2951469.1557606740217@mail.yahoo.com>
In-Reply-To: <960266067.2951469.1557606740217@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 11 May 2019 21:51:24 +0100
Message-ID: <CAJTo0LZAmQDQpMEBmAzM4G98BnAjT0ZDi4X4QcsVAx_87Zm7AQ@mail.gmail.com>
To: Madhu Krishnamurthy <madhukanthk@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I include all packages under a layer ?
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
X-List-Received-Date: Sat, 11 May 2019 20:51:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, 11 May 2019 at 21:32, Madhu Krishnamurthy <madhukanthk@yahoo.com> wrote:
> If I have to chose just one, will any one of them (say apt)  work? I somehow had come to believe that you can only use opkg in Yocto.

The default is opkg but RPM and dpkg are supported.  I'd pick either
opkg or rpm though.

Ross

