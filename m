Return-Path: <PatrickTurley@gamestop.com>
Received: from GSIRONPORTA.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B1E9E0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 09:50:03 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.80,537,1344229200"; d="scan'208,217";a="68104354"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by GSIRONPORTA.gamestop.com with ESMTP; 04 Oct 2012 11:50:03 -0500
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.67]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0283.003;
	Thu, 4 Oct 2012 11:50:03 -0500
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] The BitBake equivalent of "Hello, World!"
Thread-Index: AQHNobawsFl2O8i4ZUWCT5ZGDLdssJeoMR8AgABV3gCAASn/AA==
Date: Thu, 4 Oct 2012 16:50:02 +0000
Message-ID: <6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
In-Reply-To: <CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Re: The BitBake equivalent of "Hello, World!"
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
X-List-Received-Date: Thu, 04 Oct 2012 16:50:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6796989AD8454726B47B64B82F380444gamestopcom_"

--_000_6796989AD8454726B47B64B82F380444gamestopcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

That is excellent news. I very much look forward to seeing that.


On Oct 3, 2012, at 6:03 PM, Rudolf Streif <rudolf.streif@linux.com<mailto:r=
udolf.streif@linux.com>>
 wrote:

Hi Patrick,

I think I understand what you are looking for. I created this Bitbake Hello=
 World for a training class. It just uses 'raw' Bitbake and a very basic re=
cipe to build the Nano editor (including download from the project site).

You need to have a couple of things in place to make this work. I got to ru=
n but I will get back to it and post it.

:rjs

On Wed, Oct 3, 2012 at 3:56 PM, Patrick Turley <PatrickTurley@gamestop.com<=
mailto:PatrickTurley@gamestop.com>> wrote:
In my previous message, some of the indentation in the representation of
my file tree was wrong (because we're using Outlook, which destroy all
indentation when you paste it into an e-mail message). The errors are
small, but I want to avoid annoying anyone who might think I don't even
have the file tree constructed correctly.

The following is accurate:

