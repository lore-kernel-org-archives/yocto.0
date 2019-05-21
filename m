Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF577E00D46; Tue, 21 May 2019 05:37:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A17AE00D3D
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 05:37:36 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id y10so12975045lfl.3
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 05:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eoW9wKTmAnt0er5SnJ+D6JUTADIGcNDV0WC/Khu9+JE=;
	b=sJfrp/S3xX+mIfh/B6uaLD7UvWK4FDxdpLzEDnmt6+AFnqjZ2Cj0+LbyWukHil94yO
	MC+mvPYhtj2PU/d7O26wfiyNgTc+uj2/nXRNw6Jpm1HRqSQZ4VOe6blHrtF9zRY8lC3z
	DITLmNO15SlgYYFXoDk+9t8MGxCtQicNan7vQJvwkEgKYxUVmWX0ay51xGsR16oFX9rM
	OvUxFSzXooZVZEq+9QCZoyzCR3CE3GvwNXnxI8j4aFUYfWdmHDOa2lqtljW01EhLRryu
	rbngDjBNp9tZdnBbs/PDnWgr3c4OxGzwbQ+JK0DKFw4URjYCPCE0ue1ibPsBUJjgMe/n
	Admw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eoW9wKTmAnt0er5SnJ+D6JUTADIGcNDV0WC/Khu9+JE=;
	b=a9lP0fBlbisGAM/owQk2HSG88Dcj5f1SeJZkQkSm1arRMw4wGba7PaDl15f/JwAQtj
	NLsk9hKXQeExSoKZx/bZCDVIDYlK3snrczOoJdmePmxvPTJ9UFf1zWLQhdGTBrUrmCsj
	9Qz1ybl8Vm/DuU/0DhlUM4hEl5PHee6tz1yE3LygzRK9a8F0sGabHM9mHaGI+GPtj9G6
	pwPIq8R1wS0nRIpTefZs2/c7cMTitRo7fnW6B+Xm5HGY8TwkYFnKWTDlTkOsQ3S0nnO5
	4e3muSvQ1K2TRZtkh1MfVzkbguNwmabHAv7pq4T4EqBFG+M1DFYS5sdEfYLmH0LafKQg
	nCZg==
X-Gm-Message-State: APjAAAXVh16qgaGNAKO7ahOBIZNXInv7qSqn4fWakbnRYbJtZ611ikBG
	8tKInVGxyRosmrkeHkKnM/xnJrpRunG78d4ZNVVVoQ==
X-Google-Smtp-Source: APXvYqweqzv9IyJbnBa/Yn7+Xlzj235XBWHQbki5bGaSQloDGChIltrdEb8GzDVheCd5hMAy89q4D4OOPGFiNApfMX8=
X-Received: by 2002:a19:3f4b:: with SMTP id m72mr39571853lfa.32.1558442255350; 
	Tue, 21 May 2019 05:37:35 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <f54b1f155a664191acbf6b31b8c96ab6@sakuraus.com>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Tue, 21 May 2019 05:37:23 -0700
Message-ID: <CAPxNcndS3o5uvfgKAv6YcdodyGCa6AqKxNxo5=uCz=5XpbWcvg@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
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
X-List-Received-Date: Tue, 21 May 2019 12:37:38 -0000
Content-Type: multipart/alternative; boundary="000000000000088dd70589651d05"

--000000000000088dd70589651d05
Content-Type: text/plain; charset="UTF-8"

Greg,

usermod does not work for the MD5 algorithm with the explicit password hash
as it contains the $ field delimiters which are interpreted by the shell
executing the usermod command. Use single quotes around the password hash:

usermod -p '${SAKURA_PASS}' ${SAKURA_USER};

:rjs

