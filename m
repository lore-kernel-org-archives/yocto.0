Return-Path: <PatrickTurley@gamestop.com>
Received: from GSIRONPORTB.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93373E0049D
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 17:47:29 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.80,538,1344229200"; d="scan'208,217";a="43211386"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by GSIRONPORTB.gamestop.com with ESMTP; 04 Oct 2012 19:47:29 -0500
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.67]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0283.003;
	Thu, 4 Oct 2012 19:47:28 -0500
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Thread-Topic: [yocto] The BitBake equivalent of "Hello, World!"
Thread-Index: AQHNobawsFl2O8i4ZUWCT5ZGDLdssJeoMR8AgABV3gCAASn/AIAAJAYAgABhXwA=
Date: Fri, 5 Oct 2012 00:47:28 +0000
Message-ID: <1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
In-Reply-To: <CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 05 Oct 2012 00:47:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1A527469CEF5434E8604540899C8BA04gamestopcom_"

--_000_1A527469CEF5434E8604540899C8BA04gamestopcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

*Very* helpful stuff.

I have re-created the tree you described, and everything seems to work. In =
particular, bitbake-layers seems happy. I tried executing it against BitBak=
e 1.12.0 and it succeeded.  FYI, it failed against the current BitBake mast=
er, which is 1.16.0.

I have some additional questions below.  You've already been so helpful tha=
t I'm reluctant to impose =85 but I'm going to try anyway :)

On Oct 4, 2012, at 1:58 PM, Rudolf Streif <rudolf.streif@linux.com<mailto:r=
udolf.streif@linux.com>> wrote:


My Bitbake "Hello World" is a little more than a basic "Hello World".


Indeed it is.  One of my first tasks will be to *remove* as much as possibl=
e from this until the only thing it does is print out "Hello, World!"  I'll=
 be happy to share my results if anyone is interested.


Bitbake will require a base.bbclass file somewhere in a classes subdirector=
y of BBPATH. I used the base.bbclass file from the Bitbake download. As a m=
inimum it should contain a do_build task. That's the target that Bitbake in=
vokes by default if you do not use the -c option explicitly.

    =85

addtask build
do_build[dirs] =3D "${TOPDIR}"
do_build[nostamp] =3D "1"
python base_do_build () {
        bb.note("The included, default BB base.bbclass does not define a us=
eful default task.")
        bb.note("Try running the 'listtasks' task against a .bb to see what=
 tasks are defined.")
}


If I understand correctly, the name of the task is "build", and the name of=
 the Python function that implements it is "do_build()".  So, it appears Bi=
tBake prefixes all task names with "do_" to derive the name of the function=
 that implements the task.  Have I got that right?

The "build" task is *required*, and it's the *only* one that's required?

I've been looking around in the BitBake source code a lot, so I'm *somewhat=
* familiar with it.  I tried to find the "hard" reference to "do_build" you=
 described,  but I couldn't.  Can you give me a hint?


Finally a recipe to build the Nano editor:

DESCRIPTION =3D "Recipe to build the 'nano' editor"

PN =3D "nano"
PV =3D "2.2.6"

SRC_URI =3D "http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz"

python do_fetch() {
   bb.note("Downloading source tarball from ${SRC_URI} ...")

   src_uri =3D (bb.data.getVar('SRC_URI', d, True) or "").split()
   if len(src_uri) =3D=3D 0:
      bb.fatal("Empty URI")

   try:
      bb.fetch.init(src_uri, d)
      bb.fetch.go(d)
   except FetchError:
      bb.fatal("Could not fetch source tarball.")

   bb.note("Download successful.")
}

addtask fetch before do_build


I see here that you're creating the recipe-specific "do_fetch()" function, =
which seems intended to "override" the default "do_fetch()" provided by the=
 base class.  This prompts some questions:

1) Must a "task function" be a Python function?  Or will a bash function do=
?

2) Is it absolutely necessary to follow a recipe-specific task function wit=
h an "addtask"?  Based on experience from "real" object-oriented languages,=
 a naive observer (like me) would guess the simple presence of "do_fetch()"=
 in the recipe is all that's necessary.  Or is it the "addtask" that actual=
ly "slots" the new function in?


--_000_1A527469CEF5434E8604540899C8BA04gamestopcom_
Content-Type: text/html; charset="Windows-1252"
Content-ID: <A27B38C5DCA1EA428316F4ABA1228104@gamestop.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<div>*Very* helpful stuff.</div>
<div><br>
</div>
<div>I have re-created the tree you described, and everything seems to work=
. In particular, bitbake-layers seems happy.&nbsp;I tried executing it agai=
nst BitBake 1.12.0 and it succeeded. &nbsp;FYI, it failed against the curre=
nt BitBake master, which is 1.16.0.</div>
<div><br>
</div>
<div>I have some additional questions below. &nbsp;You've already been so h=
elpful that I'm reluctant to impose =85 but I'm going to try anyway :)</div=
>
<div><br>
</div>
<div>
<div>On Oct 4, 2012, at 1:58 PM, Rudolf Streif &lt;<a href=3D"mailto:rudolf=
.streif@linux.com">rudolf.streif@linux.com</a>&gt; wrote:</div>
<div><br>
</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<div>My Bitbake &quot;Hello World&quot; is a little more than a basic &quot=
;Hello World&quot;.</div>
</blockquote>
<div><br>
</div>
<div><br>
</div>
<div>Indeed it is. &nbsp;One of my first tasks will be to *remove* as much =
as possible from this until the only thing it does is print out &quot;Hello=
, World!&quot; &nbsp;I'll be happy to share my results if anyone is interes=
ted.</div>
<div><br>
</div>
<div><br>
</div>
<blockquote type=3D"cite">
<div>
<div>Bitbake will require a base.bbclass file somewhere in a classes subdir=
ectory of BBPATH. I used the base.bbclass file from the Bitbake download. A=
s a minimum it should contain a do_build task. That's the target that Bitba=
ke invokes by default if you do
 not use the -c option explicitly.</div>
