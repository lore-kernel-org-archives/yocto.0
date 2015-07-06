Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFFCDE009E6; Mon,  6 Jul 2015 09:58:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D27DE007A3
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 09:58:13 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 49593600127E;
	Mon,  6 Jul 2015 19:58:12 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1436201892; bh=j+Rud/WA1vH3iJRQ+9wmwZEAM4rtqhvuHVwS6xM8lk0=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=XbA7J+CEkMY0hsF/Xwgo19CONmcT9PWD5ivfH9xd08dPwkhJWItE6GU1eiGScGzzm
	z/ZUoy6cbNWnCNgo61X0qV+5QbTh8fRcX5UJI7iMM3Z3AuyXm6TqxuRxGzdqJAX/Cs
	+BSQr5hYTSusUO3u+4BDE+51r+DML3GvgPR6+ZvI=
Message-ID: <559AB3A4.7010206@mail.bg>
Date: Mon, 06 Jul 2015 19:58:12 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg> <559A8572.6020203@gmail.com>
	<559AAA59.9090007@mail.bg>
	<CAJTo0La_FqBveOEv90+ofCq2gAj4hiNfSA72dc40mEjrFv8aJg@mail.gmail.com>
	<CAJTo0LYoqTs3o7di3rvwcsX5Q4iruAqFZePAJRXdw8eHWqW7HA@mail.gmail.com>
In-Reply-To: <CAJTo0LYoqTs3o7di3rvwcsX5Q4iruAqFZePAJRXdw8eHWqW7HA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Mon, 06 Jul 2015 16:58:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

On 07/06/2015 07:26 PM, Burton, Ross wrote:
>
> On 6 July 2015 at 17:23, Burton, Ross <ross.burton@intel.com
> <mailto:ross.burton@intel.com>> wrote:
>
>     How latest, remembering that oe-core supports LTS distros which are
>     likely to have old releases of git.
>
>
> Assuming I'm driving it correctly:
>
> [git init, git remote add origin ...]
> $ git fetch  --depth=1 origin beeafee030a38380c65a9a664003ba50f87aefbf
> error: no such remote ref beeafee030a38380c65a9a664003ba50f87aefbf
> $ git --version
> git version 2.1.4
>
> That's with the latest Debian release.
>
> Ross

Well, the commits that add this feature are from May-June.2015. I fully
agree with you that LTS is a factor that can't be ignored.

Kind regards,
Nikolay

