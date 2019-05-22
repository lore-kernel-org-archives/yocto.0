Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FEADE00C14; Wed, 22 May 2019 13:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.36 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 13pmail.ess.barracuda.com (13pmail.ess.barracuda.com
	[209.222.82.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AF49E009A0
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 13:28:10 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx7.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 22 May 2019 20:28:07 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 22 May 2019 13:28:05 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 22 May 2019 13:28:05 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Rudolf Streif <rudolf.streif@ibeeto.com>
Thread-Topic: [yocto] problem adding a user
Thread-Index: AdUKtI8UMCSaJnTQT92qAk6aHgoNcgAxtVKA//+VNhqAAIDUAP//it/KgACHQwD//5XyzoAAeniAgAB1FWD//8UQAADh/nIyADP4PIAABivTZgA6+RwAAA1kF0s=
Date: Wed, 22 May 2019 20:28:05 +0000
Message-ID: <595b0462ab83447ba6c637d71f534bcb@sakuraus.com>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>
	<04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
	<20cf7cd05ce54a439d05109439572db8@sakuraus.com>
	<2503a68b-2283-cac8-1e5d-11d0885598a7@ibeeto.com>
	<1d6f238b62354df8a92873769755990b@sakuraus.com>
	<fd8f34de-c8e6-c503-a932-9bdf2efdbaed@ibeeto.com>
	<b38f6ac29beb40c4bb457c09a14cc78d@sakuraus.com>
	<CAPxNcnd9pBO73KqRqtMK-wVaTtAC-hux1UezX-zxxOqRmxukyg@mail.gmail.com>
	<f54b1f155a664191acbf6b31b8c96ab6@sakuraus.com>
	<CAPxNcndS3o5uvfgKAv6YcdodyGCa6AqKxNxo5=uCz=5XpbWcvg@mail.gmail.com>
	<53a4b80ae8984dbfb5c74e7e543d7a7a@sakuraus.com>,
	<CAPxNcndT+PvwQaKxPkfoqWTUsGwqYZ+DeOEcLoUQbkBtyqJF-w@mail.gmail.com>
In-Reply-To: <CAPxNcndT+PvwQaKxPkfoqWTUsGwqYZ+DeOEcLoUQbkBtyqJF-w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1558556887-893012-24931-3128-1
X-BESS-VER: 2019.1_20190522.1830
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.213672 [from 
	cloudscan16.us-east-2b.ess.aws.cudaops.com]
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
X-List-Received-Date: Wed, 22 May 2019 20:28:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_595b0462ab83447ba6c637d71f534bcbsakurauscom_"

--_000_595b0462ab83447ba6c637d71f534bcbsakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rudolf,

Here is the first half of the file,  the whole file is over the 500k limit =
of free pastebin:

https://pastebin.com/UcnKebce


And here is the 2nd half of the file:

https://pastebin.com/9117tdUU


Greg

________________________________
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Sent: Wednesday, May 22, 2019 12:42:40 PM
To: Greg Wilson-Lindberg
Cc: Yocto list discussion
Subject: Re: [yocto] problem adding a user

Greg,
Can you share the logfile via Pastebin?
:rjs

On Tue, May 21, 2019 at 11:09 AM Greg Wilson-Lindberg <GWilson@sakuraus.com=
<mailto:GWilson@sakuraus.com>> wrote:

Rudolf,

Something else is happening to me. I changed to this in the image recipe:

SAKURA_USER =3D "sakura"

SAKURA_PASSWD =3D "Distracted"
SAKURA_PASS =3D "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"

EXTRA_USERS_PARAMS =3D "\
    usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
    usermod -a -G sudo,dialout ${SAKURA_USER}; \
    "

deleting all of the commented out lines, and I get this in the log file:


..../scribe/1.0-r0/rootfs -p '' sakura]


nothing between the single quotes. It's acting like SAKURA_PASS is not defi=
ned.

This is only happening when I'm trying the MD5 password.


Greg

________________________________
From: Rudolf Streif <rudolf.streif@ibeeto.com<mailto:rudolf.streif@ibeeto.c=
om>>
Sent: Tuesday, May 21, 2019 5:37:23 AM
To: Greg Wilson-Lindberg
Cc: Yocto list discussion
Subject: Re: [yocto] problem adding a user

Greg,

usermod does not work for the MD5 algorithm with the explicit password hash=
 as it contains the $ field delimiters which are interpreted by the shell e=
xecuting the usermod command. Use single quotes around the password hash:

usermod -p '${SAKURA_PASS}' ${SAKURA_USER};

:rjs

On Mon, May 20, 2019, 11:55 Greg Wilson-Lindberg <GWilson@sakuraus.com<mail=
to:GWilson@sakuraus.com>> wrote:

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
From: Rudolf Streif <rudolf.streif@ibeeto.com<mailto:rudolf.streif@ibeeto.c=
om>>
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


--
Rudolf J Streif
CEO/CTO
ibeeto, Streif Enterprises Inc.

--_000_595b0462ab83447ba6c637d71f534bcbsakurauscom_
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
<p>Rudolf,</p>
<p>Here is the first half of the file,&nbsp; the whole&nbsp;file is over th=
e 500k limit of free pastebin:</p>
<p><a href=3D"https://pastebin.com/UcnKebce" class=3D"OWAAutoLink" id=3D"LP=
lnk853779" previewremoved=3D"true">https://pastebin.com/UcnKebce</a><br>
</p>
<p><br>
</p>
<p>And here is the 2nd half of the file:</p>
<p><a href=3D"https://pastebin.com/9117tdUU" class=3D"OWAAutoLink" id=3D"LP=
lnk630047" previewremoved=3D"true">https://pastebin.com/9117tdUU</a><br>
</p>
<p><br>
</p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rudolf Streif &lt;rud=
olf.streif@ibeeto.com&gt;<br>
<b>Sent:</b> Wednesday, May 22, 2019 12:42:40 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Greg,
<div>Can you share the logfile via Pastebin?</div>
<div>:rjs</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 21, 2019 at 11:09 AM Greg=
 Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com">GWilson@sakura=
us.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div id=3D"gmail-m_8411916321849903678divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Rudolf,</p>
<p>Something else is happening to me. I changed to this in the image recipe=
:</p>
<p></p>
<div style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255);font-style=
:normal;font-weight:normal;text-decoration:none">
<pre></pre>
</div>
<p></p>
<div>SAKURA_USER =3D &quot;sakura&quot;<br>
<br>
SAKURA_PASSWD =3D &quot;Distracted&quot;<br>
SAKURA_PASS =3D &quot;$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0&quot;<br>
<br>
EXTRA_USERS_PARAMS =3D &quot;\<br>
&nbsp;&nbsp;&nbsp; usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \<br>
&nbsp;&nbsp;&nbsp; usermod -a -G sudo,dialout ${SAKURA_USER}; \<br>
&nbsp;&nbsp;&nbsp; &quot;<br>
</div>
<p>deleting all of the commented out lines,&nbsp;and I get this in the log =
file:</p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">..../scribe/1.0-r0/rootfs -p '' sakura]</=
span><br>
</p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">nothing between the single quotes. It's a=
cting like SAKURA_PASS is not defined.</span></p>
<p><span style=3D"font-size:12pt">This is only happening when I'm trying th=
e MD5 password.</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">Greg</span></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8411916321849903678divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=
=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;<br>
<b>Sent:</b> Tuesday, May 21, 2019 5:37:23 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Greg,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">usermod does not work for the MD5 algorithm with the expl=
icit password hash as it contains the $ field delimiters which are interpre=
ted by the shell executing the usermod command. Use single quotes around th=
e password hash:</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">usermod -p '${SAKURA_PASS}' ${SAKURA_USER};<br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">:rjs</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 20, 2019, 11:55 Greg Wils=
on-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">G=
Wilson@sakuraus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,H=
elvetica,sans-serif">
<p></p>
<div style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255);font-style=
:normal;font-weight:normal;text-decoration:none">
<pre>Hi Rudolf,