On Mon, May 20, 2019, 11:55 Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> Hi Rudolf,
>
> I've had more time to work with this and I'm still having problems getting
> everything to work properly. I've attached the image recipe recipe that I'm
> using so I don't leave any thing out that may be relevant.
>
> When I build with a password that is no more more than 8 characters long
> and no non-alphabetic characters:
>
> SAKURA_PASSWD = "Distract"
> SAKURA_PASS = "WRsDFfg1BsrDM"
>
> everything works correctly.
>
> I first tried that using the `openssl ...` form, and then I tried the
> -1, MD5 BSD form and had problems, so I changed to doing the openssl
> on the command line and making sure that I don't have any characters
> that display as '.' or '/'. Again, if I don't do more than 8 characters
> and no special characters everything works.
>
> When I changed to using 'Ds$tr@ct' it stopped working. The build finishes
> and the log file shows the usermod being exectued correctly:
>
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -a -G sudo,dialout sakura]
>
> But when I try to sign in it doesn't work.
>
> I then tried the 10 character password 'Distracted', the build fails:
>
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]
> Usage: usermod [options] LOGIN
>
> Options:
>   -c, --comment COMMENT         new value of the GECOS field
>   -d, --home HOME_DIR           new home directory for the user account
>   -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
>   -f, --inactive INACTIVE       set password inactive after expiration
>                                 to INACTIVE
>   -g, --gid GROUP               force use GROUP as new primary group
>   -G, --groups GROUPS           new list of supplementary GROUPS
>   -a, --append                  append the user to the supplemental GROUPS
>                                 mentioned by the -G option without removing
>                                 him/her from other groups
>   -h, --help                    display this help message and exit
>   -l, --login NEW_LOGIN         new value of the login name
>   -L, --lock                    lock the user account
>   -m, --move-home               move contents of the home directory to the
>                                 new location (use only with -d)
>   -o, --non-unique              allow using duplicate (non-unique) UID
>   -p, --password PASSWORD       use encrypted password for the new password
>   -P, --clear-password PASSWORD use clear password for the new password
>   -R, --root CHROOT_DIR         directory to chroot into
>   -s, --shell SHELL             new login shell for the user account
>   -u, --uid UID                 new UID for the user account
>   -U, --unlock                  unlock the user account
>   -v, --add-subuids FIRST-LAST  add range of subordinate uids
>   -V, --del-subuids FIRST-LAST  remove range of subordinate uids
>   -w, --add-subgids FIRST-LAST  add range of subordinate gids
>   -W, --del-subgids FIRST-LAST  remove range of subordinate gids
>
> ERROR: scribe: usermod command did not succeed.
>
> So, even though I'm putting in the openssl output:
> openssl passwd -1 "Distracted"
> $1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0
>
> that I get back from what should be a valid run of openssl, I don't see anything
> from the password on the usermod command line:
>  "...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]"
>
> I don't understand why the short passwords and passing along the proper hash works,
> but not the longer password.
>
> It also doesn't make sense that I can't put in the '$' & '@' characters and
> have them work.
>
> Any suggestions would be greatly appreciated.
>
> Greg
>
> ------------------------------
> *From:* Rudolf Streif <rudolf.streif@ibeeto.com>
> *Sent:* Wednesday, May 15, 2019 4:58:26 PM
> *To:* Greg Wilson-Lindberg
> *Cc:* Yocto list discussion
> *Subject:* Re: [yocto] problem adding a user
>
> Glad to hear that it works now. I am planning on attending the YP DevDay.
>
> :rjs
>
> On Wed, May 15, 2019, 13:53 Greg Wilson-Lindberg <GWilson@sakuraus.com>
> wrote:
>
>> Thank you very much, that got me back on the right path.
>>
>> Maybe I'll see you at the Yocto day at the Embedded Linux Conference.
>>
>> Regards,
>>
>> [image: cid:image001.png@01D35D7D.179A7510]
>>
>> *Greg Wilson-Lindberg  *
>>
>> *Principal Firmware Engineer | Sakura Finetek USA, Inc.  *
>>
>>
>>
>> 1750 W 214th Street | Torrance, CA 90501 | U.S.A.
>>
>> T: +1 310 783 5075
>>
>> F: +1 310 618 6902 | E: gwilson@sakuraus.com
>>
>> www.sakuraus.com
>>
>>
>>
>> [image: cid:image002.png@01D35D7D.179A7510]
>>
>> [image: cid:image003.png@01D35D7D.179A7510]
>> ------------------------------
>>
>> Confidentiality Notice: This e-mail transmission may contain confidential
>> or legally privileged information that is intended only for the individual
>> or entity named in the e-mail address. If you are not the intended
>> recipient, you are hereby notified that any disclosure, copying,
>> distribution, or reliance upon the contents of this e-mail is strictly
>> prohibited. If you have received this e-mail transmission in error, please
>> reply to the sender, so that Sakura Finetek USA, Inc. can arrange for
>> proper delivery, and then please delete the message from your inbox. Thank
>> you.
>>
>>
>>
>>
>>
>> *From:* Rudolf J Streif [mailto:rudolf.streif@ibeeto.com]
>> *Sent:* Wednesday, May 15, 2019 01:30 PM
>> *To:* Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list discussion
>> <yocto@yoctoproject.org>
>> *Subject:* Re: [yocto] problem adding a user
>>
>>
>>
>> Instead of
>>
>>
>>
>> useradd -p `openssl passwd test` sakura
>>
>>
>>
>> which attempts to add the user and set the password which fails if the
>> user already exists, use
>>
>>
>>
>> usermod -p `openssl passwd test` sakura
>>
>>
>>
>> which sets the user's password.
>>
>>
>>
>> :rjs
>>
>>
>>
>> On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:
>>
>> Ok, I had been using the useradd class in a couple of other recipes to
>> allow me to copy files to the sakura user directory and another location,
>> but owned by sakura. That seems to have been what was causing the problem.
>>
>>
>>
>> I had been using the extrausers class in my top level image recipe.
>>
>>
>> So now how do I get all of this to work together? Do I need to put
>> everything that touches the sakura user in the same recipe? It seems that I
>> need to use only one of the useradd or extrausers classes?
>>
>>
>>
>> Greg
>> ------------------------------
>>
>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>> <rudolf.streif@ibeeto.com>
>> *Sent:* Wednesday, May 15, 2019 12:31 PM
>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>> *Subject:* Re: [yocto] problem adding a user
>>
>>
>>
>> The ! for the password in /etc/shadow indicates that the account is
>> disabled:
>>
>> sakura:!:18031:0:99999:7:::
>>
>>
>>
>> Either there is something wrong with the password generation or it gets
>> disabled by something else. Maybe it's worth trying with a plain image
>> without Boot2Qt or anything else.
>>
>>
>>
>> :rjs
>>
>>
>>
>>
>>
>> On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:
>>
>> Hi Rudolf,
>>
>> 1st, yes I inherit extrausers. Attached are the passwd & shadow files.
>>
>>
>>
>> It shouldn't make any difference, but I'm building this for an RPi3 using
>> the Qt Boot2Qt version of the Yocto environment, distro 2.5.3.
>>
>>
>>
>> Greg
>> ------------------------------
>>
>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>> <rudolf.streif@ibeeto.com>
>> *Sent:* Wednesday, May 15, 2019 11:26 AM
>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>> *Subject:* Re: [yocto] problem adding a user
>>
>>
>>
>> Hi Greg,
>>
>>
>>
>> > I've also tried both the back-quote and the single-quote, no difference.
>>
>>
>>
>> Help me to understand this. the back-quotes are the right ones. If you
>> use the single ones your password in the /etc/shadow ends up being 'openssl
>> passwd test' (without the quotes), unless the build fails because of a
>> parsing error (I have not tried it). Silly question, you did inherit
>> extrausers class?
>>
>>
>>
>> Can you post your /etc/passwd and /etc/shadow
>>
>>
>>
>> I am surprised that this does not work with your setup. I have been doing
>> this a gazillion times always with success.
>>
>>
>>
>> :rjs
>>
>>
>>
>>
>>
>>
>>
>> On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:
>>
>> Hi Rudolf,
>>
>> Thanks for the reply, and the information on how openssl works.
>>
>>
>>
>> I'm trying to create a user with the same group name so the code that I'm
>> using reduces to:
>>
>> EXTRA_USERS_PARAMS = "\
>>
>>     useradd -p `openssl passwd test` sakura; \
>>
>>     usermod -a -G sudo ${SAKURA_USER}; \
>>
>>     "
>>
>> I also, as you can see, removed the macros to eliminate as much confusion
>> as possible.
>>
>>
>>
>> I still can't login in using the password 'test'.
>>
>>
>>
>> I've also tried both the back-quote and the single-quote, no difference.
>>
>> Regards,
>>
>>
>>
>> Greg
>> ------------------------------
>>
>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>> <rudolf.streif@ibeeto.com>
>> *Sent:* Wednesday, May 15, 2019 10:07:47 AM
>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>> *Subject:* Re: [yocto] problem adding a user
>>
>>
>>
>> Hi Greg,
>>
>> Well, I suppose I wrote the book you are referring to...
>>
>>
>> Using
>>
>> useradd -p PASSWORD USER
>>
>> takes the password hash for PASSWORD hence the use of openssl in:
>>
>> useadd -p `openssl passwd PASSWORD` USER
>>
>> openssl password creates the password hash using the original crypt hash
>> algorithm if no other options are specified. e.g.
>>
>> $ openssl passwd hello
>> 6hEsTksgRkeiI
>>
>> With this the first two characters of the output is the salt and the
>> rest is the password hash. If you want openssl to create the same result
>> again:
>>
>> $ openssl passwd -salt "6h" hello
>> 6hEsTksgRkeiI
>>
>> You can use newer algorithms like MD5 based BSD password algorithm 1:
>>
>> $ openssl passwd -1 hello
>> $1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1
>>
>> $1 : password algorithm 1
>> $4Mu8Fcs. : salt
>> $eIKgPP7RCYrb3lFZjhADA1 : password hash
>>
>>
>> If you log into the system you have to use the clear password. The
>> system reads the salt, creates the password hash and compares the results.
>>
>>
>> :rjs
>>
>>
>> On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
>> > I'm trying to use the example in "Embedded Linux Systems with the Yocto
>> Project" to add a user to my Yocto build. In the book the sample code:
>> >
>> >     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>> >
>> > uses openssl to generate the encrypted password string to pass to
>> useradd. I have never been able to get this to work. When I run the openssl
>> > command on the cmd line I get a different value every time, this seems
>> wrong, How can the password code compare against it if every encode
>> > produces a different value?
>> >
>> > I am getting the user added to the system, the home directory shows up
>> and the user is in the passwd and group files. I just can't login to the
>> > account.
>> >
>> > I've obviously got something confused, any help would be appreciated.
>> >
>> > Greg Wilson-Lindberg
>> >
>>
>> --
>> -----
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3396 x700
>>
>> --
>>
>> -----
>>
>> Rudolf J Streif
>>
>> CEO/CTO ibeeto
>>
>> +1.855.442.3396 x700
>>
>> --
>>
>> -----
>>
>> Rudolf J Streif
>>
>> CEO/CTO ibeeto
>>
>> +1.855.442.3396 x700
>>
>> --
>>
>> -----
>>
>> Rudolf J Streif
>>
>> CEO/CTO ibeeto
>>
>> +1.855.442.3396 x700
>>
>>

