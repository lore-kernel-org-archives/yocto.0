Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.425.1591736908594212334
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 14:08:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=m2RS4H77;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B554E01CB3; Tue,  9 Jun 2020 14:08:28 -0700 (PDT)
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
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FD4E01C7A
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2020 14:08:26 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id g62so112507qtd.5
        for <yocto@yoctoproject.org>; Tue, 09 Jun 2020 14:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=EnHRqrTNtuHEjOS7G7ac64nQmJ9GlAhvd/oBLDKYE/E=;
        b=m2RS4H77IKOyl/ai07QDSAegTZZXMuSJ/N8KtivYwKYdd9dBTNbnWR1IFz32bCNffY
         DA96R8b49FlqtwMo068hv1Wb88UZVsznc2pBpkrMbTmtMOy/gpKwgo0OVgVGzy3UxBul
         I16sz5MFHi6fHTj6PRxvAGbKCr5c8Vy7W2HR+h9lJCgZyT/YeDZIze716kj44YGoRBtC
         hJApAiQdZhmOcqqJQIDQXebnyBOQIlgJZjjUAe5kscAzmtmwYloCK6LLgv7Gp5fWeEIP
         gSvDE+rJ7yas1BpqrawtmlVIf3bm1XurPZGKNvlJx1BY6wfB4qHSRsHnSKZTWiVhYzjq
         gsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=EnHRqrTNtuHEjOS7G7ac64nQmJ9GlAhvd/oBLDKYE/E=;
        b=CmbUVO8T924L8PB5zTkYEmkY4WnSjrfpc4y36VLWCtxXUIC63HEgYFnIabSUpNctx6
         4EkXEUTy/fo55y2boOozMwGYLpsNr+aSw9zvJEwnIIOeFuvDJTaxp/bGyZiDiHcYMPh3
         YTUN0OOKbhggPvsH2BmHJOelMeJDjdfg4uHOa6iTm/a03+YOUfsE4Ehq4vkV5mhn0Ur/
         sUpSkN7xRw1l/OTynR6H1aziD0sIQYRQY1KqDlZuLzgG0jMbUALg6X/oJYlpdBQsGocV
         /NAv/AzOo5H6MoorPFSRbTW3lYI7D7HlE22x1BdIS2GZDBQhVm7V6yU9LBKUiUcQwiqh
         Crmw==
X-Gm-Message-State: AOAM532xMGPgmTyKPQxyxe2ph++KqoiPR1IUJVhO+HQb7CNmmAuPF33e
	6Y8CzHkjQ3j2zdJOmote7YW4zlIT
X-Google-Smtp-Source: ABdhPJz7K8VXhAoswKVW5hJ6lO49dhgkoukxiQqNJwqJMMPuSnX0dNRA6oLjnqtNaPbEqxJEGoQvzw==
X-Received: by 2002:ac8:7b5a:: with SMTP id m26mr32496887qtu.381.1591736904759;
        Tue, 09 Jun 2020 14:08:24 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id l8sm11731723qtb.57.2020.06.09.14.08.23
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 14:08:23 -0700 (PDT)
Date: Tue, 9 Jun 2020 17:08:21 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: minutes for Yocto Project Technical Team Meeting / Engineering Sync - June 2 2020
Message-ID: <20200609210821.GA33481@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for June 2 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolly, Joshua Watt, Mark Morton, Richard Purdie, =
Steve
Sakoman, Randy MacLeod, Trevor Gamblin, Bruce Ashfield, Jan-Simon M=C3=B6=
ller,
Jeremy Puhlmann, Jon Mason, Mark Van de Vyver, Michael Halstead, Paul Bar=
ker,
Ross Burton, Scott Murray, Tim Orling, Armin Kuster, Peter Kjellerstedt, =
David
Reyna, Denys Dmytriyenko

=3D=3D notes =3D=3D
- YP 3.0.3 has been released
- YP 2.7.4 is awaiting final approval and likely to be released today
- YP 3.1.1 later this week or early next
- AB up on Fedora 32 and Ubuntu 20.04