I've had more time to work with this and I'm still having problems getting=
=20
everything to work properly. I've attached the image recipe recipe that I'm=
=20
using so I don't leave any thing out that may be relevant.

When I build with a password that is no more more than 8 characters long
and no non-alphabetic characters:</pre>
<pre><div style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255);font-=
style:normal;font-weight:normal;text-decoration:none"><pre>SAKURA_PASSWD =
=3D &quot;Distract&quot;
SAKURA_PASS =3D &quot;WRsDFfg1BsrDM&quot;
</pre></div></pre>
<pre>everything works correctly.=20

I first tried that using the `openssl ...` form, and then I tried the=20
-1, MD5 BSD form and had problems, so I changed to doing the openssl=20
on the command line and making sure that I don't have any characters=20
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
openssl passwd -1 &quot;Distracted&quot;
$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0

that I get back from what should be a valid run of openssl, I don't see any=
thing
from the password on the usermod command line:
 &quot;...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]&quot;

I don't understand why the short passwords and passing along the proper has=
h works,=20
but not the longer password.

It also doesn't make sense that I can't put in the '$' &amp; '@' characters=
 and=20
have them work.

Any suggestions would be greatly appreciated.</pre>
<pre><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:12pt">Gre=
g</span>
</pre>
</div>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811divRplyFwdMsg" =
dir=3D"ltr">
<font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#00000=
0"><b>From:</b> Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.co=
m" rel=3D"noreferrer" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;<br=
>
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
on-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" rel=3D"noreferrer" =
target=3D"_blank">GWilson@sakuraus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"white" lang=3D"EN-US">
<div class=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015=
6557775355WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black">Thank you very much, that got me back on the right path=
.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black">Maybe I'll see you at the Yocto day at the Embedded Lin=
ux Conference.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black">Regards,<u></u><u></u></span></p>
<div>
<table class=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-4293760=
156557775355MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=3D"0=
" align=3D"left" width=3D"97%" style=3D"width:97.66%">
<tbody>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img width=3D"36" height=
=3D"7" id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-4293760156=
557775355Picture_x0020_1" alt=3D"cid:image001.png@01D35D7D.179A7510"><u></u=
><u></u></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(0,137,209)"=
>Greg Wilson-Lindberg&nbsp;
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">=
Principal Firmware Engineer | Sakura Finetek USA, Inc.&nbsp;
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:10.5pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)=
">&nbsp;<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">175=
0 W 214<sup>th</sup> Street | Torrance, CA 90501 | U.S.A.&nbsp;
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(=
88,89,91)">T: &#43;1 310 783 5075&nbsp;
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(=
88,89,91)">F: &#43;1 310 618 6902 | E:&nbsp;</span><span lang=3D"DE" style=
=3D"font-size:11pt;line-height:105%;font-family:Calibri,sans-serif;color:bl=
ack"><a href=3D"mailto:gwilson@sakuraus.com" rel=3D"noreferrer noreferrer" =
target=3D"_blank"><span style=3D"color:rgb(5,99,193)">gwilson</span><span s=
tyle=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:=
rgb(5,99,193)">@sakuraus.com</span></a></span><span lang=3D"DE" style=3D"fo=
nt-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,=
91)">&nbsp;&nbsp;
 &nbsp;&nbsp; <u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
