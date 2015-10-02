Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1325CE00CDE; Fri,  2 Oct 2015 08:35:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.230 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm8-vm5.bullet.mail.ne1.yahoo.com
	(nm8-vm5.bullet.mail.ne1.yahoo.com [98.138.91.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63E3DE006F6
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 08:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1443800108; bh=9S6GPgtwNbs9t+EzzxWRF0Tr0tHx9aAyIGOzeS05XbM=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=fZxcok04hWCQWkin4QtcakVQv73ZjmRZi9H1MhUgosuZgdFyzZoQkTozRisdeI2dZwCMn6ZbVyPimQPtIrivqevoT1gHK1o3ZBaASul4gHaah2fXLF/TGRJUtq/PMN2m6EA3XoFYVJ3EItNy6jk/X64dJTOW3pop8yJHhxTYNDivEYT8rWQPSnxr1s3h4Ok8LebYfTbF5gTJUuI1BBevfcu4ZurO4gJ9GBW5t1hZrG/1+aJ4sLOJ/bFruNtVNFPWDW0ywnafeuYIJjqG8LRDxwvDK1P+OUPZivYfn1DNdKVndoCLyBUN7lOXdqehf2jhr3B2TaVQNBHrbfKYu/l5lQ==
Received: from [98.138.100.102] by nm8.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 15:35:08 -0000
Received: from [98.138.226.161] by tm101.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 15:35:08 -0000
Received: from [127.0.0.1] by omp1062.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 15:35:08 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 804615.88921.bm@omp1062.mail.ne1.yahoo.com
X-YMail-OSG: tjThSR0VM1n8GCV3rH3xcrtnSESzH2IYdz57UlsMGSue4Xf8OXqdh2_TbsLxQT4
	SFM3WVqZlgWpMx2DaAjfl5DNcRvN8SFtxBKlAcGRJWAj900fN4Or.w5RhPz._Nw9pFL85T8SzwJr
	rbRfI946M7xffKo7kyV2al2ep6O6K773dxn7L3411i2SmOz.mnC5TCwvm2vQS4Kqdu2.uWIpRf76
	.d3D56OsP.UBbNQOjB7c8ljERiuVJfmI_vOmXRlmeja_G2G5SLIT.yX3p4QP1Dg8B9ASW27r67ds
	nfyv_ZIKtPXu5NP3A39sUIhCnDUoCIWnliTjjAdyEMA7BhMEcgnBmDttsFcEZv.NHODd39Unawwc
	k88oFu2HzyGWwj39__qJRE1vG8qakRVxuMBMZAF1vmquNKbyYwqOjaav5xu4tn45FiLc3RE7XmwD
	Ff847WbJIWi2iYRzwRQmbrL.Ox_mFMDimczjIh535eZOm8fPriuGmLz35yEvVdtCYpr7B4oCKwLE
	qVAohmw84IH7sLcSH0d.9.9NToRwNE6OEYrtzPlTNBylT2NAeC15paJXco_s-
Received: by 98.138.101.163; Fri, 02 Oct 2015 15:35:08 +0000 
Date: Fri, 2 Oct 2015 15:34:32 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <717519649.323138.1443800072056.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <mailman.2882.1443798513.7199.yocto@yoctoproject.org>
References: <mailman.2882.1443798513.7199.yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: wpa_supplicant on Raspberry Pi 2B
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Oct 2015 15:35:16 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_323137_608180059.1443800072042"

------=_Part_323137_608180059.1443800072042
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Philip & Daniel,I modified interface diff -u interfaces.orig interfaces=
=20
--- interfaces.orig=C2=A0=C2=A0=C2=A0 2015-09-15 04:53:28.759998719 +0000
+++ interfaces=C2=A0=C2=A0=C2=A0 2015-09-15 04:54:16.999998700 +0000
@@ -8,8 +8,8 @@
=C2=A0iface wlan0 inet dhcp
=C2=A0=C2=A0=C2=A0=C2=A0 wireless_mode managed
=C2=A0=C2=A0=C2=A0=C2=A0 wireless_essid any
-=C2=A0=C2=A0=C2=A0 wpa-driver wext
-=C2=A0=C2=A0=C2=A0 wpa-conf /etc/wpa_supplicant.conf
+=C2=A0=C2=A0=C2=A0 wpa-driver nl80211
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wpa-conf /etc/wpa_supplicant.co=
nf
=C2=A0
=C2=A0iface atml0 inet dhcp
=C2=A0Also ran the wpa_cli stat
root@raspberrypi2:/etc/network# wpa_cli stat
Failed to connect to non-global ctrl_ifname: (nil)=C2=A0 error: Success=C2=
=A0and=20
wpa_cli -i wlan0=C2=A0=C2=A0=C2=A0 =C2=A0wpa_cli v2.4
Copyright (c) 2004-2015, Jouni Malinen <j@w1.fi> and contributors

This software may be distributed under the terms of the BSD license.
See README for more details.



Interactive mode

Could not connect to wpa_supplicant: wlan0 - re-tryingStill no success.=20
Thanks=20
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20


     On Friday, October 2, 2015 9:09 AM, "yocto-request@yoctoproject.org" <=
yocto-request@yoctoproject.org> wrote:
  =20

 Send yocto mailing list submissions to
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
=C2=A0=C2=A0=C2=A0 https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
=C2=A0=C2=A0=C2=A0 yocto-request@yoctoproject.org

You can reach the person managing the list at
=C2=A0=C2=A0=C2=A0 yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

=C2=A0 1. Release Candidate Build for yocto-2.0.rc1.rc1 now available.
=C2=A0 =C2=A0 =C2=A0 (Poky Build User)
=C2=A0 2. Re: Safely cleaning 'downloads' (Laurentiu Palcu)
=C2=A0 3. Re: [linux-yocto] [raspberryp2] Error during the build of
=C2=A0 =C2=A0 =C2=A0 linux kernel (Trevor Woerner)
=C2=A0 4. wpa_supplicant on Raspberry Pi 2B (Edward Vidal)
=C2=A0 5. Re: wpa_supplicant on Raspberry Pi 2B (Philip Balister)
=C2=A0 6. Re: wpa_supplicant on Raspberry Pi 2B (Daniel.)


----------------------------------------------------------------------

Message: 1
Date: Fri, 02 Oct 2015 07:04:04 +0000
From: "Poky Build User" <pokybuild@fedora21.osl.yoctoproject.org>
To: yocto@yoctoproject.org
Cc: otavio@ossystems.com.br
Subject: [yocto] Release Candidate Build for yocto-2.0.rc1.rc1 now
=C2=A0=C2=A0=C2=A0 available.
Message-ID: <20151002070407.D2B43E00D10@yocto-www.yoctoproject.org>
Content-Type: text/plain; charset=3Dus-ascii


A release candidate build for yocto-2.0.rc1 is now available at:

=20
http://autobuilder.yoctoproject.org/pub/releases/yocto-2.0.rc1


Please begin QA on this build as soon as possible.


Build hash information:=20
meta-intel : 84c049b9cb80b50fd32b716c2ae97e3f0d4e3cd7=20
meta-fsl-arm : 10471566d2868b07f8ac832b94d5e98a463826ba=20
meta-minnow : 9c965ef5252e383843d796cd8b50c61b3034b6ae=20
meta-qt3 : 5233565c80db869f6f539f37f26ea6662d9dc5f6=20
meta-fsl-ppc : 59fc0c33d2de5db65af4c09c4d28fd78fa0f7b4f=20
poky : eac61f37e36099f74485dab398b57f3812826d17=20


This is an automated message from
The Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder
Email: elizabeth.flanagan@intel.com=20


------------------------------

Message: 2
Date: Fri, 2 Oct 2015 14:43:37 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] Safely cleaning 'downloads'
Message-ID: <20151002114337.GG15509@lpalcu-desk>
Content-Type: text/plain; charset=3Dus-ascii

Hi Garry,

It's probably a little late (I'm not reading the Yocto mailing lists
very often now) but sometime ago I ran out of space myself and I wrote
this script that I sent out on oe-core mailing list. It did the job for
me. For some reason it didn't make it in master but maybe you find it
useful.