--000000000000088dd70589651d05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Greg,<div dir=3D"auto"><br></div><div dir=3D"auto">usermo=
d does not work for the MD5 algorithm with the explicit password hash as it=
 contains the $ field delimiters which are interpreted by the shell executi=
ng the usermod command. Use single quotes around the password hash:</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">usermod -p &#39;${SAKURA_PASS}&=
#39; ${SAKURA_USER};<br></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>:rjs</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, May 20, 2019, 11:55 Greg Wilson-Lindberg &lt;<a href=3D"=
mailto:GWilson@sakuraus.com">GWilson@sakuraus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">



<div>

<div id=3D"m_-4811443116236749811divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div style=3D"color:#000000;background-color:#ffffff;font-style:normal;font=
-weight:normal;text-decoration:none">
<pre>Hi Rudolf,

I&#39;ve had more time to work with this and I&#39;m still having problems =
getting=20
everything to work properly. I&#39;ve attached the image recipe recipe that=
 I&#39;m=20
using so I don&#39;t leave any thing out that may be relevant.

When I build with a password that is no more more than 8 characters long
and no non-alphabetic characters:</pre>
<pre><div style=3D"color:#000000;background-color:#ffffff;font-style:normal=
;font-weight:normal;text-decoration:none"><pre>SAKURA_PASSWD =3D &quot;Dist=
ract&quot;
SAKURA_PASS =3D &quot;WRsDFfg1BsrDM&quot;
</pre></div></pre>
<pre>everything works correctly.=20

