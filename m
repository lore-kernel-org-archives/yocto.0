Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6112E013E8
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 00:03:18 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id m19so8576777wev.8
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 00:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=xWilSSBvwXU8oZMkEHP2m85MnkJBlYT4v5vXcwjqW/Q=;
	b=YkAUpLDuymxAw/uOICwRkzPLMnmpkJeMPcqi7hlycKLEemoXxp3xE/aKxr9HGFJC0y
	g0UgFh/ExeLfU5yQ6FqEPRHK3p4ud1dlRpKhKUobscJE4zFqci+9vR2/rWAGB9fhddPp
	b3b6sq3QCbVPyNmdpRmI+FltJFtznIJxVklCJcCGUA4HWvEps4fN8qYXTwpPTMGRMTTD
	ohGLqEFFK93hsVwO1U/OYgR1WzqzxoYYlPA4Jsj9OsJ9OnUSauIA7JofQwif3mxjA2it
	EhgUHOPmnOzS7s7xYvMm6uFnCWYo//e9CP/LOILCDEuzFG3vUL39cu2LnbWQ2aBYgXjg
	rUMQ==
X-Received: by 10.180.19.200 with SMTP id h8mr5218768wie.17.1372143797354;
	Tue, 25 Jun 2013 00:03:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.83.1 with HTTP; Tue, 25 Jun 2013 00:02:57 -0700 (PDT)
In-Reply-To: <CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
	<CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
	<CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 25 Jun 2013 09:02:57 +0200
Message-ID: <CAP71Wjwk=_B=p1WxT+svbDouZp2bX+aYW=at+Q_AOM7wGo+pFA@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
X-Gm-Message-State: ALoCoQndkfyFvMwsYt6gPJJDI6AOPeGdgEJQYcwcdE88envtG02GmVpC0VESrOQ5JnELdRsmf8cE
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Tue, 25 Jun 2013 07:03:21 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5eb79f53b704dff51fa8

--bcaec53d5eb79f53b704dff51fa8
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 25, 2013 at 7:15 AM, Rudolf Streif
<rstreif@linuxfoundation.org>wrote:

>
>
>> An appendix on Android's "repo" tool might make for an excellent
>> addition; it seems some Yocto projects are showing lots of interest in
>> using it.
>>
>> The idea is to integrate/use it with YP? I know what repo does and that
> it is built on top of git but I have not looked behind the scenes to figure
> out how it does its job and how it can be used with something else like YP
> instead of with the Android repositories and review system.
>

not integrate with yocto directly. but use it to 'manage' the set of trees
that are required when using OE/Yocto. The gumstix guys are using it, see
[1], and we are moving toward it at linaro too, to manage our builds [2]

[1] https://github.com/gumstix/Gumstix-YoctoProject-Repo
[2] http://lists.linaro.org/pipermail/linaro-dev/2013-May/015998.html

then for organization that might need it, repo can be integrated with
gerrit too, but repo 'standalone' can still be used to manage set of trees.

--bcaec53d5eb79f53b704dff51fa8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jun 25, 2013 at 7:15 AM, Rudolf Streif <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfou=
ndation.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im"><div>=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">



An appendix on Android&#39;s &quot;repo&quot; tool might make for an excell=
ent<br>
addition; it seems some Yocto projects are showing lots of interest in<br>
using it.<br>
<div><br></div></blockquote></div><div>The idea is to integrate/use it with=
 YP? I know what repo does and that it is built on top of git but I have no=
t looked behind the scenes to figure out how it does its job and how it can=
 be used with something else like YP instead of with the Android repositori=
es and review system.=A0</div>


<div></div></blockquote></div><br>not integrate with yocto directly. but us=
e it to &#39;manage&#39; the set of trees that are required when using OE/Y=
octo. The gumstix guys are using it, see [1], and we are moving toward it a=
t linaro too, to manage our builds [2]</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">[1]=A0<a hr=
ef=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo">https://github.=
com/gumstix/Gumstix-YoctoProject-Repo</a></div><div class=3D"gmail_extra">[=
2]=A0<a href=3D"http://lists.linaro.org/pipermail/linaro-dev/2013-May/01599=
8.html">http://lists.linaro.org/pipermail/linaro-dev/2013-May/015998.html</=
a></div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style>then =
for organization that might need it, repo can be integrated with gerrit too=
, but repo &#39;standalone&#39; can still be used to manage set of trees.</=
div>

<div class=3D"gmail_extra" style><br></div></div>

--bcaec53d5eb79f53b704dff51fa8--
