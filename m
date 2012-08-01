Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F14AE006EA
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 06:40:46 -0700 (PDT)
Received: by qadz32 with SMTP id z32so426735qad.14
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 06:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BLuoPLf/a+57SEAzV6CLe1ve1qNIvGWMuQQZvegm1gY=;
	b=idlygAzcqpqcgZ62JqBEcMLY1j90E/OUujNQ1sYe+y6vkjP4CnULOp0VHs/LuX6hDg
	03RVbKJQEeYE3qw8hwzvDaxANbRmXV9KCPtIrtLCqGNSPNYNoqn+GOxaWhh7qLdj84N2
	kfBJuOV9GnmGiLSGKCB95JHMflTafcWUZfFtKH83V9UTwoYxF20FUbjYabw61oijP4rH
	oP/1iFw+eWtDtomtG+dg2AEq1U2bdJ5gSxeWNk641kejsc+kWur939DRdhJ0+aJbkIbl
	KjqX58n9QrGYb7FXWh9z7Ce4AlCJzmRBRcci3q9YujLDgjoZE2AS7Fi/xIXa6mAdpRKK
	0KOg==
MIME-Version: 1.0
Received: by 10.224.59.199 with SMTP id m7mr18854462qah.13.1343828446130; Wed,
	01 Aug 2012 06:40:46 -0700 (PDT)
Received: by 10.49.75.73 with HTTP; Wed, 1 Aug 2012 06:40:46 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46ABCE36@ORSMSX101.amr.corp.intel.com>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C46ABCE36@ORSMSX101.amr.corp.intel.com>
Date: Wed, 1 Aug 2012 15:40:46 +0200
Message-ID: <CAEe+mUY9UMf4F6E+DxbLGrXuYFNwv6U14MdpC0UOdre6=5LZWg@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC 0/3] Cheat sheet for hello world project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Aug 2012 13:40:47 -0000
Content-Type: multipart/alternative; boundary=20cf3074d5162bb14f04c63471a3

--20cf3074d5162bb14f04c63471a3
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,
Thank you for the feedack and the comments!
1. I did the cheat sheet for the "Hello World C++ Autotools Project". I did
not consider the "Hello World ANSI C Autotools Project". Now I will have a
look how to improve this - write an additional cheat sheet for the second
project or adapt my cheat sheet to be genereic enough for both projects.
2. By now the patches apply and work both for "master" and for
"master-indigo". I will follow
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2383 and adapt the cheat
sheet's content when the bug is resloved.

Cheers,
Atanas

On Tue, Jul 31, 2012 at 7:08 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> Hi Atanas,
>
> This patch set looks nice, couple comments:
>
> 1. Is it just meant for C++ project since it's applicable to C project as
> well
> 2. I'd think this should be targeted for the upcoming 1.3 release that's
> targeted for Oct.. For 1.3 release we are based on the latest Juno release
> and also, there's a new feature added for SDK which makes it rellocatable
> which is under patch review atm.  I'd suggest you  follow bug 2383 once
> it's marked resolved, which means the patch is merged into master.  Then
> pull down the latest master and the latest Eclipse plug-in to capture the
> latest behavior and update the cheatsheet contents accordingly.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Atanas Gegov
> Sent: Tuesday, July 24, 2012 8:54 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [RFC 0/3] Cheat sheet for hello world project
>
> From: Atanas Gegov <atanas.gegov@bmw-carit.de>
>
> Hi,
>
> currently the adt manual contains a description of how to create a new
> project (chapter 4.2). Also some videos are explaining how to achieve this.
> Eclipse provides a nice way of interactive tutorials with the cheat sheets
> and I thought it would be nice to have this kind of user help. So I have
> created a cheat sheet for the 'Hello World C++ Autotools Project' project
> delivered with the yocto ide. It guides the user through the process of
> creating and building the hello world project. Some operations such as
> changing to the C/C++ perspective can even be automated helping the user to
> get started with the project.
>
> Cheers, Atanas
>
> Atanas Gegov (3):
>   plugins/sdk.ide.doc.user: Added plugin for ide specific user help
>   feature/sdk: Added user doc plugin
>   plugins/sdk.ide.doc.user: Added cheat sheet for hello world project
>
>  features/org.yocto.sdk/feature.xml                 |    8 +
>  plugins/org.yocto.sdk.ide.doc.user/.classpath      |    6 +
>  plugins/org.yocto.sdk.ide.doc.user/.project        |   28 +++
>  .../.settings/org.eclipse.jdt.core.prefs           |    8 +
>  .../META-INF/MANIFEST.MF                           |    8 +
>  .../OSGI-INF/l10n/bundle.properties                |    7 +
>  .../org.yocto.sdk.ide.doc.user/build.properties    |    6 +
>  .../cheatsheets/createNewHelloWorldProject.xml     |  187
> ++++++++++++++++++++
>  plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   13 ++
>  9 files changed, 271 insertions(+), 0 deletions(-)  create mode 100644
> plugins/org.yocto.sdk.ide.doc.user/.classpath
>  create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.project
>  create mode 100644
> plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
>  create mode 100644 plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
>  create mode 100644
> plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
>  create mode 100644 plugins/org.yocto.sdk.ide.doc.user/build.properties
>  create mode 100644
> plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
>  create mode 100644 plugins/org.yocto.sdk.ide.doc.user/plugin.xml
>
> --
> 1.7.5.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf3074d5162bb14f04c63471a3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi Jessica,<br></div><div>Thank you for the feedack and the comments!<=
/div><div>1. I did the cheat sheet for the &quot;Hello World C++ Autotools =
Project&quot;. I did not consider the &quot;Hello World=A0ANSI C=A0Autotool=
s Project&quot;. Now I will have a look how to improve this - write an addi=
tional cheat sheet for the second project or adapt my cheat sheet to be gen=
ereic enough for both projects.=A0</div>
<div>2. By now the patches apply and work both for &quot;master&quot; and f=
or &quot;master-indigo&quot;. I will follow <a href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D2383">https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D2383</a>=A0and adapt the cheat sheet&#39;s content when the =
bug is resloved.<br>
<br>Cheers,<br>Atanas<br><br></div><div class=3D"gmail_quote">On Tue, Jul 3=
1, 2012 at 7:08 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:=
jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;<=
/span> wrote:<br>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid" class=
=3D"gmail_quote">Hi Atanas,<br>
<br>
This patch set looks nice, couple comments:<br>
<br>
1. Is it just meant for C++ project since it&#39;s applicable to C project =
as well<br>
2. I&#39;d think this should be targeted for the upcoming 1.3 release that&=
#39;s targeted for Oct.. For 1.3 release we are based on the latest Juno re=
lease and also, there&#39;s a new feature added for SDK which makes it rell=
ocatable which is under patch review atm. =A0I&#39;d suggest you =A0follow =
bug 2383 once it&#39;s marked resolved, which means the patch is merged int=
o master. =A0Then pull down the latest master and the latest Eclipse plug-i=
n to capture the latest behavior and update the cheatsheet contents accordi=
ngly.<br>

