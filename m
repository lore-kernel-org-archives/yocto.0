Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2238E00DDC; Wed, 15 May 2019 11:03:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.37 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 13pmail.ess.barracuda.com (13pmail.ess.barracuda.com
	[209.222.82.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30DDCE00D2A
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 11:03:29 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx4.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 15 May 2019 18:03:28 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 15 May 2019 11:03:26 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 15 May 2019 11:03:26 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] problem adding a user
Thread-Index: AdUKtI8UMCSaJnTQT92qAk6aHgoNcgAxtVKA//+VNho=
Date: Wed, 15 May 2019 18:03:26 +0000
Message-ID: <59388987f9de418abb8598790a3d3e7f@sakuraus.com>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>,
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
In-Reply-To: <3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1557943408-893006-18442-35011-1
X-BESS-VER: 2019.1_20190514.2102
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.213339 [from 
	cloudscan25.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: problem adding a user
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
X-List-Received-Date: Wed, 15 May 2019 18:03:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_59388987f9de418abb8598790a3d3e7fsakurauscom_"

--_000_59388987f9de418abb8598790a3d3e7fsakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

Thanks for the reply, and the information on how openssl works.


I'm trying to create a user with the same group name so the code that I'm u=
sing reduces to:

EXTRA_USERS_PARAMS =3D "\
    useradd -p `openssl passwd test` sakura; \
    usermod -a -G sudo ${SAKURA_USER}; \
    "


I also, as you can see, removed the macros to eliminate as much confusion a=
s possible.


I still can't login in using the password 'test'.


I've also tried both the back-quote and the single-quote, no difference.

Regards,


Greg

________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Sent: Wednesday, May 15, 2019 10:07:47 AM
To: Greg Wilson-Lindberg; Yocto list discussion
Subject: Re: [yocto] problem adding a user

Hi Greg,

Well, I suppose I wrote the book you are referring to...


Using

useradd -p PASSWORD USER

takes the password hash for PASSWORD hence the use of openssl in:

useadd -p `openssl passwd PASSWORD` USER

openssl password creates the password hash using the original crypt hash
algorithm if no other options are specified. e.g.

$ openssl passwd hello
6hEsTksgRkeiI

With this the first two characters of the output is the salt and the
rest is the password hash. If you want openssl to create the same result
again:

$ openssl passwd -salt "6h" hello
6hEsTksgRkeiI

You can use newer algorithms like MD5 based BSD password algorithm 1:

$ openssl passwd -1 hello
$1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1

$1 : password algorithm 1
$4Mu8Fcs. : salt
$eIKgPP7RCYrb3lFZjhADA1 : password hash


If you log into the system you have to use the clear password. The
system reads the salt, creates the password hash and compares the results.


:rjs


On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
> I'm trying to use the example in "Embedded Linux Systems with the Yocto P=
roject" to add a user to my Yocto build. In the book the sample code:
>
>     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>
> uses openssl to generate the encrypted password string to pass to useradd=
. I have never been able to get this to work. When I run the openssl
> command on the cmd line I get a different value every time, this seems wr=
ong, How can the password code compare against it if every encode
> produces a different value?
>
> I am getting the user added to the system, the home directory shows up an=
d the user is in the passwd and group files. I just can't login to the
> account.
>
> I've obviously got something confused, any help would be appreciated.
>
> Greg Wilson-Lindberg
>

--
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--_000_59388987f9de418abb8598790a3d3e7fsakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Rudolf,</p>
<p>Thanks for the reply, and the information on how openssl works.</p>
<p><br>
</p>
<p>I'm trying to create a user with the same group name so the code that I'=
m using reduces to:</p>
<p></p>
<div style=3D"color:#000000; background-color:#ffffff; font-style:normal; f=
ont-weight:normal; text-decoration:none">
<pre>EXTRA_USERS_PARAMS =3D &quot;\=0A=
    useradd -p `openssl passwd test` sakura; \=0A=
    usermod -a -G sudo ${SAKURA_USER}; \=0A=
    &quot;=0A=
</pre>
</div>
I also, as you can see, removed the macros to eliminate as much confusion a=
s possible.
<p></p>
<p><br>
</p>
<p>I still can't login in using the&nbsp;password<span style=3D"font-family=
:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Seg=
oe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android =
Emoji&quot;,EmojiSymbols; font-size:16px">&nbsp;'test'</span>.</p>
<p><br>
</p>
<p>I've also tried both the back-quote and the single-quote, no difference.=
</p>
<p>Regards,</p>
<p><br>
</p>
<p>Greg</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rudolf J Streif &lt=
;rudolf.streif@ibeeto.com&gt;<br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Greg,<br>
<br>
Well, I suppose I wrote the book you are referring to...<br>
<br>
<br>
Using<br>
<br>
useradd -p PASSWORD USER<br>
<br>
takes the password hash for PASSWORD hence the use of openssl in:<br>
<br>
useadd -p `openssl passwd PASSWORD` USER<br>
<br>
openssl password creates the password hash using the original crypt hash <b=
r>
algorithm if no other options are specified. e.g.<br>
<br>
$ openssl passwd hello<br>
6hEsTksgRkeiI<br>
<br>
With this the first two characters of the output is the salt and the <br>
rest is the password hash. If you want openssl to create the same result <b=
r>
again:<br>
<br>
$ openssl passwd -salt &quot;6h&quot; hello<br>
6hEsTksgRkeiI<br>
<br>
You can use newer algorithms like MD5 based BSD password algorithm 1:<br>
<br>
$ openssl passwd -1 hello<br>
$1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1<br>
<br>
$1 : password algorithm 1<br>
$4Mu8Fcs. : salt<br>
$eIKgPP7RCYrb3lFZjhADA1 : password hash<br>
<br>
<br>
If you log into the system you have to use the clear password. The <br>
system reads the salt, creates the password hash and compares the results.<=
br>
<br>
<br>
:rjs<br>
<br>
<br>
On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:<br>
&gt; I'm trying to use the example in &quot;Embedded Linux Systems with the=
 Yocto Project&quot; to add a user to my Yocto build. In the book the sampl=
e code:<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; useradd -p `openssl passwd ${DEV_PASSWORD}` de=
veloper; \<br>
&gt;<br>
&gt; uses openssl to generate the encrypted password string to pass to user=
add. I have never been able to get this to work. When I run the openssl<br>
&gt; command on the cmd line I get a different value every time, this seems=
 wrong, How can the password code compare against it if every encode<br>
&gt; produces a different value?<br>
&gt;<br>
&gt; I am getting the user added to the system, the home directory shows up=
 and the user is in the passwd and group files. I just can't login to the<b=
r>
&gt; account.<br>
&gt;<br>
&gt; I've obviously got something confused, any help would be appreciated.<=
br>
&gt;<br>
&gt; Greg Wilson-Lindberg<br>
&gt;&nbsp;&nbsp; <br>
<br>
-- <br>
-----<br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
&#43;1.855.442.3396 x700<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_59388987f9de418abb8598790a3d3e7fsakurauscom_--
