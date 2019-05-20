Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0009E00D46; Mon, 20 May 2019 11:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 13pmail.ess.barracuda.com (13pmail.ess.barracuda.com
	[209.222.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B0AE00931
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 11:55:03 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx5.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 20 May 2019 18:55:00 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 20 May 2019 11:54:58 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 20 May 2019 11:54:58 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Rudolf Streif <rudolf.streif@ibeeto.com>
Thread-Topic: [yocto] problem adding a user
Thread-Index: AdUKtI8UMCSaJnTQT92qAk6aHgoNcgAxtVKA//+VNhqAAIDUAP//it/KgACHQwD//5XyzoAAeniAgAB1FWD//8UQAADh/nIy
Date: Mon, 20 May 2019 18:54:58 +0000
Message-ID: <f54b1f155a664191acbf6b31b8c96ab6@sakuraus.com>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>
	<04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
	<20cf7cd05ce54a439d05109439572db8@sakuraus.com>
	<2503a68b-2283-cac8-1e5d-11d0885598a7@ibeeto.com>
	<1d6f238b62354df8a92873769755990b@sakuraus.com>
	<fd8f34de-c8e6-c503-a932-9bdf2efdbaed@ibeeto.com>
	<b38f6ac29beb40c4bb457c09a14cc78d@sakuraus.com>,
	<CAPxNcnd9pBO73KqRqtMK-wVaTtAC-hux1UezX-zxxOqRmxukyg@mail.gmail.com>
In-Reply-To: <CAPxNcnd9pBO73KqRqtMK-wVaTtAC-hux1UezX-zxxOqRmxukyg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1558378500-893009-22545-2601-1
X-BESS-VER: 2019.1_20190517.2259
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.213574 [from 
	cloudscan32.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 20 May 2019 18:55:06 -0000
X-Groupsio-MsgNum: 45237
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_"

--_004_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_"

--_000_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

I've had more time to work with this and I'm still having problems getting
everything to work properly. I've attached the image recipe recipe that I'm
using so I don't leave any thing out that may be relevant.

When I build with a password that is no more more than 8 characters long
and no non-alphabetic characters:

SAKURA_PASSWD =3D "Distract"
SAKURA_PASS =3D "WRsDFfg1BsrDM"


everything works correctly.

I first tried that using the `openssl ...` form, and then I tried the
-1, MD5 BSD form and had problems, so I changed to doing the openssl
on the command line and making sure that I don't have any characters
that display as '.' or '/'. Again, if I don't do more than 8 characters
and no special characters everything works.

When I changed to using 'Ds$tr@ct' it stopped working. The build finishes
and the log file shows the usermod being exectued correctly:

NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]
NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -a -G sudo,dialout sakura]

But when I try to sign in it doesn't work.

I then tried the 10 character password 'Distracted', the build fails:

NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p sakura]
Usage: usermod [options] LOGIN

Options:
  -c, --comment COMMENT         new value of the GECOS field
  -d, --home HOME_DIR           new home directory for the user account
  -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
  -f, --inactive INACTIVE       set password inactive after expiration
                                to INACTIVE
  -g, --gid GROUP               force use GROUP as new primary group
  -G, --groups GROUPS           new list of supplementary GROUPS
  -a, --append                  append the user to the supplemental GROUPS
                                mentioned by the -G option without removing
                                him/her from other groups
  -h, --help                    display this help message and exit
  -l, --login NEW_LOGIN         new value of the login name
  -L, --lock                    lock the user account
  -m, --move-home               move contents of the home directory to the
                                new location (use only with -d)
  -o, --non-unique              allow using duplicate (non-unique) UID
  -p, --password PASSWORD       use encrypted password for the new password
  -P, --clear-password PASSWORD use clear password for the new password
  -R, --root CHROOT_DIR         directory to chroot into
  -s, --shell SHELL             new login shell for the user account
  -u, --uid UID                 new UID for the user account
  -U, --unlock                  unlock the user account
  -v, --add-subuids FIRST-LAST  add range of subordinate uids
  -V, --del-subuids FIRST-LAST  remove range of subordinate uids
  -w, --add-subgids FIRST-LAST  add range of subordinate gids
  -W, --del-subgids FIRST-LAST  remove range of subordinate gids

ERROR: scribe: usermod command did not succeed.

