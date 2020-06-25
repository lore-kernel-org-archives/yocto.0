Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
 by mx.groups.io with SMTP id smtpd.web12.23.1593117711645237607
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 13:41:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EmIGxzs5;
 spf=pass (domain: gmail.com, ip: 209.85.219.68, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f68.google.com with SMTP id h18so3500010qvl.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jun 2020 13:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=52GflU0eJyK4B3TJCzhpzMdG9pb2gClinopLZ9hHMnc=;
        b=EmIGxzs5yRoZTSaKkQ7zfVJazwDgvbYN0EjSG6HxE683T2dCYXlvI+bn0ueHVSZk9Z
         fAZLJvIo8CJYKPfBroYNvxPUjrLPFXykg7zP1cUWLM6SEdGuTJjZ8yxMnAXg6mO2SejX
         vy+dms3VwobRBwoA0F08OsU0gLZ4smAFnTgpKpSb2IjLdqfOtmb/2TDk/EC1FCVDN6Ij
         Qffs7vYfzoSq8PD/rzAeTTjwzxCayVHyd6g37K5UiDnXbiePMBnnkjNmuI+OEsdUfMdR
         TvuaJNe8mrk1U+AsG6/VhQX89UB/ysI8N2Wi9J17yvqsJ1jIJIjMfA2w9T352JFB7ERz
         1Y+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=52GflU0eJyK4B3TJCzhpzMdG9pb2gClinopLZ9hHMnc=;
        b=ohL957W4WxPFsby5jcnie1D7sRe/pAbH+VbU5tOGhRcLiev/76kJLFjfz96os77OfP
         3LkwflbsJfLfVvV5w5s9HM9I+jch5r6//YoP08Mu04Ox9IrlOpUUZ1NQjnN9xizWND+E
         3ejtmX+VJZscDAPe6C9IB2JVEgYcfLVs8JSQ2y53677S8MyXVOpGjghyiIRcJ3Xp5H9a
         aPPnA44cVwSDyryj5JaLPqxv6tIIRyF63CN32phQH+IOCVY0ECYoejWowi4ZXJTN99fM
         7Nbweo0sSGgd4JgR4+49vBJ1J7pkZhM1EY3Quz2E3QgR+bJzl/klDr0infZ04cSzF9J2
         D3cA==
X-Gm-Message-State: AOAM530PeuUX4mERdQ8tFOinnbgGlqD+Vhmduyrf86H9N1WaVz/+Oqb7
	/rwzm0zZQ0FdtQ9r8ooRzO0=
X-Google-Smtp-Source: ABdhPJy7PN6SUhTDXupWy1AdepxCcz5csGCK30LLudz881Jw6RwvG1dF8rVWbdYOO5/xyQpFB5LSOQ==
X-Received: by 2002:a0c:e710:: with SMTP id d16mr38932080qvn.158.1593117710832;
        Thu, 25 Jun 2020 13:41:50 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id 18sm6590109qkh.40.2020.06.25.13.41.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:41:50 -0700 (PDT)
Date: Thu, 25 Jun 2020 16:41:47 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] Use TF-A recipe from meta-arm
Message-ID: <20200625204147.GA14796@linux-uys3>
References: <20200612173823.7749-1-JPEWhacker@gmail.com>
 <20200625033057.GA21029@linux-uys3>
 <20200625034401.GA21929@linux-uys3>
 <8c7bac88-d8f1-1ce9-1128-40a29fa5b60d@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8c7bac88-d8f1-1ce9-1128-40a29fa5b60d@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu 2020-06-25 @ 11:03:17 AM, Joshua Watt wrote:
> 
> On 6/24/20 10:44 PM, Trevor Woerner wrote:
> > On Wed 2020-06-24 @ 11:30:57 PM, Trevor Woerner wrote:
> > > On Fri 2020-06-12 @ 12:38:23 PM, Joshua Watt wrote:
> > > > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> > > > index 401d649..042507d 100644
> > > > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > > > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > > > @@ -7,8 +7,8 @@ do_compile_append_rock2-square () {
> > > >   ATF_DEPENDS ??= ""
> > > > -EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
> > > > -ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"
> > > > +EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> > > The space you've included at the start of the following string makes me stop
> > > and double-check... did you mean to add an "_append" in the following symbol?
> > > 
> > > > +ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
> > Ah… I should have read the next line before replying. I see you switched from
> > += to .= and hence the space. A bit curious, though?
> 
> It prevents the recipe adding in an extra space to the task depends when the
> machine is not an rk3399, which helps the layer by YP 2.0 compatible

Ah, thanks for the clarification.

Applied to master, thanks!
