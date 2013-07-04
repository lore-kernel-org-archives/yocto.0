Return-Path: <ross.burton@intel.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2737EE003E3
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2013 01:18:59 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id xk17so1311938obc.10
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2013 01:18:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=62STETsfeMcBOw53RD70y31x4Qfl3WdFYSokGhTEKUw=;
	b=L0B2edYlHi30rRhUn6EAzWhANYpPmYCBljiDpD0MSjVDE4SvhYwNIrF65E/xBBSMBr
	yi3OEEvgsgyBZMFXzeUImHIAYYMtMjhday4qGyPZTBF3c8h/utfoj2BqtXbWyiDcBCkd
	W8WycOe1jTcc0g49bnXgxnTJzoaGPHBgu7xAkq4aqpUH6B15cYgkO7zfubc8XbFil94i
	AG4gntf9NDd2I5Ge6GFM3GMLtxOGtTrNt2jjivOXq6Vaw3nE915EogKJtQjLFDwmf0T7
	fFuf9VuwX1OGvfCq1NiUAs6jfcxSq4Gpo+dtZRxsK6Lu9qqMU5uzbKs7Zh70IFB+y+gp
	naxA==
X-Received: by 10.60.161.44 with SMTP id xp12mr4738329oeb.91.1372925938410;
	Thu, 04 Jul 2013 01:18:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.160.41 with HTTP; Thu, 4 Jul 2013 01:18:38 -0700 (PDT)
In-Reply-To: <CALmOhg=i9cLy9GG3wSA-ZCnfUrbG-NBDNjWc_MpubatNbKsXFQ@mail.gmail.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
	<CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
	<CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
	<CALmOhg=i9cLy9GG3wSA-ZCnfUrbG-NBDNjWc_MpubatNbKsXFQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jul 2013 09:18:38 +0100
Message-ID: <CAJTo0LYywZcY_cP7xgM_8M6D=avtX5nj-6qNcgTEVNh84Zih7Q@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
X-Gm-Message-State: ALoCoQnYqW2LUUuVwhtVqhyJ/5AUdsloqf9Lm3Tr6lek6sl3XqrFazLMdgj300Z90lBXrieIXV7q
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Thu, 04 Jul 2013 08:19:10 -0000
Content-Type: text/plain; charset=UTF-8

On 4 July 2013 03:48, Trevor Woerner <trevor.woerner@linaro.org> wrote:
> I'm using the latest released version of openSuSE (12.3), 64-bit, and
> recent pulls from master have started complaining that my make-3.82 is
> broken, so I had to manually downgrade to make-3.81.

File a bug with suse about this, they've fixed up previous releases
when I've filed bugs about 11.something so should be quite responsive
with this.

Ross

