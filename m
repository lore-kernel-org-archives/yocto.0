Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.4110.1617861146612427731
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 22:52:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=AkfhwWZ6;
 spf=pass (domain: linaro.org, ip: 209.85.218.48, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f48.google.com with SMTP id u21so904355ejo.13
        for <yocto@lists.yoctoproject.org>; Wed, 07 Apr 2021 22:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hwjXuXf7G0Gl5eNfe2amN+99xkx0Pmd7ChZEIY9o75Q=;
        b=AkfhwWZ6j/z0Uq86ft4A6ZXPIbz24YOBL6w/WM/NWW6FrXyYT1qgpQZUJCyr+dLWg4
         lwUlkmLsgfNKTpktLUXb8I96KTtESeNxs+0e8OIwehP7Ipd1yuWhX8oclWe1G8sGn4VW
         TDAs5ZOIW/r719Q/Q1XzeKkUYsM1ttvNeLK9I1knh36vQxmqTeXIRg5RNyKORbxFQ9X2
         Iz9CgUj5UtUmP2HKSwCHYGksHtehTWuE1Un9SCp+686xGnxuOpAlHnmFWdH9diaSAeRC
         NtJ6TZzeI/bbOoNC+Sxk61mv/hJz/ZCC7UGuEC9DzuKAb247T9jyK/DtcMVfj5Ue2ryT
         ntUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hwjXuXf7G0Gl5eNfe2amN+99xkx0Pmd7ChZEIY9o75Q=;
        b=Ldd9nJO7dBoO0eQ1CkxvGCj2FX90w8KgAtcoeqpfJc40ok4FAqKcVCk4/2dXRb8+gU
         wXt/t7LcbLIxVBO22umTdYZhDJHoF+IgVfzxfcwKc4wIAZ/S2p+HCw2YvQPF4E+uLHDR
         QRl6vBFaoadJQC/FYHSv1faHSx64S6SZXBry4CiF30qGXlhaNZtsyriLI7QF9KzsI7Pa
         UIgoEyn74PzK2vW7V03XZUEqpXgWE9fhQHGznIJGaQMMsDALvc+SaG3mlG+kEiGD3SkR
         oITV4m0aUexB0/k0U/7n6eGQ4JfBf1ExY8QFKQtDtY5w4a2TdyB/9ZPXg8O+gb0fWqbJ
         KzkA==
X-Gm-Message-State: AOAM5321yCOyKJNEd8r1cHNDTz4j7ICJkV0ia/Pb8mr5DlEuzmKV8QI3
	SI0CIdYtaktcSbmzTSgAxuk0hPbJP0uds3I6gNldYg==
X-Google-Smtp-Source: ABdhPJy9YZ5RvcZDNnySBK0iXBEW9ssrgjZZjdijISdh3t+lxQfNfOT7rBvUcwy3K8gCZof9gJlvGkA1jGbmyKbGIT8=
X-Received: by 2002:a17:906:c0c8:: with SMTP id bn8mr7915121ejb.445.1617861145102;
 Wed, 07 Apr 2021 22:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210406225819.37683-1-mhalstead@linuxfoundation.org>
 <6B8E39A6-3CA5-41BC-BB1B-EA87B379F104@0leil.net> <CAP71Wjzt7Fd5RpLry5ghUP_xWDdEWmat9d2ETYYJ32ac9=rUEA@mail.gmail.com>
In-Reply-To: <CAP71Wjzt7Fd5RpLry5ghUP_xWDdEWmat9d2ETYYJ32ac9=rUEA@mail.gmail.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Thu, 8 Apr 2021 07:52:15 +0200
Message-ID: <CAP71WjyBPnA0ewMKmrtDCFXjO6raGguqE+x1K3LLRLau6wSdkQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: build from tags dynamically instead of static list
To: Quentin Schulz <foss@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000d9a19005bf6fa671"

--000000000000d9a19005bf6fa671
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 7, 2021 at 10:16 AM Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> hey!
>
> On Wed, Apr 7, 2021 at 9:31 AM Quentin Schulz <foss@0leil.net> wrote:
>
>> Hi Michael,
>>
>> On April 6, 2021 10:58:20 PM UTC, Michael Halstead <
>> mhalstead@linuxfoundation.org> wrote:
>> >All new releases are Sphinx ready so we exclude old tags and build for
>> >all the rest.
>>
>
> Thanks for starting this!
>
>
>> >
>> >Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
>> >---
>> > scripts/run-docs-build | 14 ++++++++++----
>> > 1 file changed, 10 insertions(+), 4 deletions(-)
>> >
>> >diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>> >index 910f03d..13df34a 100755
>> >--- a/scripts/run-docs-build
>> >+++ b/scripts/run-docs-build
>> >@@ -7,6 +7,7 @@ ypdocs=$2/documentation/
>> > bbdocs=$3/doc/
>> > docs_buildtools=/srv/autobuilder/
>> autobuilder.yoctoproject.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+snapshot-20201105.sh
>> > outputdir=$builddir/output
>> >+excluded_tags="yocto-3.1.4 yocto-3.1.3 yocto-3.1.2 yocto-3.1.1
>> yocto-3.1 yocto-3.0.1 yocto-3.0 yocto-2.6.4 yocto-2.6.3 yocto-2.7.1
>> yocto-2.6.2 yocto-2.7 yocto-2.6.1 yocto-2.6 yocto-2.5.2 yocto-2.5.1
>> yocto-2.4.4 yocto-2.4.3 yocto-2.5 yocto-2.3.4 yocto-1.0.2 yocto-1.1.2
>> yocto-1.2.2 yocto-1.2.1 yocto-1.3 yocto-1.3.1 yocto-1.3.2 yocto-1.4.3
>> yocto-1.4.2 yocto-1.4.1 yocto-1.4 yocto-2.1.3 yocto-2.4.2 yocto-2.1.1
>> yocto-2.1.2 yocto-2.0.3 yocto-1.8.2 yocto-2.2.3 yocto-2.4.1 yocto-2.3.3
>> yocto-2.3.2 yocto-2.4 yocto-2.2.2 yocto-2.3.1 yocto-2.3 yocto-2.2.1
>> yocto-2.0.2 yocto-2.2 yocto-2.1 yocto-2.0.1 yocto-2.0 yocto-1.8.1
>> yocto-1.7.3 yocto-1.6.3 yocto-1.7.2 yocto-1.8 yocto-1.5.1"
>> >
>> >
>> > cd $builddir
>> >@@ -77,13 +78,18 @@ for branch in dunfell gatesgarth hardknott; do
>> > done
>> >
>> > # Yocto Project releases/tags
>> >-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do
>> >+cd $ypdocs
>> >+for tag in $(git tag -l  |grep 'yocto-' |sort); do
>>
>> IIUC the man page,
>> git tag --list 'yocto-*' | sort
>>
>
> sort -V is even better since it does "natural sort of (version) numbers
> within text", let's get ready for 3.10 ;)
>
> And using -V, how about something along these lines:
>
> v_sphinx='yocto-3.1.5'
> for v in $(git tag --list 'yocto-*'); do
>     first=$(printf '%s\n%s' $v $v_sphinx | sort -V | head -n1)
>     if [ "$first" = "$v_sphinx" ]; then
>         echo "Yocto $v uses Sphinx!"
>     fi
> done
>
> and it outputs the following when I run it locally:
>
> Yocto yocto-3.1.5 uses Sphinx!
> Yocto yocto-3.1.6 uses Sphinx!
> Yocto yocto-3.2 uses Sphinx!
> Yocto yocto-3.2.1 uses Sphinx!
> Yocto yocto-3.2.2 uses Sphinx!
> Yocto yocto-3.2.3 uses Sphinx!
>
>
>
> would be doing the same thing as the one command with grep above.
>> Discovered it recently so just wanted to share.
>>
>> I guess this is something we can also do for bitbake Sphinx documentation?
>>
>
> yes.
>

Well, in fact no , we shouldn't, is a short answer ;)

Here is the long answer..

For bitbake and YP, we currently publish: master, master-next and 'stable'
branches (e.g. 1.46, 1.48, 1.50 for bitbake dunfell, gatesgarth, hardknott
for YP). Then we also publish YP releases (and point releases), e.g. 3.1.5
and beyond, but  we don't publish anything for releases/point release of
bitbake, At least just yet. And it's a 'bug'. Since the YP docs includes
links (with intersphinx)  to bitbake docs, then when we look at a master,
master-next or any branches on docs.yp.org, then the links are correct. for
example if you look at

https://docs.yoctoproject.org/dunfell/what-i-wish-id-known.html
vs
https://docs.yoctoproject.org/gatesgarth/what-i-wish-id-known.html

this page has links to bitbake and it points respectively to:
https://docs.yoctoproject.org/bitbake/1.46/bitbake-user-manual/bitbake-user-manual-intro.html#generating-dependency-graphs
and
https://docs.yoctoproject.org/bitbake/1.48/bitbake-user-manual/bitbake-user-manual-intro.html#generating-dependency-graphs

Which is correct.

[Side note: I've noticed that the hardknott page is wrong, since
https://docs.yoctoproject.org/hardknott/what-i-wish-id-known.html
and the following link

>
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-intro.html#generating-dependency-graphs
I will send a patch for that]

Now if we look at a YP release, such as
https://docs.yoctoproject.org/3.1.6/what-i-wish-id-known.html
it has this link:
https://docs.yoctoproject.org/bitbake/1.46/bitbake-user-manual/bitbake-user-manual-intro.html#generating-dependency-graphs

which is not correct, since it links to a bitbake 'branch' docs build, and
not a bitbake 'release' docs build.



>
>>
>> Removed the git context inadvertently but, is =~ some bash built-in? I
>> don't know what's the shebang on top but maybe we want to force it to bash
>> since I'm not sure it's POSIX "compliant" anymore?
>
>
> It is bash already.
>
>
>>
>> Reviewed-by: Quentin Schulz <foss@0leil.net>
>>
>> Thanks,
>> Quentin
>>
>

--000000000000d9a19005bf6fa671
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 7, 2021 at 10:16 AM Nicol=
as Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dech=
esne@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">hey!</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 7, 2021 =
at 9:31 AM Quentin Schulz &lt;<a href=3D"mailto:foss@0leil.net" target=3D"_=
blank">foss@0leil.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Hi Michael,<br>
<br>
On April 6, 2021 10:58:20 PM UTC, Michael Halstead &lt;<a href=3D"mailto:mh=
alstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfoundation.or=
g</a>&gt; wrote:<br>
&gt;All new releases are Sphinx ready so we exclude old tags and build for<=
br>
&gt;all the rest.<br></blockquote><div><br></div><div>Thanks for starting t=
his!</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
&gt;<br>
&gt;Signed-off-by: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfo=
undation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;<br>
&gt;---<br>
&gt; scripts/run-docs-build | 14 ++++++++++----<br>
&gt; 1 file changed, 10 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt;diff --git a/scripts/run-docs-build b/scripts/run-docs-build<br>
&gt;index 910f03d..13df34a 100755<br>
&gt;--- a/scripts/run-docs-build<br>
&gt;+++ b/scripts/run-docs-build<br>
&gt;@@ -7,6 +7,7 @@ ypdocs=3D$2/documentation/<br>
&gt; bbdocs=3D$3/doc/<br>
&gt; docs_buildtools=3D/srv/autobuilder/<a href=3D"http://autobuilder.yocto=
project.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+=
snapshot-20201105.sh" rel=3D"noreferrer" target=3D"_blank">autobuilder.yoct=
oproject.org/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2=
+snapshot-20201105.sh</a><br>
&gt; outputdir=3D$builddir/output<br>
&gt;+excluded_tags=3D&quot;yocto-3.1.4 yocto-3.1.3 yocto-3.1.2 yocto-3.1.1 =
yocto-3.1 yocto-3.0.1 yocto-3.0 yocto-2.6.4 yocto-2.6.3 yocto-2.7.1 yocto-2=
.6.2 yocto-2.7 yocto-2.6.1 yocto-2.6 yocto-2.5.2 yocto-2.5.1 yocto-2.4.4 yo=
cto-2.4.3 yocto-2.5 yocto-2.3.4 yocto-1.0.2 yocto-1.1.2 yocto-1.2.2 yocto-1=
.2.1 yocto-1.3 yocto-1.3.1 yocto-1.3.2 yocto-1.4.3 yocto-1.4.2 yocto-1.4.1 =
yocto-1.4 yocto-2.1.3 yocto-2.4.2 yocto-2.1.1 yocto-2.1.2 yocto-2.0.3 yocto=
-1.8.2 yocto-2.2.3 yocto-2.4.1 yocto-2.3.3 yocto-2.3.2 yocto-2.4 yocto-2.2.=
2 yocto-2.3.1 yocto-2.3 yocto-2.2.1 yocto-2.0.2 yocto-2.2 yocto-2.1 yocto-2=
.0.1 yocto-2.0 yocto-1.8.1 yocto-1.7.3 yocto-1.6.3 yocto-1.7.2 yocto-1.8 yo=
cto-1.5.1&quot;<br>
&gt; <br>
&gt; <br>
&gt; cd $builddir<br>
&gt;@@ -77,13 +78,18 @@ for branch in dunfell gatesgarth hardknott; do<br>
&gt; done<br>
&gt; <br>
&gt; # Yocto Project releases/tags<br>
&gt;-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do<br>
&gt;+cd $ypdocs<br>
&gt;+for tag in $(git tag -l=C2=A0 |grep &#39;yocto-&#39; |sort); do<br>
<br>
IIUC the man page,<br>
git tag --list &#39;yocto-*&#39; | sort<br></blockquote><div><br></div><div=
>sort -V is even better since it does &quot;natural sort of (version) numbe=
rs within text&quot;, let&#39;s get ready for 3.10 ;)=C2=A0</div><div>=C2=
=A0</div><div>And using -V, how about something along these lines:</div><di=
v><br></div><div>v_sphinx=3D&#39;yocto-3.1.5&#39;<br>for v in $(git tag --l=
ist &#39;yocto-*&#39;); do<br>=C2=A0 =C2=A0 first=3D$(printf &#39;%s\n%s&#3=
9; $v $v_sphinx | sort -V | head -n1)<br>=C2=A0 =C2=A0 if [ &quot;$first&qu=
ot; =3D &quot;$v_sphinx&quot; ]; then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &=
quot;Yocto $v uses Sphinx!&quot;<br>=C2=A0 =C2=A0 fi<br>done<br></div><div>=
<br></div><div>and it outputs the following when I run it locally:</div><di=
v><br></div><div>Yocto yocto-3.1.5 uses Sphinx!<br>Yocto yocto-3.1.6 uses S=
phinx!<br>Yocto yocto-3.2 uses Sphinx!<br>Yocto yocto-3.2.1 uses Sphinx!<br=
>Yocto yocto-3.2.2 uses Sphinx!<br>Yocto yocto-3.2.3 uses Sphinx!<br></div>=
<div><br></div><div><br></div><div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
would be doing the same thing as the one command with grep above.<br>
Discovered it recently so just wanted to share.<br>
<br>
I guess this is something we can also do for bitbake Sphinx documentation?<=
br></blockquote><div><br></div><div>yes.</div></div></div></blockquote><div=
><br></div><div>Well, in fact no , we shouldn&#39;t,=C2=A0is=C2=A0a short a=
nswer ;)=C2=A0</div><div><br></div><div>Here is the long answer..=C2=A0</di=
v><div><br></div><div>For bitbake and YP, we currently publish: master, mas=
ter-next and &#39;stable&#39; branches (e.g. 1.46, 1.48, 1.50 for bitbake d=
unfell, gatesgarth, hardknott for YP). Then we also publish YP releases (an=
d point releases), e.g. 3.1.5 and beyond, but=C2=A0 we don&#39;t publish an=
ything for releases/point release of bitbake, At least just yet. And it&#39=
;s a &#39;bug&#39;. Since the YP docs includes links (with intersphinx)=C2=
=A0 to bitbake docs, then when we look at a master, master-next or any bran=
ches=C2=A0on <a href=3D"http://docs.yp.org">docs.yp.org</a>, then the links=
 are correct. for example if you look at</div><div><br></div><div><a href=
