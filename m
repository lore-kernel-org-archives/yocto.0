Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74833E00D97; Tue,  9 Feb 2016 02:16:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.1.168 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Feb 2016 02:16:49 PST
Received: from DUB004-OMC2S29.hotmail.com (dub004-omc2s29.hotmail.com
	[157.55.1.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC3D9E00C8D
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 02:16:49 -0800 (PST)
Received: from DUB130-W32 ([157.55.1.137]) by DUB004-OMC2S29.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 9 Feb 2016 02:15:46 -0800
X-TMN: [t+MDrE5sJ7w1mNMDJJrdf9LhDy/uhhVz]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W324DDADF2A42496E8D4656DAD60@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Feb 2016 10:15:45 +0000
Importance: Normal
In-Reply-To: <CAJTo0LZxoT8b433vJtJi7wZSfwWCcAXC77N3WFJkj3pzaLsNVw@mail.gmail.com>
References: <020DD3FF-9405-4003-9C1B-F29F060567BD@keylevel.com>,
	<A705D969-9C1F-4429-97EA-3A9E3A8BB8E4@keylevel.com>,
	<CAJTo0LZxoT8b433vJtJi7wZSfwWCcAXC77N3WFJkj3pzaLsNVw@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 09 Feb 2016 10:15:46.0594 (UTC)
	FILETIME=[D77F5820:01D16322]
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Installing only part of linux-firmware
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
X-List-Received-Date: Tue, 09 Feb 2016 10:16:52 -0000
Content-Type: multipart/alternative;
	boundary="_64b173db-c0dd-4aa1-80eb-5007f86f19fc_"

--_64b173db-c0dd-4aa1-80eb-5007f86f19fc_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I have been pondering linux-firmware recently too.
I have a device fitted that requires the 'iwlwifi-7260' firmware.
This was working but the current driver is requesting versions  13 to 10 of=
 the firmware=2C in that order.The current (master) poky recipe has version=
s 8 and 9.The source repo (I believe=2C https://github.com/OpenELEC/iwlwifi=
-firmware/tree/master/firmware) has versions up to 17 now.
I can likewise add newer versions of firmware but do you ever prune out old=
 versions?  In this case is seems that the choice of firmware limited by th=
e drivers specified by that version of yocto (via the kernel).
Regards=2CChris
From: ross.burton@intel.com
Date: Mon=2C 8 Feb 2016 08:58:32 +0000
To: opensource@keylevel.com
CC: yocto@yoctoproject.org
Subject: Re: [yocto] Installing only part of linux-firmware


On 7 February 2016 at 21:49=2C Chris Tapp <opensource@keylevel.com> wrote:
I=92ve now done this by creating a bbappend for linux-firmware:
=0A=

=0A=
PACKAGES =3D+ "${PN}-rtl_nic"
=0A=

=0A=
FILES_${PN}-rtl_nic =3D " \
=0A=
  /lib/firmware/rtl_nic/* \
=0A=
=93
=0A=

=0A=
Does what I want=2C but is that the best way of doing it?
This is the best way for you now.
That's exactly why the recipe has quite a lot of subpackages=2C feel free t=
o submit more upstream.
Ross=0A=

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_64b173db-c0dd-4aa1-80eb-5007f86f19fc_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>I have been pondering linux-firm=
ware recently too.<div><br></div><div>I have a device fitted that requires =
the 'iwlwifi-7260' firmware.</div><div><br></div><div>This was working but =
the current driver is requesting versions &nbsp=3B13 to 10 of the firmware=
=2C in that order.</div><div><span style=3D"font-size: 12pt=3B">The current=
 (master) poky recipe has versions 8 and 9.</span></div><div><span style=3D=
"font-size: 12pt=3B">The source repo (I believe=2C&nbsp=3B</span><a href=3D=
"https://github.com/OpenELEC/iwlwifi-firmware/tree/master/firmware" target=
=3D"_blank" style=3D"font-size: 12pt=3B">https://github.com/OpenELEC/iwlwif=
i-firmware/tree/master/firmware</a><span style=3D"font-size: 12pt=3B">) has=
 versions up to 17 now.</span></div><div><br></div><div>I can likewise add =
newer versions of firmware but do you ever prune out old versions? &nbsp=3B=
In this case is seems that the choice of firmware limited by the drivers sp=
ecified by that version of yocto (via the kernel).</div><div><br></div><div=
>Regards=2C</div><div>Chris</div><div><br><div><hr id=3D"stopSpelling">From=
: ross.burton@intel.com<br>Date: Mon=2C 8 Feb 2016 08:58:32 +0000<br>To: op=
ensource@keylevel.com<br>CC: yocto@yoctoproject.org<br>Subject: Re: [yocto]=
 Installing only part of linux-firmware<br><br><div dir=3D"ltr"><div class=
=3D"ecxgmail_extra"><br><div class=3D"ecxgmail_quote">On 7 February 2016 at=
 21:49=2C Chris Tapp <span dir=3D"ltr">&lt=3B<a href=3D"mailto:opensource@k=
eylevel.com" target=3D"_blank">opensource@keylevel.com</a>&gt=3B</span> wro=
te:<br><blockquote class=3D"ecxgmail_quote" style=3D"border-left:1px #ccc s=
olid=3Bpadding-left:1ex=3B"><div id=3D"ecx:kr0" class=3D"ecxa3s" style=3D"o=
verflow:hidden=3B">I=92ve now done this by creating a bbappend for linux-fi=
rmware:<br>=0A=
<br>=0A=
PACKAGES =3D+ "${PN}-rtl_nic"<br>=0A=
<br>=0A=
FILES_${PN}-rtl_nic =3D " \<br>=0A=
&nbsp=3B /lib/firmware/rtl_nic/* \<br>=0A=
=93<br>=0A=
<br>=0A=
Does what I want=2C but is that the best way of doing it?</div></blockquote=
></div><div class=3D"ecxgmail_extra"><br></div>This is the best way for you=
 now.</div><div class=3D"ecxgmail_extra"><br></div><div class=3D"ecxgmail_e=
xtra">That's exactly why the recipe has quite a lot of subpackages=2C feel =
free to submit more upstream.</div><div class=3D"ecxgmail_extra"><br></div>=
<div class=3D"ecxgmail_extra">Ross</div></div>=0A=
<br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div></div> 		 	   		  </div>=
</body>
</html>=

--_64b173db-c0dd-4aa1-80eb-5007f86f19fc_--