So, even though I'm putting in the openssl output:
openssl passwd -1 "Distracted"
$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0

that I get back from what should be a valid run of openssl, I don't see any=
thing
from the password on the usermod command line:
 "...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]"

I don't understand why the short passwords and passing along the proper has=
h works,
but not the longer password.

It also doesn't make sense that I can't put in the '$' & '@' characters and
have them work.

Any suggestions would be greatly appreciated.

Greg


________________________________
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Sent: Wednesday, May 15, 2019 4:58:26 PM
To: Greg Wilson-Lindberg
Cc: Yocto list discussion
Subject: Re: [yocto] problem adding a user

Glad to hear that it works now. I am planning on attending the YP DevDay.

:rjs

On Wed, May 15, 2019, 13:53 Greg Wilson-Lindberg <GWilson@sakuraus.com<mail=
to:GWilson@sakuraus.com>> wrote:
Thank you very much, that got me back on the right path.
Maybe I'll see you at the Yocto day at the Embedded Linux Conference.
Regards,


Greg Wilson-Lindberg

Principal Firmware Engineer | Sakura Finetek USA, Inc.



1750 W 214th Street | Torrance, CA 90501 | U.S.A.

T: +1 310 783 5075

F: +1 310 618 6902 | E: gwilson@sakuraus.com<mailto:gwilson@sakuraus.com>

www.sakuraus.com<http://www.sakuraus.com>



[cid:image002.png@01D35D7D.179A7510]

[cid:image003.png@01D35D7D.179A7510]


________________________________

Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any disclosure, copying, distribution, or re=
liance upon the contents of this e-mail is strictly prohibited. If you have=
 received this e-mail transmission in error, please reply to the sender, so=
 that Sakura Finetek USA, Inc. can arrange for proper delivery, and then pl=
ease delete the message from your inbox. Thank you.



From: Rudolf J Streif [mailto:rudolf.streif@ibeeto.com<mailto:rudolf.streif=
@ibeeto.com>]
Sent: Wednesday, May 15, 2019 01:30 PM
To: Greg Wilson-Lindberg <GWilson@sakuraus.com<mailto:GWilson@sakuraus.com>=
>; Yocto list discussion <yocto@yoctoproject.org<mailto:yocto@yoctoproject.=
org>>
Subject: Re: [yocto] problem adding a user


Instead of



useradd -p `openssl passwd test` sakura



which attempts to add the user and set the password which fails if the user=
 already exists, use



usermod -p `openssl passwd test` sakura



which sets the user's password.



:rjs


On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:

Ok, I had been using the useradd class in a couple of other recipes to allo=
w me to copy files to the sakura user directory and another location, but o=
wned by sakura. That seems to have been what was causing the problem.



I had been using the extrausers class in my top level image recipe.

So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?

Greg
________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com><mailto:rudolf.streif@ibeet=
o.com>
Sent: Wednesday, May 15, 2019 12:31 PM
To: Greg Wilson-Lindberg; Yocto list discussion
Subject: Re: [yocto] problem adding a user


The ! for the password in /etc/shadow indicates that the account is disable=
d:

sakura:!:18031:0:99999:7:::



Either there is something wrong with the password generation or it gets dis=
abled by something else. Maybe it's worth trying with a plain image without=
 Boot2Qt or anything else.



:rjs




On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:

Hi Rudolf,

1st, yes I inherit extrausers. Attached are the passwd & shadow files.



It shouldn't make any difference, but I'm building this for an RPi3 using t=
he Qt Boot2Qt version of the Yocto environment, distro 2.5.3.


Greg
________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com><mailto:rudolf.streif@ibeet=
o.com>
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

--_000_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p></p>
<div style=3D"color: #000000;background-color: #ffffff; font-style: normal;=
 font-weight: normal; text-decoration: none;">
<pre>Hi Rudolf,=0A=
=0A=
I've had more time to work with this and I'm still having problems getting =
=0A=
everything to work properly. I've attached the image recipe recipe that I'm=
 =0A=