=3D=3D general =3D=3D
Randy: how do we feel about the build quality
RP: better, but it looks like there=E2=80=99s new races (e.g. icu-data) e=
specially
    when multiple builds are run in parallel, not =E2=80=9Cpanic=E2=80=9D=
 yet, but
    =E2=80=9Cconcerned=E2=80=9D
TrevorG: haven=E2=80=99t had success with logrotate yet
RP: on a good day there=E2=80=99s a 50% chance of a build failing
Randy: that=E2=80=99s not good, we see ~1% internally at WR

RP: Steve: we need to look at the ltp-release issue
Steve: okay
RP: upstream recommends removing some of the tests and using at least 1GB=
 of
    RAM

RP: Joshua sent invasive bitbake patches, something we probably should ha=
ve
    done a while back, but taking them makes LTS diverge significantly fr=
om
    master, should we put it in LTS?
JPEW: maybe put it in master for a while, but ideally it would be in LTS
    eventually

RP: python module issue for dunfell (LTS): upgrading to LTS
    requires meta-openembedded because of meta-arm see:
    https://www.mail-archive.com/openembedded-core@lists.openembedded.org=
/msg136914.html
(various): conflicted on whether this is good or not
Steve: including meta-oe is pretty much standard, hard to believe a produ=
ction
    system can build without it
RP+Timo: we see people who would rather cherry pick from meta-oe (and for=
king)
    than importing meta-oe entirely
Paul: how does this cause breakage?
RP: versions and layer priorities
JPEW: happens when people already have meta-python and upgrade one but no=
t
    another
Scott: doesn=E2=80=99t the build fail?
JPEW: yes, it could, or they get the wrong versions
RP: if they upgrade oe-core but not meta-oe then it fails
JPEW: if we move them, do we also upgrade them?
RP: given the security issues, we should. i suggest punting to TSC
Timo: do we do the upgrade also on meta-oe dunfell branch?
RP: yes, but it needs to be clear that this is an exceptional circumstanc=
e,
    this isn=E2=80=99t something we=E2=80=99ll do regularly
Steve: do we do it now, or 3.1.1?
RP: 3.1.1.
Ross: lots of overlap between OE and Yocto TSC, but I think this is mostl=
y an
    OE TSC issue
Timo: if this had happened a few months ago, this wouldn=E2=80=99t be an =
issue, so i
    think it should go in
RP: agreed. JPEW and Bruce: thoughts?
JPEW + Bruce: sounds good
Paul: to clarify if oe-core is updated but meta-oe isn=E2=80=99t the wron=
g recipe is
    used
RP: an older version of a recipe is used, so it succeeds but has the wron=
g
    version
Paul: maybe we should add sanity checks
RP: don=E2=80=99t think we should
Scott: will dunfell be updated
Steve: have to dig into the issue to understand it

Timo: crops broken, worked on getting it working over the weekend, now wo=
rks
    from morty to zeus, but fails on dunfell and master, not sure why
RP: can we run the tests on AB?
Timo: probably just a =E2=80=9Cpip install=E2=80=9D
RP: we do something similar with mingw

Timo: perl dependency, look at all the split packages, run all the files
    through perl-req, in order to generate
RP: thanks for update

Scott: noticed <secret> is a platinum member
RP: yes, not quite ready to blog about it, the website updated, but still
    finishing the deal, an official announcement is coming. we don=E2=80=99=
t know
    who from their side will be interacting with the community, we=E2=80=99=
ll have
    to see

Scott: is devday sign-up going to be posted?
David: just signed things recently, team has been distracted
Scott: how is it going to work this year?
David: zoom meeting, 500 participants, 3 hands-on, hoping for helpers (as
    usual), separate rooms

RP: lots of changes behind the scenes, advocacy Tracy again, Andrew Wafaa=
 on
    board

RP: Mark how are things going with docs?
Mark: out last week. Nico has a wiki page setup for the conversion, worki=
ng on
    testing manual
RP: looking forward to first draft of testing manual! (then others can pi=
tch
    in)
