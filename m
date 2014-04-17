Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A06ABE00C0A
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 09:46:56 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id h18so116133igc.2
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 09:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=IG/WRXuSeDTW3W7SkiJDwtrdkW/FATohs6KYcdH5Dfw=;
	b=0vnyDTvnXuxprsiGXtmDJveh5wXoPiMEqzKKpVlEIKpz7vNXrI0oL9rr1bzJexLxQ0
	EFGRlVDUx+ewdsMOCS9HBPPNToflfMSKST7cToZ50WweYmDp7lSJkZFilVZqkv6x1P/5
	zNAYf9HDNJAGuCh1YEfa9NIUsbDd7pOriL/KkzYSWQnwhEcpn6XzafhP2GUYMLNVKE/t
	SM1zEYVpKD1G+PJDYUzK/I4006ZEKKxJWQDoqDa9uQ2X/ldSoAOil6Zgh992mQvkvWFm
	oyPbmfoqbEvcLezmq2P+BrKYH8fMflAamVKoet22MBgxhCC+7MrLJa3wk1QwhuTpFWm/
	YRHQ==
X-Received: by 10.42.20.6 with SMTP id e6mr9848069icb.29.1397753215569; Thu,
	17 Apr 2014 09:46:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Thu, 17 Apr 2014 09:46:25 -0700 (PDT)
In-Reply-To: <534F9598.5050003@ge.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<534F9598.5050003@ge.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 17 Apr 2014 09:46:25 -0700
Message-ID: <CAMKF1sqtEd77c4Sdz16hKO+ok68aivwYiEEq=LTV16PhvBRJuQ@mail.gmail.com>
To: Martin Donnelly <martin.donnelly@ge.com>
Cc: yocto <yocto@yoctoproject.org>, Leo Schwab <lschwab@sensity.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Thu, 17 Apr 2014 16:46:56 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 17, 2014 at 1:49 AM, Martin Donnelly <martin.donnelly@ge.com> wrote:
> On 05/03/2014 21:55, Leo Schwab wrote:
>> Has anyone else done any work here?  Is there anything that I can
>> steal^H^H^H^H^Htake inspiration from?  Or am I in completely
>> unexplored territory?
>
> I posted an RFC patch set last year but it didn't get any traction and
> we subsequently ruled out use of go so I never followed up on it but it
> might be a useful starting point.
>
> http://lists.openembedded.org/pipermail/openembedded-core/2013-May/078606.html
>

Thats looks reasonable patch to me. Provided it can be forward ported
to gcc 4.8+
you should resubmit it for master

> Cheers
>
> - Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