<br>
Thanks,<br>
Jessica<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Tuesday, July 24, 2012 8:54 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [RFC 0/3] Cheat sheet for hello world project<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de">atanas.=
gegov@bmw-carit.de</a>&gt;<br>
<br>
Hi,<br>
<br>
currently the adt manual contains a description of how to create a new proj=
ect (chapter 4.2). Also some videos are explaining how to achieve this. Ecl=
ipse provides a nice way of interactive tutorials with the cheat sheets and=
 I thought it would be nice to have this kind of user help. So I have creat=
ed a cheat sheet for the &#39;Hello World C++ Autotools Project&#39; projec=
t delivered with the yocto ide. It guides the user through the process of c=
reating and building the hello world project. Some operations such as chang=
ing to the C/C++ perspective can even be automated helping the user to get =
started with the project.<br>

<br>
Cheers, Atanas<br>
<br>
Atanas Gegov (3):<br>
=A0 plugins/sdk.ide.doc.user: Added plugin for ide specific user help<br>
=A0 feature/sdk: Added user doc plugin<br>
=A0 plugins/sdk.ide.doc.user: Added cheat sheet for hello world project<br>
<br>
=A0features/org.yocto.sdk/feature.xml =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A08 +<br>
=A0plugins/org.yocto.sdk.ide.doc.user/.classpath =A0 =A0 =A0| =A0 =A06 +<br=
>
=A0plugins/org.yocto.sdk.ide.doc.user/.project =A0 =A0 =A0 =A0| =A0 28 +++<=
br>
=A0.../.settings/org.eclipse.jdt.core.prefs =A0 =A0 =A0 =A0 =A0 | =A0 =A08 =
+<br>
=A0.../META-INF/MANIFEST.MF =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 | =A0 =A08 +<br>
=A0.../OSGI-INF/l10n/bundle.properties =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A07 +<br>
=A0.../org.yocto.sdk.ide.doc.user/build.properties =A0 =A0| =A0 =A06 +<br>
=A0.../cheatsheets/createNewHelloWorldProject.xml =A0 =A0 | =A0187 ++++++++=
++++++++++++<br>
=A0plugins/org.yocto.sdk.ide.doc.user/plugin.xml =A0 =A0 =A0| =A0 13 ++<br>
=A09 files changed, 271 insertions(+), 0 deletions(-) =A0create mode 100644=
 plugins/org.yocto.sdk.ide.doc.user/.classpath<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.project<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.settings/org.ecli=
pse.jdt.core.prefs<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.=
MF<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bund=
le.properties<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/build.properties<b=
r>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/cheatsheets/create=
NewHelloWorldProject.xml<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide.doc.user/plugin.xml<br>
<br>
--<br>
1.7.5.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br>

--20cf3074d5162bb14f04c63471a3--
