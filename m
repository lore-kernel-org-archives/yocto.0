Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14165.1794907728750671505
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Nov 2026 01:28:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20260707.gappssmtp.com header.s=20260707 header.b=odt8GGhc;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.128.182, mailfrom: jester@theyoctojester.info)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-8b10d24345dso40852397b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2026 01:28:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794907727; cv=none;
        d=google.com; s=arc-20260327;
        b=pKvJsrvwhGsABDukIxXZlGAd/3RGQzAdU/jGP5wFXPjV07HBz7wv3eVwG/BUKWw1R/
         /m1qxil3YfN0N89ChXDT5ei1GNmsmL5Sg++1EicoRqdLykayp/McPpN2+CHw/isGyMxY
         XOeRbMpw2yjeKtQEqEwHS9LUlBZDfg6dO7GMRgLpF1T+gxXPPybznt5MdRkCOxVt6TJ8
         yjJve/JVHnc8JiX4PweEWAdbSTSUzKLVLpfvIoxOBsHoApBPRC/vWZZumgG+4OMNRvOY
         MKy3isnjFP870T9NHwoyCsC0qRJ62BooqCpZfhqAN04u0eBQJrzS06ndEOdx/wyid87j
         VJNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7zGHJge/+/jVxb6TNIn8p4XO+EYoA7MCp//QCyrMLbw=;
        fh=4zghGehrW/MEnLOGdoIJXaNjy242Q2HZ4pxd0y64fPE=;
        b=jokd6vygM8CrK/gAzdwQhe1wtB5dqrvaVLQHpZ3vFbMTOGVdfxRi+7j+YAl4Ib3fqq
         f/9/c2BnbAYfFrJjHwKVy2JrwSp7wBMq7TNazE6PBnRqrlKa36eJlGCyBdeOBL7KUVeS
         KdMUpzk21es7heJ5nK7sZKcx8lbx5lp8wMh9YHcscgt98opSovALIFTQbyuNELiy08GK
         8KlNgn+P3QqO5uSOOIm8Drc/04pL5SSSkQyK1lhim92PzeFBNpRxjepHsc56rvBAK/LP
         SUVbDxtnTE8r1ZN0Od+14iqvbRDng6AMdIJhLkwweaPVn8488giX0nokDRsGe0EUPvwX
         u2pQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20260707.gappssmtp.com; s=20260707; t=1794907727; x=1795512527; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=7zGHJge/+/jVxb6TNIn8p4XO+EYoA7MCp//QCyrMLbw=;
        b=odt8GGhcbV+A6UfSYVcflEtgOX+vPgnq/tXbvijKhk0JHcD/1o5uxlUqX/62nzyExu
         kREo1/hiZLOWSDHTBjCB8ricld6ScoZYGURpEepnlSFjUECK7RBuEhXyPGpX47JFCbXX
         PSneJFnDK8wC7TOTp9D0bS/UG5XoZxV8FHc6m5lupwret4CF+hHSaSmR/hglY7+4z2+N
         Wn2Je01xiHeoUyr7N02aNNEfmj2V/ha7S+murhbAMR91s25awIYw8Oj07m6oAOj1l3sC
         lr+DSFqNtKZsl/dcCE6dLpwaPKjigWc7XQ5sXhhI7bByDMMxyg14JK+M3Nnd6gGcAIis
         9MPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794907727; x=1795512527;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7zGHJge/+/jVxb6TNIn8p4XO+EYoA7MCp//QCyrMLbw=;
        b=GXcsGhlvQZ8fNNhlMDcz8G0tOeQzt4kjI69pIbmuIPsksZldb1r/XuMhEEQZDOXIE5
         ZIcGPp/Si62vCIrOmCAFC8lAVhxznNy+3UsSR4XGavNuZpcjJ0h5gMKB9NJTXOG/OiJU
         iCSTrlaNvNlOHitMjjGhCAqULizDJrR+wZLW87LRKr+TQgi0hds4BP1Gnrq4YIcPvlWR
         zNf0e1fVV6M6VHyJubsws6Lzduzq2/ek/RZgnhP8qDNSfom7Orwph3wY2p/+jBZyGiRB
         Q8y3ArYCjMG5y/WT7BKBR8q7PfubL+AO/ErsxjGYYM1L2PiYgCGvXUlGDNBUDIertdAb
         avzg==
X-Forwarded-Encrypted: i=1; AL+hErFzOSpSPi+lGW/cL3db308Gp9achPysh62G86GsIERCG8WQ0FOPTf3f5iD6YB4fVMscU9DwJQ==@lists.yoctoproject.org
X-Gm-Message-State: APuU4Z/kTe50AMpZDuITp0rEBsfn6rZc1/aLZSUP186PYjP/XT3MflS2
	iVFa+prvblG969aOH6/N0DZeGetZ4IhY7Ko2Mqt5fF097aFeAIXqzlNMHO83zOnVElRzEoceqIS
	rlGcVqs0bcESqAsUpR/49dvR0LTYdZNbAdQDJPSv2dA==
X-Gm-Gg: AZFdTZeUI0pnjwoPvEMvCCWydrFx8cVPre3hHQPLApbN18iv8vE8w3iv0/uFO4cfldF
	mVFB+5svllYTQqB0eNkbYGjPoEE1B1w/TeFv4j6J3HelDaNzt3f0bxXa0AYm6PCzBa3ZhVQ/xK8
	2tNME/lFjCy1uAlI1Ke31fXQ77HScdVsQvK3xWPCggvr44nMl5iEv5H9xC4p4jHbRIv78+9MD2q
	kex1PXUeLoiabVYgydo3Az9wRra295qCi/ZTzHIfbnX/5GYcV6o3DemgzxX7XC4RnMvhuFLu8Ia
	V0ssC4A/BU+6F7XrIJkIAGtoICykBUo0k+4J83MqFJip1moP4BLliflVCs/PuRhKqtCLBDW3EnZ
	aSk8M107g75MwizwYRqk6494mAdv2jJtieSJ6DLjXEBr43gPNtw+UtKIHNcC8lq8+CPiM3tUH1m
	qUW4f5eGRKxgMOiaoLvJ+wNTga+BOp6ltbnBbsQgjbDA==
X-Received: by 2002:a05:690c:f03:b0:8b0:bc6c:9229 with SMTP id
 00721157ae682-8b4aa2e33c0mr84636287b3.27.1794907727496; Tue, 17 Nov 2026
 01:28:47 -0800 (PST)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Tue, 17 Nov 2026 10:28:21 +0100
X-Gm-Features: AclHuK_RWciqAMZ5aWmBm-5DFBFJHFzzw7jqQk-UCGMm5KHZEAGdLt5dnKHPr6c
Message-ID: <CAEt6NwrXK7Zcz=Ljc7VS4U0Qu+yfTb33SDpjUn-GA62CDgP0pA@mail.gmail.com>
Subject: YPS 2026.12 - schedule and registration
To: Josef Holzmayr <jester@theyoctojester.info>
Content-Type: text/plain; charset="UTF-8"
Bcc: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2026 09:28:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66803

Hear me, hear me!

The schedule for YPS 2026.12 is almost finished, and we've got the
good, the bad, the ugly... I mean, the good, the better and the best
things lined up for you. Check it out at
https://pretalx.com/yocto-project-summit-2026-12/schedule/

And then, hurry up, head over to
https://register.linuxfoundation.org/yocto-project-virtual-summit-2026-12
to grab your seat! No change since years, still only 40$ for a
whopping 3-day program.

See you there!
Josef