I didn't test it since then though. Maybe things changed, I don't know.
Give it a try if you wish. If you want to play safe, I recommend making
a copy of your downloads directory (if you have space left). :)

http://lists.openembedded.org/pipermail/openembedded-core/2015-June/106026.=
html

laurentiu

On Wed, Sep 30, 2015 at 06:13:39AM -0600, Gary Thomas wrote:
> Over time, I tend to build in the same build tree many, many
> times.=C2=A0 This leads to some really big trees as many things are
> duplicated, especially in the 'downloads' directory.
>=20
> I use local mirrors and hence my 'downloads' directory is
> _mostly_ populated with symbolic links.=C2=A0 However, there are
> also expanded SCM packages, e.g. git2/xxx
>=20
> How can I safely clean up the 'downloads' directory?=C2=A0 I already
> copy any created tarballs (I use BB_GENERATE_MIRROR_TARBALLS=3D"1"
> to preclude unneeded downloads) to my mirror, but I'd like to
> periodically clean out the whole directory (without disturbing
> my builds of course).=C2=A0 I've found out the hard way that just
> emptying seems to be unsafe, at least for some recipes like
> the [RaspberryPi] Linux kernel recipe which once built seems
> to expect the expanded git2/xxx tree to remain.
>=20
> Just trying to find ways to recover my lost GB...
>=20
> Thanks for any ideas
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=
=A0 Consulting for the
> MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
=C2=A0 Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


------------------------------

Message: 3
Date: Fri, 2 Oct 2015 08:02:49 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] [linux-yocto] [raspberryp2] Error during the
=C2=A0=C2=A0=C2=A0 build of linux kernel
Message-ID: <560E7269.6090903@gmail.com>
Content-Type: text/plain; charset=3Dwindows-1252

On 10/02/15 07:58, Karim ATIKI wrote:
> Hello Trevor,
>
> Thanks for your feedback.
> You really think that "Fido" is an older release ?

Sorry, I didn't mean to imply it was "old" and therefore should be
avoided, I meant to point out that it was something that was released
before the switch to gcc5 by default :-)

> Is the 1.9 release of Yocto stable enough yet ? And will this pb be
> fixed as well ?

I think the next release will be 2.0. Whether or not it is stable enough
is something you will have to evaluate for yourself :-) I'm rather
certain this issue is already fixed in master, therefore it should be
available for the next release.

>
> Karim

Did you really mean to reply personally? I've re-CC'ed the list, hope
you don't mind.


------------------------------

Message: 4
Date: Fri, 2 Oct 2015 14:27:58 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] wpa_supplicant on Raspberry Pi 2B
Message-ID:
=C2=A0=C2=A0=C2=A0 <1006153332.270433.1443796078701.JavaMail.yahoo@mail.yah=
oo.com>
Content-Type: text/plain; charset=3D"utf-8"