using so I don't leave any thing out that may be relevant.=0A=
=0A=
When I build with a password that is no more more than 8 characters long=0A=
and no non-alphabetic characters:</pre>
<pre><div style=3D"color: #000000;background-color: #ffffff; font-style: no=
rmal; font-weight: normal; text-decoration: none;"><pre>SAKURA_PASSWD =3D &=
quot;Distract&quot;=0A=
SAKURA_PASS =3D &quot;WRsDFfg1BsrDM&quot;=0A=
</pre></div></pre>
<pre>everything works correctly. =0A=
=0A=
I first tried that using the `openssl ...` form, and then I tried the =0A=
-1, MD5 BSD form and had problems, so I changed to doing the openssl =0A=
on the command line and making sure that I don't have any characters =0A=
that display as '.' or '/'. Again, if I don't do more than 8 characters=0A=
and no special characters everything works.=0A=
=0A=
When I changed to using 'Ds$tr@ct' it stopped working. The build finishes=
=0A=
and the log file shows the usermod being exectued correctly:=0A=
=0A=
NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]=0A=
NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -a -G sudo,dialout sakura]=0A=
=0A=
But when I try to sign in it doesn't work.=0A=
=0A=
I then tried the 10 character password 'Distracted', the build fails:=0A=
=0A=
NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p sakura]=0A=
Usage: usermod [options] LOGIN=0A=
=0A=
Options:=0A=
  -c, --comment COMMENT         new value of the GECOS field=0A=
  -d, --home HOME_DIR           new home directory for the user account=0A=
  -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE=
=0A=
  -f, --inactive INACTIVE       set password inactive after expiration=0A=
                                to INACTIVE=0A=
  -g, --gid GROUP               force use GROUP as new primary group=0A=
  -G, --groups GROUPS           new list of supplementary GROUPS=0A=
  -a, --append                  append the user to the supplemental GROUPS=
=0A=
                                mentioned by the -G option without removing=
=0A=
                                him/her from other groups=0A=
  -h, --help                    display this help message and exit=0A=
  -l, --login NEW_LOGIN         new value of the login name=0A=
  -L, --lock                    lock the user account=0A=
  -m, --move-home               move contents of the home directory to the=
=0A=
                                new location (use only with -d)=0A=
  -o, --non-unique              allow using duplicate (non-unique) UID=0A=
  -p, --password PASSWORD       use encrypted password for the new password=
=0A=
  -P, --clear-password PASSWORD use clear password for the new password=0A=
  -R, --root CHROOT_DIR         directory to chroot into=0A=
  -s, --shell SHELL             new login shell for the user account=0A=
  -u, --uid UID                 new UID for the user account=0A=
  -U, --unlock                  unlock the user account=0A=
  -v, --add-subuids FIRST-LAST  add range of subordinate uids=0A=
  -V, --del-subuids FIRST-LAST  remove range of subordinate uids=0A=
  -w, --add-subgids FIRST-LAST  add range of subordinate gids=0A=
  -W, --del-subgids FIRST-LAST  remove range of subordinate gids=0A=
=0A=
ERROR: scribe: usermod command did not succeed.=0A=
=0A=
So, even though I'm putting in the openssl output:=0A=
openssl passwd -1 &quot;Distracted&quot;=0A=
$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0=0A=
=0A=
that I get back from what should be a valid run of openssl, I don't see any=
thing=0A=
from the password on the usermod command line:=0A=
 &quot;...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]&quot;=0A=
=0A=
I don't understand why the short passwords and passing along the proper has=
h works, =0A=
but not the longer password.=0A=
=0A=
It also doesn't make sense that I can't put in the '$' &amp; '@' characters=
 and =0A=