>/home/pturley/Workspace/woohoo
>    |
>    +-- build
>    |   |
>    |   +-- classes
>    |   |   |
>    |   |   +-- base.bbclass
>    |   |
>    |   |     +-------------------------------------------
>    |   |     | do_hello() {
>    |   |     |     echo Hello
>    |   |     | }
>    |   |     |
>    |   |     | addtask hello
>    |   |     +-------------------------------------------
>    |   |
>    |   +-- conf
>    |       |
>    |       +-- bblayers.conf
>    |       |
>    |       | +-------------------------------------------
>    |       | | BBLAYERS ?=3D " \
>    |       | |   /home/pturley/Workspace/woohoo/LayerA \
>    |       | |   "
>    |       | +-------------------------------------------
>    |       |
>    |       +-- bitbake.conf
>    |
>    |         +-------------------------------------------
>    |         | CACHE =3D "${TOPDIR}/cache"
>    |         +-------------------------------------------
>    |
>    +-- LayerA
>    |   |
>    |   +-- a.bb<http://a.bb/>
>    |   |
>    |   |     +-------------------------------------------
>    |   |     | PN =3D 'a'
>    |   |     | PV =3D '1'
>    |   |     +-------------------------------------------
>    |   |
>    |   +-- conf
>    |       |
>    |       +-- layer.conf
>    |
>    |         +-------------------------------------------
>    |         | BBPATH .=3D ":${LAYERDIR}"
>    |         | BBFILES +=3D "${LAYERDIR}/*.bb"
>    |         +-------------------------------------------
>    |
>    +-- BitBake ...
>
>    The BitBake directory origin is:
>
>        http://git.openembedded.org/bitbake/
>
>    I have the 1.15.2 tag checked out, which is what
>    Yocto denzil uses.

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_6796989AD8454726B47B64B82F380444gamestopcom_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <FF1639572DC7414BB5057EF06B42F78A@gamestop.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<div>That is excellent news. I very much look forward to seeing that.</div>
<div><br>
</div>
<br>
<div>
<div>On Oct 3, 2012, at 6:03 PM, Rudolf Streif &lt;<a href=3D"mailto:rudolf=
.streif@linux.com">rudolf.streif@linux.com</a>&gt;</div>
<div>&nbsp;wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">Hi Patrick,
<div><br>
</div>
<div>I think I understand what you are looking for. I created this Bitbake =
Hello World for a training class. It just uses 'raw' Bitbake and a very bas=
ic recipe to build the Nano editor (including download from the project sit=
e).</div>
<div><br>
</div>
<div>You need to have a couple of things in place to make this work. I got =
to run but I will get back to it and post it.</div>
<div><br>
</div>
<div>:rjs<br>
<br>
<div class=3D"gmail_quote">On Wed, Oct 3, 2012 at 3:56 PM, Patrick Turley <=
span dir=3D"ltr">
&lt;<a href=3D"mailto:PatrickTurley@gamestop.com" target=3D"_blank">Patrick=
Turley@gamestop.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
In my previous message, some of the indentation in the representation of<br=
>
my file tree was wrong (because we're using Outlook, which destroy all<br>
indentation when you paste it into an e-mail message). The errors are<br>
small, but I want to avoid annoying anyone who might think I don't even<br>
have the file tree constructed correctly.<br>
<br>
The following is accurate:<br>
<div class=3D"HOEnZb">
<div class=3D"h5"><br>
&gt;/home/pturley/Workspace/woohoo<br>
&gt; &nbsp; &nbsp;|<br>
&gt; &nbsp; &nbsp;&#43;-- build<br>
&gt; &nbsp; &nbsp;| &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &#43;-- classes<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &#43;-- base.bbclass<br>
&gt; &nbsp; &nbsp;| &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; &#43;---------------------------=
----------------<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; | do_hello() {<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; | &nbsp; &nbsp; echo Hello<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; | }<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; | addtask hello<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; &#43;---------------------------=
----------------<br>
&gt; &nbsp; &nbsp;| &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &#43;-- conf<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &#43;-- bblayers.conf<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; | &#43;---------------------------=
----------------<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; | | BBLAYERS ?=3D &quot; \<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; | | &nbsp; /home/pturley/Workspace=
/woohoo/LayerA \<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; | | &nbsp; &quot;<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; | &#43;---------------------------=
----------------<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &#43;-- bitbake.conf<br>
&gt; &nbsp; &nbsp;|<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &#43;----------------------=
---------------------<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; | CACHE =3D &quot;${TOPDIR}=
/cache&quot;<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &#43;----------------------=
---------------------<br>
&gt; &nbsp; &nbsp;|<br>
&gt; &nbsp; &nbsp;&#43;-- LayerA<br>
&gt; &nbsp; &nbsp;| &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &#43;-- <a href=3D"http://a.bb/" target=3D"_blan=
k">a.bb</a><br>
&gt; &nbsp; &nbsp;| &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; &#43;---------------------------=
----------------<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; | PN =3D 'a'<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; | PV =3D '1'<br>
&gt; &nbsp; &nbsp;| &nbsp; | &nbsp; &nbsp; &#43;---------------------------=
----------------<br>
&gt; &nbsp; &nbsp;| &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &#43;-- conf<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; |<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &#43;-- layer.conf<br>
&gt; &nbsp; &nbsp;|<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &#43;----------------------=
---------------------<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; | BBPATH .=3D &quot;:${LAYE=
RDIR}&quot;<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; | BBFILES &#43;=3D &quot;${=
LAYERDIR}/*.bb&quot;<br>
&gt; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &#43;----------------------=
---------------------<br>
&gt; &nbsp; &nbsp;|<br>
&gt; &nbsp; &nbsp;&#43;-- BitBake ...<br>
&gt;<br>
&gt; &nbsp; &nbsp;The BitBake directory origin is:<br>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp;<a href=3D"http://git.openembedded.org/bitb=
ake/" target=3D"_blank">http://git.openembedded.org/bitbake/</a><br>
&gt;<br>
&gt; &nbsp; &nbsp;I have the 1.15.2 tag checked out, which is what<br>
&gt; &nbsp; &nbsp;Yocto denzil uses.<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</blockquote>
</div>
<br>
</body>
</html>

--_000_6796989AD8454726B47B64B82F380444gamestopcom_--
