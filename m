Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4007.1792602683239048512
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 10:11:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dgy1AFbA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.181, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3a75f960be4so6603571fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 10:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792602681; cv=none;
        d=google.com; s=arc-20260327;
        b=MY3cCV5c5XApUuP224pdebbq4od1xWLYQu6Wy2wLyHr+SFukWJZl0foZ6FBvGoopAw
         oL3x1I+YpC2GVpO0oZGxPFK5DVVs4D9rDDLxPpcoAtQODQTWnlOACtqS+uCixXkoNBUL
         X+rDGfKJWHVEBIUnxCUPvTI12J6pUCao1q5+OIM4U+WgR2wziAOylQ/qWP3KF3rwcOSL
         lQoG8b7ZXKy9f4ftTa8vsHwpFeDrtuhZ9krF2ffilF2kVYn2bDDJl6hriJLcOscKy9cW
         R/iC/H6/aAKSfWKBYksIXdI9EecXlI9Mlp1GJjBdpgx/91WUd2QguS3xwetSNiQExXC8
         N6wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=zi5Gm5xdqK5H9FGUZHyNZVjmKB5uPWe+rbaqeBYNim4=;
        fh=5jsKs5XONFSYwxKSacuHqza0T+FRO2cnutRJ4fEHpvs=;
        b=qxDeOgeK5fVQIFE8s3E2yVCP6WXjrw5EgHc4+bLr3gWN8BFXTRds2TEbC0YiXwit5H
         bALEa9XjJL71TMbery29Nz7zpiR8HAQFje8CO7KMtSuKkJxOS4RXeM5OzLTil/6sa+ol
         TF+XkwFmqqoq/MBa7bF+sjARoZoyTNq6eWXtEjTA/2/FFPv+fGVCoW+XoOny2S/5VTM3
         oq1UruiZx1HivlrGlldx8mgTbpiqQEF8LbhcbuCRva0Vl4hV+cP2Zw9LMgEbgy3wNPjF
         wO8V310phic8pDs5mdNQ+AElyiSk02LgfzNUZzMPDyj0qi3uWdx/evGxVzzPGCNr9LtN
         b/eg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1792602681; x=1793207481; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=zi5Gm5xdqK5H9FGUZHyNZVjmKB5uPWe+rbaqeBYNim4=;
        b=dgy1AFbAaI/xYFjkJMlqr7Rf6iGQovul9r4ci5XSupiaFmgsIQ3fOaT9hYfVpu7/Ft
         hcKXx+oSrvKdzx1PJfSa5WduFDYhIes5YUgStcX0+OAgAt9vKLEvqC/1zjsXuhtlkQH8
         7ey4V9wfstmH9JVDq/QsociplqOBbfOBQnREM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792602681; x=1793207481;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zi5Gm5xdqK5H9FGUZHyNZVjmKB5uPWe+rbaqeBYNim4=;
        b=F2LASVM6xPsXW9oMu7QmXmYrMfdM35RwavKIEKXEzgAaUm88uDGwBEDyqZny6Yt8G7
         wsjW0zotmsRpxWzyxCeApy9aMOHyKB/ekUwzLi/UlAtT+Y7AiUq567wC/x3E/QIlVDqW
         tQzHDCBPbRJ2Ksg4YTGhHtUDKTwi7krGBZXB9MOdQknjeVi8PpVVNTYEyeGyoUIYzKlz
         xyFbyS54BjyD55n03InjP1XQev75a3oI5DxNHzAqhM8AL353uxz7OVuPQcDjyewmHcNe
         /IeId9WzW9inN0Opoa2+eBCNH4X5exqo6W9yjeW9puynhPFdxIfIIAsNGh8/zEBA7LTh
         P3Jw==
X-Forwarded-Encrypted: i=1; AKwUvBwPT6GTfNQUslZ76OLUWvJHRmk/21Uc6XMZUPGHVJbY1ojf+cwzS83L6Ul/ucdN73vjofMpDA==@lists.yoctoproject.org
X-Gm-Message-State: AFq9FYIHqvEm901ybdpO+N1+9Zc5iDVGjXhQt8WO6nmxwAl7wWtDhu1T
	W7VMDCspwCp+0C95HUlpEIlY3bXcbabSGfd/eOOsQSODsCdt5L156cu4syfotDHA+owYsrI0Sr0
	pyelx/fFbfLehujMQVm+EEACc+UDzCSLRtbLaCjAckQ==
X-Gm-Gg: AYBFou3Ik6IKupaTaZmpsXRbPSJydY3MNYtLFeXu/b5pyo2wDTaJQ7Jbgd61zbOgv5u
	D2Tt5nk/ZfJXAEfakO4yk63D8jKO5K08c1Eppm2hFUor108X0Kga7kNida/iDtmstBo+jRVD20x
	Dx0NZXaZGSOgEDlGQOQLVQFCPCS5JqAaRlDiOfYo6TqDTL2aDqjLGnrKtH9C/Oe3kr1qwliPanN
	YglCI3VVe5hO6rDHdg2P9Yr/WOVIksYPB/12BNoBalNU3RRJ4hWaVTOZFVSfl0kKqPXfSLKMJpr
	kgS+RA4PFHv9+SV5ww1aixsiA3NrPvu7xj1kBGbGue00fFCwU1/kukp40LtEL6SpUfTy34mvQm+
	1FA19YQ3C/nbsrHG6eQIo+TxKnzy60/MXrPYrkzSOGQ82NEKHDwzIT5KrZVOR7L+s6Hv98sBCI0
	o0GpGvymOAmT2LxSnAhz6eRE6l34s=
X-Received: by 2002:a2e:b8d5:0:b0:3ab:ac4c:186d with SMTP id
 38308e7fff4ca-3ac4415e8d9mr8187221fa.13.1792602680476; Wed, 21 Oct 2026
 10:11:20 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 21 Oct 2026 10:11:09 -0700
X-Gm-Features: AclHuK9w1NggZAWVVWynmeJZZblwxKUUh0N4MDLCzw1oom6r3GhmzNkN5nukxwo
Message-ID: <CADfgfoY-e_Dwh=sEYzREf16iTHynr+2HVeTMLJfJdthUNjj=fw@mail.gmail.com>
Subject: Yocto Project wiki replaced with a a read-only snapshot
To: yocto-infrastructure <yocto-infrastructure@lists.yoctoproject.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fe5989065e5cd5ed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 17:11:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66778

--000000000000fe5989065e5cd5ed
Content-Type: text/plain; charset="UTF-8"

Due to CVE-2026-109618 and CVE-2026-109619, the Yocto Project wiki at
https://wiki.yoctoproject.org/wiki/Main_Page has been taken offline and
replaced with a read-only snapshot. Efforts to restore and replace the
required wiki functionality are currently in progress.

-- 
Michael Halstead (he/him)
Linux Foundation / Yocto Project
Staff IT Engineer

--000000000000fe5989065e5cd5ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Due to CVE-2026-109618 and CVE-2026-109619, the Yocto Proj=
ect wiki at <a href=3D"https://wiki.yoctoproject.org/wiki/Main_Page">https:=
//wiki.yoctoproject.org/wiki/Main_Page</a> has been taken offline and repla=
ced with a read-only snapshot. Efforts to restore and replace the required =
wiki functionality are currently in progress.<br><br><span class=3D"gmail_s=
ignature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead (he/him=
)<br>Linux Foundation / Yocto Project<br>Staff IT Engineer</div></div></div=
>

--000000000000fe5989065e5cd5ed--