11pt;line-height:105%;font-family:Calibri,sans-serif;color:black"><a href=
=3D"http://www.sakuraus.com" rel=3D"noreferrer noreferrer" target=3D"_blank=
"><span style=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-ser=
if;color:rgb(0,137,209);text-decoration:none">www.sakuraus.com</span></a></=
span><span style=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-=
serif;color:rgb(0,137,209)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
9pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">&nbs=
p;<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<table class=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-4293760=
156557775355MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=3D"0=
" align=3D"left" width=3D"100%" style=3D"width:100%;margin-bottom:5.75pt">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img border=3D"0" width=
=3D"188" height=3D"12" id=3D"gmail-m_8411916321849903678m_-4811443116236749=
811m_-4293760156557775355Picture_x0020_2" alt=3D"cid:image002.png@01D35D7D.=
179A7510"><u></u><u></u></p>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60pt;padding:0in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:105%"><img border=3D"0" width=3D"66" height=3D"64" id=3D"gmail-m_84119163=
21849903678m_-4811443116236749811m_-4293760156557775355Picture_x0020_3" alt=
=3D"cid:image003.png@01D35D7D.179A7510"><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-h=
eight:105%">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
7pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">Conf=
identiality Notice: This e-mail transmission may contain confidential or le=
gally privileged information that is intended
 only for the individual or entity named in the e-mail address. If you are =
not the intended recipient, you are hereby notified that any disclosure, co=
pying, distribution, or reliance upon the contents of this e-mail is strict=
ly prohibited. If you have received
 this e-mail transmission in error, please reply to the sender, so that Sak=
