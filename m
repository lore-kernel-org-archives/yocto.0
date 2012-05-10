Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2A1E013FF
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 14:02:10 -0700 (PDT)
Received: by eaab16 with SMTP id b16so904908eaa.35
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 14:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Qe74JLbgSzldJxIWJA8i5QP9EoYABKFiKD0Y74TUMQ4=;
	b=EHtuy9Hnd+CY8f/u2xjeXXOmBhxkEe1uB1+FPtt+EIcNrbHndDgSkYzt+jL2E8EjJO
	15sXSlF124eoV+6iHGG4ks2WzF2zHs7VuJQzs/oRVZzVHjM8YzhPwB9GgHRpNKSmhEtw
	ThXD9NDhIUkvLrsH5LYIJMJRIM5GTwPygQ1P07V0/ZCefiWYXtm2T9x1SAXXr7MNPSsC
	wtLnjwLj4q11vNcAY5VOcE1glqOcIXGrAbsDTrQyqZDI/xJ6yGFZ/BeKyR5gFgyBRdWc
	K9Ak6rFRgzd0vdskR69dzxU4y2FkCerTwgrmo+QvWA4HU2t7bDUKG0jYTJoXID6XS62n
	jS4w==
Received: by 10.213.115.193 with SMTP id j1mr1748005ebq.141.1336683729903;
	Thu, 10 May 2012 14:02:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Thu, 10 May 2012 14:01:39 -0700 (PDT)
In-Reply-To: <1336683582.27808.10.camel@elmorro>
References: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
	<1336682659.27808.9.camel@elmorro>
	<CAMKF1spgcY_ebT=Xb5i1aDSY5J-35ZUc1NRLQHYP5+At8HxhCA@mail.gmail.com>
	<1336683582.27808.10.camel@elmorro>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2012 14:01:39 -0700
Message-ID: <CAMKF1sp4hwd_Mw6L6J7WPiA5hER30wvrK6tLf4v_cUVE0MAZ6w@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using meta-intel with Denzil
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
X-List-Received-Date: Thu, 10 May 2012 21:02:11 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 10, 2012 at 1:59 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
>
>
> What's there in master now is compatible with denzil, so no need to do
> that.

even better

