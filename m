Return-Path: <jonatan.magnusson@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41679E00B48
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 15:35:35 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id i8so5562qcq.37
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 15:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=E5QC56E61ZxR7SsMlogiPzzVDYnG8gmbzjqRDsKe/hM=;
	b=mSkTs1e37r0VJqOBRjOZQyKURu54CuEE5lfb8JWEeSciadB329oB+j+pqdcguyXg/u
	daiq7XIaBvbXvxImzI1D1FkuLWKOtk7XcBgRY8mhhIbYnRK8z/4i7wpWW1kwhEVCdO90
	+lDVe25fnJQ5fmBaWMEpXhJecjxa0fIgLUfZ9YmiP7/lIyDOEgjdip/Ghm/lylJwvpzV
	Qt7efbNrpgwyosljNUbDQC6mI3sVXzBrqbd0Rot+AXa+BkEUnuSB+g+MO9/uSE3b4WMQ
	gCQ1+P84lJkyIB453UORtKOMedKm1mlNSSfzEZTv4crbdBoQN/jq5WLgheS27Qr278uE
	vyyw==
MIME-Version: 1.0
X-Received: by 10.224.161.4 with SMTP id p4mr6117018qax.89.1395268534763; Wed,
	19 Mar 2014 15:35:34 -0700 (PDT)
Received: by 10.140.46.35 with HTTP; Wed, 19 Mar 2014 15:35:34 -0700 (PDT)
In-Reply-To: <CABcZANmUrLVHyJ-QkO=dw7KgkwF+dZq5XEUwqynSkE5CKWyV4g@mail.gmail.com>
References: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
	<CABcZANkXsmFYfXvUp3C+fGosLvFOb7LVKJsG1jyLt6BkNfYtig@mail.gmail.com>
	<7EE0660E-1C5A-426E-BD76-48DF12321D51@gmail.com>
	<CABcZANmUrLVHyJ-QkO=dw7KgkwF+dZq5XEUwqynSkE5CKWyV4g@mail.gmail.com>
Date: Wed, 19 Mar 2014 23:35:34 +0100
Message-ID: <CAPEiAtTDvXZio9yOecFWLzHyYnedvT-czb_S=n8mM7VrWSVOeQ@mail.gmail.com>
From: Jonatan Magnusson <jonatan.magnusson@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Missing Python modules on target
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Mar 2014 22:35:36 -0000
Content-Type: multipart/alternative; boundary=089e01536cfc6184cc04f4fd4561

--089e01536cfc6184cc04f4fd4561
Content-Type: text/plain; charset=ISO-8859-1

(I replied to Chris personal email by mistake. Our conversation is pasted
below.)

I tried to investigate how the Python installer works, and there are still
many parts I am not sure about.
But as far as I understand the manifest file (python-2.7-manifest.inc) *is*
responsible for telling bitbake which Python modules to install. It
contains a bunch of FILES_${PN}-<package> definitions like this:

FILES_${PN}-numbers="${libdir}/python2.7/decimal.*
${libdir}/python2.7/numbers.* "

If I add "${libdir}/python2.7/wsgiref" to one of these and rebuild the
image the module gets installed on the image.  This solves my problem, but
I wonder why it is not included by default?

Anyone who can shed som light on this?

Regards,
Jonatan Magnusson


2014-03-19 17:12 GMT+01:00 Chris Larson <clarson@kergoth.com>:

>
> On Wed, Mar 19, 2014 at 9:09 AM, Jonatan Magnusson <
> jonatan.magnusson@gmail.com> wrote:
>
>>
>> As far as I can see the manifest file is generated from
>> "scripts/contrib/python/generate-manifest-2.7.py" and "wsgiref" is not
>> mentioned in that file either.
>>
>> There is nothing really to build in wsgiref. It's just a directory of .py
>> files that should be copied to the image. And those files are also present
>> in
>>
>> "build/tmp-eglibc/work/i586-oe-linux/python/2.7.3-r0.3/image/usr/lib/python2.7".
>>
>
> If the wsgiref modules got installed by the python buildsystem in
> do_install, but the manifest didn't include it,l then we'd get warnings
> about unpackaged files. As we do not, it's not being installed for some
> reason, which leads me to believe that the upstream python buildsystem
> isn't installing it, as it's not enabled, but I'm not an expert on the
> python buildsystem. That's where I'd suggest looking. Check the python
> recipe's do_install, and then examine the python buildsystem to see how to
> verify that wsgiref is enabled for inclusion.
>
>
> Also, the manifest generation script above links to this page:
>>
>> http://www.vanille-media.de/site/index.php/projects/python-for-arm-linux/
>>
>> ... which links to ...
>>
>> http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/python
>>
>> ... which has a "python-wsgiref_0.1.2.bb" file that is not included in
>> Yocto it seems. I'm just getting started with Yocto, so I may get something
>> wrong, but it
>> seems that perhaps some more python .bb-files should be transferred to
>> Yocto?
>
>
>
> It seems like that recipe is for a standalone pypi wsgiref, but it's
> included in python for 2.5+, I expect that recipe is a remnant of pre-2.5
> python builds.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>

