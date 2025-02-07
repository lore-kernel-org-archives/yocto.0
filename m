Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0FEEC02194
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 11:40:21 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.67679.1738928416548699696
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 03:40:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M/2ziY+/;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6e17d3e92d9so14715336d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 03:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738928415; x=1739533215; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z2v7wme+zHI2WgqqBkXHlfP9TLxw4c6benzw+Yfw5YE=;
        b=M/2ziY+/kMruDBNC9vkcqm+ZitdO92/mxri9DadofC7vmg8+9XT5XojWGtgL23uzxK
         OqHiBwmQheabwKSAuVYZHgPOJSa9LgMr6VZ9HEzUFWp806ahtZPtoXc22LR/gJppGObe
         MID6Kjhz1FCzIYSbOVMsg1xHwsEqXHXkfRm4XraHn8DnyCDMUnYACAV3F6eWRzFz03Z/
         v6XDL8/KVCyAzuZN3UGpEX+ZIYLRviB8pRR2Pui//Wn3SerV29/HBRZgiABoR93DkUb3
         itKsdCoyV+LaeYNMa9rluSEIuxHxHzsapJX+8DYPAYT4zzZzmt0vONeLAK5nCNZGZNQr
         +eew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738928415; x=1739533215;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z2v7wme+zHI2WgqqBkXHlfP9TLxw4c6benzw+Yfw5YE=;
        b=Gm9IQ5S/26NBV7QK4J/T4d2O8IAfgBa3b8Tj0aCT7dr4ljx8B5G7BTEFtnRIYW9Tau
         IglMhbRqpkF0OZAcFbas9TAW+x1ErHD4Q932XkJv/GMklRZwXVwMovhCNJxkFzSpLzcB
         1Y3Ex0SpA0shHNJ55rdobN/A1CRmi0er3anzhQCW08/SfbnWumHjpsI9hh/muYIR9vkU
         ksre9WelAFVFJ5LlE936SfxF/Cp2JH9M/ODtEX02Bnm5H9Hvd+GhHhvEo0Zhq11mOx4j
         EaRSJnG5vJCxc5UZr/5+mG2Nl5CHzuEkvWAMZSSpTaPMO9tX+k7s6PGdTSi/OKBuSzjO
         KtYw==
X-Gm-Message-State: AOJu0Yy+jGPAh9eDxmcq4kfoDLm29qIGUcvBwYGLPoAiUiG1e0SWlkkx
	fJ748CSHxzq6GadF/MSdeU0QYr7pPCYhWOhijSpFcZK9Z2W3UyZENUvabxzTsG6DQweuKIfp1LG
	93BNwwVwa2BSUQNxfrpDFBP22blI=
X-Gm-Gg: ASbGncvAtX7a++3xxMd0DNlSkIG0qPp8yBfMcwgNTFlp2gLr6SDoCIfDRTm1ModcGWS
	xKbhkiwtkbPDrsCIxxpLVYPftyhw7z7y+iuwBJfik1XZ2GtNtI01PzTxDIS4Id/cmBHxj/eY=
X-Google-Smtp-Source: AGHT+IGBUDj6vzvRr0nV47r7gy+2VKb/YqutAqNJbMUoFFZ3U1M3xbb4wr+qkF8pYctpFtjIB6MzobLLjEh3ZhlyhT0=
X-Received: by 2002:a05:6214:5098:b0:6d8:a84b:b50d with SMTP id
 6a1803df08f44-6e4456f8f05mr31676926d6.33.1738928415612; Fri, 07 Feb 2025
 03:40:15 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj92b2Nb65b=01kCaLNXMifAwiStv8cfGr+RWg=RG-HU9w@mail.gmail.com>
 <12196.1738927441329087485@lists.yoctoproject.org>
In-Reply-To: <12196.1738927441329087485@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Feb 2025 12:40:04 +0100
X-Gm-Features: AWEUYZlVZCk07HmlLFaANFOds7R1lbYOXO9rd6td0B6d2Lb-wPb4E4B1TubjrEw
Message-ID: <CANNYZj8Aqiw6bUr=pgBidNKtNjmfaj0JtGJ3QYkF+TtZA-fedQ@mail.gmail.com>
Subject: Re: [yocto] Shared package feed between different projects
To: patrick.huesmann@desy.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 11:40:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64747

On Fri, 7 Feb 2025 at 12:24, Patrick Huesmann via
Lists.Yoctoproject.Org
<patrick.huesmann=desy.de@lists.yoctoproject.org> wrote:
>
> On Fri, Feb 7, 2025 at 12:16 PM, Alexander Kanavin wrote:
>
> The best option is to drop package feeds altogether and set up proper
> sstate infra.
>
> We do have shared sstate on a server, but how does that help a user who wants to install a package?

You'd have to teach them how to use bitbake to generate a private
package feed from sstate on their local machine and find a way to make
it accessible from the target. Or even simply rebuild the image with
the items they want. Sstate will make it fast.

Packages feeds are distinctly a second class citizen in Yocto (or
embedded world in general), and we don't have support for multiple
feeds or feed hierarchies.

Alex