have them work.=0A=
=0A=
Any suggestions would be greatly appreciated.</pre>
<pre><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 12pt;">Greg</span>=0A=
</pre>
</div>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rudolf Streif &lt;rud=
olf.streif@ibeeto.com&gt;<br>
<b>Sent:</b> Wednesday, May 15, 2019 4:58:26 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Glad to hear that it works now. I am planning on attendin=
g the YP DevDay.
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">:rjs</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 15, 2019, 13:53 Greg Wils=
on-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com">GWilson@sakuraus.co=
m</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-4293760156557775355WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Thank you very much, that got me back on =
the right path.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Maybe I'll see you at the Yocto day at th=
e Embedded Linux Conference.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Regards,<u></u><u></u></span></p>
<div>
<table class=3D"m_-4293760156557775355MsoNormalTable" border=3D"0" cellspac=
ing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"97%" style=3D"width:97.=
66%">
<tbody>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img width=3D"36" height=
=3D"7" id=3D"m_-4293760156557775355Picture_x0020_1" alt=3D"cid:image001.png=
@01D35D7D.179A7510" src=3D"cid:image001.png@01D50B22.E4566B00"><u></u><u></=
u></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#=
0089d1">Greg Wilson-Lindberg&nbsp;
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#=
58595b">Principal Firmware Engineer | Sakura Finetek USA, Inc.&nbsp;
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:10.5pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#=
58595b">&nbsp;<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#585=
95b">1750 W 214<sup>th</sup> Street | Torrance, CA 90501 | U.S.A.&nbsp;
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-se=
rif;color:#58595b">T: &#43;1 310 783 5075&nbsp;
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-se=
rif;color:#58595b">F: &#43;1 310 618 6902 | E:&nbsp;</span><span lang=3D"DE=
" style=3D"font-size:11.0pt;line-height:105%;font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><a href=3D"mailto:gwilson@sakuraus.com" target=3D=
"_blank" rel=3D"noreferrer"><span style=3D"color:#0563c1">gwilson</span><sp=
an style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;=
,sans-serif;color:#0563c1">@sakuraus.com</span></a></span><span lang=3D"DE"=
 style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,s=
ans-serif;color:#58595b">&nbsp;&nbsp;
 &nbsp;&nbsp; <u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
11.0pt;line-height:105%;font-family:&quot;Calibri&quot;,sans-serif;color:bl=
ack"><a href=3D"http://www.sakuraus.com" target=3D"_blank" rel=3D"noreferre=
r"><span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial=
&quot;,sans-serif;color:#0089d1;text-decoration:none">www.sakuraus.com</spa=
n></a></span><span style=3D"font-size:10.0pt;line-height:105%;font-family:&=
quot;Arial&quot;,sans-serif;color:#0089d1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
9.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#5859=
5b">&nbsp;<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<table class=3D"m_-4293760156557775355MsoNormalTable" border=3D"0" cellspac=
ing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"100%" style=3D"width:10=
0.0%;margin-bottom:5.75pt">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img border=3D"0" width=
=3D"188" height=3D"12" id=3D"m_-4293760156557775355Picture_x0020_2" alt=3D"=
cid:image002.png@01D35D7D.179A7510" src=3D"cid:image002.png@01D50B22.E4566B=
00"><u></u><u></u></p>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60.0pt;padding:0in 0in 0i=
n 0in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:105%"><img border=3D"0" width=3D"66" height=3D"64" id=3D"m_-4293760156557=
775355Picture_x0020_3" alt=3D"cid:image003.png@01D35D7D.179A7510" src=3D"ci=
d:image003.png@01D50B22.E4566B00"><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-h=
eight:105%">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
7.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#5859=
5b">Confidentiality Notice: This e-mail transmission may contain confidenti=
al or legally privileged information that is intended
 only for the individual or entity named in the e-mail address. If you are =
not the intended recipient, you are hereby notified that any disclosure, co=
pying, distribution, or reliance upon the contents of this e-mail is strict=
ly prohibited. If you have received
 this e-mail transmission in error, please reply to the sender, so that Sak=
ura Finetek USA, Inc. can arrange for proper delivery, and then please dele=
te the message from your inbox. Thank you.</span><span style=3D"font-size:7=
.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#58595=
b"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><u></u>&nbsp;<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:windowtext">From:</span></b><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtex=
t"> Rudolf J Streif [mailto:<a href=3D"mailto:rudolf.streif@ibeeto.com" tar=
get=3D"_blank" rel=3D"noreferrer">rudolf.streif@ibeeto.com</a>]
<br>
<b>Sent:</b> Wednesday, May 15, 2019 01:30 PM<br>
<b>To:</b> Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com"=
 target=3D"_blank" rel=3D"noreferrer">GWilson@sakuraus.com</a>&gt;; Yocto l=
