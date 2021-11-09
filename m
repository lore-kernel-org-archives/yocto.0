Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AC6AC433EF
	for <webhook@archiver.kernel.org>; Tue,  9 Nov 2021 23:32:25 +0000 (UTC)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
 [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web12.4606.1636500744272696746
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 15:32:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aXcTLkb6;
 spf=pass (domain: gmail.com, ip: 209.85.221.181,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id f7so379963vkf.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 15:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=37jmX2miUVNZfugZMVEyVTL/wdWryYth2ujhmkxHOWQ=;
        b=aXcTLkb60tmDvD+y69a9NualiZ1s8fmTWj+1VNG+XnFK9KtmYWl0AAhxLKBQ7w1YFP
         Gg4Yf4/kVJ5NmfWGbaTzcsBEjFfHhGTpnogit76KZ+DCEsRDRTZvnrxPyAGc7KCg2eKC
         IgF14JPXeExqkXolB/1GNpBxx7ZUl3ux9Qp84whMbXwHXrU7sb9y306AUxAPTKI0LXI+
         qIZcBH+JDD5GvUIyhvRdeJ3eItljs7J3pKnFVUM7pgnJRC+8OhR2D5SMTdpM8iuWcLTY
         PbhSxTGTINGb6qdokFuPBO+X6o09im12rr9i3EUWOeGUcXB9Wwj/SXcIrcbR57DUvEgg
         4hew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=37jmX2miUVNZfugZMVEyVTL/wdWryYth2ujhmkxHOWQ=;
        b=1xJcp1fEPpmfrpl+pwLCzQbEGuiLkwqPY59awjRy5Tbqkdvf6w+JBau3HeAwNooPSP
         entHVHywicLE27Rnjm7ivsJu8S8Ey5vFaMII4XYdktBjDHsflkE/fZ0RLcq3HVU3UYpb
         XFT6kb1XeL0LuaROop7K7lhLEhna5hAaCpAPoI/YvKhCPo9FompTJBsTAxiksOKow6hr
         n3W23XPEmVN8/Lf8tZbnkE1Nfi3L66eOWk5yAH1mvmCHVie57vZPh3g9NmCgpU6x8llS
         W8LXy7D5OXNShlmJxROHt0blCXo1lDgRYaiAq98khOPZz2U68pO7PcTzf4VK7lnOL8CO
         jygw==
X-Gm-Message-State: AOAM531rImVFGJV3jXXjtu2lFOs0TtBrcaZwe6FNKFtvdKNH0CQ0vVCq
	6YD5rj8wvtwEgjTKxjVDxnXd7b5XXw90R6fuPIs=
X-Google-Smtp-Source: 
 ABdhPJy9RHoRM7l05WgvQhWNJiyqktDzlkUudlS7COkL27KtDwkwAaSfkZ3n86Nisv1cN8iCl4nY++38Dpr+p4KblhM=
X-Received: by 2002:a05:6122:2214:: with SMTP id
 bb20mr17102595vkb.9.1636500743394;
 Tue, 09 Nov 2021 15:32:23 -0800 (PST)
MIME-Version: 1.0
References: <16B60034E7406B64.3576@lists.yoctoproject.org>
 <CABKMkPKNnQH3gH+KGrQ3ewxFddCb3rdOvGXi-nu+YrtQLsiH4Q@mail.gmail.com>
In-Reply-To: 
 <CABKMkPKNnQH3gH+KGrQ3ewxFddCb3rdOvGXi-nu+YrtQLsiH4Q@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 9 Nov 2021 15:32:12 -0800
Message-ID: 
 <CABKMkPLD1ULOE22QDCXjfKpRbudLTUb3C-XfB-FO3QTWDF=xmA@mail.gmail.com>
Subject: Re: [yocto] pre-built native only tool for native and nativesdk
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007c18d305d063856d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Nov 2021 23:32:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55296

--0000000000007c18d305d063856d
Content-Type: text/plain; charset="UTF-8"

Actually by removing `inherit native` and adding -native to the recipe name
doesn't make it build for native.

On Tue, Nov 9, 2021 at 3:23 PM Joel Winarske <joel.winarske@gmail.com>
wrote:

> To eliminate target option from the recipe I just need to make sure the
> name of the recipe ends with -native, then removing inherit native works
> fine.
>
> On Tue, Nov 9, 2021 at 2:09 PM Joel Winarske via lists.yoctoproject.org
> <joel.winarske=gmail.com@lists.yoctoproject.org> wrote:
>
>> I'm trying to sort out how to install a pre-built host-only tool for
>> native and nativesdk only.
>>
>> Using `inherit native` my-recipe-native and nativesdk-my-recipe both
>> build fine, only -c populate_sdk generates "rdepends upon non-existent
>> task do_package_write_rpm".  Looking at native.bbclass it includes
>> `inherit nopackage` which explains the error.
>>
>> If I remove the `inherit native` and update my recipe name to not include
>> `-native` I can build the -native version, only I can't build
>> nativesdk-*-native.  A target build is invalid.
>>
>> What is the recommended pattern to do this, and is there an example of
>> this anywhere?
>>
>>
>> Thanks,
>> Joel
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55293):
>> https://lists.yoctoproject.org/g/yocto/message/55293
>> Mute This Topic: https://lists.yoctoproject.org/mt/86943509/2167248
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> joel.winarske@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--0000000000007c18d305d063856d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Actually by removing `inherit native` and adding -nat=
ive to the recipe name doesn&#39;t make it build for native.</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, N=
ov 9, 2021 at 3:23 PM Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gma=
il.com">joel.winarske@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">To eliminate target optio=
n from the recipe I just need to make sure the name of the recipe ends with=
 -native, then removing inherit native works fine.<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 9, 2021 =
at 2:09 PM Joel Winarske via <a href=3D"http://lists.yoctoproject.org" targ=
et=3D"_blank">lists.yoctoproject.org</a> &lt;joel.winarske=3D<a href=3D"mai=
lto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoc=
toproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>I&#39;m trying to sort out how to instal=
l a pre-built host-only tool for native and nativesdk only.</div><div><br><=
/div><div>Using `inherit native` my-recipe-native and nativesdk-my-recipe b=
oth build fine, only -c populate_sdk generates <code>&quot;rdepends upon no=
n-existent task do_package_write_rpm&quot;</code>.=C2=A0 Looking at native.=
bbclass it includes `inherit nopackage` which explains the error.<br></div>=
<div><br></div><div>If I remove the `inherit native` and update my recipe n=
ame to not include `-native` I can build the -native version, only I can&#3=
9;t build nativesdk-*-native.=C2=A0 A target build is invalid.<br></div><di=
v><br></div>What is the recommended pattern to do this, and is there an exa=
mple of this anywhere?<br><div><br></div><div><br></div><div>Thanks,</div><=
div>Joel<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55293): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55293" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55293</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86943509/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86943509/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div>

--0000000000007c18d305d063856d--