</div>
</blockquote>
<div><br>
</div>
<div>&nbsp; &nbsp; =85</div>
<div><br>
<blockquote type=3D"cite">
<div>addtask build</div>
<div>do_build[dirs] =3D &quot;${TOPDIR}&quot;</div>
<div>do_build[nostamp] =3D &quot;1&quot;</div>
<div>python base_do_build () {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; bb.note(&quot;The included, default BB bas=
e.bbclass does not define a useful default task.&quot;)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; bb.note(&quot;Try running the 'listtasks' =
task against a .bb to see what tasks are defined.&quot;)</div>
<div>}</div>
</blockquote>
<div>
<div><br>
</div>
</div>
<div><br>
</div>
</div>
<div>If I understand correctly, the name of the task is &quot;build&quot;, =
and the name of the Python function that implements it is &quot;do_build()&=
quot;. &nbsp;So, it&nbsp;appears BitBake prefixes all task names with &quot=
;do_&quot; to derive the name of the function that implements the task.
 &nbsp;Have I got that right?</div>
<div>
<div><br>
</div>
</div>
<div>The &quot;build&quot; task is *required*, and it's the *only*&nbsp;one=
 that's required?</div>
<div><br>
</div>
<div>I've been looking around in the BitBake source code a lot, so I'm *som=
ewhat* familiar with it. &nbsp;I tried to find the &quot;hard&quot; referen=
ce to &quot;do_build&quot; you described, &nbsp;but I couldn't. &nbsp;Can y=
ou give me a hint?</div>
<div><br>
</div>
<div><br>
</div>
<blockquote type=3D"cite">
<div>
<div>Finally a recipe to build the Nano editor:</div>
<div><br>
</div>
<div>
<div>DESCRIPTION =3D &quot;Recipe to build the 'nano' editor&quot;</div>
<div><br>
</div>
<div>PN =3D &quot;nano&quot;</div>
<div>PV =3D &quot;2.2.6&quot;</div>
<div><br>
</div>
<div>SRC_URI =3D &quot;<a href=3D"http://www.nano-editor.org/dist/v2.2/nano=
-2.2.6.tar.gz">http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz</a>&q=
uot;</div>
<div><br>
</div>
<div>python do_fetch() {</div>
<div>&nbsp; &nbsp;bb.note(&quot;Downloading source tarball from ${SRC_URI} =
...&quot;)</div>
<div><br>
</div>
<div>&nbsp; &nbsp;src_uri =3D (bb.data.getVar('SRC_URI', d, True) or &quot;=
&quot;).split()</div>
<div>&nbsp; &nbsp;if len(src_uri) =3D=3D 0:</div>
<div>&nbsp; &nbsp; &nbsp; bb.fatal(&quot;Empty URI&quot;)</div>
<div><br>
</div>
<div>&nbsp; &nbsp;try:</div>
<div>&nbsp; &nbsp; &nbsp; bb.fetch.init(src_uri, d)</div>
<div>&nbsp; &nbsp; &nbsp; bb.fetch.go(d)</div>
<div>&nbsp; &nbsp;except FetchError:</div>
<div>&nbsp; &nbsp; &nbsp; bb.fatal(&quot;Could not fetch source tarball.&qu=
ot;)</div>
<div><br>
</div>
<div>&nbsp; &nbsp;bb.note(&quot;Download successful.&quot;)</div>
<div>}</div>
<div><br>
</div>
<div>addtask fetch before do_build</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div><br>
</div>
<div>I see here that you're creating the recipe-specific &quot;do_fetch()&q=
uot; function, which seems intended to &quot;override&quot; the default &qu=
ot;do_fetch()&quot; provided by the base class. &nbsp;This prompts some que=
stions:</div>
<div><br>
</div>
<div>1)&nbsp;Must a &quot;task function&quot; be a Python function? &nbsp;O=
r will a bash function do?</div>
<div><br>
</div>
<div>2)&nbsp;Is it absolutely necessary to follow a recipe-specific task fu=
nction with an &quot;addtask&quot;? &nbsp;Based on experience from &quot;re=
al&quot; object-oriented languages, a naive observer (like me) would guess =
the simple presence of &quot;do_fetch()&quot; in the recipe is all that's
 necessary. &nbsp;Or is it the &quot;addtask&quot; that actually &quot;slot=
s&quot; the new function in?</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_1A527469CEF5434E8604540899C8BA04gamestopcom_--
