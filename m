Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59766C433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 02:57:02 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web08.4672.1643943421424123494
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 18:57:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=n1CKwXlI;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: ticotimo@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id p7so10174622edc.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 18:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oyT4qpN7w4ni/k3TVnQtiUYsOxEEf5tVJioBwNQGyh8=;
        b=n1CKwXlIpRo3e5G7fEP6AXCn1Sq5uS6YVYPEwqjdAoJwIwk0bqGC+0ib0cw99KlQ3Z
         Yt65ooPpNZAWGNyoUZpNSaQtA4RCsvQ285YvrjQOBU8e2rBURfPbNNV3beMQWEp6qpwL
         PcqzExR+OVaJtTSL6fVvBo5jvjBoc0Bl96ayesS6/A+Y2cZzeJOR9CLLVfSm7cpZ4oo5
         kVmYbWpK2hEqlyBG/dB1GjPQBWROE6g51W+vUFg4ffPwbsK5G2kEY+KS2TxTlJLoBQb5
         xSdWNpY0tNeLJlsVOAYjuMJEn9HnTiJnv2pOdEqlhovE+G9yxB7HrxKhTFqIcTqh3YIA
         jSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oyT4qpN7w4ni/k3TVnQtiUYsOxEEf5tVJioBwNQGyh8=;
        b=BY6VW93AzN3SqNE3BiEfP7HR/68s+ojlxzIbI806wLiBXcUxBTKfYHk5wJQCDowWg4
         7lN3G3Q3JGFKFRgTlEagwG966/SUo7ktJdkTARuz9aoYoM8bV1WPKYz4yHRfsySdI2dO
         uesjDRb5SquWNcMEXGEpNRgFad1eQegQkad+pDZqKLC/r7SGmC4544/jewcSc8nH4/bH
         s0PQKq3nebuzhO2pzGZgR1VpFwK2cjq1IuhoPVdZ1cwVsI/pRUfsC2byTxC1S/9ds+HQ
         7eEVelLU/O480jh9KEr8erhe2Wm79eS1fT02gyIZqtQahAY2ioAXI+bA41Bn66vqkyMg
         fJ7A==
X-Gm-Message-State: AOAM530ii0gZKDHQYtThpBCRR7u84gPFTgO7HATdG6URMU7Gx8aUpkET
	boGRZgraTeP17ZoHd+92X8z5gkB7yysxcNOp2LE=
X-Google-Smtp-Source: 
 ABdhPJzoKmJL1Vr6NV3jvUCLW4NOt/HMwl/kKLeWLDOOdrbdZ1/fwEOtKHVfO3oc1lXSoX++o4kwJpDME6bWm0qTtTQ=
X-Received: by 2002:a05:6402:1703:: with SMTP id
 y3mr1034611edu.239.1643943419448;
 Thu, 03 Feb 2022 18:56:59 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAPoiz9xdMynAdLjHMoG76kiny4CUbvj6n7DxHR6HYecuLxcVwg@mail.gmail.com>
In-Reply-To: 
 <CAPoiz9xdMynAdLjHMoG76kiny4CUbvj6n7DxHR6HYecuLxcVwg@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 3 Feb 2022 18:56:48 -0800
Message-ID: 
 <CANx9H-DydV_-353nU4E=rJakU7GVi37sH5CTVe8Dxdtyae852A@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Inclusive Language Proposal for YP/OE
 folllow-up
To: Jon Mason <jdmason@kudzu.us>
Cc: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
	bitbake-devel@lists.openembedded.org,
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008c11d605d72867e0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 02:57:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56064

--0000000000008c11d605d72867e0
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 3, 2022 at 6:31 PM Jon Mason <jdmason@kudzu.us> wrote:

> This is a follow up to the Inclusive Language email I sent out on
> January 24 (see
>
> https://lore.kernel.org/yocto/CAPoiz9wL16OTzxNHdw_5-L72GOHkhhM0--WZF7An071cx6sr_A@mail.gmail.com/
> ).
> I'm adding a couple of additional mailing lists to this email that
> were not on the original distribution, in case there are developers
> for those areas which didn't see the original email.
>
> I really appreciate the positive feedback received on this.  I've
> updated the wiki with the suggested changes by Ross (acked by Randy)
> and Mikko, and extrapolated that to be the following list:
>
> CVE_CHECK_PN_WHITELIST ->
> CVE_CHECK_SKIPRECIPE ->
> CVE_CHECK_SKIP_RECIPE
>
> CVE_CHECK_WHITELIST ->
> CVE_CHECK_IGNORECVE ->
> CVE_CHECK_IGNORE
>
> INHERIT_BLACKLIST ->
> INHERIT_RECIPESKIP ->
> INHERIT_RECIPE_SKIP
>
> SDK_LOCAL_CONF_BLACKLIST ->
> ESDK_LOCALCONF_REMOVE ->
> ESDK_LOCAL_CONF_REMOVE
>
> If anyone wants to nack the changes above, please let me know (or
> modify https://wiki.yoctoproject.org/wiki/Inclusive_language).
> Similarly, I've added all of the proposed names to the "approved name"
> column.
>
> On the same wiki, I've changed the tables to now have a volunteer
> developer column (from the "Assigned Developer" name) to make it more
> clear that we need help in doing these tasks.  If there is anything
> you are interested in, please feel free to put your name down there
> and have at it.
>

This looks to be in good shape. Thank you to the reviewers for some
excellent variable names.


> Thanks,
> Jon
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#1450):
> https://lists.openembedded.org/g/openembedded-architecture/message/1450
> Mute This Topic: https://lists.openembedded.org/mt/88899288/924729
> Group Owner: openembedded-architecture+owner@lists.openembedded.org
> Unsubscribe:
> https://lists.openembedded.org/g/openembedded-architecture/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000008c11d605d72867e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 3, 2022 at 6:31 PM Jon Mason &lt;<a href=3D"mai=
lto:jdmason@kudzu.us">jdmason@kudzu.us</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">This is a follow up to the Inclusive Language email I se=
nt out on<br>
January 24 (see<br>
<a href=3D"https://lore.kernel.org/yocto/CAPoiz9wL16OTzxNHdw_5-L72GOHkhhM0-=
-WZF7An071cx6sr_A@mail.gmail.com/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://lore.kernel.org/yocto/CAPoiz9wL16OTzxNHdw_5-L72GOHkhhM0--WZF7An071cx6s=
r_A@mail.gmail.com/</a>).<br>
I&#39;m adding a couple of additional mailing lists to this email that<br>
were not on the original distribution, in case there are developers<br>
for those areas which didn&#39;t see the original email.<br>
<br>
I really appreciate the positive feedback received on this.=C2=A0 I&#39;ve<=
br>
updated the wiki with the suggested changes by Ross (acked by Randy)<br>
and Mikko, and extrapolated that to be the following list:<br>
<br>
CVE_CHECK_PN_WHITELIST -&gt;<br>
CVE_CHECK_SKIPRECIPE -&gt;<br>
CVE_CHECK_SKIP_RECIPE<br>
<br>
CVE_CHECK_WHITELIST -&gt;<br>
CVE_CHECK_IGNORECVE -&gt;<br>
CVE_CHECK_IGNORE<br>
<br>
INHERIT_BLACKLIST -&gt;<br>
INHERIT_RECIPESKIP -&gt;<br>
INHERIT_RECIPE_SKIP<br>
<br>
SDK_LOCAL_CONF_BLACKLIST -&gt;<br>
ESDK_LOCALCONF_REMOVE -&gt;<br>
ESDK_LOCAL_CONF_REMOVE<br>
<br>
If anyone wants to nack the changes above, please let me know (or<br>
modify <a href=3D"https://wiki.yoctoproject.org/wiki/Inclusive_language" re=
l=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Inclu=
sive_language</a>).<br>
Similarly, I&#39;ve added all of the proposed names to the &quot;approved n=
ame&quot;<br>
column.<br>
<br>
On the same wiki, I&#39;ve changed the tables to now have a volunteer<br>
developer column (from the &quot;Assigned Developer&quot; name) to make it =
more<br>
clear that we need help in doing these tasks.=C2=A0 If there is anything<br=
>
you are interested in, please feel free to put your name down there<br>
and have at it.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">This looks to be=
 in good shape. Thank you to the reviewers for some excellent variable name=
s.</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Thanks,<br>
Jon<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#1450): <a href=3D"https://lists.openembedded.org/g/open=
embedded-architecture/message/1450" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lists.openembedded.org/g/openembedded-architecture/message/1450</a><b=
r>
Mute This Topic: <a href=3D"https://lists.openembedded.org/mt/88899288/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/mt/=
88899288/924729</a><br>
Group Owner: <a href=3D"mailto:openembedded-architecture%2Bowner@lists.open=
embedded.org" target=3D"_blank">openembedded-architecture+owner@lists.opene=
mbedded.org</a><br>
Unsubscribe: <a href=3D"https://lists.openembedded.org/g/openembedded-archi=
tecture/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.openembed=
ded.org/g/openembedded-architecture/unsub</a> [<a href=3D"mailto:ticotimo@g=
mail.com" target=3D"_blank">ticotimo@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000008c11d605d72867e0--