ist discussion &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bla=
nk" rel=3D"noreferrer">yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] problem adding a user<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p>Instead of<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>useradd -p `openssl passwd test` sakura<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>which attempts to add the user and set the password which fails if the u=
ser already exists, use<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>usermod -p `openssl passwd test` sakura<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>which sets the user's password.<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>:rjs<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<div>
<p class=3D"MsoNormal">On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:<u></=
u><u></u></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"m_-4293760156557775355divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Ok, I had bee=
n using the useradd class in a couple of other recipes to allow me to copy =
files to the sakura user directory and another location, but owned by sakur=
a. That seems to have been what was causing
 the problem.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I had been us=
ing the extrausers class in my top&nbsp;level image recipe.<u></u><u></u></=
span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><br>
So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?<u></u><u></u></span></p=
>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><u></u>&nbsp;<u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_-4293760156557775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank" rel=3D"norefe=
rrer">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 12:31 PM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">&nbsp;<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">The ! for the=
 password in /etc/shadow indicates that the account is disabled:<u></u><u><=
/u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">sakura:!:1803=
1:0:99999:7:::<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Either there =
is something wrong with the password generation or it gets disabled by some=
thing else. Maybe it's worth trying with a plain image without Boot2Qt or a=
nything else.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">:rjs<u></u><u=
></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span=
></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"m_-4293760156557775355divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Rudolf,<u>=
</u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">1st, yes I in=
herit extrausers. Attached are the passwd &amp; shadow files.<u></u><u></u>=
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">It shouldn't =
make any difference, but I'm building this for an RPi3 using the Qt Boot2Qt=
 version of the Yocto environment, distro 2.5.3.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_-4293760156557775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank" rel=3D"norefe=
rrer">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">&nbsp;<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Greg,<u></=
u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">&gt; I've als=
o tried both the back-quote and the single-quote, no difference.<u></u><u><=
/u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Help me to un=
derstand this. the back-quotes are the right ones. If you use the single on=
es your password in the /etc/shadow ends up being 'openssl passwd test' (wi=
thout the quotes), unless the build fails because
 of a parsing error (I have not tried it). Silly question, you did inherit =
extrausers class?<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Can you post =
your /etc/passwd and /etc/shadow<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I am surprise=
d that this does not work with your setup. I have been doing this a gazilli=
on times always with success.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">:rjs<u></u><u=
></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span=
></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div id=3D"m_-4293760156557775355x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Rudolf,<u>=
</u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Thanks for th=
e reply, and the information on how openssl works.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I'm trying to=
 create a user with the same group name so the code that I'm using reduces =
to:<u></u><u></u></span></p>
<div>
<pre style=3D"background:white">EXTRA_USERS_PARAMS =3D &quot;\<u></u><u></u=
></pre>
<pre style=3D"background:white">&nbsp;&nbsp;&nbsp; useradd -p `openssl pass=
wd test` sakura; \<u></u><u></u></pre>
<pre style=3D"background:white">&nbsp;&nbsp;&nbsp; usermod -a -G sudo ${SAK=
URA_USER}; \<u></u><u></u></pre>
<pre style=3D"background:white">&nbsp;&nbsp;&nbsp; &quot;<u></u><u></u></pr=
e>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I also, as you can see, removed the macros to eliminate as much conf=
usion as possible.
<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I still can't=
 login in using the&nbsp;password&nbsp;'test'.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I've also tri=
ed both the back-quote and the single-quote, no difference.<u></u><u></u></=
span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Regards,<u></=
u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>&nbsp;=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Greg<u></u><u=
></u></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_-4293760156557775355x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank" rel=3D"norefe=
rrer">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">&nbsp;<u></u><u></u></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Hi Greg,<br>
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
&#43;1.855.442.3396 x700<u></u><u></u></span></p>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>&#43;1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>&#43;1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>&#43;1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_--

--_004_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_
Content-Type: application/octet-stream; name="scribe.bb"
Content-Description: scribe.bb
Content-Disposition: attachment; filename="scribe.bb"; size=4611;
	creation-date="Mon, 20 May 2019 18:51:22 GMT";
	modification-date="Mon, 20 May 2019 18:51:22 GMT"
