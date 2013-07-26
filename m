Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70C1BE013EC
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:52:23 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id jw11so1403638veb.32
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=pSbJyTO+66Ok4PJ8wtvJ3931tTwrd82YbwH+X9/sInM=;
	b=Pm2DiW6CSANdSAq7CFSL87ldTf2N2XkwaKbdmkjY5TwCg7EeRLJUssaW1KOx3kFzEl
	cuA62p6LyXfvJZM1EXgsImYm2AAzLqicZUqx6Oow8TTkChucO3oXUp1qSKUfM+G9L8en
	rzT9UrEt86MOCbNL3jcAdOjHDGU75cmsdo3amzr7SeLw56yQ8piALnEqUV3RVk6LVm0s
	r7DpHVC75DoamWzf49Ng+ytnjcHtnRdlg0hFkp53xBpqhDmY9sZNZSE5AjtowsFyT68W
	qO1f8I6YU8TO1McKjNMQWoBEwnStn93h5EoTyn36mAWQq++GmVVFg3ys/ZB+aa0bnIH0
	orCQ==
X-Received: by 10.58.67.9 with SMTP id j9mr21106223vet.22.1374853943261; Fri,
	26 Jul 2013 08:52:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Fri, 26 Jul 2013 08:52:03 -0700 (PDT)
In-Reply-To: <51F29905.5040606@mlbassoc.com>
References: <51EFDD09.3030909@mlbassoc.com>
	<CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
	<51EFE508.8060004@mlbassoc.com>
	<CAJTo0LbYYzeG0-kti7sj_cH7ji_b8xXJxYxSu6T=Snq++wJeUQ@mail.gmail.com>
	<51F29905.5040606@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jul 2013 16:52:03 +0100
Message-ID: <CAJTo0LaBhvu9+hJtU7fdO58d+sTAjsfW3VxBJ1Ke+oJ-cNtDkA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkZKtqmspMiWCA3+3tWii4YXbEEl/CYXtZKiOJeOEwLmcNg0G9E6BRgkzt5VgeQ0aa0KwFs
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Packaging questions
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
X-List-Received-Date: Fri, 26 Jul 2013 15:52:24 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2013 16:43, Gary Thomas <gary@mlbassoc.com> wrote:
> One final packaging question.  In my build I have these files:
>   /etc/amanda/
>   /etc/amanda/MyConfig/
>   /etc/amanda/MyConfig/tapelist
>   /etc/amanda/MyConfig/disklist
>   /etc/amanda/MyConfig/amanda.conf
>
> I want the /etc/amanda/MyConfig to be packaged separately in "amanda-demo"
> package.
>   PACKAGES += " ${PN}-demo "
>   FILES_${PN}-demo += " \
>                  /etc/amanda/MyConfig/ \
>                  /amanda \
>   "
>   FILES_${PN} += "${libdir} \
>             ${libexecdir}/amanda/* \
>             /var/amanda \
>             /etc/amanda \
>   "
>
> Sadly, the /etc/amanda/MyConfig tree is ending up in the main package.  How
> can I stratify it the way I want?

Various things interacting explain this.  Package takes files in the
order that they appear in PACKAGES, so by using += you're *appending*
amanda-demo to PACKAGES, so it's at the end.  FILES_$PN defaults to a
long list of "useful" paths, including ${sysconfdir}.

So, two options, both of which will work:

1) prepend amanda-demo to PACKAGES, so it gets to take files first. =+
is the prepend operator.
2) Change FILES_$PN to explictly set the entire value instead of
appending the default, then you can leave out $sysconfdir.

Ross

