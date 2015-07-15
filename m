Return-Path: <dkimble@alticast.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7C6CE0095C; Wed, 15 Jul 2015 14:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from CAS.ALTICAST.COM (cas.alticast.com [210.223.111.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C78FBE0086E
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 14:53:27 -0700 (PDT)
Received: from MDBA.ALTICAST.COM (10.20.1.13) by MDBA.ALTICAST.COM
	(10.20.1.13) with Microsoft SMTP Server (TLS) id 15.0.847.32;
	Thu, 16 Jul 2015 06:52:40 +0900
Received: from MDBA.ALTICAST.COM ([::1]) by MDBA.ALTICAST.COM
	([fe80::a120:603e:ce7f:b63a%22]) with mapi id 15.00.0847.030;
	Thu, 16 Jul 2015 06:52:40 +0900
From: Dave Kimble <dkimble@alticast.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] using gdb with externalsrc
Thread-Index: AQHQvow+Np9lhVRZQU2DpV3k5r/M/Z3ct0rS//+jYACAAJqvrQ==
Date: Wed, 15 Jul 2015 21:52:40 +0000
Message-ID: <13cb666befe542429cf1351610232147@MDBA.ALTICAST.COM>
References: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
	<18f7ce035aef414a9f831b93f7891401@MDBA.ALTICAST.COM>,
	<CAMKF1sonpFNZJo4W6hr9tZgwYFLK=FQTYRm-nqonzWgqYMJPyg@mail.gmail.com>
In-Reply-To: <CAMKF1sonpFNZJo4W6hr9tZgwYFLK=FQTYRm-nqonzWgqYMJPyg@mail.gmail.com>
Accept-Language: en-US, ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [107.1.177.180]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Jul 2015 02:42:32 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using gdb with externalsrc
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
X-List-Received-Date: Wed, 15 Jul 2015 21:53:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_13cb666befe542429cf1351610232147MDBAALTICASTCOM_"

--_000_13cb666befe542429cf1351610232147MDBAALTICASTCOM_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, I'm able to debug the externalsrc component. I can see variables, set =
breakpoints, step/next through the code etc. (so the symbols are valid). An=
d local changes to the externalsrc component are reflected when I debug.

But I can't list the externalsrc component source code from within gdb (or =
find it anywhere in the image). The source for all of the other components =
is in the image (and I can list it in gdb). When I try to list the code for=
 the externalsrc component, gdb prints this error message:
"[path on my build? machine]/sourceFile.c: No such file or directory."

If I don't use externalsrc at all, I can debug all of the components and li=
st source code for all of them from within gdb.

So, I can't solve how to get the externalsrc source code into the image. I =
don't mind if I have to use "set substitute-path" from within gdb if extern=
alsrc source files are put in a different place (although, it'd be ideal if=
 they were put in the same place).

Thanks


________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Wednesday, July 15, 2015 1:49 PM
To: Dave Kimble
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] using gdb with externalsrc

On Wed, Jul 15, 2015 at 9:36 AM, Dave Kimble <dkimble@alticast.com> wrote:
> We've got a component of an existing Yocto project under active developme=
nt
> that we'd like to debug with gdb.
>
> We've added these features to get gdb and the debug symbol packages into =
the
> image:
>
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug"
>
> IMAGE_FEATURES =3D "ssh-server-openssh dbg-pkgs"
>
>
> We've added these variables to build the component under active developme=
nt
> from the local code:
> INHERIT +=3D "externalsrc"
> EXTERNALSRC_pn-[component] =3D "[local source code path]/[component]"
>
> All seems well, as the build succeeds and the component in the image
> reflects local code changes. However, the component source code never mak=
es
> it into the image, so it can't be referenced in gdb.
>
> Is there a secret to using dbg-pkgs and EXTERNALSRC together?

Can you check if -dbg package for extrnalsrc component is installed ?
secondly, does the debugging work if you dont isue externalsrc for
this particular component.

