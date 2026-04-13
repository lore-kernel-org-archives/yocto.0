Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49CF9E93813
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 05:12:29 +0000 (UTC)
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.265363.1776057141059169588
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Apr 2026 22:12:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20251104.gappssmtp.com header.s=20251104 header.b=KKIMikzS;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.173, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2c156c4a9efso5435338eec.1
        for <yocto@lists.yoctoproject.org>; Sun, 12 Apr 2026 22:12:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776057140; cv=none;
        d=google.com; s=arc-20240605;
        b=PauYLjCl+9W0DVg9dISqtVk6yC8CENo7UntYP0qcntdE8ROrtleP15BhKsf50Sy0Iw
         g7bjkW8VXoPI5MgrO33J39IcQV9ynl3XtA4rWWx0TlWeXpD5ctXAKbNuxAviTQkFL7tF
         o0FR8XTbrdSMaDY+Pm3RH5qFMFtmjZtihQag442Dg/zWM5xZhsXPkQXUEeVHueM/ivo0
         OsyQHIFRxfAsglGtuJs2osk27Ajleo/UvPOFp+JTP14cfYkAGbi58hm6feLPxpgjcIm/
         0CtezkUP3PMwyFBFSq1A7cEY7C3IiKYE3/vWiNQNwEPfgJNWVazHma9RXZXDanXP063h
         ytWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OR+xtYisNea/9yBrsH92WwRwSosWM9x32hjbDXALorg=;
        fh=4us44u4JbxUwrz4h8eo+RH/7L4WS+9i1cN4vGo1UGQY=;
        b=a8tr3OPQduPi5yRB8Io9Luf7P9vWjbFoSVDlPA6GPJj+PJuGz6k8E+3JN9XIe/NXUr
         2HVpOlMrcK7V3mckA/X5hDJb+7DVYbupfExUWUu1Usdf1bcqClr0srJOmLbHFrlRFcGS
         WdB5T5Li/D0XyKFpPKIUWRx5VGhczTJ8KgqsaYoeW4mNEWE3MQ45WGo0dSxx5wecnoIs
         nFEp5c1kNccb1szoP8U6agMikE0vuUkF9kQ5w2/wF2w84tL9qXnkUjdOxMWeyU+FBRMD
         CA/QVzeudMri4utt+e65Vea6/laShxPZrdMn5A5iXMJf4dOcGQjvpX9iamMPa0xhMVxB
         rqlA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20251104.gappssmtp.com; s=20251104; t=1776057140; x=1776661940; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OR+xtYisNea/9yBrsH92WwRwSosWM9x32hjbDXALorg=;
        b=KKIMikzSJrZY6q+cdokcVv5pzqMpqUxvmraYp3bTpK8HO5rHma1YpUP2BZ83Nj8cKd
         3ZILPqOQJu3Sux+KadFxBCoFhOdbbkPE7bCtWh9fltQafHIl41Vfn4KiVdkcEsDtb3j4
         t48NrChPLv/bPA/DKenmew1eq0hNtORdjhVyqdI4fSIHolA8FRM/PjQK9BW4uuG20YIZ
         crxd65kP5u2JWdCtv4b5YNe2aEd3nlEDD6HregOM6rD/jrWtKxQMephJ4zLJXj3dZkXb
         Uj8PxPpKLkLIjEpNTU3IiwOTROKNnnBCRpUu6BuArAl34L7+f1r4WUCJALzkrYK6JgI0
         0jsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776057140; x=1776661940;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OR+xtYisNea/9yBrsH92WwRwSosWM9x32hjbDXALorg=;
        b=ZmvVI9c3rB0LO9e8tpsb5Udmri+stNw/RGdZTg/70XieKTj3P2Uh2akA/N+j09pIVF
         77hXf2K/QNDjajH7nn8nd67kMEs9Yir/3T7O315Y2UmAFc0moW/7RoIOwduDLVBs5lMc
         IUr4YCD4Vl00xu0t6FsTyhkCg6jWd0fEQVM8hrJ+doRMaZkd2P/Az6ab4NsCK4qIDfej
         UFB2MQqYyAKoatm8pHAbkGfyFB3GDLtxUe9XFxSoe3WQbCesbYuTAjkeJPO1sbs+3qx7
         BSKhieMEba/RV6ysmbkFRGyLCrHDPx5PPeghpMG2HhIQWUUI10Pe1qZ89hBELn/gFhQg
         aosQ==
X-Gm-Message-State: AOJu0YxnYc3Mv/f5k5fsmrVqBsIW/H5FwwXoZzh/EW61rDZ5pD9A1VRu
	p7BzFsmw3yY5ntFitaGySD8lfH8t87AgwHlpr1QJeSWSY5zzoim2o0bT8+IulaiLmfq4yFJWtWa
	scVYSRADiwE5QjqF5roNVWpUJVmJQ2azGhTBiDovSpes5pMYbuCA1
X-Gm-Gg: AeBDietEkWQ4qh9bRV5SvQo6dsvIyG42403ClCIb8jIkpKNLkj5bQxCu89ArrzjANCG
	lR5HFBYQoZrQuXWN+31OmY3CK00JO8PpHLs9oVs4HQpgeU9Ow03Yqvn+ZEZElGRPazC+jAwgyt4
	8qKGiFYn1mvjS9wTTGHNbZ/1QQK7lZimUtClQB6QI9Jfoyzc13F0NlSl7a6wYSS+JbrjwJBTBUe
	jqi7lLVfKtbIL40AVjLrpWnCVMJEQ3ryUcHW7hfB4rFs0CQ+TXpqw6HCwBt5Ohjnc2xFRuoNzf3
	IWKeSskCDNUQaYNZ8ehUjpJpqkbUZaCh3LXRth5LRQ==
X-Received: by 2002:a05:7301:fa0d:b0:2be:7885:31df with SMTP id
 5a478bee46e88-2d5890793d5mr6219123eec.17.1776057140377; Sun, 12 Apr 2026
 22:12:20 -0700 (PDT)
MIME-Version: 1.0
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
In-Reply-To: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 13 Apr 2026 07:11:54 +0200
X-Gm-Features: AQROBzAhVPksJxUwBs72Ep2Myhro6JauJLf0ZrGI-aZNdGwx1pbLdgXHXfCfOfo
Message-ID: <CAEt6Nwo_d+6yCCJgrWFuGviSkPXFr82GZ5dtwQDK5=7m2CHmFA@mail.gmail.com>
Subject: Re: [yocto] Fetch Issue
To: yocto@lists.yoctoproject.org, snehadhar39@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 05:12:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66404

Hi,

Due to a load of load by bots/scrapers, the git:// protocol endpoints
had to (finally) be deprecated a few days ago. Please move your URLs
to https://git.yoctoproject.org, then things should be fine. Please
let us know if not.

Greetz,
Josef

On Sun, Apr 12, 2026 at 9:45=E2=80=AFPM sneha Dhar via lists.yoctoproject.o=
rg
<snehadhar39=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi
>
> Is anyone else experiencing issues accessing git.yoctoproject.org? We are=
 seeing fetch failures for meta-intel, poky, etc.
> Thanks.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66401): https://lists.yoctoproject.org/g/yocto/messag=
e/66401
> Mute This Topic: https://lists.yoctoproject.org/mt/118793581/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoct=
ojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