ura Finetek USA, Inc. can arrange for proper delivery, and then please dele=
te the message from your inbox. Thank you.</span><span style=3D"font-size:7=
pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)"><u></=
u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black"><u></u>&nbsp;<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0in 0in 0in 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:windowtext">From:</span></b><span style=3D"font-size:11pt=
;font-family:Calibri,sans-serif;color:windowtext"> Rudolf J Streif [mailto:=
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">rudolf.streif@ibeeto.com</a>]
<br>
<b>Sent:</b> Wednesday, May 15, 2019 01:30 PM<br>
<b>To:</b> Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">GWilson@sakuraus.com</a>&g=
t;; Yocto list discussion &lt;<a href=3D"mailto:yocto@yoctoproject.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">yocto@yoctoproject.org</a>&gt;=
<br>
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
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015655=
7775355divtagdefaultwrapper">
<p><span style=3D"font-family:Calibri,sans-serif">Ok, I had been using the =
useradd class in a couple of other recipes to allow me to copy files to the=
 sakura user directory and another location, but owned by sakura. That seem=
s to have been what was causing the
 problem.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I had been using the extr=
ausers class in my top&nbsp;level image recipe.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><br>
So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?<u></u><u></u></span></p=
>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif"><u></=
u>&nbsp;<u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:Calibri,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:Calibri,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015655=
7775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">
&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 12:31 PM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:Calibri,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">&nbsp=
;<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif">The ! for the password in=
 /etc/shadow indicates that the account is disabled:<u></u><u></u></span></=
p>
<p><span style=3D"font-family:Calibri,sans-serif">sakura:!:18031:0:99999:7:=
::<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Either there is something=
 wrong with the password generation or it gets disabled by something else. =
Maybe it's worth trying with a plain image without Boot2Qt or anything else=
.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">:rjs<u></u><u></u></span>=
</p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">On 5/=
15/19 11:46 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015655=
7775355divtagdefaultwrapper">
<p><span style=3D"font-family:Calibri,sans-serif">Hi Rudolf,<u></u><u></u><=
/span></p>
<p><span style=3D"font-family:Calibri,sans-serif">1st, yes I inherit extrau=
sers. Attached are the passwd &amp; shadow files.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">It shouldn't make any dif=
ference, but I'm building this for an RPi3 using the Qt Boot2Qt version of =
the Yocto environment, distro 2.5.3.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:Calibri,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:Calibri,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015655=
7775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">
&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:Calibri,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">&nbsp=
;<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif">Hi Greg,<u></u><u></u></s=
pan></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">&gt; I've also tried both=
 the back-quote and the single-quote, no difference.<u></u><u></u></span></=
p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Help me to understand thi=
s. the back-quotes are the right ones. If you use the single ones your pass=
word in the /etc/shadow ends up being 'openssl passwd test' (without the qu=
otes), unless the build fails because
 of a parsing error (I have not tried it). Silly question, you did inherit =
extrausers class?<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Can you post your /etc/pa=
sswd and /etc/shadow<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I am surprised that this =
does not work with your setup. I have been doing this a gazillion times alw=
ays with success.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">:rjs<u></u><u></u></span>=
</p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">On 5/=
15/19 11:03 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015655=
7775355x_divtagdefaultwrapper">
<p><span style=3D"font-family:Calibri,sans-serif">Hi Rudolf,<u></u><u></u><=
/span></p>
<p><span style=3D"font-family:Calibri,sans-serif">Thanks for the reply, and=
 the information on how openssl works.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I'm trying to create a us=
er with the same group name so the code that I'm using reduces to:<u></u><u=
></u></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">I als=
o, as you can see, removed the macros to eliminate as much confusion as pos=
sible.
<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I still can't login in us=
ing the&nbsp;password&nbsp;'test'.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I've also tried both the =
back-quote and the single-quote, no difference.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif">Regards,<u></u><u></u></s=
pan></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>&nbsp;<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Greg<u></u><u></u></span>=
</p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:Calibri,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"gmail-m_8411916321849903678m_-4811443116236749811m_-429376015655=
7775355x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">
&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:Calibri,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">&nbsp=
;<u></u><u></u></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Calibri,sans-serif">Hi Greg,<br>
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
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail_signature">
<div dir=3D"ltr">Rudolf J Streif
<div>CEO/CTO</div>
<div>ibeeto, Streif Enterprises Inc.</div>
</div>
</div>
</div>
</body>
</html>

--_000_595b0462ab83447ba6c637d71f534bcbsakurauscom_--