--_000_13cb666befe542429cf1351610232147MDBAALTICASTCOM_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(171, 171, 1=
71) solid;font-family:'Segoe UI WPC', 'Segoe UI', Tahoma, 'Microsoft Sans S=
erif', Verdana, sans-serif;font-size:11pt;color:rgb(51, 51, 51);} .ms-cui-m=
enusection-title {display:none;} .ms-cui-ctl {vertical-align:text-top;text-=
decoration:none;color:rgb(51, 51, 51);} .ms-cui-ctl-on {background-color:rg=
b(223, 237, 250);opacity: 0.8;} .ms-cui-img-cont-float {display:inline-bloc=
k;margin-top:2px} .ms-cui-smenu-inner {padding-top:0px;} .ms-owa-paste-opti=
on-icon {margin: 2px 4px 0px 4px;vertical-align:sub;padding-bottom: 2px;dis=
play:inline-block;} .ms-rtePasteFlyout-option:hover {background-color:rgb(2=
23, 237, 250) !important;opacity:1 !important;} .ms-rtePasteFlyout-option {=
padding:8px 4px 8px 4px;outline:none;} .ms-cui-menusection {float:left; wid=
th:85px;height:24px;overflow:hidden}--></style>
</head>
<body>
<div style=3D"font-size:12pt;color:#000000;background-color:#FFFFFF;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif;">
Yes, I'm able to debug the externalsrc component. I can see variables, set =
breakpoints, step/next through the code etc. (so the symbols are valid). An=
d local changes to the externalsrc component are reflected when I debug.<br=
>
<br>
But I can't list the externalsrc component&nbsp;source code from within gdb=
 (or find it&nbsp;anywhere in the image). The source for all of the other c=
omponents is in the image (and I can list it in gdb). When I try to list th=
e code for the externalsrc component, gdb
 prints this error message:<br>
&quot;[path on my <strong style=3D"text-decoration: underline;"><em>build</=
em></strong><span style=3D"text-decoration: underline;"></span>&#8203; mach=
ine]/sourceFile.c: No such file or directory.&quot;
<div><br>
If I don't use externalsrc at all, I can debug all of the components and li=
st source code for all of them&nbsp;from within gdb.<br>
<br>
So,&nbsp;I can't solve&nbsp;how to get the externalsrc&nbsp;source code int=
o the image. I don't mind if I have to use &quot;set substitute-path&quot; =
from within gdb&nbsp;if externalsrc source files are put in a different pla=
ce (although, it'd be ideal if they were put in the same place).<br>
<br>
Thanks<br>
<br>
<br>
________________________________________<br>
From: Khem Raj &lt;raj.khem@gmail.com&gt;<br>
Sent: Wednesday, July 15, 2015 1:49 PM<br>
To: Dave Kimble<br>
Cc: yocto@yoctoproject.org<br>
Subject: Re: [yocto] using gdb with externalsrc<br>
<br>
On Wed, Jul 15, 2015 at 9:36 AM, Dave Kimble &lt;dkimble@alticast.com&gt; w=
rote:<br>
&gt; We've got a component of an existing Yocto project under active develo=
pment<br>
&gt; that we'd like to debug with gdb.<br>
&gt;<br>
&gt; We&#8217;ve added these features to get gdb and the debug symbol packa=
ges into the<br>
&gt; image:<br>
&gt;<br>
&gt; EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-debug&quot;<br>
&gt;<br>
&gt; IMAGE_FEATURES =3D &quot;ssh-server-openssh dbg-pkgs&quot;<br>
&gt;<br>
&gt;<br>
&gt; We&#8217;ve added these variables to build the component under active =
development<br>
&gt; from the local code:<br>
&gt; INHERIT &#43;=3D &quot;externalsrc&quot;<br>
&gt; EXTERNALSRC_pn-[component] =3D &#8220;[local source code path]/[compon=
ent]&#8221;<br>
&gt;<br>
&gt; All seems well, as the build succeeds and the component in the image<b=
r>
&gt; reflects local code changes. However, the component source code never =
makes<br>
&gt; it into the image, so it can&#8217;t be referenced in gdb.<br>
&gt;<br>
&gt; Is there a secret to using dbg-pkgs and EXTERNALSRC together?<br>
<br>
Can you check if -dbg package for extrnalsrc component is installed ?<br>
secondly, does the debugging work if you dont isue externalsrc for<br>
this particular component.<br>
</div>
</div>
</body>
</html>

--_000_13cb666befe542429cf1351610232147MDBAALTICASTCOM_--
