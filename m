Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C970DE00807; Wed, 20 Aug 2014 13:20:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [84.234.17.171 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36EA8E004F5
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 13:20:02 -0700 (PDT)
Received: from [109.224.171.0] (port=60786
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1XKCMR-0005cO-Qy; Wed, 20 Aug 2014 21:20:00 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <36A43B0E1E88D84791516F9D44BC48331B3C8D01@corpmail01.corp.sensis.com>
Date: Wed, 20 Aug 2014 21:19:56 +0100
Message-Id: <29310D5A-4DFA-420C-BD13-C4AC44A43DFB@keylevel.com>
References: <36A43B0E1E88D84791516F9D44BC48331B3C8D01@corpmail01.corp.sensis.com>
To: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
X-Mailer: Apple Mail (2.1878.6)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting Default User Accounts
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
X-List-Received-Date: Wed, 20 Aug 2014 20:20:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_19E39B97-9254-41B5-AAE4-74C7E25A6003"

--Apple-Mail=_19E39B97-9254-41B5-AAE4-74C7E25A6003
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi Nick,

On 20 Aug 2014, at 20:13, Crast, Nicholas =
<Nicholas.Crast@saabsensis.com> wrote:

> All,
> =20
> I am currently in the middle of a battle with yocto, trying to =
accomplish the following:
> =20
> 1.)    Disable root user account
> 2.)    Create default user account with default password
> =20
> I currently have the following a recipe:
> USERADD_PACKAGES =3D "${PN}"
> USERADD_PARAM_${PN} =3D "-d /home/nick -r -s /bin/bash nick "
> =20
> In order to try to add a user account. I have this in my image recipe:
> =20
> ROOTFS_POSTPROCESS_COMMAND +=3D "set_nick_passwd;"
> set_nick_passwd() {
>    sed 's%^ nick:[^:]*:% nick:adySxRKMiPvjA:%' \
>        < ${IMAGE_ROOTFS}/etc/shadow \
>        > ${IMAGE_ROOTFS}/etc/shadow.new;
>    mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
> }
> =20
> This is to edit the /etc/shadow file and insert a new (hashed) =
password. What I=92m looking for is a cleaner way to do this. When I run =
bitbake I get a lot of warnings because the =93nick=94 account is =
already an account on my build machine. This seems like a fairly common =
use case, and I think I am likely going about it wrong.
> =20
> Does anybody have any advice?

I've not tried it for a new user, but I use a .bbappend to base-passwd =
to set a root password. Basically:

do_install_append() {
    sed -i 's/root::/root:<new-hash>:/' =
$(D)${datadir}/base-passwd/passwd.master
}

> =20
> -Nick
> ----------------------------------------
> Nick Crast
> Associate Software Engineer
> Saab Sensis Corporation
> Phone: 315-445-5703
> Email: Nicholas.Crast@saabsensis.com
> =20
>=20
> This message is intended only for the addressee and may contain =
information that is company confidential or privileged. Any technical =
data in this message may be exported only in accordance with the U.S. =
International Traffic in Arms Regulations (22 CFR Parts 120-130) or the =
Export Administration Regulations (15 CFR Parts 730-774). Unauthorized =
use is strictly prohibited and may be unlawful. If you are not the =
intended recipient, or the person responsible for delivering to the =
intended recipient, you should not read, copy, disclose or otherwise use =
this message. If you have received this email in error, please delete =
it, and advise the sender immediately. --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