Hello all,I am using a Wi-Pi wireless adapter.?
My image has the following packages installed.
wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
Do I need any additional packages?
My wired eth0 works okay.
Which document has the most current information on setting up wireless netw=
orking?From the information at=20
 http://trac.gateworks.com/wiki/Yocto/Wireless

I modified my /etc/wpa_supplicant.conf as below without success.
ctrl_interface=3D/var/run/wpa_supplicant
ctrl_interface_group=3D0
update_config=3D1

network=3D{
??????? scan_ssid=3D1
??????? ssid=3D"myssid"
??????? psk=3D"mypsk"
??????? proto=3DWPA
??????? key_mgmt=3DWPA-PSK
}Below is the results I get when I run iwconfig.
iwconfig=20
wlan0???? IEEE 802.11bgn? ESSID:off/any?=20
????????? Mode:Managed? Access Point: Not-Associated?? Tx-Power=3D0 dBm??=
=20
????????? Retry short limit:7?? RTS thr:off?? Fragment thr:off
????????? Encryption key:off
????????? Power Management:off
?????????=20
lo??????? no wireless extensions.

eth0????? no wireless extensions.
Thanks in advance.? Any help is appreciated.

 Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151002/a3=
a81a97/attachment-0001.html>

------------------------------

Message: 5
Date: Fri, 2 Oct 2015 10:56:37 -0400
From: Philip Balister <philip@balister.org>
To: Edward Vidal <develone@sbcglobal.net>,=C2=A0=C2=A0=C2=A0 "yocto@yoctopr=
oject.org"
=C2=A0=C2=A0=C2=A0 <yocto@yoctoproject.org>
Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B
Message-ID: <560E9B25.5030303@balister.org>
Content-Type: text/plain; charset=3Dwindows-1252

On 10/02/2015 10:27 AM, Edward Vidal wrote:
> Hello all,I am using a Wi-Pi wireless adapter.=20
> My image has the following packages installed.
> wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> Do I need any additional packages?
> My wired eth0 works okay.
> Which document has the most current information on setting up wireless ne=
tworking?From the information at=20
>=C2=A0 http://trac.gateworks.com/wiki/Yocto/Wireless
>=20
> I modified my /etc/wpa_supplicant.conf as below without success.
> ctrl_interface=3D/var/run/wpa_supplicant
> ctrl_interface_group=3D0
> update_config=3D1
>=20

Try modifying /etc/network/interfaces like this:

https://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a1=
8453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11

it seems wireless extensions are deprecated and you should use the
nl80211 driver now.

Philip


> network=3D{
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 scan_ssid=3D1
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ssid=3D"myssid"
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 psk=3D"mypsk"
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 proto=3DWPA
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 key_mgmt=3DWPA-PSK
> }Below is the results I get when I run iwconfig.
> iwconfig=20
> wlan0=C2=A0 =C2=A0 IEEE 802.11bgn=C2=A0 ESSID:off/any=C2=A0=20
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mode:Managed=C2=A0 Access Point: Not-As=
sociated=C2=A0 Tx-Power=3D0 dBm=C2=A0=20
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Retry short limit:7=C2=A0 RTS thr:off=
=C2=A0 Fragment thr:off
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Encryption key:off
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Power Management:off
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
> lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 no wireless extensions.
>=20
> eth0=C2=A0 =C2=A0 =C2=A0 no wireless extensions.
> Thanks in advance.=C2=A0 Any help is appreciated.
>=20
>=C2=A0 Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>=20
>=20
>=20


------------------------------

Message: 6
Date: Fri, 2 Oct 2015 12:08:28 -0300
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B
Message-ID:
=C2=A0=C2=A0=C2=A0 <CAF3SDA7kvgNsTB7RM_wZgDUkz5b8msv7r7=3D3B1kCHVqR35aEbA@m=
ail.gmail.com>
Content-Type: text/plain; charset=3DUTF-8

