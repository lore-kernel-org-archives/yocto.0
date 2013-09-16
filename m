Return-Path: <javiroman@kernel-labs.org>
Received: from paris.hostgo.com (paris.hostgo.com [64.71.164.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5175E014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 03:05:11 -0700 (PDT)
Received: from mail-pd0-f173.google.com ([209.85.192.173]:34711)
	by paris.hostgo.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.80.1)
	(envelope-from <javiroman@kernel-labs.org>) id 1VLVg5-000690-SE
	for yocto@yoctoproject.org; Mon, 16 Sep 2013 06:05:10 -0400
Received: by mail-pd0-f173.google.com with SMTP id p10so3918116pdj.32
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 03:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LyvderRsiQ7SL/qmfKqUyZAbk125CHLUcxCtUWpR9lg=;
	b=Xm2IJiDGj5PfxSNvz36Y2rb+zLTvJjKdkgYFibPspJNUbY+a8rUykj+ize76/ApBji
	6cfLoeI1jbpLEPy6fnAAVVvxyyTuc/9RZqSstdViL9GZEz2/tFMy2KIopwFHw837muQb
	AjYA/y6hS/HZVgxc9z6gAiwHw39yL3zQPYfN5E0G3yhi+dvVgGbw/w+pQ1It1dmBpRey
	akVB/pPGJbG5k52KuMXYuD5tRfz2ycESECirvFcNdmZAC6HNWECIc6N3v0M2UUSq65BX
	/V5Api4VnsEqU2LvvGMqEgoTRtmjSpAM80GmyO1M+qXAaogu/dkTuYAJWgf+mxch9IvM
	2TCA==
X-Received: by 10.66.152.11 with SMTP id uu11mr2432053pab.124.1379325909094;
	Mon, 16 Sep 2013 03:05:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.130.163 with HTTP; Mon, 16 Sep 2013 03:04:29 -0700 (PDT)
In-Reply-To: <522EE8CE.3060806@vtkloud.com>
References: <522EE8CE.3060806@vtkloud.com>
From: Javi Roman <javiroman@kernel-labs.org>
Date: Mon, 16 Sep 2013 12:04:29 +0200
Message-ID: <CACWQdqDdyeUfD876UMxoQVhDXuRQvpHG-AfxEcpCN54PgesOhQ@mail.gmail.com>
To: JC <jc@vtkloud.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - paris.hostgo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kernel-labs.org
X-Get-Message-Sender-Via: paris.hostgo.com: authenticated_id:
	javiroman@kernel-labs.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: curl smart package requires curl-cert... another strange smart dependency issue
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
X-List-Received-Date: Mon, 16 Sep 2013 10:05:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've opened a new bug with this issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5204

This dependency problem makes curl unusable.
Javi Roman


On Tue, Sep 10, 2013 at 11:39 AM, JC <jc@vtkloud.com> wrote:
> Did anyone already had this very strange issue installing curl ?
>
> Computing transaction... error: Can't install libcurl5-7.29.0-r1@armv6_vfp:
> no package provides curl-certs
>
>
>
> I have more and more issues with smart... Is there any specific discussion
> channel for it?
>
> Jay
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

