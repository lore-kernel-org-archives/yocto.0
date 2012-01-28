Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533A0E006B0
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 10:13:40 -0800 (PST)
Received: by lagz14 with SMTP id z14so2154357lag.35
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 10:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1P7YfESiIWwPSC2R4r2eJl6VDcug8Jar5yHIiyKE7ok=;
	b=MfLVR8LYz/1pSEVX2VAagR0NJfVA1zgjxgB2ywpg+WviREBERaHwgjlxMkbUWO+KkV
	KKH1DAFZUHdoAidnBDYiDhP5xanbstd1AVp8ywq0UsmdSLDXxpgL+kOjBbhYgvERzqFS
	oMVf31Nj2R4YSa1SDkCmjjt4ay1cMWpi8RJA4=
Received: by 10.112.101.34 with SMTP id fd2mr2963809lbb.16.1327774417252; Sat,
	28 Jan 2012 10:13:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Sat, 28 Jan 2012 10:13:07 -0800 (PST)
In-Reply-To: <4F21DABC.3000007@linux.intel.com>
References: <4F21DABC.3000007@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 Jan 2012 10:13:07 -0800
Message-ID: <CAMKF1soeiB-6BKY8radeAh4GMAq2-r90uPGAR_k_jyThFWNzcA@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [OE-core] opkg-utils to move to git.yoctoproject.org
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
X-List-Received-Date: Sat, 28 Jan 2012 18:13:40 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 26, 2012 at 2:59 PM, Saul Wold <sgw@linux.intel.com> wrote:
> We will make this change next week barring any major objections.

its a good idea infact. will you do svn2git conversion as well. ?

