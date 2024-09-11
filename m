Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 225B7EE57C2
	for <webhook@archiver.kernel.org>; Wed, 11 Sep 2024 16:32:35 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.26160.1726072353529364194
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 09:32:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YMP5mpji;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-374c84dcc90so41555f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 09:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1726072352; x=1726677152; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QV/ExFHdhcRy77m47cTz3VJX+b6EAVVjenGUaaTT8Tw=;
        b=YMP5mpji4R8HQ/KHTwiM4YYp1QrznqkZZzrAFR5z98EDGtCL6MdFVu+k9wjUqM1yHa
         nZA3sKBoxPKGKWpIHVcD9I2CpQIUZLJm4tw+2ySkLsruG4S3ydJSwbbQzt3rb2OrhMw1
         hcYtVFgi4PkvU/e1fs48skINbO0o9qaA4mzvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726072352; x=1726677152;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QV/ExFHdhcRy77m47cTz3VJX+b6EAVVjenGUaaTT8Tw=;
        b=nVLnCiNvLK4OLDjEcnScmncJOTYzRdapXFV4A8i8WmwE4MUQiTdt/WVHJ/uXKCayVW
         Bsw0IpWNEZR2ugP/Gv2O+4ZLwIFG6rk6TUqVt+plJQf+LCeVrYjMGWK0hOsAWUkx/Qjk
         axsZnsBMeLBdQt9pv0EQJD2FJ9WnEq3fYuUsCIn05ygAQWa2RS04RPHmbKcy7Q7536c4
         +xbqoaAt0VxeAiaZdcyW0GzMJVbQWydVZsUfNngsMmZK5FZQjWXxUrnLSL5WrcU7kxGv
         hpL4Z9kytKTOIEvZZ4V8FOWhr5polmqIhBtAZx48wzdUHGAoTbFMnfOJ1fgXBvyrm9gc
         zd0Q==
X-Gm-Message-State: AOJu0YwbB6ioHYz5eAVButnKs+Gu5Pzv3iw7Sqbk2uOpvMrAAXCAVzuC
	j0sC9ecDvl+8SioIXgKQPTGYdQR/a6g7mR80HsFhoWRVC55C/X5Aos4pD5LBpdTXmAMq29DscXU
	O
X-Google-Smtp-Source: AGHT+IFGf0CtXWOi9AYNWmIUDytwHQwDCmgv7OoqJ5b73/TRmepsN8rRrLmwzM01XYH89Oqe1OuTug==
X-Received: by 2002:adf:f645:0:b0:374:bb25:658e with SMTP id ffacd0b85a97d-378895d72f7mr9560555f8f.26.1726072351496;
        Wed, 11 Sep 2024 09:32:31 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:c92b:2d23:b48c:9b3c? ([2001:8b0:aba:5f3c:c92b:2d23:b48c:9b3c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956761c6sm12045751f8f.61.2024.09.11.09.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 09:32:30 -0700 (PDT)
Message-ID: <94bd43d4c7598c76130d5b2517906f34893e8acf.camel@linuxfoundation.org>
Subject: Re: [yocto] [scarthgap] dwarfsrcfiles + static lib built with clang
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com, 
	joel.winarske@gmail.com
Date: Wed, 11 Sep 2024 17:32:30 +0100
In-Reply-To: <CANNYZj_tWknK_HhTEZY4EHLJcJyW2aRHDS4EyZn2SSHFtABTXA@mail.gmail.com>
References: 
	<CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
	 <CANNYZj_tWknK_HhTEZY4EHLJcJyW2aRHDS4EyZn2SSHFtABTXA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 16:32:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63824

On Wed, 2024-09-11 at 16:09 +0200, Alexander Kanavin via
lists.yoctoproject.org wrote:
> .a files are not ELF files, they're archives made with GNU ar. So
> it's not clear why dwarfsrcfiles is even run on that, but I don't
> think it should be.

That isn't strictly true. Static libraries are=C2=A0collections of object
files generated during compilation and "archived" together into a
single file (a bit like tar does). Those object files are still ELF
binaries.

Those object files have debug information just like a normal object
file has and as such, dwarfsrcfiles can extract debug info the same as
normal.

The issue is clang is using a format that our tool doesn't understand.
We'd have to teach it that I guess to make it work, or accept the loss
of information from the llvm built files.

Cheers,

Richard




