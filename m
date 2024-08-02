Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73C11C52D70
	for <webhook@archiver.kernel.org>; Fri,  2 Aug 2024 06:50:41 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.87508.1722581432828917119
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Aug 2024 23:50:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y+9tVUpw;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52fc14d6689so8235690e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 23:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722581431; x=1723186231; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7kRUHw1abDGevj1MNNXt2V+M9C+STo+9C1qnb6aO0L8=;
        b=Y+9tVUpwxnrVYrZ05URMFG3dfyRGw1zkKo/yaGoOXebjgiO2WDX+CCRUMnzsNbMJtB
         FNEKK8jRTiKKE438PdepDTBlR3nDxdsHZCCpM4A98BfWD7f4Y7PHj4yGokN0EMIv48NU
         khEE7pJseouuLUJq1NEiUSKBO5gVVK+VE5tGhp9dI7JuJOYLTbceYVx2pYFgV96O8WOB
         mHRKhKwjqzadCaoB7NMnQqp0Eqc2KiiT04vcM6SeGj6L5hI1mg9DNeUQzLsCYpSMhXNS
         cLg5LA0oX1Lto/My9z7SsIlMsrFFl+SabIfysKi4HFtbz9wWwyZ2TRi2IoMUSVQtd2st
         Ur0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722581431; x=1723186231;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7kRUHw1abDGevj1MNNXt2V+M9C+STo+9C1qnb6aO0L8=;
        b=SwCFYv510S7QMbiPuy0WycozxstD71f25Ygk0ftcuc1CMGOhscMemLhVNt3YvEuQZX
         HOGKFdtqzJ8AxQXadNZ/DVcphUO+E+qMxXlCKpbkCWQil67KQLsfvMIE3TbVt0EcnyxT
         W952Wp5Z2TG/i8H9/DWEZXcONcYCGa9pM/zP9Vq2AvE6pBZjLxKpNSkWfMZuojpFHe0J
         aOA/7hlfw2abQfkQckZiHZsovslWohWKT7w/BUgT2CWYMTSbQUlMwg59Pwhmp2ubgGzc
         41A/F0XhB4F8oNKqUCYNIHYW5obW3XCsSg8jYuClQ/snkpFLOkl+NOFHENWyGuur7qs2
         T9ww==
X-Forwarded-Encrypted: i=1; AJvYcCUjQJc2JghwRY2q0NotVbr1r5rMQXhsIK9vncO30T2vmThiHdkbjPp/Lxocza49i3JjjjfW0BJUnk8KD9GM7K3SM6y/G712cJ129pjt
X-Gm-Message-State: AOJu0YxPu4k/v/cx/adegHdSTJRQaliRI0hzw5qbzdTZS8tjxqj4JKVU
	tm2y4c5HqtXQLux0RYUtKKTzqnlm0O/2LSEM9zGjQrzLf1TPp75X3SnHd2hzsVognXLq4WE2abs
	Q6xoQzNE7JU4DHoQUkvR3l05UXms=
X-Google-Smtp-Source: AGHT+IHwyoVrwf76Y4RGDaq//JDa0JquRmcF0cf2+nMZwEm1s18vZTaqi16nukiaJ6Ac7uwyQaeubSw9s4fv1zSmz1o=
X-Received: by 2002:a05:6512:31c3:b0:52c:f3fa:86c with SMTP id
 2adb3069b0e04-530bb36f1a5mr1401752e87.18.1722581430277; Thu, 01 Aug 2024
 23:50:30 -0700 (PDT)
MIME-Version: 1.0
References: <AEKW.1722580926629848668.wOSg@lists.yoctoproject.org>
In-Reply-To: <AEKW.1722580926629848668.wOSg@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 2 Aug 2024 09:50:19 +0300
Message-ID: <CANNYZj_h24Asd8d05=YX6PFR2yj8uftB4PkoZfKaxO1LeFxnbQ@mail.gmail.com>
Subject: Re: [yocto] gstreamer 1.24 on Scarthgap
To: aleksandar.nikolic010@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003fa019061eadbe3f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Aug 2024 06:50:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63643

--0000000000003fa019061eadbe3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can submit a backport to the lts mixin layer, but it won=E2=80=99t be t=
aken
into oe-core.

Alex

On Fri 2. Aug 2024 at 9.42, Aleksandar Nikolic via lists.yoctoproject.org
<aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi,
> I noticed Scarthgap comes with gstreamer 1.22, on master however there's
> the 1.24 version. Does anyone know if there are nay plans to backport the
> 1.24 (or higher) version to Scarthgap any time soon?
> Thanks
> Aleksandar
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63642):
> https://lists.yoctoproject.org/g/yocto/message/63642
> Mute This Topic: https://lists.yoctoproject.org/mt/107680787/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000003fa019061eadbe3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You can submit a backport to the lts mixin layer, but it =
won=E2=80=99t be taken into oe-core.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri 2. Aug 2024 at 9.42, Aleksandar Nikolic via <a=
 href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;alek=
sandar.nikolic010=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gma=
il.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div=
>Hi,</div>
<div>I noticed Scarthgap comes with gstreamer 1.22, on master however there=
&#39;s the 1.24 version. Does anyone know if there are nay plans to backpor=
t the 1.24 (or higher) version to Scarthgap any time soon?</div>
<div>Thanks</div>
<div>Aleksandar=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63642): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63642" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63642</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107680787/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107680787/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000003fa019061eadbe3f--