What `wpa_cli stat' returns?

Regards,


2015-10-02 11:56 GMT-03:00 Philip Balister <philip@balister.org>:
> On 10/02/2015 10:27 AM, Edward Vidal wrote:
>> Hello all,I am using a Wi-Pi wireless adapter.
>> My image has the following packages installed.
>> wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> Do I need any additional packages?
>> My wired eth0 works okay.
>> Which document has the most current information on setting up wireless n=
etworking?From the information at
>>=C2=A0 http://trac.gateworks.com/wiki/Yocto/Wireless
>>
>> I modified my /etc/wpa_supplicant.conf as below without success.
>> ctrl_interface=3D/var/run/wpa_supplicant
>> ctrl_interface_group=3D0
>> update_config=3D1
>>
>
> Try modifying /etc/network/interfaces like this:
>
> https://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073=
a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11
>
> it seems wireless extensions are deprecated and you should use the
> nl80211 driver now.
>
> Philip
>
>
>> network=3D{
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 scan_ssid=3D1
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ssid=3D"myssid"
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 psk=3D"mypsk"
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 proto=3DWPA
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 key_mgmt=3DWPA-PSK
>> }Below is the results I get when I run iwconfig.
>> iwconfig
>> wlan0=C2=A0 =C2=A0 IEEE 802.11bgn=C2=A0 ESSID:off/any
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mode:Managed=C2=A0 Access Point: Not-A=
ssociated=C2=A0 Tx-Power=3D0 dBm
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Retry short limit:7=C2=A0 RTS thr:off=
=C2=A0 Fragment thr:off
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Encryption key:off
>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Power Management:off
>>
>> lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 no wireless extensions.
>>
>> eth0=C2=A0 =C2=A0 =C2=A0 no wireless extensions.
>> Thanks in advance.=C2=A0 Any help is appreciated.
>>
>>=C2=A0 Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Do or do not. There is no try"
=C2=A0 Yoda Master


------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 61, Issue 8
************************************


  

------=_Part_323137_608180059.1443800072042
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1443792461016_14070"><span id=3D"yui_=
3_16_0_1_1443792461016_14199">Hi Philip &amp; Daniel,</span></div><div id=
=3D"yui_3_16_0_1_1443792461016_14344"><span id=3D"yui_3_16_0_1_144379246101=
6_14199">I modified interface</span></div><div dir=3D"ltr" id=3D"yui_3_16_0=
_1_1443792461016_14428"><span id=3D"yui_3_16_0_1_1443792461016_14199"> diff=
 -u interfaces.orig interfaces <br class=3D"" id=3D"yui_3_16_0_1_1443792461=
016_14439">--- interfaces.orig&nbsp;&nbsp;&nbsp; 2015-09-15 04:53:28.759998=
719 +0000<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14441">+++ interfa=
ces&nbsp;&nbsp;&nbsp; 2015-09-15 04:54:16.999998700 +0000<br class=3D"" id=
=3D"yui_3_16_0_1_1443792461016_14443">@@ -8,8 +8,8 @@<br class=3D"" id=3D"y=
ui_3_16_0_1_1443792461016_14445">&nbsp;iface wlan0 inet dhcp<br class=3D"" =
id=3D"yui_3_16_0_1_1443792461016_14447">&nbsp;&nbsp;&nbsp;&nbsp; wireless_m=
ode managed<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14449">&nbsp;&nb=
sp;&nbsp;&nbsp; wireless_essid any<br class=3D"" id=3D"yui_3_16_0_1_1443792=
461016_14451">-&nbsp;&nbsp;&nbsp; wpa-driver wext<br class=3D"" id=3D"yui_3=
_16_0_1_1443792461016_14453">-&nbsp;&nbsp;&nbsp; wpa-conf /etc/wpa_supplica=
nt.conf<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14455">+&nbsp;&nbsp;=
&nbsp; wpa-driver nl80211<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14=
457">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wpa-conf /etc/wpa_supplica=
nt.conf<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14459">&nbsp;<br cla=
ss=3D"" id=3D"yui_3_16_0_1_1443792461016_14461">&nbsp;iface atml0 inet dhcp=
<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14463">&nbsp;Also ran the w=
pa_cli stat<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14465">root@rasp=
berrypi2:/etc/network# wpa_cli stat<br class=3D"" id=3D"yui_3_16_0_1_144379=
2461016_14467">Failed to connect to non-global ctrl_ifname: (nil)&nbsp; err=
or: Success</span></div><div id=3D"yui_3_16_0_1_1443792461016_14059"><div i=
d=3D"yui_3_16_0_1_1443792461016_15058">&nbsp;and <br></div><div id=3D"yui_3=
_16_0_1_1443792461016_15059">wpa_cli -i wlan0&nbsp;&nbsp;&nbsp; &nbsp;</div=
>wpa_cli v2.4<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14966">Copyrig=
ht (c) 2004-2015, Jouni Malinen &lt;j@w1.fi&gt; and contributors<br class=
=3D"" id=3D"yui_3_16_0_1_1443792461016_14968"><br class=3D"" id=3D"yui_3_16=
_0_1_1443792461016_14970">This software may be distributed under the terms =
of the BSD license.<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14972">S=
ee README for more details.<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_=
14974"><br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14976"><br class=3D"=
" id=3D"yui_3_16_0_1_1443792461016_14978"><br class=3D"" id=3D"yui_3_16_0_1=
_1443792461016_14980">Interactive mode<br class=3D"" id=3D"yui_3_16_0_1_144=
3792461016_14982"><br class=3D"" id=3D"yui_3_16_0_1_1443792461016_14984"><d=
iv id=3D"yui_3_16_0_1_1443792461016_15057" dir=3D"ltr">Could not connect to=
 wpa_supplicant: wlan0 - re-trying</div><div id=3D"yui_3_16_0_1_14437924610=
16_15138" dir=3D"ltr">Still no success. <br></div><div id=3D"yui_3_16_0_1_1=
443792461016_15214" dir=3D"ltr">Thanks <br></div></div><div id=3D"yui_3_16_=
0_1_1443792461016_13964" class=3D"signature">Edward Vidal Jr. e-mail develo=
ne@sbcglobal.net 915-595-1613</div>  <br><div class=3D"qtdSeparateBR"><br><=
br></div><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=
=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Gr=
ande, sans-serif; font-size: 16px;"> <div style=3D"font-family: HelveticaNe=
ue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size:=
 16px;"> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Friday, Octo=
ber 2, 2015 9:09 AM, "yocto-request@yoctoproject.org" &lt;yocto-request@yoc=
toproject.org&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_c=
ontainer">Send yocto mailing list submissions to<br>&nbsp;&nbsp;&nbsp; <a y=
mailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a><br><br>To subscribe or unsubscribe via the =
World Wide Web, visit<br>&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctop=
roject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org=
/listinfo/yocto</a><br>or, via email, send a message with subject or body '=
help' to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto-request@yoctoproj=
ect.org" href=3D"mailto:yocto-request@yoctoproject.org">yocto-request@yocto=
project.org</a><br><br>You can reach the person managing the list at<br>&nb=
sp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto-owner@yoctoproject.org" href=3D"=
mailto:yocto-owner@yoctoproject.org">yocto-owner@yoctoproject.org</a><br><b=
r>When replying, please edit your Subject line so it is more specific<br>th=
an "Re: Contents of yocto digest..."<br><br><br>Today's Topics:<br><br>&nbs=
p;  1. Release Candidate Build for yocto-2.0.rc1.rc1 now available.<br>&nbs=
p; &nbsp; &nbsp; (Poky Build User)<br>&nbsp;  2. Re: Safely cleaning 'downl=
oads' (Laurentiu Palcu)<br>&nbsp;  3. Re: [linux-yocto] [raspberryp2] Error=
 during the build of<br>&nbsp; &nbsp; &nbsp; linux kernel (Trevor Woerner)<=
br>&nbsp;  4. wpa_supplicant on Raspberry Pi 2B (Edward Vidal)<br>&nbsp;  5=
. Re: wpa_supplicant on Raspberry Pi 2B (Philip Balister)<br>&nbsp;  6. Re:=
 wpa_supplicant on Raspberry Pi 2B (Daniel.)<br><br><br>-------------------=
---------------------------------------------------<br><br>Message: 1<br>Da=
te: Fri, 02 Oct 2015 07:04:04 +0000<br>From: "Poky Build User" &lt;<a ymail=
to=3D"mailto:pokybuild@fedora21.osl.yoctoproject.org" href=3D"mailto:pokybu=
ild@fedora21.osl.yoctoproject.org">pokybuild@fedora21.osl.yoctoproject.org<=
/a>&gt;<br>To: <a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>Cc: <a ymailto=3D"mai=
lto:otavio@ossystems.com.br" href=3D"mailto:otavio@ossystems.com.br">otavio=
@ossystems.com.br</a><br>Subject: [yocto] Release Candidate Build for yocto=
-2.0.rc1.rc1 now<br>&nbsp;&nbsp;&nbsp; available.<br>Message-ID: &lt;<a yma=
ilto=3D"mailto:20151002070407.D2B43E00D10@yocto-www.yoctoproject.org" href=
=3D"mailto:20151002070407.D2B43E00D10@yocto-www.yoctoproject.org">201510020=
70407.D2B43E00D10@yocto-www.yoctoproject.org</a>&gt;<br>Content-Type: text/=
plain; charset=3Dus-ascii<br><br><br>A release candidate build for yocto-2.=
0.rc1 is now available at:<br><br> <br><a href=3D"http://autobuilder.yoctop=
roject.org/pub/releases/yocto-2.0.rc1" target=3D"_blank">http://autobuilder=
.yoctoproject.org/pub/releases/yocto-2.0.rc1</a><br><br><br>Please begin QA=
 on this build as soon as possible.<br><br><br>Build hash information: <br>=
meta-intel : 84c049b9cb80b50fd32b716c2ae97e3f0d4e3cd7 <br>meta-fsl-arm : 10=
471566d2868b07f8ac832b94d5e98a463826ba <br>meta-minnow : 9c965ef5252e383843=
d796cd8b50c61b3034b6ae <br>meta-qt3 : 5233565c80db869f6f539f37f26ea6662d9dc=
5f6 <br>meta-fsl-ppc : 59fc0c33d2de5db65af4c09c4d28fd78fa0f7b4f <br>poky : =
eac61f37e36099f74485dab398b57f3812826d17 <br><br><br>This is an automated m=
essage from<br>The Yocto Project Autobuilder<br>Git: git://git.yoctoproject=
.org/yocto-autobuilder<br>Email: <a ymailto=3D"mailto:elizabeth.flanagan@in=
tel.com" href=3D"mailto:elizabeth.flanagan@intel.com">elizabeth.flanagan@in=
tel.com</a> <br><br><br>------------------------------<br><br>Message: 2<br=
>Date: Fri, 2 Oct 2015 14:43:37 +0300<br>From: Laurentiu Palcu &lt;<a ymail=
to=3D"mailto:laurentiu.palcu@intel.com" href=3D"mailto:laurentiu.palcu@inte=
l.com">laurentiu.palcu@intel.com</a>&gt;<br>To: Gary Thomas &lt;<a ymailto=
=3D"mailto:gary@mlbassoc.com" href=3D"mailto:gary@mlbassoc.com">gary@mlbass=
oc.com</a>&gt;<br>Cc: Yocto Project &lt;<a ymailto=3D"mailto:yocto@yoctopro=
ject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>=
&gt;<br>Subject: Re: [yocto] Safely cleaning 'downloads'<br>Message-ID: &lt=
;<a ymailto=3D"mailto:20151002114337.GG15509@lpalcu-desk" href=3D"mailto:20=
151002114337.GG15509@lpalcu-desk">20151002114337.GG15509@lpalcu-desk</a>&gt=
;<br>Content-Type: text/plain; charset=3Dus-ascii<br><br>Hi Garry,<br><br>I=
t's probably a little late (I'm not reading the Yocto mailing lists<br>very=
 often now) but sometime ago I ran out of space myself and I wrote<br>this =
script that I sent out on oe-core mailing list. It did the job for<br>me. F=
or some reason it didn't make it in master but maybe you find it<br>useful.=
<br><br>I didn't test it since then though. Maybe things changed, I don't k=
now.<br>Give it a try if you wish. If you want to play safe, I recommend ma=
king<br>a copy of your downloads directory (if you have space left). :)<br>=
<br><a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/20=
15-June/106026.html" target=3D"_blank">http://lists.openembedded.org/piperm=
ail/openembedded-core/2015-June/106026.html</a><br><br>laurentiu<br><br>On =
Wed, Sep 30, 2015 at 06:13:39AM -0600, Gary Thomas wrote:<br>&gt; Over time=
, I tend to build in the same build tree many, many<br>&gt; times.&nbsp; Th=
is leads to some really big trees as many things are<br>&gt; duplicated, es=
pecially in the 'downloads' directory.<br>&gt; <br>&gt; I use local mirrors=
 and hence my 'downloads' directory is<br>&gt; _mostly_ populated with symb=
olic links.&nbsp; However, there are<br>&gt; also expanded SCM packages, e.=
g. git2/xxx<br>&gt; <br>&gt; How can I safely clean up the 'downloads' dire=
ctory?&nbsp; I already<br>&gt; copy any created tarballs (I use BB_GENERATE=
_MIRROR_TARBALLS=3D"1"<br>&gt; to preclude unneeded downloads) to my mirror=
, but I'd like to<br>&gt; periodically clean out the whole directory (witho=
ut disturbing<br>&gt; my builds of course).&nbsp; I've found out the hard w=
ay that just<br>&gt; emptying seems to be unsafe, at least for some recipes=
 like<br>&gt; the [RaspberryPi] Linux kernel recipe which once built seems<=
br>&gt; to expect the expanded git2/xxx tree to remain.<br>&gt; <br>&gt; Ju=
st trying to find ways to recover my lost GB...<br>&gt; <br>&gt; Thanks for=
 any ideas<br>&gt; <br>&gt; -- <br>&gt; -----------------------------------=
-------------------------<br>&gt; Gary Thomas&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;  |&nbsp; Consulting for the<br>&gt; MLB Associate=
s&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; Embedded w=
orld<br>&gt; ------------------------------------------------------------<b=
r>&gt; -- <br>&gt; _______________________________________________<br>&gt; =
yocto mailing list<br>&gt; <a ymailto=3D"mailto:yocto@yoctoproject.org" hre=
f=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>&gt; <a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">htt=
ps://lists.yoctoproject.org/listinfo/yocto</a><br><br><br>-----------------=
-------------<br><br>Message: 3<br>Date: Fri, 2 Oct 2015 08:02:49 -0400<br>=
From: Trevor Woerner &lt;<a ymailto=3D"mailto:twoerner@gmail.com" href=3D"m=
ailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;<br>To: Karim ATIKI &lt=
;<a ymailto=3D"mailto:karim_atiki@hotmail.com" href=3D"mailto:karim_atiki@h=
otmail.com">karim_atiki@hotmail.com</a>&gt;<br>Cc: "<a ymailto=3D"mailto:yo=
cto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopro=
ject.org</a>" &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mail=
to:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subject: Re: [=
yocto] [linux-yocto] [raspberryp2] Error during the<br>&nbsp;&nbsp;&nbsp; b=
uild of linux kernel<br>Message-ID: &lt;<a ymailto=3D"mailto:560E7269.60909=
03@gmail.com" href=3D"mailto:560E7269.6090903@gmail.com">560E7269.6090903@g=
mail.com</a>&gt;<br>Content-Type: text/plain; charset=3Dwindows-1252<br><br=
>On 10/02/15 07:58, Karim ATIKI wrote:<br>&gt; Hello Trevor,<br>&gt;<br>&gt=
; Thanks for your feedback.<br>&gt; You really think that "Fido" is an olde=
r release ?<br><br>Sorry, I didn't mean to imply it was "old" and therefore=
 should be<br>avoided, I meant to point out that it was something that was =
released<br>before the switch to gcc5 by default :-)<br><br>&gt; Is the 1.9=
 release of Yocto stable enough yet ? And will this pb be<br>&gt; fixed as =
well ?<br><br>I think the next release will be 2.0. Whether or not it is st=
able enough<br>is something you will have to evaluate for yourself :-) I'm =
rather<br>certain this issue is already fixed in master, therefore it shoul=
d be<br>available for the next release.<br><br>&gt;<br>&gt; Karim<br><br>Di=
d you really mean to reply personally? I've re-CC'ed the list, hope<br>you =
don't mind.<br><br><br>------------------------------<br><br>Message: 4<br>=
Date: Fri, 2 Oct 2015 14:27:58 +0000 (UTC)<br>From: Edward Vidal &lt;<a yma=
ilto=3D"mailto:develone@sbcglobal.net" href=3D"mailto:develone@sbcglobal.ne=
t">develone@sbcglobal.net</a>&gt;<br>To: "<a ymailto=3D"mailto:yocto@yoctop=
roject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a>" &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@y=
octoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subject: [yocto] wpa_sup=
plicant on Raspberry Pi 2B<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;<a ymai=
lto=3D"mailto:1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com=
" href=3D"mailto:1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.=
com">1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com</a>&gt;<=
br>Content-Type: text/plain; charset=3D"utf-8"<br><br>Hello all,I am using =
a Wi-Pi wireless adapter.?<br>My image has the following packages installed=
.<br>wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>wpa-supplicant-cli-=
2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>wpa-supplicant-dev-2.4-r0.cortexa7hf_vf=
p_vfpv4_neon<br>wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>wpa-=
supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>Do I need any add=
itional packages?<br>My wired eth0 works okay.<br>Which document has the mo=
st current information on setting up wireless networking?From the informati=
on at <br> <a href=3D"http://trac.gateworks.com/wiki/Yocto/Wireless" target=
=3D"_blank">http://trac.gateworks.com/wiki/Yocto/Wireless</a><br><br>I modi=
fied my /etc/wpa_supplicant.conf as below without success.<br>ctrl_interfac=
e=3D/var/run/wpa_supplicant<br>ctrl_interface_group=3D0<br>update_config=3D=
1<br><br>network=3D{<br>??????? scan_ssid=3D1<br>??????? ssid=3D"myssid"<br=
>??????? psk=3D"mypsk"<br>??????? proto=3DWPA<br>??????? key_mgmt=3DWPA-PSK=
<br>}Below is the results I get when I run iwconfig.<br>iwconfig <br>wlan0?=
??? IEEE 802.11bgn? ESSID:off/any? <br>????????? Mode:Managed? Access Point=
: Not-Associated?? Tx-Power=3D0 dBm?? <br>????????? Retry short limit:7?? R=
TS thr:off?? Fragment thr:off<br>????????? Encryption key:off<br>????????? =
Power Management:off<br>????????? <br>lo??????? no wireless extensions.<br>=
<br>eth0????? no wireless extensions.<br>Thanks in advance.? Any help is ap=
preciated.<br><br> Edward Vidal Jr. e-mail <a ymailto=3D"mailto:develone@sb=
cglobal.net" href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net<=
/a> 915-595-1613<br>-------------- next part --------------<br>An HTML atta=
chment was scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctoproject.org=
/pipermail/yocto/attachments/20151002/a3a81a97/attachment-0001.html" target=
=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20151=
002/a3a81a97/attachment-0001.html</a>&gt;<br><br>--------------------------=
----<br><br>Message: 5<br>Date: Fri, 2 Oct 2015 10:56:37 -0400<br>From: Phi=
lip Balister &lt;<a ymailto=3D"mailto:philip@balister.org" href=3D"mailto:p=
hilip@balister.org">philip@balister.org</a>&gt;<br>To: Edward Vidal &lt;<a =
ymailto=3D"mailto:develone@sbcglobal.net" href=3D"mailto:develone@sbcglobal=
.net">develone@sbcglobal.net</a>&gt;,&nbsp;&nbsp;&nbsp; "<a ymailto=3D"mail=
to:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a>"<br>&nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:yocto@yoc=
toproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.or=
g</a>&gt;<br>Subject: Re: [yocto] wpa_supplicant on Raspberry Pi 2B<br>Mess=
age-ID: &lt;<a ymailto=3D"mailto:560E9B25.5030303@balister.org" href=3D"mai=
lto:560E9B25.5030303@balister.org">560E9B25.5030303@balister.org</a>&gt;<br=
>Content-Type: text/plain; charset=3Dwindows-1252<br><br>On 10/02/2015 10:2=
7 AM, Edward Vidal wrote:<br>&gt; Hello all,I am using a Wi-Pi wireless ada=
pter. <br>&gt; My image has the following packages installed.<br>&gt; wpa-s=
upplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt; wpa-supplicant-cli-2.4-r=
0.cortexa7hf_vfp_vfpv4_neon<br>&gt; wpa-supplicant-dev-2.4-r0.cortexa7hf_vf=
p_vfpv4_neon<br>&gt; wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br=
>&gt; wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt; Do=
 I need any additional packages?<br>&gt; My wired eth0 works okay.<br>&gt; =
Which document has the most current information on setting up wireless netw=
orking?From the information at <br>&gt;&nbsp; <a href=3D"http://trac.gatewo=
rks.com/wiki/Yocto/Wireless" target=3D"_blank">http://trac.gateworks.com/wi=
ki/Yocto/Wireless</a><br>&gt; <br>&gt; I modified my /etc/wpa_supplicant.co=
nf as below without success.<br>&gt; ctrl_interface=3D/var/run/wpa_supplica=
nt<br>&gt; ctrl_interface_group=3D0<br>&gt; update_config=3D1<br>&gt; <br><=
br>Try modifying /etc/network/interfaces like this:<br><br><a href=3D"https=
://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453a=
abb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11" target=3D"_blank">htt=
ps://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a1845=
3aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11</a><br><br>it seems =
wireless extensions are deprecated and you should use the<br>nl80211 driver=
 now.<br><br>Philip<br><br><br>&gt; network=3D{<br>&gt;&nbsp; &nbsp; &nbsp;=
 &nbsp;  scan_ssid=3D1<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  ssid=3D"myssid"<=
br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  psk=3D"mypsk"<br>&gt;&nbsp; &nbsp; &nbs=
p; &nbsp;  proto=3DWPA<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;  key_mgmt=3DWPA-P=
SK<br>&gt; }Below is the results I get when I run iwconfig.<br>&gt; iwconfi=
g <br>&gt; wlan0&nbsp; &nbsp;  IEEE 802.11bgn&nbsp; ESSID:off/any&nbsp; <br=
>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Mode:Managed&nbsp; Access Point: N=
ot-Associated&nbsp;  Tx-Power=3D0 dBm&nbsp;  <br>&gt;&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;  Retry short limit:7&nbsp;  RTS thr:off&nbsp;  Fragment thr:of=
f<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Encryption key:off<br>&gt;&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;  Power Management:off<br>&gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;  <br>&gt; lo&nbsp; &nbsp; &nbsp; &nbsp; no wireless ext=
ensions.<br>&gt; <br>&gt; eth0&nbsp; &nbsp; &nbsp; no wireless extensions.<=
br>&gt; Thanks in advance.&nbsp; Any help is appreciated.<br>&gt; <br>&gt;&=
nbsp; Edward Vidal Jr. e-mail <a ymailto=3D"mailto:develone@sbcglobal.net" =
href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a> 915-595-1=
613<br>&gt; <br>&gt; <br>&gt; <br><br><br>------------------------------<br=
><br>Message: 6<br>Date: Fri, 2 Oct 2015 12:08:28 -0300<br>From: "Daniel." =
&lt;<a ymailto=3D"mailto:danielhilst@gmail.com" href=3D"mailto:danielhilst@=
gmail.com">danielhilst@gmail.com</a>&gt;<br>Cc: "<a ymailto=3D"mailto:yocto=
@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a>" &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subject: Re: [yoc=
to] wpa_supplicant on Raspberry Pi 2B<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; =
&lt;CAF3SDA7kvgNsTB7RM_wZgDUkz5b8msv7r7=3D<a ymailto=3D"mailto:3B1kCHVqR35a=
EbA@mail.gmail.com" href=3D"mailto:3B1kCHVqR35aEbA@mail.gmail.com">3B1kCHVq=
R35aEbA@mail.gmail.com</a>&gt;<br>Content-Type: text/plain; charset=3DUTF-8=
<br><br>What `wpa_cli stat' returns?<br><br>Regards,<br><br><br>2015-10-02 =
11:56 GMT-03:00 Philip Balister &lt;<a ymailto=3D"mailto:philip@balister.or=
g" href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt;:<br>&gt;=
 On 10/02/2015 10:27 AM, Edward Vidal wrote:<br>&gt;&gt; Hello all,I am usi=