--Apple-Mail=_19E39B97-9254-41B5-AAE4-74C7E25A6003
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">Hi =
Nick,<div><br><div><div>On 20 Aug 2014, at 20:13, Crast, Nicholas &lt;<a =
href=3D"mailto:Nicholas.Crast@saabsensis.com">Nicholas.Crast@saabsensis.co=
m</a>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div class=3D"WordSection1" =
style=3D"page: WordSection1;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;">All,<o:p></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">I am =
currently in the middle of a battle with yocto, trying to accomplish the =
following:<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt 0.5in; font-size: 11pt; font-family: Calibri, sans-serif; =
text-indent: -0.25in;"><span>1.)<span style=3D"font-style: normal; =
font-variant: normal; font-weight: normal; font-size: 7pt; line-height: =
normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span></span>Disable root =
user account<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt =
0.5in; font-size: 11pt; font-family: Calibri, sans-serif; text-indent: =
-0.25in;"><span>2.)<span style=3D"font-style: normal; font-variant: =
normal; font-weight: normal; font-size: 7pt; line-height: normal; =
font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span></span>Create =
default user account with default password<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">I =
currently have the following a recipe:<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">USERADD_PACKAGES =3D "${PN}"<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">USERADD_PARAM_${PN} =3D "-d /home/nick -r -s =
/bin/bash nick "<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">In order =
to try to add a user account. I have this in my image =
recipe:<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">ROOTFS_POSTPROCESS_COMMAND +=3D =
"set_nick_passwd;"<o:p></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">set_nick_passwd() {<o:p></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp; sed 's%^ nick:[^:]*:% nick:adySxRKMiPvjA:%' =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt; =
${IMAGE_ROOTFS}/etc/shadow \<o:p></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &gt; =
${IMAGE_ROOTFS}/etc/shadow.new;<o:p></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp; mv ${IMAGE_ROOTFS}/etc/shadow.new =
${IMAGE_ROOTFS}/etc/shadow ;<o:p></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">}<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">This is to =
edit the /etc/shadow file and insert a new (hashed) password. What I=92m =
looking for is a cleaner way to do this. When I run bitbake I get a lot =
of warnings because the =93nick=94 account is already an account on my =
build machine. This seems like a fairly common use case, and I think I =
am likely going about it wrong.<o:p></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">Does =
anybody have any =
advice?</div></div></div></blockquote><div><br></div><div>I've not tried =
it for a new user, but I use a .bbappend to base-passwd to set a root =
password. Basically:</div><div><br></div><div>do_install_append() =
{</div><div>&nbsp; &nbsp; sed -i 's/root::/root:&lt;new-hash&gt;:/' =
$(D)${datadir}/base-passwd/passwd.master</div><div>}</div><br><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div class=3D"WordSection1" =
style=3D"page: WordSection1;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">-Nick<o:p></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">----------------------------------------<o:p></o:p></div><div=
 style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">Nick Crast<o:p></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">Associate Software Engineer<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">Saab Sensis Corporation<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">Phone: 315-445-5703<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">Email:<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:Nicholas.Crast@saabsensis.com" style=3D"color: purple; =
text-decoration: =
underline;">Nicholas.Crast@saabsensis.com</a><o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;"><o:p>&nbsp;</o:p></div></div><br><i><small>This =
message is intended only for the addressee and may contain information =
that is company confidential or privileged. Any technical data in this =
message may be exported only in accordance with the U.S. International =
Traffic in Arms Regulations (22 CFR Parts 120-130) or the Export =
Administration Regulations (15 CFR Parts 730-774). Unauthorized use is =
strictly prohibited and may be unlawful. If you are not the intended =
recipient, or the person responsible for delivering to the intended =
recipient, you should not read, copy, disclose or otherwise use this =
message. If you have received this email in error, please delete it, and =
advise the sender immediately.<span =
class=3D"Apple-converted-space">&nbsp;</span></small></i>--<span =
class=3D"Apple-converted-space">&nbsp;</span><br>_________________________=
______________________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: =
underline;">https://lists.yoctoproject.org/listinfo/yocto</a></div></block=
quote></div><br><div apple-content-edited=3D"true">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: =
after-white-space;"><div>--</div><div><br></div><div>Chris =
Tapp</div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
</div></span><br class=3D"Apple-interchange-newline"><br =
class=3D"Apple-interchange-newline">
</div>
<br></div></body></html>=

--Apple-Mail=_19E39B97-9254-41B5-AAE4-74C7E25A6003--
