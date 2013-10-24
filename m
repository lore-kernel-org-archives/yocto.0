Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE4DE0175B
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 02:09:50 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id u16so3446317iet.32
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 02:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZQQTDgRkfRUJBWI6h99L7ZEdTbtTCf2+kkkthOERkUE=;
	b=FkTda3o8YvPnQuZG6oPpT/EA/51oyXhGHrgqPTsDd9h3Pe+9noJI8crWXFxGJeP5UC
	rCr07zqxLkNVZTK4z68iUWUVzsKGTYXKNCSpf+/pmwZ2z1ad4y+SV/gv+r3uueoDD5nk
	UhbXinHiPId9AwrJq9I2S7no5gnAoLL0NqiMtqhGktiAHjv29jldz4d8/93wB3f5WYyU
	YPOlv103Svbyq4Yg6SqK0CQnipAui02gDdQnhPjcyD+0963aoD/vf9sG2bxS+SJ/+Sep
	LeTXkIfyTPZbXB5ba+s0tVq1obpKVPmoBCJRQLeFJ367SZVDL9pL9n2law96CLD4gxi4
	0ygg==
MIME-Version: 1.0
X-Received: by 10.43.93.5 with SMTP id bs5mr941068icc.32.1382605790192; Thu,
	24 Oct 2013 02:09:50 -0700 (PDT)
Received: by 10.50.231.161 with HTTP; Thu, 24 Oct 2013 02:09:50 -0700 (PDT)
In-Reply-To: <1700191.EdxHocCYrr@helios>
References: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
	<1700191.EdxHocCYrr@helios>
Date: Thu, 24 Oct 2013 10:09:50 +0100
Message-ID: <CAM1ZcoW7b8t-TFtUyZb=-PWDJNTPxbJuKA4CKBqc1izh+P7GUw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetch from perforce
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
X-List-Received-Date: Thu, 24 Oct 2013 09:09:51 -0000
Content-Type: multipart/alternative; boundary=bcaec519691dfd32c604e978fec3

--bcaec519691dfd32c604e978fec3
Content-Type: text/plain; charset=ISO-8859-1

Thanks for your answer Paul,

it took me longer than I thought because I couldn't find any documentation
or comments in the code, but I finally got this working. The sintax to call
it was, (there are actually 2 options, I took this one because I don't need
user/passwd):


P4PORT = "yourhost:yourportnumber"
FETCHCOMMAND_p4 = "p4"

SRC_URI = " \
p4://depot/myproject...;module=destinationfolderInWORKDIR/destinationsubfolder;changeslist=9952
\
"

I used the perforce.py in the latest yocto distribution, 1.5-dora. The
subfolders where being renamed wrongly, deleting the first 3 characters. I
solved it using this patch:

diff --git poky/bitbake/lib/bb/fetch2/perforce.py_dora
poky/bitbake/lib/bb/fetch2/perforce.py
index fc4074d..d2ecccc 100644
--- poky/bitbake/lib/bb/fetch2/perforce.py_dora
+++ poky/bitbake/lib/bb/fetch2/perforce.py
@@ -112,7 +112,7 @@ class Perforce(FetchMethod):
         base = path
         which = path.find('/...')
         if which != -1:
-            base = path[:which]
+            base = path[:which-1]

         base = self._strip_leading_slashes(base)

I hope this helps to anyone trying to use this.

Cheers,
Katu



2013/10/15 Paul Eggleton <paul.eggleton@linux.intel.com>

> Hi Katu,
>
> On Tuesday 15 October 2013 20:52:15 Katu Txakur wrote:
> > can someone please give me an example of fetching the code from perforce?
> > I want to map files from perforce and put them in a different tree
> > structure in the workspace before compiling it. I also need to set user
> and
> > password.
> > I failed to find an example online and I don't understand the perforce
> > script enough to guess the way to call it.
>
> I have zero experience with perforce or fetching from it with a recipe, but
> looking at the fetcher code (bitbake/lib/bb/fetch2/perforce.py) it looks
> like
> the SRC_URI syntax is:
>
> p4://user:password:host:port@path
>
> Unfortunately it looks like you also need to set FETCHCOMMAND_p4 in your
> configuration as well since there is no default for this. Something like
> "/usr/bin/env p4" might work.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--bcaec519691dfd32c604e978fec3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Thanks for your answer Paul,<br><=
br></div>it took me longer than I thought because I couldn&#39;t find any d=
ocumentation or comments in the code, but I finally got this working. The s=
intax to call it was, (there are actually 2 options, I took this one becaus=
e I don&#39;t need user/passwd):<br>
<br><br>P4PORT =3D &quot;yourhost:yourportnumber&quot;<br>FETCHCOMMAND_p4 =
=3D &quot;p4&quot;<br><br>SRC_URI =3D &quot; \<br>p4://depot/myproject...;m=
odule=3DdestinationfolderInWORKDIR/destinationsubfolder;changeslist=3D9952 =
\<br>&quot;<br>
<br></div>I used the perforce.py in the latest yocto distribution, 1.5-dora=
. The subfolders where being renamed wrongly, deleting the first 3 characte=
rs. I solved it using this patch:<br><br>diff --git poky/bitbake/lib/bb/fet=
ch2/perforce.py_dora poky/bitbake/lib/bb/fetch2/perforce.py<br>
index fc4074d..d2ecccc 100644<br>--- poky/bitbake/lib/bb/fetch2/perforce.py=
_dora<br>+++ poky/bitbake/lib/bb/fetch2/perforce.py<br>@@ -112,7 +112,7 @@ =
class Perforce(FetchMethod):<br>=A0=A0=A0=A0=A0=A0=A0=A0 base =3D path<br>=
=A0=A0=A0=A0=A0=A0=A0=A0 which =3D path.find(&#39;/...&#39;)<br>
=A0=A0=A0=A0=A0=A0=A0=A0 if which !=3D -1:<br>-=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 base =3D path[:which]<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 base =3D=
 path[:which-1]<br>=A0<br>=A0=A0=A0=A0=A0=A0=A0=A0 base =3D self._strip_lea=
ding_slashes(base)<br><br></div>I hope this helps to anyone trying to use t=
his.<br>
<br></div>Cheers,<br></div>Katu<br><div><div><div><br></div></div></div></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2013/10/15=
 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.=
intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span><b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Katu,<br>
<div><div class=3D"h5"><br>
On Tuesday 15 October 2013 20:52:15 Katu Txakur wrote:<br>
&gt; can someone please give me an example of fetching the code from perfor=
ce?<br>
&gt; I want to map files from perforce and put them in a different tree<br>
&gt; structure in the workspace before compiling it. I also need to set use=
r and<br>
&gt; password.<br>
&gt; I failed to find an example online and I don&#39;t understand the perf=
orce<br>
&gt; script enough to guess the way to call it.<br>
<br>
</div></div>I have zero experience with perforce or fetching from it with a=
 recipe, but<br>
looking at the fetcher code (bitbake/lib/bb/fetch2/perforce.py) it looks li=
ke<br>
the SRC_URI syntax is:<br>
<br>
p4://user:password:host:port@path<br>
<br>
Unfortunately it looks like you also need to set FETCHCOMMAND_p4 in your<br=
>
configuration as well since there is no default for this. Something like<br=
>
&quot;/usr/bin/env p4&quot; might work.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--bcaec519691dfd32c604e978fec3--
