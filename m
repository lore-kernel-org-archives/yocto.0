Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD684C3DA49
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 04:51:57 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.10937.1722315107617391920
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jul 2024 21:51:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NmWVjI5i;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a7d89bb07e7so13415166b.3
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 21:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722315106; x=1722919906; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RBLIe5iNDLjnRgEProp6EqSNfs4gBlTu/DtBuUICqq4=;
        b=NmWVjI5imhn090XbVz5E+VCMlr2Pe1oqg8Z3DyNJrWJTuspAowfX1UDuZAg45f4t4U
         BwbpxQyjYh+r6plPudZMxzlFzAqcaerooWpQx1aFCXVdNFPVxUn51MO4F6nJGFATRm2J
         pb/soXzpVzV+b2OoaZoxX3Pq6ZFIwMGjHGzIJzROZoyNs4asjdGOzB+FnDYgNs33fudE
         41XnIcCIDRTusbxDWGiRn+5vVDbmZPs/vtPkaTXhOAfYu/cP1iDbmBI7TWOpmOUTBzrL
         E5nroaVl2M1XsEMnZC+nxj5JR0LmkOcpPFVU1gb7hY9AdL4j55CRwEVs/TqkTUfFYpkF
         RIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722315106; x=1722919906;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RBLIe5iNDLjnRgEProp6EqSNfs4gBlTu/DtBuUICqq4=;
        b=IGkt0trPEbZa6uaYK8Gnmy2yLuh68Nl8JeG37scvBHYWa3kG9Wvub8c65ZwsLpztht
         vGx+zYyQZ6YLNw7sTCRd1jPPGnF/vAbL95kVHWkdlEiVsDM3rng/2yreVShxdDQkY9Ws
         JUSzRqx18Algonxfznmhm/0HCKpR4PPWveMDeqzsxNKFfs+0Sz++ZyVlnGSU7JWAuZf0
         iauurf+YPd0ramj5NkkH2sZH/s3h0gNSQ2BnG35/2NNAhBX7otOZ0/heLMg9ieTkM3HA
         VYuezhMIuFccvPwb2QpHmVig8Mley/8aPkOe/frOHtv649KESW2HDIk01v0lVgF3CMQq
         443Q==
X-Gm-Message-State: AOJu0Yx84PaVJFNWCpuoqePXqsKHzJld4yeyPPO4nkH8s7EAejipa9Xg
	6mq9kfY3euB0U7RRzeSwUCnTjnbPrF5F1wf9ynP7uU9GIDguuIZNlhDxUekINP1p3SvBj9Emjtv
	FTYxHTs2zG2u5K2y4cUnJMWkmmLI=
X-Google-Smtp-Source: AGHT+IGA8h6JhmWyrl3hYupPabfIic5ayHQSjgwOHd9rji2Zoo34xE8SwqRirwD5Z1JI3PU/7Nb8Lxe/zi7DlTJ/OsY=
X-Received: by 2002:a17:907:72c1:b0:a7a:abd8:77a5 with SMTP id
 a640c23a62f3a-a7d40163ee2mr623565566b.43.1722315105596; Mon, 29 Jul 2024
 21:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
 <CANNYZj-SH92hn5goJ5N+kZq-3X8TNL9=azsqoVp+2fP6zfcp-w@mail.gmail.com>
 <CAPJWBng9ENBtLrT6tKx=bAevU_y87-a=zKNfeeXdkU-rgWP4KA@mail.gmail.com> <CAMKF1sq5e+MrU1rWJvEs8gBD2-Bh9Y=VyTSQV-o-zAMc3G2DjQ@mail.gmail.com>
In-Reply-To: <CAMKF1sq5e+MrU1rWJvEs8gBD2-Bh9Y=VyTSQV-o-zAMc3G2DjQ@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 30 Jul 2024 10:21:33 +0530
Message-ID: <CAPJWBng+ce_O9gcvAB9nHQ5LbS2GuB6L34DEWEQoOQzTm2zLkg@mail.gmail.com>
Subject: Re: [yocto] Update glib-2.0 from 2.7 to 2.8
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000f7c94061e6fbca1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 04:51:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63596

--0000000000000f7c94061e6fbca1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I see your point. Thanks!

On Tue, Jul 30, 2024 at 8:10=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote=
:

>
>
> On Mon, Jul 29, 2024 at 5:23=E2=80=AFPM MOHAMMED HASSAN via lists.yoctopr=
oject.org
> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> Well, I seem to be facing issue with the bluez stack. Though it builds
>> well, functionality wise I think it doesn=E2=80=99t  work as intended. S=
o I wanted
>> to try building it on the board using the source code. Now the source co=
de
>> wants glib-2 2.8 .
>>
>> Also, on a second thought how do you guys work your way around in case a
>> particular package is outdated? Really curious!
>>
>
> This is subjective usually it=E2=80=99s best to keep using the version se=
t that
> comes with a given release even if it is not latest release because it is
> integrated with the baseline of the packages from the given release and
> usually maintained releases do get security fixes etc over the life of th=
e
> release so usually it ends up fine and you are with a large set of users =
so
> any issue you run into you may find good support in community
>
> On the other hand if you want to upgrade a recipe for a package to use
> another major version older or newer will mean you will have to own the
> integration part and there will be less users with such combinations so y=
ou
> will be stuck on doing the work your self. In some cases it=E2=80=99s wor=
th it in
> some not so much
>
> Some leaf packages are easier to upgrade then some core libraries etc so
> your mileage may vary
>
>
>> Thanks
>>
>> On Tue, 30 Jul 2024 at 12:03=E2=80=AFAM, Alexander Kanavin <
>> alex.kanavin@gmail.com> wrote:
>>
>>> You can try, but this is likely to unravel into a mass scale upgrade
>>> of half of oe-core recipes, and you're on your own trying to make it
>>> work. I would suggest simply moving to a tagged master milestone
>>> rather.
>>>
>>> Where is the requirement coming from?
>>>
>>> Alex
>>>
>>> On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via
>>> lists.yoctoproject.org
>>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>>> >
>>> > Hi guys,
>>> > I have kirkstone SDK with me that supports glib-2.0 version 2.70. I
>>> currently require version 2.80 which I noticed is available in the main
>>> branch of git. Do you think pulling the recipes and manually replacing =
the
>>> file will resolve my issue. Or any other good methods I can try?
>>> >
>>> > Thanks
>>> > Hassan
>>> >
>>> >
>>> >
>>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#63591):
>> https://lists.yoctoproject.org/g/yocto/message/63591
>> Mute This Topic: https://lists.yoctoproject.org/mt/107603886/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--0000000000000f7c94061e6fbca1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, I see your point. Thanks!</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 30, 2024 at 8:1=
0=E2=80=AFAM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Jul 29, 2024 at 5:23=E2=80=AFPM MOHAMMED HASSA=
N via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoc=
toproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.y=
octoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Well, I seem to be facing issue with the bluez stack. Though it b=
uilds well, functionality wise I think it doesn=E2=80=99t =C2=A0work as int=
ended. So I wanted to try building it on the board using the source code. N=
ow the source code wants glib-2 2.8 .=C2=A0</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Also, on a second thought how do you guys work your way=
 around in case a particular package is outdated? Really curious!</div><div=
 dir=3D"auto"></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"au=
to">This is subjective usually it=E2=80=99s best to keep using the version =
set that comes with a given release even if it is not latest release becaus=
e it is integrated with the baseline of the packages from the given release=
 and usually maintained releases do get security fixes etc over the life of=
 the release so usually it ends up fine and you are with a large set of use=
rs so any issue you run into you may find good support in community=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">On the other hand if you =
want to upgrade a recipe for a package to use another major version older o=
r newer will mean you will have to own the integration part and there will =
be less users with such combinations so you will be stuck on doing the work=
 your self. In some cases it=E2=80=99s worth it in some not so much=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Some leaf packages are ea=
sier to upgrade then some core libraries etc so your mileage may vary=C2=A0=
</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 30 Jul 2024 at 12:03=E2=80=AFAM, Alexander Kanavin &lt;<a href=3D"mailto:a=
lex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You can try,=
 but this is likely to unravel into a mass scale upgrade<br>
of half of oe-core recipes, and you&#39;re on your own trying to make it<br=
>
work. I would suggest simply moving to a tagged master milestone<br>
rather.<br>
<br>
Where is the requirement coming from?<br>
<br>
Alex<br>
<br>
On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi guys,<br>
&gt; I have kirkstone SDK with me that supports glib-2.0 version 2.70. I cu=
rrently require version 2.80 which I noticed is available in the main branc=
h of git. Do you think pulling the recipes and manually replacing the file =
will resolve my issue. Or any other good methods I can try?<br>
&gt;<br>
&gt; Thanks<br>
&gt; Hassan<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63591): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63591" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63591</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107603886/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107603886/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--0000000000000f7c94061e6fbca1--