ng a Wi-Pi wireless adapter.<br>&gt;&gt; My image has the following package=
s installed.<br>&gt;&gt; wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br=
>&gt;&gt; wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; w=
pa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; wpa-supplica=
nt-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; wpa-supplicant-passphra=
se-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br>&gt;&gt; Do I need any additional pa=
ckages?<br>&gt;&gt; My wired eth0 works okay.<br>&gt;&gt; Which document ha=
s the most current information on setting up wireless networking?From the i=
nformation at<br>&gt;&gt;&nbsp; <a href=3D"http://trac.gateworks.com/wiki/Y=
octo/Wireless" target=3D"_blank">http://trac.gateworks.com/wiki/Yocto/Wirel=
ess</a><br>&gt;&gt;<br>&gt;&gt; I modified my /etc/wpa_supplicant.conf as b=
elow without success.<br>&gt;&gt; ctrl_interface=3D/var/run/wpa_supplicant<=
br>&gt;&gt; ctrl_interface_group=3D0<br>&gt;&gt; update_config=3D1<br>&gt;&=
gt;<br>&gt;<br>&gt; Try modifying /etc/network/interfaces like this:<br>&gt=
;<br>&gt; <a href=3D"https://github.com/EttusResearch/meta-ettus/commit/da8=
6e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644ea=
R11" target=3D"_blank">https://github.com/EttusResearch/meta-ettus/commit/d=
a86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644=
eaR11</a><br>&gt;<br>&gt; it seems wireless extensions are deprecated and y=
ou should use the<br>&gt; nl80211 driver now.<br>&gt;<br>&gt; Philip<br>&gt=
;<br>&gt;<br>&gt;&gt; network=3D{<br>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  s=
can_ssid=3D1<br>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  ssid=3D"myssid"<br>&gt=
;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  psk=3D"mypsk"<br>&gt;&gt;&nbsp; &nbsp; &n=
bsp; &nbsp;  proto=3DWPA<br>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  key_mgmt=
=3DWPA-PSK<br>&gt;&gt; }Below is the results I get when I run iwconfig.<br>=
&gt;&gt; iwconfig<br>&gt;&gt; wlan0&nbsp; &nbsp;  IEEE 802.11bgn&nbsp; ESSI=
D:off/any<br>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Mode:Managed&nbsp;=
 Access Point: Not-Associated&nbsp;  Tx-Power=3D0 dBm<br>&gt;&gt;&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;  Retry short limit:7&nbsp;  RTS thr:off&nbsp;  Fra=
