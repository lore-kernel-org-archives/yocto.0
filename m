Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCFB2E00970; Fri, 28 Nov 2014 04:55:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3652AE0082F
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 04:55:28 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id z12so8849185wgg.15
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 04:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=A0VYk7bf0N1Yu/1SD9AEeuyk8oM44PxQ/AZxy4zMGaE=;
	b=LobQ+f3ibDIQ8PdA+rh56TXy/qU1QzpZOu3DvbSh/HmcIBNntEuRt2Qw1hdC6jC4uU
	c6o1wIl5bYjbOztHwzn6xsSMTS2mX4gWlil5EKZuhLHavW8PQATcJuZvQOAFAlyVoYdT
	AmzTKpFn7+ICoAYBkFXCcVp1j6h7rMU2I0YelS96TA+vm7m/EfEbYWalICKEFEyiS/Iz
	8c/exa4WeIUufUgGBaUzMMJOsjVxbFVKOgxMWpT7J97VCqO9MfdvlKxtGwBCNwNeX6ht
	tIrUsqPYGM/2tN72nzY0j0x+XG1YyV3nFk4M1j6zHCN7ELB2cAqUV01xG018UJpEqStu
	47MA==
X-Received: by 10.180.73.206 with SMTP id n14mr37525784wiv.60.1417179327856;
	Fri, 28 Nov 2014 04:55:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.10.11 with HTTP; Fri, 28 Nov 2014 04:55:07 -0800 (PST)
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
	<CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Fri, 28 Nov 2014 13:55:07 +0100
Message-ID: <CAGiJk9c-w9Jwx6McyjkjWq9yo80zU2bNwRiRY=Os9_eJ3KJO8Q@mail.gmail.com>
To: Matthias.Heise@atlas-elektronik.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_fetch linux hangs after defconfig/conf-fragment change
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
X-List-Received-Date: Fri, 28 Nov 2014 12:55:32 -0000
Content-Type: text/plain; charset=UTF-8

2014-11-28 11:29 GMT+01:00  <Matthias.Heise@atlas-elektronik.com>:

>
> This is what I found :
>
> DEBUG: Mirror fetch failure for url http://downloads.yoctoproject.org/mirror/sources/git2_github.com.wandboard-org.linux.git.tar.gz (original url: git://github.com/wandboard-org/linux.git;branch=wandboard_imx_3.10.17_1.0.1_ga)
> DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
> http://downloads.yoctoproject.org/mirror/sources/git2_github.com.wandboard-org.linux.git.tar.gz:
> 2014-11-28 11:11:09 ERROR 404: Not Found.
>
> After that :
>
> DEBUG: Trying Upstream
> .
> .
> .
>
> And then it hangs here :
>
> Currently 1 running tasks (1000 of 1988):
> 0: linux-wandboard-3.10.17-r0 do_fetch (pid 7070)
>
>
> The source seems to be not there, which is a problem, but I'm asking myself also why it is fetched again
>

It's only a warning if a mirror reports error 404.
Looks like your company firewall blocks outgoing connections for the
git protocol (TCP-Port 9418).

Can you manually clone the git repository in your console?
E.g. git clone git://github.com/wandboard-org/linux.git


-- 
Regards
Samuel

