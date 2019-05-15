Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F586E00DD2; Wed, 15 May 2019 11:47:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 13pmail.ess.barracuda.com (13pmail.ess.barracuda.com
	[209.222.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 298A9E00D2A
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 11:47:00 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx12.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 15 May 2019 18:46:58 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 15 May 2019 11:46:56 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 15 May 2019 11:46:56 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] problem adding a user
Thread-Index: AdUKtI8UMCSaJnTQT92qAk6aHgoNcgAxtVKA//+VNhqAAIDUAP//it/K
Date: Wed, 15 May 2019 18:46:56 +0000
Message-ID: <20cf7cd05ce54a439d05109439572db8@sakuraus.com>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>,
	<04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
In-Reply-To: <04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1557946018-893023-2439-35678-1
X-BESS-VER: 2019.1_20190514.2102
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.213341 [from 
	cloudscan43.us-east-2a.ess.aws.cudaops.com]
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
X-List-Received-Date: Wed, 15 May 2019 18:47:03 -0000
X-Groupsio-MsgNum: 45190
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_20cf7cd05ce54a439d05109439572db8sakurauscom_"

--_005_20cf7cd05ce54a439d05109439572db8sakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_20cf7cd05ce54a439d05109439572db8sakurauscom_"

--_000_20cf7cd05ce54a439d05109439572db8sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

1st, yes I inherit extrausers. Attached are the passwd & shadow files.


It shouldn't make any difference, but I'm building this for an RPi3 using t=
he Qt Boot2Qt version of the Yocto environment, distro 2.5.3.


Greg

________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Sent: Wednesday, May 15, 2019 11:26 AM
To: Greg Wilson-Lindberg; Yocto list discussion
Subject: Re: [yocto] problem adding a user


Hi Greg,


> I've also tried both the back-quote and the single-quote, no difference.


Help me to understand this. the back-quotes are the right ones. If you use =
the single ones your password in the /etc/shadow ends up being 'openssl pas=
swd test' (without the quotes), unless the build fails because of a parsing=
 error (I have not tried it). Silly question, you did inherit extrausers cl=
ass?


Can you post your /etc/passwd and /etc/shadow


I am surprised that this does not work with your setup. I have been doing t=
his a gazillion times always with success.


:rjs




On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:

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
From: Rudolf J Streif <rudolf.streif@ibeeto.com><mailto:rudolf.streif@ibeet=
o.com>
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


--
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700

--_000_20cf7cd05ce54a439d05109439572db8sakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Rudolf,</p>
<p>1st, yes I inherit extrausers. Attached are the passwd &amp; shadow file=
s.</p>
<p><br>
</p>
<p>It shouldn't make any difference, but I'm building this for an RPi3 usin=
g the Qt Boot2Qt version of the Yocto environment, distro 2.5.3.</p>
<p><br>
</p>
Greg<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rudolf J Streif &lt;r=
udolf.streif@ibeeto.com&gt;<br>
<b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hi Greg,</p>
<p><br>
</p>
<p>&gt; I've also tried both the back-quote and the single-quote, no differ=
ence.</p>
<p><br>
</p>
<p>Help me to understand this. the back-quotes are the right ones. If you u=
se the single ones your password in the /etc/shadow ends up being 'openssl =
passwd test' (without the quotes), unless the build fails because of a pars=
ing error (I have not tried it).
 Silly question, you did inherit extrausers class?</p>
<p><br>
</p>
<p>Can you post your /etc/passwd and /etc/shadow</p>
<p><br>
</p>
<p>I am surprised that this does not work with your setup. I have been doin=
g this a gazillion times always with success.</p>
<p><br>
</p>
<p>:rjs<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<div class=3D"moz-cite-prefix">On 5/15/19 11:03 AM, Greg Wilson-Lindberg wr=
ote:<br>
</div>
<blockquote type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<meta content=3D"text/html; charset=3DUTF-8">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Rudolf,</p>
<p>Thanks for the reply, and the information on how openssl works.</p>
<p><br>
</p>
<p>I'm trying to create a user with the same group name so the code that I'=
m using reduces to:</p>
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
<p><br>
</p>
<p>I still can't login in using the&nbsp;password<span style=3D"">&nbsp;'te=
st'</span>.</p>
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
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rudolf J Streif
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rudolf.streif@ibeeto.com"=
>&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
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
</span></font></blockquote>
<pre class=3D"moz-signature" cols=3D"72">-- =0A=
-----=0A=
Rudolf J Streif=0A=
CEO/CTO ibeeto=0A=
&#43;1.855.442.3396 x700</pre>
</div>
</div>
</div>
</body>
</html>

--_000_20cf7cd05ce54a439d05109439572db8sakurauscom_--

--_005_20cf7cd05ce54a439d05109439572db8sakurauscom_
Content-Type: application/octet-stream; name="passwd"
Content-Description: passwd
Content-Disposition: attachment; filename="passwd"; size=1128;
	creation-date="Wed, 15 May 2019 18:37:26 GMT";
	modification-date="Wed, 15 May 2019 18:37:26 GMT"
Content-Transfer-Encoding: base64

cm9vdDp4OjA6MDpyb290Oi9ob21lL3Jvb3Q6L2Jpbi9zaApkYWVtb246eDoxOjE6ZGFlbW9uOi91
c3Ivc2JpbjovYmluL3NoCmJpbjp4OjI6MjpiaW46L2JpbjovYmluL3NoCnN5czp4OjM6MzpzeXM6
L2RldjovYmluL3NoCnN5bmM6eDo0OjY1NTM0OnN5bmM6L2JpbjovYmluL3N5bmMKZ2FtZXM6eDo1
OjYwOmdhbWVzOi91c3IvZ2FtZXM6L2Jpbi9zaAptYW46eDo2OjEyOm1hbjovdmFyL2NhY2hlL21h
bjovYmluL3NoCmxwOng6Nzo3OmxwOi92YXIvc3Bvb2wvbHBkOi9iaW4vc2gKbWFpbDp4Ojg6ODpt
YWlsOi92YXIvbWFpbDovYmluL3NoCm5ld3M6eDo5Ojk6bmV3czovdmFyL3Nwb29sL25ld3M6L2Jp
bi9zaAp1dWNwOng6MTA6MTA6dXVjcDovdmFyL3Nwb29sL3V1Y3A6L2Jpbi9zaApwcm94eTp4OjEz
OjEzOnByb3h5Oi9iaW46L2Jpbi9zaAp3d3ctZGF0YTp4OjMzOjMzOnd3dy1kYXRhOi92YXIvd3d3
Oi9iaW4vc2gKYmFja3VwOng6MzQ6MzQ6YmFja3VwOi92YXIvYmFja3VwczovYmluL3NoCmxpc3Q6
eDozODozODpNYWlsaW5nIExpc3QgTWFuYWdlcjovdmFyL2xpc3Q6L2Jpbi9zaAppcmM6eDozOToz
OTppcmNkOi92YXIvcnVuL2lyY2Q6L2Jpbi9zaApnbmF0czp4OjQxOjQxOkduYXRzIEJ1Zy1SZXBv
cnRpbmcgU3lzdGVtIChhZG1pbik6L3Zhci9saWIvZ25hdHM6L2Jpbi9zaApteXNxbDp4Ojk5MDo5
ODc6Oi92YXIvbXlzcWw6L2Jpbi9mYWxzZQpzeXN0ZW1kLWJ1cy1wcm94eTp4Ojk5MTo5ODg6Oi86
L2Jpbi9ub2xvZ2luCnBvbGtpdGQ6eDo5OTI6OTkwOjovZXRjL3BvbGtpdC0xOi9iaW4vc2gKc3lz
dGVtZC1yZXNvbHZlOng6OTkzOjk5MTo6LzovYmluL25vbG9naW4Kc3lzdGVtZC1uZXR3b3JrOng6
OTk0Ojk5Mjo6LzovYmluL25vbG9naW4Kc3lzdGVtZC10aW1lc3luYzp4Ojk5NTo5OTM6Oi86L2Jp
bi9ub2xvZ2luCm1lc3NhZ2VidXM6eDo5OTY6OTk1OjovdmFyL2xpYi9kYnVzOi9iaW4vZmFsc2UK
c2FrdXJhOng6OTk3Ojk5Nzo6L2hvbWUvc2FrdXJhOi9iaW4vYmFzaApzc2hkOng6OTk4Ojk5ODo6
L3Zhci9ydW4vc3NoZDovYmluL2ZhbHNlCnJwYzp4Ojk5OTo5OTk6Oi86L2Jpbi9mYWxzZQpub2Jv
ZHk6eDo2NTUzNDo2NTUzNDpub2JvZHk6L25vbmV4aXN0ZW50Oi9iaW4vc2gK

--_005_20cf7cd05ce54a439d05109439572db8sakurauscom_
Content-Type: application/octet-stream; name="shadow"
Content-Description: shadow
Content-Disposition: attachment; filename="shadow"; size=792;
	creation-date="Wed, 15 May 2019 18:40:23 GMT";
	modification-date="Wed, 15 May 2019 18:40:23 GMT"
Content-Transfer-Encoding: base64

cm9vdDo6MTgwMzE6MDo5OTk5OTo3Ojo6CmRhZW1vbjoqOjE4MDMxOjA6OTk5OTk6Nzo6OgpiaW46
KjoxODAzMTowOjk5OTk5Ojc6OjoKc3lzOio6MTgwMzE6MDo5OTk5OTo3Ojo6CnN5bmM6KjoxODAz
MTowOjk5OTk5Ojc6OjoKZ2FtZXM6KjoxODAzMTowOjk5OTk5Ojc6OjoKbWFuOio6MTgwMzE6MDo5
OTk5OTo3Ojo6CmxwOio6MTgwMzE6MDo5OTk5OTo3Ojo6Cm1haWw6KjoxODAzMTowOjk5OTk5Ojc6
OjoKbmV3czoqOjE4MDMxOjA6OTk5OTk6Nzo6Ogp1dWNwOio6MTgwMzE6MDo5OTk5OTo3Ojo6CnBy
b3h5Oio6MTgwMzE6MDo5OTk5OTo3Ojo6Cnd3dy1kYXRhOio6MTgwMzE6MDo5OTk5OTo3Ojo6CmJh
Y2t1cDoqOjE4MDMxOjA6OTk5OTk6Nzo6OgpsaXN0Oio6MTgwMzE6MDo5OTk5OTo3Ojo6CmlyYzoq
OjE4MDMxOjA6OTk5OTk6Nzo6OgpnbmF0czoqOjE4MDMxOjA6OTk5OTk6Nzo6OgpteXNxbDohOjE4
MDMxOjA6OTk5OTk6Nzo6OgpzeXN0ZW1kLWJ1cy1wcm94eTohOjE4MDMxOjA6OTk5OTk6Nzo6Ogpw
b2xraXRkOiE6MTgwMzE6MDo5OTk5OTo3Ojo6CnN5c3RlbWQtcmVzb2x2ZTohOjE4MDMxOjA6OTk5
OTk6Nzo6OgpzeXN0ZW1kLW5ldHdvcms6IToxODAzMTowOjk5OTk5Ojc6OjoKc3lzdGVtZC10aW1l
c3luYzohOjE4MDMxOjA6OTk5OTk6Nzo6OgptZXNzYWdlYnVzOiE6MTgwMzE6MDo5OTk5OTo3Ojo6
CnNha3VyYTohOjE4MDMxOjA6OTk5OTk6Nzo6Ogpzc2hkOiE6MTgwMzE6MDo5OTk5OTo3Ojo6CnJw
YzohOjE4MDMxOjA6OTk5OTk6Nzo6Ogpub2JvZHk6KjoxODAzMTowOjk5OTk5Ojc6OjoK

--_005_20cf7cd05ce54a439d05109439572db8sakurauscom_--
