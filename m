Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.7440.1578488370111584797
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 04:59:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xn/B42MY;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id 59so1051227uap.12
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 04:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ekil6YfZq0K8jgl+e8exEEfB/Pf6+OvYfMtFknwaxrI=;
        b=Xn/B42MYOTaG2O5Zb/3YZl71UGYN4eKP0IjSdurxl+b/JuRL/+eX3maKXEd4ID1e0q
         SiKFNmkdnX3/+cjY03Q+OYLjh7/lxyYFi/h6l1TCcfDrGTxOfVJBJC8Kn2rR4jK104oK
         s8KHAZslUUwFxfp4AiVWg00ZLDFC9O0BIVH3XaSTxnJQ7zXPwaFmW5Gcla+x2qpcPQKF
         rQ/eOLKQzIG0Lr3fmENoCUx8DdknNgxSJrsuDw1Idzw9rzWqvzLxVeRC1xmbgNP10PnF
         UsyTqQdx0rVG/7UsO2fMkgSZ7DQcnYxzXNz1FlvY2mPYP489UPqiJTPCo6xteEbF5Ma/
         LNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ekil6YfZq0K8jgl+e8exEEfB/Pf6+OvYfMtFknwaxrI=;
        b=YF9dZgblk6iF3xjGCYHBqOErTXv6jTjggue4dhtvcCoNCoI4bz8+4R3rwW5Vxj+/8F
         LcC18Dlh53OvcZiKRqUXxGEGu+ZABTxBNWQ20LMMeIVu6KXbbGcGBWJKXheFobSGLjqu
         Y96bBAv7YB91YIKXlb6FIODy1pMS2rvvH2aYu5ch3CmB3oopv2s7LNu5VrVKuovMC4Rx
         rWCIF59orm2tql2Y32V99/C2ZQDG2K55M7t73x2u9SrJlP59DEQodfIu05mmCet2PR4Z
         NzA07kNwEJ7p2IEio8wXZ+7QmXb+ZJvcz5muQ4ckB8am4l9qUaiVc1siCUXZvtfMtNfa
         1k2Q==
X-Gm-Message-State: APjAAAVclEX3X06qTEuD4n5PD78RmphCX2Ceye+0t5QT2PLq3LJgQ8/i
	6cKb6Xe3xiWN9GpqXUQnCHOal/RHiDi4EoA5wgY=
X-Google-Smtp-Source: APXvYqwJzpWkzClM0mzmpQylJwAvgfcJYFrUvUo0RFdBKoVpNLRfPSUqjMWQjirAeRPduuxo+mupTdgSIN7qnr7r/Ao=
X-Received: by 2002:ab0:2006:: with SMTP id v6mr2787977uak.22.1578488369280;
 Wed, 08 Jan 2020 04:59:29 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
In-Reply-To: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 8 Jan 2020 13:59:18 +0100
Message-ID: <CANNYZj8PnbOQO6CM1tdKBuHpVFUBj9MG8o0bQb1W04HDMM9mkQ@mail.gmail.com>
Subject: Re: [yocto] Maintaining patchtest
To: Paul Barker <pbarker@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000887fbe059ba07673"

--000000000000887fbe059ba07673
Content-Type: text/plain; charset="UTF-8"

Thanks Paul, maintenance work is always greatly appreciated.

Alex

On Wed, 8 Jan 2020 at 13:49, Paul Barker <pbarker@konsulko.com> wrote:

> Hi all,
>
> After discussion on the technical call yesterday I'm looking at
> becoming the maintainer of patchtest
> (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/) and
> patchtest-oe (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/)
> for Yocto Project.
>
> Aside from a few minor issues I think patchtest is working pretty well
> at the moment so I don't want to rock the boat too much. However I do
> want to extend patchtest in a couple of ways:
>
> * Support testing commits on a branch as well as patches in a
> directory. This will allow integration with merge request workflows as
> well as patches-by-email workflows.
>
> * Support testing patches to other layers as well as oe-core. This
> will require splitting the test cases into a "common" set which apply
> to all layers (e.g. "Signed-off-by" must be present in a patch) and an
> "oe-core specific" set (e.g. bugzilla reference validation which may
> not be relevant for third-party layers). Other layers will then be
> able to include their own test cases.
>
> * Make it easier to run patchtest locally before submitting patches to the
> list.
>
> I also want to simplify future maintenance of patchtest in a couple of
> ways:
>
> * Move existing test cases from patchtest-oe into oe-core itself.
> Archive off the old patchtest-oe repository.
>
> * Consider if patchtest itself can be moved into oe-core as a script.
> This is desirable but there would be a few issues to overcome, I need
> to look into how patchtest is actually invoked by patchwork on the
> server side first.
>
> * If patchtest is to remain a separate repository then I'll move
> development to GitLab with git.yoctoproject.org becoming a mirror.
> This will allow automation of a few things like the deployment of new
> patchtest versions to the server after committing to the master
> branch.
>
> I've also still got my eye on other ways we can support merge request
> workflows for layers that want to use this but December got busy.
>
> I'll give this a week for people to reply with feedback and then
> submit patches to update the maintainers files in patchtest &
> patchtest-oe.
>
> Thanks,
> Paul
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47886):
> https://lists.yoctoproject.org/g/yocto/message/47886
> Mute This Topic: https://lists.yoctoproject.org/mt/69526934/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000887fbe059ba07673
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Paul, maintenance work is always greatly appre=
ciated.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 8 Jan 2020 at 13:49,=
 Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hi all,<br>
<br>
After discussion on the technical call yesterday I&#39;m looking at<br>
becoming the maintainer of patchtest<br>
(<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/" rel=3D"no=
referrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/patch=
test/</a>) and<br>
patchtest-oe (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/patchtes=
t-oe/" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cgi=
t/cgit.cgi/patchtest-oe/</a>)<br>
for Yocto Project.<br>
<br>
Aside from a few minor issues I think patchtest is working pretty well<br>
at the moment so I don&#39;t want to rock the boat too much. However I do<b=
r>
want to extend patchtest in a couple of ways:<br>
<br>
* Support testing commits on a branch as well as patches in a<br>
directory. This will allow integration with merge request workflows as<br>
well as patches-by-email workflows.<br>
<br>
* Support testing patches to other layers as well as oe-core. This<br>
will require splitting the test cases into a &quot;common&quot; set which a=
pply<br>
to all layers (e.g. &quot;Signed-off-by&quot; must be present in a patch) a=
nd an<br>
&quot;oe-core specific&quot; set (e.g. bugzilla reference validation which =
may<br>
not be relevant for third-party layers). Other layers will then be<br>
able to include their own test cases.<br>
<br>
* Make it easier to run patchtest locally before submitting patches to the =
list.<br>
<br>
I also want to simplify future maintenance of patchtest in a couple of ways=
:<br>
<br>
* Move existing test cases from patchtest-oe into oe-core itself.<br>
Archive off the old patchtest-oe repository.<br>
<br>
* Consider if patchtest itself can be moved into oe-core as a script.<br>
This is desirable but there would be a few issues to overcome, I need<br>
to look into how patchtest is actually invoked by patchwork on the<br>
server side first.<br>
<br>
* If patchtest is to remain a separate repository then I&#39;ll move<br>
development to GitLab with <a href=3D"http://git.yoctoproject.org" rel=3D"n=
oreferrer" target=3D"_blank">git.yoctoproject.org</a> becoming a mirror.<br=
>
This will allow automation of a few things like the deployment of new<br>
patchtest versions to the server after committing to the master<br>
branch.<br>
<br>
I&#39;ve also still got my eye on other ways we can support merge request<b=
r>
workflows for layers that want to use this but December got busy.<br>
<br>
I&#39;ll give this a week for people to reply with feedback and then<br>
submit patches to update the maintainers files in patchtest &amp;<br>
patchtest-oe.<br>
<br>
Thanks,<br>
Paul<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47886): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47886" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47886</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/69526934/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/69526934/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">=
alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000887fbe059ba07673--