--089e01536cfc6184cc04f4fd4561
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><br></div>(I replied to Chris personal emai=
l by mistake. Our conversation is pasted below.)<br><br></div>I tried to in=
vestigate how the Python installer works, and there are still many parts I =
am not sure about.<br>

</div><div>But as far as I understand the manifest file (python-2.7-manifes=
t.inc) *is* responsible for telling bitbake which Python modules to install=
. It contains a bunch of FILES_${PN}-&lt;package&gt; definitions like this:=
<br>

<br>FILES_${PN}-numbers=3D&quot;${libdir}/python2.7/decimal.* ${libdir}/pyt=
hon2.7/numbers.* &quot;<br><br></div><div>If I add &quot;${libdir}/python2.=
7/wsgiref&quot; to one of these and rebuild the image the module gets insta=
lled on the image.&nbsp; This solves my problem, but I wonder why it is not=
 included by default?<br>

</div><div><div><br></div><div>Anyone who can shed som light on this?<br><b=
r></div><div>Regards,<br></div><div>Jonatan Magnusson<br><br></div><div><di=
v><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-03-19=
 17:12 GMT+01:00 Chris Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clars=
on@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</span>:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote"><div>On Wed, Mar 19, 2014=
 at 9:09 AM, Jonatan Magnusson <span dir=3D"ltr">&lt;<a href=3D"mailto:jona=
tan.magnusson@gmail.com" target=3D"_blank">jonatan.magnusson@gmail.com</a>&=
gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><br>
As far as I can see the manifest file is generated from &quot;scripts/contr=
ib/python/<a href=3D"http://generate-manifest-2.7.py" target=3D"_blank">gen=
erate-manifest-2.7.py</a>&rdquo; and &rdquo;wsgiref&rdquo; is not mentioned=
 in that file either.<br>




<br>
There is nothing really to build in wsgiref. It&rsquo;s just a directory of=
 .py files that should be copied to the image. And those files are also pre=
sent in<br>
&quot;build/tmp-eglibc/work/i586-oe-linux/python/2.7.3-r0.3/image/usr/lib/p=
ython2.7&rdquo;.<br></blockquote><div><br></div></div><div>If the wsgiref m=
odules got installed by the python buildsystem in do_install, but the manif=
est didn&#39;t include it,l then we&#39;d get warnings about unpackaged fil=
es. As we do not, it&#39;s not being installed for some reason, which leads=
 me to believe that the upstream python buildsystem isn&#39;t installing it=
, as it&#39;s not enabled, but I&#39;m not an expert on the python buildsys=
tem. That&#39;s where I&#39;d suggest looking. Check the python recipe&#39;=
s do_install, and then examine the python buildsystem to see how to verify =
that wsgiref is enabled for inclusion.<br>



&nbsp;<br></div><div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
Also, the manifest generation script above links to this page:<br>
<br>
<a href=3D"http://www.vanille-media.de/site/index.php/projects/python-for-a=
rm-linux/" target=3D"_blank">http://www.vanille-media.de/site/index.php/pro=
jects/python-for-arm-linux/</a><br>
<br>
&hellip; which links to &hellip;<br>
<br>
<a href=3D"http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/=
python" target=3D"_blank">http://cgit.openembedded.org/cgit.cgi/openembedde=
d/tree/recipes/python</a><br>
<br>
&hellip; which has a &quot;<a href=3D"http://python-wsgiref_0.1.2.bb" targe=
t=3D"_blank">python-wsgiref_0.1.2.bb</a>&rdquo; file that is not included i=
n Yocto it seems. I&rsquo;m just getting started with Yocto, so I may get s=
omething wrong, but it<br>




seems that perhaps some more python .bb-files should be transferred to Yoct=
o?</blockquote><div>&nbsp;</div></div></div><br></div><div class=3D"gmail_e=
xtra">It seems like that recipe is for a standalone pypi wsgiref, but it&#3=
9;s included in python for 2.5+, I expect that recipe is a remnant of pre-2=
.5 python builds.<br>



</div><div><div class=3D"gmail_extra">-- <br>Christopher Larson<br>clarson =
at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Mainta=
iner - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div></div>
</blockquote></div><br></div></div></div></div></div></div>

--089e01536cfc6184cc04f4fd4561--