Content-Transfer-Encoding: base64

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIwojIwojIyBDb3B5cmlnaHQgKEMpIDIwMTcgU2FrdXJhIEZpbmV0
ZWsgSW5jLgojIwojIyAgQ3VzdG9tIGltYWdlIHJlY2lwZQojIwojIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
CgpERVNDUklQVElPTiA9ICJTY3JpYmUgQjJRdCBlbWJlZGRlZCBRdDUgaW1hZ2UiClBSID0gInIw
IgpERVBMT1lfQ09ORl9UWVBFID0gIkJvb3QyUXQiCgpJTUFHRV9GRUFUVVJFUyArPSAiXAogICAg
ICAgIHBhY2thZ2UtbWFuYWdlbWVudCBcCiAgICAgICAgc3NoLXNlcnZlci1vcGVuc3NoIFwKICAg
ICAgICB0b29scy1kZWJ1ZyBcCiAgICAgICAgZGVidWctdHdlYWtzIFwKICAgICAgICBod2NvZGVj
cyBcCiAgICAgICAgc3BsYXNoIFwKICAgICAgICAiCiMgJ2RlYnVnLXR3ZWFrcycgYWxsb3dzIHVz
ZXIgdG8gbG9naW4gYXMgcm9vdCB3aXRoIG5vIHBhc3N3b3JkCiMgYmVmb3JlIHByb2R1Y3Rpb24g
bmVlZCB0byByZW1vdmUgZGVidWctdHdlYWtzIGFib3ZlCiMgdW5jb21tZW50IGxpbmUgYmVsb3cK
I0lNQUdFX0ZFQVRVUkVTIC09ICIgZGVidWctdHdlYWtzIgoKIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoj
IwojIyBUaGUgZm9sbG93aW5nIGlzIG9ubHkgZm9yIGRldmVsb3BtZW50IGltYWdlcywgZG9uJ3Qg
d2FudCB0aGlzIGZvciBwcm9kdWN0aW9uIGJ1aWxkcwojIwojIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjClNE
S0lNQUdFX0ZFQVRVUkVTICs9ICJkZXYtcGtncyBkYmctcGtncyBzdGF0aWNkZXYtcGtncyIKIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIwojIwojIyBFbmQgRGV2ZWxvcG1lbnQgT25seQojIwojIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjCgppbmhlcml0IGNvcmUtaW1hZ2UgcWJzcC1pbWFnZQppbmhlcml0IGNvbnNpc3Rl
bnRfdGltZXN0YW1wcwppbmhlcml0IHBvcHVsYXRlX3Nka19xdDUKaW5oZXJpdCBleHRyYXVzZXJz
CgpESVNBQkxFX1NUQVRJQyA9ICIiCgpJTUFHRV9JTlNUQUxMICs9ICJcCiAgICBwYWNrYWdlZ3Jv
dXAtYjJxdC1lbWJlZGRlZC1iYXNlIFwKICAgIHBhY2thZ2Vncm91cC1iMnF0LWVtYmVkZGVkLXRv
b2xzIFwKICAgICR7QGJiLnV0aWxzLmNvbnRhaW5zKCJESVNUUk9fRkVBVFVSRVMiLCAiZ3N0cmVh
bWVyMDEwIiwgInBhY2thZ2Vncm91cC1iMnF0LWVtYmVkZGVkLWdzdHJlYW1lcjAxMCIsICIiLCBk
KX0gXAogICAgJHtAYmIudXRpbHMuY29udGFpbnMoIkRJU1RST19GRUFUVVJFUyIsICJnc3RyZWFt
ZXIiLCAicGFja2FnZWdyb3VwLWIycXQtZW1iZWRkZWQtZ3N0cmVhbWVyIiwgIiIsIGQpfSBcCiAg
ICBwYWNrYWdlZ3JvdXAtYjJxdC1xdDUtbW9kdWxlcyBcCiAgICBwYWNrYWdlZ3JvdXAtYjJxdC1l
bWJlZGRlZC1hZGRvbnMgXAogICAgcGNzYy1saXRlIHBjc2MtbGl0ZS1saWIgYWNzY2NpZCBcCiAg
ICBjYW5mZXN0aXZhbCB6aW50IFwKICAgIG15c3FsNSBcCiAgICB2YWxncmluZCBcCiAgICBlbGZ1
dGlscyBcCiAgICBkZnUtdXRpbCBcCiAgICBjYW4tdXRpbHMgXAogICAgbmFubyBcCiAgICBjYW5z
dGFydCBjYW5zdGFydC1zZXJ2aWNlIFwKICAgIHNjcmliZWRiY29uZmlnIHNjcmliZWRiY29uZmln
LXNlcnZpY2UgXAogICAgc2NyaWJlY29uZmlnIFwKICAgIHVzZXJjb25maWcgXAogICAgbHNvZiBc
CiAgICB0dGYtZGVqYXZ1LXNhbnMgdHRmLWRlamF2dS1zYW5zLW1vbm8gdHRmLWRlamF2dS1jb21t
b24gdHRmLWRlamF2dS1zYW5zLWNvbmRlbnNlZCB0dGYtZGVqYXZ1LXNlcmlmIFwKICAgIHR0Zi1k
cm9pZC1zYW5zIHR0Zi1kcm9pZC1zYW5zLW1vbm8gdHRmLWRyb2lkLXNhbnMtZmFsbGJhY2sgdHRm
LWRyb2lkLXNhbnMtamFwYW5lc2UgdHRmLWRyb2lkLXNlcmlmIFwKICAgIHR0Zi1saWJlcmF0aW9u
LW1vbm8gdHRmLWxpYmVyYXRpb24tc2FucyB0dGYtbGliZXJhdGlvbi1zZXJpZiBcCiAgICB0dGYt
dGx3ZyBcCiAgICB0dGYtdWJ1bnR1LW1vbm8gdHRmLXVidW50dS1zYW5zIFwKICAgIHR0Zi12bGdv
dGhpYyBcCiAgICBzb3VyY2UtaGFuLXNhbnMtY24tZm9udHMgc291cmNlLWhhbi1zYW5zLWpwLWZv
bnRzIHNvdXJjZS1oYW4tc2Fucy1rci1mb250cyBzb3VyY2UtaGFuLXNhbnMtdHctZm9udHMgXAog
ICAgc3VkbyBcCiAgICAiCgojICAgIHBvY2tldHNwaGlueCBcICAgICBub3QgZ29pbmcgdG8gYmUg
dXNpbmcgdGhpcwoKU0FLVVJBX1VTRVIgPSAic2FrdXJhIgojU0FLVVJBX1BBU1NXRCA9ICJEaSR0
ckBjdGVkRHIxdjNyIgojU0FLVVJBX1BBU1MgPSAiJDEkWjMzNUUyOEokSUtOMlV6Mk9hZXE2MTZ6
bFYvd2RiMCIKI1NBS1VSQV9QQVNTV0QgPSAiRGkkdHJAY3RlZCIKI1NBS1VSQV9QQVNTID0gIiQx
JDc4UHV2STFOJFBHNGpBNm15UlZZTEE4TDcxM0lVUzAiCgojIyMgVGVzdGVkIE5vdCBXb3JraW5n
IC0tLS0tICAgV29uJ3QgYnVpbGQKU0FLVVJBX1BBU1NXRCA9ICJEaXN0cmFjdGVkIgpTQUtVUkFf
UEFTUyA9ICIkMSRRVk8zSzZJaSRmdmtvREtubHp6M2Q1dVZvTDdLY00wIgojLS0tLS0gVGVzdGVk
IFdvcmtpbmcgZW5kCgojIyMgVGVzdGVkIE5vdCBXb3JraW5nIC0tLS0tCiNTQUtVUkFfUEFTU1dE
ID0gIkRpJHRyQGN0IgojU0FLVVJBX1BBU1MgPSAia3lOc3J2UzBlbE1XVSIKIy0tLS0tIFRlc3Rl
ZCBXb3JraW5nIGVuZAoKIyMjIFRlc3RlZCBXb3JraW5nIC0tLS0tCiNTQUtVUkFfUEFTU1dEID0g
IkRpc3RyYWN0IgojU0FLVVJBX1BBU1MgPSAiV1JzREZmZzFCc3JETSIKIy0tLS0tIFRlc3RlZCBX
b3JraW5nIGVuZAoKIyMjIFRlc3RlZCBXb3JraW5nIC0tLS0tCiNTQUtVUkFfUEFTU1dEID0gIlRl
c1RpbmcxIgojU0FLVVJBX1BBU1MgPSAiUGo3aUR6ajAxcW1ORSIKIy0tLS0tIFRlc3RlZCBXb3Jr
aW5nIGVuZAoKIyMjIFRlc3RlZCBXb3JraW5nIC0tLS0tCiNTQUtVUkFfUEFTU1dEID0gInRlc3Qi
ICAgICAgICAgICAKI1NBS1VSQV9QQVNTID0gIkQ0YWRIdTN6Mm0walEiCiMtLS0tLSBUZXN0ZWQg
V29ya2luZyBlbmQKCiMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjIENhbiBv
bmx5IHVzZSBncmVhdGVyIHRoYW4gOCBjaGFyYWN0ZXIgcGFzc3dvcmQgaWYgdXNpbmcgb3RoZXIg
dGhhbiBkZWZhdWx0IGVuY3J5cHRpb24sIHNlZSAtMSBiZWxvdwojICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIyAtMSBjcmVhdGVzIE1ENSBiYXNlZCBCU0Qgc3R5bGUgaGFzaCwg
Y2FuIGhhbmRsZSBsb25nZXIgdGhhbiA4IGNoYXJhY3RlciBwYXNzd29yZAoKRVhUUkFfVVNFUlNf
UEFSQU1TID0gIlwKICAgIHVzZXJtb2QgLXAgJHtTQUtVUkFfUEFTU30gJHtTQUtVUkFfVVNFUn07
IFwKICAgIHVzZXJtb2QgLWEgLUcgc3VkbyxkaWFsb3V0ICR7U0FLVVJBX1VTRVJ9OyBcCiAgICAi
CgojdXNlcm1vZCAtcCBgb3BlbnNzbCBwYXNzd2QgLTEgJHtTQUtVUkFfUEFTU1dEfWAgJHtTQUtV
UkFfVVNFUn07Cgptb2RpZnlfc3Vkb2VycygpIHsKICAgIHNlZCAncy8jICVzdWRvLyVzdWRvLycg
PCAke0lNQUdFX1JPT1RGU30vZXRjL3N1ZG9lcnMgPiBcCiAgICAgICAgJHtJTUFHRV9ST09URlN9
L2V0Yy9zdWRvZXJzLnRtcAogICAgbXYgJHtJTUFHRV9ST09URlN9L2V0Yy9zdWRvZXJzLnRtcCAk
e0lNQUdFX1JPT1RGU30vZXRjL3N1ZG9lcnMKfQpST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCAr
PSAibW9kaWZ5X3N1ZG9lcnM7IgoKYWRkdGFzayBzaG93dmFycwpkb19zaG93dmFyc1tub3N0YW1w
XSA9ICIxIgpweXRob24gZG9fc2hvd3ZhcnMoKSB7CiAgICAgICAgIyBlbWl0IG9ubHkgdGhlIG1l
dGFkYXRhIHRoYXQgYXJlIHZhcmlhYmxlcyBhbmQgbm90IGZ1bmN0aW9ucwogICAgICAgIGlzZnVu
YyA9IGxhbWJkYSBrZXk6IGJvb2woZC5nZXRWYXJGbGFnKGtleSwgJ2Z1bmMnLCBGYWxzZSkpCiAg
ICAgICAgdmFycyA9IHNvcnRlZCgoa2V5IGZvciBrZXkgaW4gYmIuZGF0YS5rZXlzKGQpIFwKICAg
ICAgICAgICAgICAgaWYgbm90IGtleS5zdGFydHN3aXRoKCdfXycpKSkKICAgICAgICBmb3IgdmFy
IGluIHZhcnM6CiAgICAgICAgICAgIGlmIG5vdCBpc2Z1bmModmFyKToKICAgICAgICAgICAgICAg
IHRyeToKICAgICAgICAgICAgICAgICAgICB2YWwgPSBkLmdldFZhcih2YXIsIFRydWUpCiAgICAg
ICAgICAgICAgICBleGNlcHQgRXhjZXB0aW9uIGFzIGV4YzoKICAgICAgICAgICAgICAgICAgICBi
Yi5wbGFpbignRXhwYW5zaW9uIG9mICVzIHRocmV3ICVzOiAlcycgJSBcCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICh2YXIsIGV4Yy5fX2NsYXNzX18uX19uYW1lX18sIHN0cihleGMpKSkK
ICAgICAgICAgICAgICAgIGJiLnBsYWluKCclcz0iJXMiJyAlICh2YXIsIHZhbCkpCn0K

--_004_f54b1f155a664191acbf6b31b8c96ab6sakurauscom_--
