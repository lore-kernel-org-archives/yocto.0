Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B360BCD98CF
	for <webhook@archiver.kernel.org>; Tue, 16 Jun 2026 09:51:36 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.150766.1781603488519793339
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2026 02:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=lLg/fecS;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8ccf887de87so49265676d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2026 02:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781603487; cv=none;
        d=google.com; s=arc-20240605;
        b=PUkKzyMVnDJyekchBX6EBQYwB1wrrO6eOBTREG7R8D46egA07o5ZJI37tu4DHxsm4F
         osy3NOAs0fnz0vh6mQNZ6P9mTmUZRJ9iumcyGbWY+gCWwJBOgilYFVvxZ1U2Clss7pYv
         3TUN2hdghoknidpp0JqUZGm/Uyic+K090A7N63NrwakKn83x+E2fvCUanfUNqjH7WGkz
         PPq1K92YDWtdTI+9nPqaYHjsXepUzqFGAWTJe5kwFEKSWTntH2tqyc9zTxwsxPw4YIHy
         plMOL7eYBUq0bFqysSJPm0JCbf7H3eS+aF2758ZjlrefUhgl7tLXbw0RJ+i/AhOECiyE
         9tOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=lKaJwqDlgqaVGzk7/iDcKRNNyz1v8rNPX3KVos7N4mg=;
        fh=UaoKXBh3qXi0RXQOzWG9DGfCySo+wdLnNklM95G/r4A=;
        b=DBV40XQ0shRCakAhTFTCjqOMPw5k1HbHUQTzUPvkTVAdhtRWveI6vYTF/jBnBIA6EQ
         zBj4n9sjA74cdrNfpqosWNz240uUpVkr62TXra7GohZptsInvUXbvcK/qG3+0gBsJjMq
         a5N0sDwtcxJeJxdjmI4EmzBCL7EYgfR++nzgy1d0t7URQ0W2F9SamcZzemioUv+agqFH
         YVww9CKQj9lmTKAOvrq6jnQGI9UhjweV40CGEAmJWZl0qn6Tt2TEw1SoJh5whWw2vz7c
         SerXWvywOSy/pwXgKNqJSCXvbb0oijwUcKVabGP25T7/4JPg7dnAVs++fHpn8+Z9dmiI
         /sSQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781603487; x=1782208287; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lKaJwqDlgqaVGzk7/iDcKRNNyz1v8rNPX3KVos7N4mg=;
        b=lLg/fecSTryBc058H+b0KxIujuPM7wHRjv9XVV6nXxlqSs6C2ZMOsCIJC01ot0sIHf
         zPkbCMWoxW7YaGVH6BDeOHeYWsZ8JOTDAZkbP8GcTWAE6wTvtQ4Q7I734VgI4wz9T5pQ
         CknsHhsIhanqNZAh8H87hpbjrADbSV+EqUj5Ajiyb/P4IpMPqhBY4e5xC2Z7oD+thojr
         dhiI/qnl5k2L6fySXJZKe9XbsUm1CXMhMawp7QROZUENmYR9Ev/Eg0Yl7Qr/KfUSeXZm
         Xc6KPtFZBglTt+/VTBdwCs4MU+I4tZ8Poj7nXw/X3UUgQahbD9qkeWVicpDg/i9cu5/r
         xtuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781603487; x=1782208287;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lKaJwqDlgqaVGzk7/iDcKRNNyz1v8rNPX3KVos7N4mg=;
        b=sdedsXu9v3vvfbqczE/UAVbDIkWCz+ecaKPkfitdkRKbVYa/uzbUy0nGntgmPkeOWw
         Qaob/xydYKt8YjYs73zGr1eQcW+HJt6f9W7ZKxgi+aC5rc7SbLMueVF04y+c2HJjPbP/
         fhZZkcMYk4dWefnEMcrKDf1E0FtRs0LeJ8gLAoQcrRj/32kI/gbovuCOS2NEnFYrQ6aF
         nwkcJBZhvAGxQT8etvx/hge4em0qzyD/U5lCp7kjdjhbEcwO/GZa0pzF0l6gIBFujWIw
         NzAJY1ttdblS3YbGoO5ctY7FLzAtD6m2XSuwQbXsvo9wTT0j9iTQSFcQOFvR8AGhNNmP
         iNXQ==
X-Gm-Message-State: AOJu0YxmVs2yiWWOpgRB0H1LnpTjw0Uk5V/Gk/nOdaesFwXE/23otq5M
	ftkTdQJtxjoMsOhg9E7TxNs9Vh3qejKegn/Kg+uc12EnmtwNebxXLBIKtQlNZ4k2NbkYiO0WpmI
	QhGoVZ0pdt39ukpa/3yIui0b9uqVi/6w5sw==
X-Gm-Gg: Acq92OG78BercTnA0OjtVpKLu82hSp4LPxMZtHO2RpRbgde+9S2vFKaTHA52XELV9Op
	B/1J7iDxfcY0RKLvVoHTE4Sv449YPWbeR0UKn4sO/K2916STtLSXTvjw4PMPqVTX/TO2DL9JGH6
	ZqDbeQw6PkQFmJdGrRAqoi8nKxeqOFW97Lu9juImVsOqDJTkZIbiM0uwzmFvAZrrAn5zSC3qegV
	d7fpBUepDyZAnbllGF5hZbwO6eos1nZvGj0iMNhX9BZ4n4VLdtswHULSAhje11KTWvGVI/d3Zhj
	a3hXLa6IRL7e5hl8iA6rWs/ZvpOeXc4v1tvPZSl9LQ==
X-Received: by 2002:ad4:5d4e:0:b0:8ca:ee3:6ea9 with SMTP id
 6a1803df08f44-8d32df2177fmr319185166d6.20.1781603487170; Tue, 16 Jun 2026
 02:51:27 -0700 (PDT)
MIME-Version: 1.0
References: <9f93bf15-64a7-4a28-b2e8-26b745455026.36811ad9-fcd5-4328-81b6-db476e91bcd5.7ee51d72-a8b9-4961-a490-015a3ec6e668@emailsignatures365.codetwo.com>
 <9f93bf15-64a7-4a28-b2e8-26b745455026.2ee60c04-e0fc-4850-9d12-e10e398ec661.ee119d74-b4e0-4464-b5de-9906b7323043@emailsignatures365.codetwo.com>
 <CWLP265MB46413BE21029EEC12650EED585E52@CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP265MB46413BE21029EEC12650EED585E52@CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 16 Jun 2026 11:51:16 +0200
X-Gm-Features: AVVi8CcsfQMyl-AxOhQfzy4FaZ2GrBQqSkPWlvmWugoYJGHfz5RGktf_XFvayrM
Message-ID: <CANNYZj9Z2xTLu9RbD9sbYFh_7qR2g62RMt5pdic0Jh4_vc8Wfw@mail.gmail.com>
Subject: Re: [yocto] NPM alternatives
To: yocto@lists.yoctoproject.org, matt.holmes@zethon.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2026 09:51:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66602

On Tue, 16 Jun 2026 at 10:48, Matt via lists.yoctoproject.org
<matt.holmes=zethon.com@lists.yoctoproject.org> wrote:
> With the NPM fetcher being disabled recently, are there any alternative methods I can use to build NPM packages? Or is it simply not feasible at this time due to the security implications.
>
> Unfortunately I have been asked to build a JS program when I am not familiar with it!

What would be most appreciated is addressing the issues with the
fetcher so it can be re-enabled.

Alex