gment thr:off<br>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Encryption key=
:off<br>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Power Management:off<br=
>&gt;&gt;<br>&gt;&gt; lo&nbsp; &nbsp; &nbsp; &nbsp; no wireless extensions.=
<br>&gt;&gt;<br>&gt;&gt; eth0&nbsp; &nbsp; &nbsp; no wireless extensions.<b=
r>&gt;&gt; Thanks in advance.&nbsp; Any help is appreciated.<br>&gt;&gt;<br=
>&gt;&gt;&nbsp; Edward Vidal Jr. e-mail <a ymailto=3D"mailto:develone@sbcgl=
obal.net" href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a>=
 915-595-1613<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt; --<br>&gt; ______=
_________________________________________<br>&gt; yocto mailing list<br>&gt=
; <a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoct=
oproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.o=
rg/listinfo/yocto</a><br><br><br><br>-- <br>"Do or do not. There is no try"=
<br>&nbsp; Yoda Master<br><br><br>------------------------------<br><br>-- =
<br>_______________________________________________<br>yocto mailing list<b=
r><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/li=
stinfo/yocto</a><br><br><br>End of yocto Digest, Vol 61, Issue 8<br>*******=
*****************************<br><br><br></div>  </div> </div>  </div></div=
></body></html>

------=_Part_323137_608180059.1443800072042--