I first tried that using the `openssl ...` form, and then I tried the=20
-1, MD5 BSD form and had problems, so I changed to doing the openssl=20
on the command line and making sure that I don&#39;t have any characters=20
that display as &#39;.&#39; or &#39;/&#39;. Again, if I don&#39;t do more t=
han 8 characters
and no special characters everything works.

When I changed to using &#39;Ds$tr@ct&#39; it stopped working. The build fi=
nishes
and the log file shows the usermod being exectued correctly:

NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]
NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -a -G sudo,dialout sakura]

But when I try to sign in it doesn&#39;t work.

I then tried the 10 character password &#39;Distracted&#39;, the build fail=
s:

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

So, even though I&#39;m putting in the openssl output:
openssl passwd -1 &quot;Distracted&quot;
$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0

that I get back from what should be a valid run of openssl, I don&#39;t see=
 anything
from the password on the usermod command line:
 &quot;...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]&quot;

I don&#39;t understand why the short passwords and passing along the proper=
 hash works,=20
but not the longer password.

It also doesn&#39;t make sense that I can&#39;t put in the &#39;$&#39; &amp=
; &#39;@&#39; characters and=20
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
<div id=3D"m_-4811443116236749811divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_b=
lank" rel=3D"noreferrer">rudolf.streif@ibeeto.com</a>&gt;<br>
<b>Sent:</b> Wednesday, May 15, 2019 4:58:26 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>=C2=A0</div>
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
on-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank" r=
el=3D"noreferrer">GWilson@sakuraus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-4811443116236749811m_-4293760156557775355WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Thank you very much, that got me back on =
the right path.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Maybe I&#39;ll see you at the Yocto day a=
t the Embedded Linux Conference.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Regards,<u></u><u></u></span></p>
<div>
<table class=3D"m_-4811443116236749811m_-4293760156557775355MsoNormalTable"=
 border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"9=
