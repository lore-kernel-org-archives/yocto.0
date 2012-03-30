Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14252E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 23:32:39 -0700 (PDT)
Received: by lagu2 with SMTP id u2so524465lag.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 23:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6dI5RQ2krEaN6lNZoFpcfKVyX6P8ss7CaAnLkubafMU=;
	b=X0GIMGmE1EkkMLcyt2kCihklzRezO9DhpX/NZWTrFsDHQ0QqFgRhoO+6Mr0a1f3qtT
	LL4HPqG82AbGya+uMA13nJ8+ImAssu7zrisi3XnRUNw7P63Uhof+Wvjwc8QLCY05vOK8
	C871fHfi+g0JcG0DZ6XlFIop07Zs2qykr0IG2JZuax4HrPegF+m+FJXRZkXddsYz1LmD
	2evKQJz26pyJHt1pKfdurm4rwUasDsMTcn3KdgvE3FD0fLZ37KfGZMqdzuJFiaSv0Ao0
	/nH6a0ve2pLwCEHotfaQ2J8nQ/Rqq13LszpvT+sQNwxFkXFnOtzE5DWc4M1/O9mKNSaE
	F0FA==
Received: by 10.152.115.38 with SMTP id jl6mr1242711lab.24.1333089158968; Thu,
	29 Mar 2012 23:32:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Thu, 29 Mar 2012 23:32:08 -0700 (PDT)
In-Reply-To: <CB99FFF9.B950%belen.barros.pena@intel.com>
References: <4F71F122.5070802@linux.intel.com>
	<CB99FFF9.B950%belen.barros.pena@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 29 Mar 2012 23:32:08 -0700
Message-ID: <CAMKF1spx3rzKqcTMbiW0pxv58OrDEpAPAieV3q2EWUK5T7gnMA@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Giulia Piu <giulia@closertag.com>
Subject: Re: Deleting layers in Hob
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
X-List-Received-Date: Fri, 30 Mar 2012 06:32:40 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 29, 2012 at 4:05 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> Do we have enough information to make a decision about the meta-yocto
> layer? I don't understand all the technical details, but I am inclined to
> make it non-deletable in Hob (i.e. it is not possible to delete this layer
> in Hob).
>
> What do you think?

bad idea. Unless you intend to shackle hob to yocto. Is that the intention ?