=3D"https://docs.yoctoproject.org/dunfell/what-i-wish-id-known.html">https:=
//docs.yoctoproject.org/dunfell/what-i-wish-id-known.html</a><br></div><div=
>vs</div><div><a href=3D"https://docs.yoctoproject.org/gatesgarth/what-i-wi=
sh-id-known.html">https://docs.yoctoproject.org/gatesgarth/what-i-wish-id-k=
nown.html</a><br></div><div><br></div><div>this page has links to bitbake a=
nd it points respectively to:</div><div><a href=3D"https://docs.yoctoprojec=
t.org/bitbake/1.46/bitbake-user-manual/bitbake-user-manual-intro.html#gener=
ating-dependency-graphs">https://docs.yoctoproject.org/bitbake/1.46/bitbake=
-user-manual/bitbake-user-manual-intro.html#generating-dependency-graphs</a=
></div><div>and</div><div><a href=3D"https://docs.yoctoproject.org/bitbake/=
1.48/bitbake-user-manual/bitbake-user-manual-intro.html#generating-dependen=
cy-graphs">https://docs.yoctoproject.org/bitbake/1.48/bitbake-user-manual/b=
itbake-user-manual-intro.html#generating-dependency-graphs</a><br></div><di=
v><br></div><div>Which is correct.=C2=A0</div><div><br></div><div>[Side not=
e: I&#39;ve noticed that the hardknott page is wrong, since</div><div><div>=
<div><a href=3D"https://docs.yoctoproject.org/hardknott/what-i-wish-id-know=
n.html">https://docs.yoctoproject.org/hardknott/what-i-wish-id-known.html</=
a><br></div><div>and the following link</div><div></div></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_q=
uote"><div></div></div></div></blockquote></div><div><a href=3D"https://doc=
s.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-intro.ht=
ml#generating-dependency-graphs">https://docs.yoctoproject.org/bitbake/bitb=
ake-user-manual/bitbake-user-manual-intro.html#generating-dependency-graphs=
</a><br></div><div>I will send a patch for that]</div><div><br></div><div>N=
ow if we look at a YP release, such as=C2=A0</div><div><a href=3D"https://d=
ocs.yoctoproject.org/3.1.6/what-i-wish-id-known.html">https://docs.yoctopro=
ject.org/3.1.6/what-i-wish-id-known.html</a>=C2=A0<br></div><div>it has thi=
s link:</div><div><a href=3D"https://docs.yoctoproject.org/bitbake/1.46/bit=
bake-user-manual/bitbake-user-manual-intro.html#generating-dependency-graph=
s">https://docs.yoctoproject.org/bitbake/1.46/bitbake-user-manual/bitbake-u=
ser-manual-intro.html#generating-dependency-graphs</a><br></div><div><br></=
div><div>which is not correct, since it links to a bitbake &#39;branch&#39;=
 docs build, and not a bitbake &#39;release&#39; docs build.=C2=A0</div><di=
v><br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
<br>
Removed the git context inadvertently but, is =3D~ some bash built-in? I do=
n&#39;t know what&#39;s the shebang on top but maybe we want to force it to=
 bash since I&#39;m not sure it&#39;s POSIX &quot;compliant&quot; anymore?=
=C2=A0</blockquote><div><br></div><div>It is bash already.=C2=A0</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Reviewed-by: Quentin Schulz &lt;<a href=3D"mailto:foss@0leil.net" target=3D=
"_blank">foss@0leil.net</a>&gt;<br>
<br>
Thanks,<br>
Quentin<br>
</blockquote></div></div>
</blockquote></div></div>

--000000000000d9a19005bf6fa671--
