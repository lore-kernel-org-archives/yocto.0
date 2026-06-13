Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84597CD8CA8
	for <webhook@archiver.kernel.org>; Sat, 13 Jun 2026 13:23:43 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.90945.1781357022593362384
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jun 2026 06:23:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=oh65JtHe;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-8ce9df49c5fso29936336d6.1
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2026 06:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781357021; cv=none;
        d=google.com; s=arc-20240605;
        b=XAWlrmWCL5SBQU/f3llf5kPXfaOQaIw2o5i0SStuSWdGE9ONQXZu1kkzlJua8r9+pr
         3Sf+YtNhhPzCtixCru7dwz8IDLQ27H0tMsVvY/fGTqWx2YpxbpD7FFwms1w4uJVgGdEQ
         rhA/ySl4/mTn0YG2CWBfQHiPHYZ0SInlI/vnZIne7HKC+ORBQVd0xzLh8ODSrJUys8Ei
         4ti1NOLjoCEKQ45SzrAANHf3KH1uKzyRpWiJgfDsOrvlzk3xooT+KjHRGtv1896m/vtm
         00wrk+Oz1120hr4F7xT/CrX+E7jHXupcyjUgMfucKcEav2E9odOF9XAGbnKjcpS44bcc
         LEWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cFjKL6NYvmDXRt7X6/wrQn6StIhW79FWjBtvphJb5ms=;
        fh=wNjkRp0kL/EbS+PUP7WXrF2K0x/ovVl9bssD3+1ArZ0=;
        b=hpkw/eQI3ceB4rqXjnTuhmw/mU9qNTxDh70SXg8YhpeYS/Nw0S46FHEBu9evgTufdR
         1K7RNQl06lo0IB4te3OpJdvQfaaDeddRIC07I06isvsUcQK8TUVZE5w58gh+9NA2Fx7+
         9YviUNEjFVLonF+Mg0HL0lfT6t9Ao24b5tHTH2N2ZL6CwDC1eCP8230/20quWOMwCoja
         H7UM6ZBIDWczNdm/xYbd4CeTkyjgSOwGXG9ivOKRQGWnA5Vmyn6llJYRsXyRwvpsCBxK
         njJZnV1EjPdfi2iRmoA3KLSmp3JoVAh5E+yBj3wrl1xS3uBmZ+t2tbeqnXy2WI/qkqR7
         VMBg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781357021; x=1781961821; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cFjKL6NYvmDXRt7X6/wrQn6StIhW79FWjBtvphJb5ms=;
        b=oh65JtHeUOC4mkZfs0872v6ArIvfkPMdyIPp6sqzQcEbLPNbvsx+VvoUKIXd5KP51B
         ueJty0wQIjlw3gcs8SReSzLoGvvbEhdLBwZeAZEacd6uLJjn+6h5cZk6PDjDD1WpbX5B
         NTuHbvHSW2ZXDHQRxbzhc29/+Vh6IvvLFZam9Vu8JiQHSBxeL8IBCHqUdS6yvY/HnFHs
         FSP7fQwXcu80qb/F5eX3DcIUc3u6kPbJIkJc/HqUzFh3HfCyKtcRiooOEZ1DaZAVFf61
         Nu3c9WeISkl9AWUtDsiDRnIa0njQZwPzXSMYHmGcrEmzYI+8mcBpbOhFuWghYgLpx2BD
         ZqEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781357021; x=1781961821;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cFjKL6NYvmDXRt7X6/wrQn6StIhW79FWjBtvphJb5ms=;
        b=YvzwYdynkIg31kNmyNUU234Sc1CnmZ+if4JPb77W5YepLUMkgpWMuD76PUkvdx0LNY
         vYA9tQMn5oIcdqTWJ+xF7YXgyNZnwbtM52CWWnKo7l75tZZ6BfAP8JNg6JJgixFC3goz
         0MOgHS880tZaWIS6SlKqINo+XhokkEqDKq/9O/2u1+E0dc3Bei84ciYyh7iKF1ln8p7V
         tlQHCtPUd8rPkiRvfVclTo6D9inD4NQ/vmr3nQ5PqX2AV7FP7NeFvGVXWK5E8Gp/fOYQ
         WiZmYBztkjaU0lSvW9KzsRfQxm9qtU37rWygXJ2Dkd5wf1edEZWIHlfcBzeeomW9tM1V
         k4Mw==
X-Gm-Message-State: AOJu0YztwUS5gAFIPLhfAhZEZDFemv8T6xPNvI0gN0DRbSIbxoq2LR2V
	RPStbXp/nhn0otiHTLgj1Ds9ZhnrnjjM2zQYFYT1vz4vI4JdmVfn+yFcpgDfibzhWARXsNlbF/9
	Ej1wukwRL/aTQ4oBrlzf83rZsMaaw3eN1Ug==
X-Gm-Gg: Acq92OGIcJRkG3C5ex6WyLc+DlSsKM3pPYvLUdZD3N56m4qALPMQytKBPQlTkHMYlX/
	TDGMMnx1f1hFDye0WIRYuSy/wJTtkr0788kD/4bpnwizLGi+JiANLnjkJC1fMufKSiH3oj8ehTW
	TpCc5jSyFWrQO1K+q8weBNOr5z8Tvv1HVx7p0TzUo+YHsIR0T1lh8FFU+vRj41VY8Uu8XDPx2RC
	EM70pXKr4Ic/3spnsIN+FXw2U31RTCMh97rYFqmw2WSRFHVrHdW4RVNZW+it1BnkVbVtg7gLffX
	oR9IxMnOc4Dutplt5AEjQpB4iu1bVsCbEgt6u/8Am50j7xQ0rMUx
X-Received: by 2002:a05:6214:450b:b0:8cc:f135:529e with SMTP id
 6a1803df08f44-8d44f425cd7mr68517516d6.34.1781357021579; Sat, 13 Jun 2026
 06:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJYpWEugmjb8UvjRMOmHxyMBzkjCTBq6ASpen84FmKyrBg@mail.gmail.com>
In-Reply-To: <CA+-BmJYpWEugmjb8UvjRMOmHxyMBzkjCTBq6ASpen84FmKyrBg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 13 Jun 2026 15:23:29 +0200
X-Gm-Features: AVVi8CfHb6ZUgwQCb3_ryGUSi38jr09jnro8IMb04Wm1pr3THdMmoJKD7JC0EEM
Message-ID: <CANNYZj8sPFyigFC-RSsdDO9NKMBBNEvG8FiPMZtRRpdTCh=eeA@mail.gmail.com>
Subject: Re: [yocto] Yocto Lens - Static Analysis and Style Review Tool for
 Yocto Metadata
To: yocto@lists.yoctoproject.org, ayoub.zaki@googlemail.com
Cc: Prashant Divate <diwateprashant44@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2026 13:23:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66598

On Sat, 13 Jun 2026 at 15:20, Ayoub Zaki via lists.yoctoproject.org
<ayoub.zaki=googlemail.com@lists.yoctoproject.org> wrote:
>
> Interesting project but out of curiosity what would you consider the main differentiator versus existing solutions such as oelint-adv and meta-sca? I'm trying to understand where Yocto Lens provides additional value beyond what those tools already offer?
>

I'd also note there are official tools in the core project, e.g.
scripts/patchtest and scripts/yocto-check-layer.

Alex

