Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5887C47DAF
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 22:52:32 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web11.7821.1705618349200644073
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jan 2024 14:52:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kvUa/M+g;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-42a181086f8so2060301cf.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 14:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705618347; x=1706223147; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMkaAEaWWAnCkFNguVmApx8sEmrJ5SeBOVaiDxOUJS0=;
        b=kvUa/M+gW5Z2usZhxAzbW9EAgXFcd3OW6tsE9RnzTC9SXuyffzgCxO4PCaC/MfyEop
         AdG9aTisunoMP5DPz9ERa0c284wjri2dvlShbVn8OG2mgxs3Jsu81MosHhvYJuP0xxSC
         D1HFWg4mt/TPhwYcfWZ1AH+aQa8gUSB2xLR+vJlcNFk08CsjkfhXZXZ9M/FcId9XnlQX
         r+Xz77m1CChyqduU6iBhsu1z18O5xHMVR2/+qHlV7y1BI4lRjmSGehdDe3QS5Dh3fH1s
         57xCbzF37vf6lWmC3E0iwAESEeCZ5YNfBjNaAi7oqEj3d+A7n1+u3PrSeAYEu02TsFib
         5V0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705618347; x=1706223147;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aMkaAEaWWAnCkFNguVmApx8sEmrJ5SeBOVaiDxOUJS0=;
        b=pUJnFsCTvedRXqw0HQ3t3RRTAPJihfglr7W9G4jGc+dVvslOZDDtEOVYXg3o7/e6qF
         chAukyeT5gpU2Fb9Pt8N64HIHFeM7pBs4Wu90+ev+cL9ITfBFlqdECVkjEwgEk2BLCSn
         NF0P104uhBgoCUVKZ37JyvXCwrW4uP6xfZq0hJ7h6B1bstG5g3qlTDBwGgjYGmthbgvl
         Nl8UqstgiC5PymFR+ODQhz7A6rePmwOQNE3ISQZUFabY3MawKpSmdG8SNP7io+uP6etA
         v9e0RLkhOluzt1T/j3ifME9sAzIKWGuXgAXpeyk2uazL3854YPIeOAvX9b0846HYkxVP
         alcA==
X-Gm-Message-State: AOJu0Yz8bua7JCOggN20DUdi/76/kNlJcZh7aRQdaV797tqfS1p6DMza
	IIlzHGdMH5xZYnmAErIBh5OCPEXIbsFlFLlb6ooB5/fMhVY4gOLVcFT0zKme
X-Google-Smtp-Source: AGHT+IHGGqrBcNXbVZY0FBKjfDgyDlZVNsuO311uRlGVy88XpnSO3bFAPyZmAMrG3b5KIQPb55Lkkg==
X-Received: by 2002:ac8:7d13:0:b0:429:ad53:abe3 with SMTP id g19-20020ac87d13000000b00429ad53abe3mr98386qtb.41.1705618347180;
        Thu, 18 Jan 2024 14:52:27 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id fv11-20020a05622a4a0b00b00427fb1d6b44sm7217554qtb.5.2024.01.18.14.52.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 14:52:26 -0800 (PST)
Date: Thu, 18 Jan 2024 17:52:24 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] u-boot: fix build for rk3308
Message-ID: <20240118225224.GB15819@localhost>
References: <17AB0C6865A2572E.24384@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AB0C6865A2572E.24384@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 22:52:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62191

On Wed 2024-01-17 @ 12:48:41 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> In upstream mainline U-Boot commit 9e13fef00b8d ("rockchip: Kconfig: Enable
> external TPL binary for rk3308") U-Boot was changed to incorporate the DDR TPL
> using the same mechanism as the RK3568 and RK3588 platforms.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot%.bbappend | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Applied to meta-rockchip, master branch.