7%" style=3D"width:97.66%">
<tbody>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img width=3D"36" height=
=3D"7" id=3D"m_-4811443116236749811m_-4293760156557775355Picture_x0020_1" a=
lt=3D"cid:image001.png@01D35D7D.179A7510"><u></u><u></u></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#=
0089d1">Greg Wilson-Lindberg=C2=A0
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#=
58595b">Principal Firmware Engineer | Sakura Finetek USA, Inc.=C2=A0
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:10.5pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#=
58595b">=C2=A0<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#585=
95b">1750 W 214<sup>th</sup> Street | Torrance, CA 90501 | U.S.A.=C2=A0
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-se=
rif;color:#58595b">T: +1 310 783 5075=C2=A0
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-se=
rif;color:#58595b">F: +1 310 618 6902 | E:=C2=A0</span><span lang=3D"DE" st=
yle=3D"font-size:11.0pt;line-height:105%;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:black"><a href=3D"mailto:gwilson@sakuraus.com" rel=3D"norefe=
rrer noreferrer" target=3D"_blank"><span style=3D"color:#0563c1">gwilson</s=
pan><span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Aria=
l&quot;,sans-serif;color:#0563c1">@sakuraus.com</span></a></span><span lang=
=3D"DE" style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&=
quot;,sans-serif;color:#58595b">=C2=A0=C2=A0
 =C2=A0=C2=A0 <u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
11.0pt;line-height:105%;font-family:&quot;Calibri&quot;,sans-serif;color:bl=
ack"><a href=3D"http://www.sakuraus.com" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank"><span style=3D"font-size:10.0pt;line-height:105%;font-family:=
&quot;Arial&quot;,sans-serif;color:#0089d1;text-decoration:none">www.sakura=
us.com</span></a></span><span style=3D"font-size:10.0pt;line-height:105%;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#0089d1">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
9.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:#5859=
5b">=C2=A0<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<table class=3D"m_-4811443116236749811m_-4293760156557775355MsoNormalTable"=
 border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"1=
00%" style=3D"width:100.0%;margin-bottom:5.75pt">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img border=3D"0" width=
=3D"188" height=3D"12" id=3D"m_-4811443116236749811m_-4293760156557775355Pi=
cture_x0020_2" alt=3D"cid:image002.png@01D35D7D.179A7510"><u></u><u></u></p=
>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60.0pt;padding:0in 0in 0i=
n 0in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:105%"><img border=3D"0" width=3D"66" height=3D"64" id=3D"m_-4811443116236=
749811m_-4293760156557775355Picture_x0020_3" alt=3D"cid:image003.png@01D35D=
7D.179A7510"><u></u><u></u></p>
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
libri&quot;,sans-serif;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:windowtext">From:</span></b><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtex=
t"> Rudolf J Streif [mailto:<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">rudolf.streif@ibeeto.com</a>]
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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p>Instead of<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>useradd -p `openssl passwd test` sakura<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>which attempts to add the user and set the password which fails if the u=
ser already exists, use<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>usermod -p `openssl passwd test` sakura<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>which sets the user&#39;s password.<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>:rjs<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:<u></=
u><u></u></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"m_-4811443116236749811m_-4293760156557775355divtagdefaultwrapper=
">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Ok, I had bee=
n using the useradd class in a couple of other recipes to allow me to copy =
files to the sakura user directory and another location, but owned by sakur=
a. That seems to have been what was causing
 the problem.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I had been us=
