Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521F6EFCD72
	for <webhook@archiver.kernel.org>; Mon,  9 Mar 2026 17:29:07 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20350.1773077341233163921
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Mar 2026 10:29:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ioI0pCXr;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-899fc9853b7so115141066d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 09 Mar 2026 10:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773077340; cv=none;
        d=google.com; s=arc-20240605;
        b=UWCvaBuPQyyC9dqceKxWw74/IbAfhvRjq9qwTb3wM8N/trWsCv6StT6HuAZOWI7vZe
         xgBEsqXmlvwMcegc7WO25ZMNLokq+CciC5s7yp8bdsYtdZmKR4EoVad9eD7MD0hbmt0z
         HrgvVq2PkmgBB8HcvR0eGm6Uf7WzQ5VRA/T9tCDumZpXa2Bf9E9A90kIE5TiQ+E19R2R
         XPdIB0Pvmf1+XcSLFXhGqKTpuLKjXcQdEqfaS3sp89gU0Gk5N91+fR0yLsWhdd3SpMrs
         /4RQ5CKt0AUfDtnKd4HoIPWBydOvZhzb7xSB83SaHYkZEOarudqR5iFLbL5ceMrfie6n
         4/eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Kf37/XXfetGyMI9TYEdabAabRsrGMHMBOpUn9eeIXKo=;
        fh=qaiUOY065GSjX1E2WauG7oX6Sr0uJC+PULvlO+WMqyk=;
        b=WrfvgwsgpKipIroOHRnMo0KuGKetFOBNVqpAJAAGDms6FuEBGTFGV5krBlXgDlEJCi
         oE17Vj/Notfr6Ie04nyQUxZCs2xAqwWPTj5AMFkquNZ3TUbpFQdWrA2z+ikw/YLliwXJ
         1cb6cjI7Zdfbo9UUzjjPa2/wgv+71O50VsCCbfUJVFxLDVABTwpM/A5PeVHz0GRsTX2h
         FE9fhZURLacOwG7bNPBJQjEKxtnYUq9q718AIFEt0amXjOv3+P/MgJ0hw/Nin9HC0xyz
         YqT4QSZfzRlsHedfnto8lcJiphEOpGQecwIZqo+Rz04/ckoaFLDo+sKW56do0YIZD3GM
         LYrw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773077340; x=1773682140; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kf37/XXfetGyMI9TYEdabAabRsrGMHMBOpUn9eeIXKo=;
        b=ioI0pCXrYQEZoGv+is/Ii2b09m4O7+tfVw1Ovznqv8OX12fhFvYkre8kxlt7s4L8DD
         4lVfkU5jOiuS5e5WhAofwHoW0AhFAKflubtsBx9GAslS/y2gv360uZ6ZSw0DnhqdrBRz
         am27ZEitl4ullqQzM0KBFHHi/FpLVrlCNYwfsTx7kSowbDlR/wAXk5lZ2avFAWGkNxRq
         qaJtYGRvqqHcsCViJjfOV/f6Ty1A3JRj46VAu0r9UCUJVrVzcA4zGNqOEaiiBNa6wtzV
         +ahf/ePj782BEnadjwE6JMUPEuhzE82Odno3QepaQvpFv/NYxquDEcKJNwOFbk/XINXy
         a9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773077340; x=1773682140;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kf37/XXfetGyMI9TYEdabAabRsrGMHMBOpUn9eeIXKo=;
        b=AFTXZrO4LZhSmYsEeXQofCBrS7Zqpkb0BVGhmU9Z+vwyND7W/tOHdSa/uN8miOOFZk
         gKhYHjc87OMUUWxZaSFWMu08kcJw2D+RTuP+pbb+RFufU962toPYMYbEBGlcZ6972qxd
         lDcGmf5/76P+09H9W4bjaVuUtrrO27ISDcU2t/KX0VsDhnYR2KFspTb3859hXSp4g7aT
         EK/QnJ7PmwcihmUdrMjLtY96TnJNIzNp3jtmkzjKpqnZejNux0QJ5rYbjdDK2pP4/mtW
         BAQ39t/ryT9hgpaZE0pBMKtAR5lfC+WUDXLeKa7RpcPpRHcOgX0anr6ZZASpCGWDcnIX
         KQiA==
X-Gm-Message-State: AOJu0YzDe7MOGOySFD4N9VpXM4ZNlXvbaCRyQ92rGbtkESvYdgR0jk1q
	LEhuaFJzqyVSDy/ltqNTo8sLEikO9x1Givx55vcDeuXAt+STkfAulR+q12Q4raYG21L7cAvMV8d
	26ay1jFsFp2iKnclXPnwMnqoNhk6I5nQEdPrt
X-Gm-Gg: ATEYQzy9czh2tLz6QCXldW3j4L0GI27cAMkJ9lnW78WOMBmpuFmyIHQm2lyuMSmiSI+
	v8KWk/TgIOcK6Sl1mt54u2ziLfcfQfQYRfAju9PovmeCbxbQzfUnOtp2XR8WPA3GUQlBkMd/Z/G
	F7mmLVPnj8VwWmdSwPwUW3+jkLpdNC3pbNPU+LBwespux2hEt56iada5wkB0q7r6drESNLQygPo
	PPvdzYjBNfX/Z72KrVvVBn9PYuvkd+dT7flNtN7qe672wFYFNehkoUy7TRqIsyxtxeLQyL4et9Y
	GUQOAq/VluDGwmUSjLBEoQwOwyL6f+U9+Ur4GFHTBQ==
X-Received: by 2002:a05:6214:29c3:b0:896:fd01:1306 with SMTP id
 6a1803df08f44-89a30c2b603mr176337736d6.59.1773077340093; Mon, 09 Mar 2026
 10:29:00 -0700 (PDT)
MIME-Version: 1.0
References: <4vYP.1772795844241663957.UURR@lists.yoctoproject.org> <aaxQ9lsb9v0LDnAV@bywater>
In-Reply-To: <aaxQ9lsb9v0LDnAV@bywater>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Mar 2026 18:28:48 +0100
X-Gm-Features: AaiRm52pcpxRT18IDgXyarQcfdJ2NxZm5oZyfTl0ip9L5pJKZT76tlkCVO1pRow
Message-ID: <CANNYZj8LmoweAeHmx0pdCePzGV5fEcqOAJntAnkvCfr1Dm80_Q@mail.gmail.com>
Subject: Re: [yocto] Finer build time dependencies to optimize sysroot
 preparation time
To: yocto@lists.yoctoproject.org, francesco@valla.it
Cc: jmeyron@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Mar 2026 17:29:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66310

On Sat, 7 Mar 2026 at 17:50, Francesco Valla via
lists.yoctoproject.org <francesco=valla.it@lists.yoctoproject.org>
wrote:
> This considered, as a workaround you can remove unwanted components from
> the sysroot of recipe A *after* this has been created, for example
> through a postfunc:
>
> remove_unwanted_components () {
>         # remove X, Y and Z
>         rm ${RECIPE_SYSROOT}${datadir}/my-unwanted-data
> }
> do_prepare_recipe_sysroot[postfuncs] += " remove_unwanted_components"
>
> This is obviously absolutely non portable and does not scale well, but
> should be functional.

There are standard variables that can be used per-recipe to control
what gets installed into a sysroot, so they can be set to install less
than default (or more):
SYSROOT_DIRS
SYSROOT_DIRS_NATIVE
SYSROOT_DIRS_IGNORE

There's plenty of examples in oe-core of how to use them. Defaults are
defined in meta/classes-global/staging.bbclass.

Alex

