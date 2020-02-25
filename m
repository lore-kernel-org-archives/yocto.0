Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1207.1582663184204865786
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 12:39:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPdUkwye;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpewhacker@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2C82E0175E; Tue, 25 Feb 2020 12:39:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCAF7E003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 12:39:40 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id w12so300557wrt.2
        for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 12:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rB5FfQsnPNO9vItALLC035AXZfKOrWQqC9fO8LugDDE=;
        b=HPdUkwyel5oYESnBS3oo8sRRNewRtvOcl7AXpuhtHzDRARVLC0ZjVFPW9NcresrxXH
         EcLIFBDW7NeoJVlqxPRnLRYWwpmcg3Du8ZXFroPVjMqMQuVcd8JLv3WVfiMqPgX9RHnR
         hwNLxYCBEa9Ptukm5xvnBue2PO5ZPM7SY5ZcaaxltjPprlOUDBNeS6IzJ16ng8AHWZlH
         HHrqsTaE4zxKdOpAVoSOIlRUdfQhfARSHAlRhASFUI1QW8zbxhB5KEFZKoaacsRpyNed
         sF1XNHLqQ8r6/3yjiQSSPVEZi2kbm5CTIkW/fkHiMlM8Yqg9FVzJS1nP7TKbgrNDfACT
         3D+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rB5FfQsnPNO9vItALLC035AXZfKOrWQqC9fO8LugDDE=;
        b=Hvxe0aUZwq/K2OAG4I5rcR80dYoPWVZ1h6D4C5YyuiBgsR+3cBy/KA2XF1fuBDlxF5
         RE/qY3qe2kWBOFfb8hr/OirqjDAzxJg+ZUC7RJqsCDGpbavPA6Aub9wkIsl5o9/NVzkN
         Hr5vrAPs6IH4smkmMZZxHX06PXdaQodTDAbjHoBwOJV6D8R93qxJG5nnG3fi4U66fgAD
         biFjWUGnfDliR7gWxkP2hJ8GrRUQyuuR12dkQkp7g4YSE5ukFzJlLWiqXkO4CpQqerna
         guTskcNxZWXitiFr7YfEP2LLSW0XY/07ll5pnhosq7ZeJkD+5M+oak8zCzedH3C3WvGB
         +Ggg==
X-Gm-Message-State: APjAAAWRgKI+f7rv41YBQCYW5Mt8Fqf/3GBTubGULNMetPeiQQE2IXO7
	T8zlpdus62GPYAqMtWWfSCJLvOwuF4Ij2/YsbvE=
X-Google-Smtp-Source: APXvYqwerXFxMxb1zs2cqdbGukwUnk/B0RR9Eo/MjxXmp7EElO66W8IFCxF8qSxxmKpjSTAgxF7EnFoKoT/ij0JUX4c=
X-Received: by 2002:a5d:6452:: with SMTP id d18mr871723wrw.303.1582663179909;
 Tue, 25 Feb 2020 12:39:39 -0800 (PST)
MIME-Version: 1.0
References: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
 <20200225183024.GA1578@denix.org> <CAFSZm+jMJYU3JNCSQLNQwXs0chBh-yoYx2vE2v+Eti=xTDZYsg@mail.gmail.com>
 <20200225192818.bbv3zouozqbxvta4@jama> <CAFSZm+ibicFeUd_X9hM8TjHAeR15r3pj2xY09Lq3Vms5NobkyQ@mail.gmail.com>
In-Reply-To: <CAFSZm+ibicFeUd_X9hM8TjHAeR15r3pj2xY09Lq3Vms5NobkyQ@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Tue, 25 Feb 2020 14:39:28 -0600
Message-ID: <CAJdd5Gaj6PKtAX=U-gQYppLUxKiZzzwZa5qPHEco15cxjYPnMQ@mail.gmail.com>
Subject: Re: [yocto] Using "latest git" versions of recipes
To: Joel A Cohen <aaron@assonance.org>
Cc: Martin Jansa <martin.jansa@gmail.com>, Denys Dmytriyenko <denis@denix.org>, 
	Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 25, 2020 at 1:32 PM Joel A Cohen <aaron@assonance.org> wrote:
>
>
>
> On Tue, Feb 25, 2020 at 2:28 PM Martin Jansa <martin.jansa@gmail.com> wr=
ote:
>>
>> On Tue, Feb 25, 2020 at 02:10:15PM -0500, Joel A Cohen wrote:
>>
>>
>> > PV_pn-recipe1 =3D "1.0.1+git${SRCPV}"  # I'm not sure if this would a=
ctually
>> > work?
>>
>> Yes, this is how SRCPV is supposed to be used, but you can have this in
>> the normal recipe without the override.
>
>
> Everything else you said makes sense to me, but why would I want to appe=
nd "+git${SRCPV}" to the actual recipe? Surely I only want to append the gi=
t suffix stuff if I'm using a "latest" version, and I want the PV to be set=
 by the filename in the default case?

You should checkout devupstream.bbclass
(https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#re=
f-classes-devupstream)
which allows you to do this inside a single recipe (or bbappend and
existing recipe). You can also combine this with ${AUTOREV} in a
common include file. I recently fixed this exact same problem with
this combination in meta-webkit; see
https://github.com/Igalia/meta-webkit/pull/136

>
> --Aaron
>
>=20