ing the extrausers class in my top=C2=A0level image recipe.<u></u><u></u></=
span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><br>
So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?<u></u><u></u></span></p=
>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><u></u>=C2=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_-4811443116236749811m_-4293760156557775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 12:31 PM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">=C2=A0<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">The ! for the=
 password in /etc/shadow indicates that the account is disabled:<u></u><u><=
/u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">sakura:!:1803=
1:0:99999:7:::<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Either there =
is something wrong with the password generation or it gets disabled by some=
thing else. Maybe it&#39;s worth trying with a plain image without Boot2Qt =
or anything else.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">:rjs<u></u><u=
></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span=
></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"m_-4811443116236749811m_-4293760156557775355divtagdefaultwrapper=
">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Rudolf,<u>=
</u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">1st, yes I in=
herit extrausers. Attached are the passwd &amp; shadow files.<u></u><u></u>=
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">It shouldn&#3=
9;t make any difference, but I&#39;m building this for an RPi3 using the Qt=
 Boot2Qt version of the Yocto environment, distro 2.5.3.<u></u><u></u></spa=
n></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_-4811443116236749811m_-4293760156557775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">=C2=A0<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Greg,<u></=
u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">&gt; I&#39;ve=
 also tried both the back-quote and the single-quote, no difference.<u></u>=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Help me to un=
derstand this. the back-quotes are the right ones. If you use the single on=
es your password in the /etc/shadow ends up being &#39;openssl passwd test&=
#39; (without the quotes), unless the build fails because
 of a parsing error (I have not tried it). Silly question, you did inherit =
extrausers class?<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Can you post =
your /etc/passwd and /etc/shadow<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I am surprise=
d that this does not work with your setup. I have been doing this a gazilli=
on times always with success.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">:rjs<u></u><u=
></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span=
></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div id=3D"m_-4811443116236749811m_-4293760156557775355x_divtagdefaultwrapp=
er">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Rudolf,<u>=
</u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Thanks for th=
e reply, and the information on how openssl works.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I&#39;m tryin=
g to create a user with the same group name so the code that I&#39;m using =
reduces to:<u></u><u></u></span></p>
<div>
<pre style=3D"background:white">EXTRA_USERS_PARAMS =3D &quot;\<u></u><u></u=
></pre>
<pre style=3D"background:white">=C2=A0=C2=A0=C2=A0 useradd -p `openssl pass=
wd test` sakura; \<u></u><u></u></pre>
<pre style=3D"background:white">=C2=A0=C2=A0=C2=A0 usermod -a -G sudo ${SAK=
URA_USER}; \<u></u><u></u></pre>
<pre style=3D"background:white">=C2=A0=C2=A0=C2=A0 &quot;<u></u><u></u></pr=
e>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I also, as you can see, removed the macros to eliminate as much conf=
usion as possible.
<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I still can&#=
39;t login in using the=C2=A0password=C2=A0&#39;test&#39;.<u></u><u></u></s=
pan></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I&#39;ve also=
 tried both the back-quote and the single-quote, no difference.<u></u><u></=
u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Regards,<u></=
u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><u></u>=C2=A0=
<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Greg<u></u><u=
></u></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_-4811443116236749811m_-4293760156557775355x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">=C2=A0<u></u><u></u></span></p>
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
&gt; I&#39;m trying to use the example in &quot;Embedded Linux Systems with=
 the Yocto Project&quot; to add a user to my Yocto build. In the book the s=
ample code:<br>
&gt;<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0 useradd -p `openssl passwd ${DEV_PASSWORD}` de=
veloper; \<br>
&gt;<br>
&gt; uses openssl to generate the encrypted password string to pass to user=
add. I have never been able to get this to work. When I run the openssl<br>
&gt; command on the cmd line I get a different value every time, this seems=
 wrong, How can the password code compare against it if every encode<br>
&gt; produces a different value?<br>
&gt;<br>
&gt; I am getting the user added to the system, the home directory shows up=
 and the user is in the passwd and group files. I just can&#39;t login to t=
he<br>
&gt; account.<br>
&gt;<br>
&gt; I&#39;ve obviously got something confused, any help would be appreciat=
ed.<br>
&gt;<br>
&gt; Greg Wilson-Lindberg<br>
&gt;=C2=A0=C2=A0 <br>
<br>
-- <br>
-----<br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
+1.855.442.3396 x700<u></u><u></u></span></p>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000088dd70589651d05--
