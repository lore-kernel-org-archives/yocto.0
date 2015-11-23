Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AF39E00AB7; Mon, 23 Nov 2015 16:11:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1421 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Nov 2015 16:11:43 PST
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42D06E00985;
	Mon, 23 Nov 2015 16:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Cc:Date:In-Reply-To:
	From:Content-Type:Mime-Version:Subject;
	bh=6yNFOSpwvlvKGCyYBMGgzASahFx1HjOJ73DXuSpnlZU=;
	b=lKCSn7fZS4hIgSSJwF+Sm7XxMe
	qYnYrmnH0qks0H3pw+cAhgbqZ7FPNu2FdX465QHb4GFTmP4RunsE2ksDmu7uQKpkr4RNFasUlE0C7
	b8l2xtEjUcZoejP0B0LeIKEM4RwU+A2h55cwCqMPraM54gWKktO6b/J9Vk3LPWg01SYQ=; 
Received: from durham.keylevel.com ([88.97.63.243]:61415
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.86) (envelope-from <opensource@keylevel.com>)
	id 1a10py-0032jA-JU; Mon, 23 Nov 2015 23:47:58 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.5\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <D4B999590D2ACC499FE6A1F7CF2D454A05A77060@PGSMSX103.gar.corp.intel.com>
Date: Mon, 23 Nov 2015 23:48:32 +0000
Message-Id: <7C8818DC-0089-471F-9438-D3D574551102@keylevel.com>
References: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
	<2174669.LymzPMzo3U@peggleto-mobl.ger.corp.intel.com>
	<50B33AC5ED75F74F991980326F1C438D1905581B@PGSMSX103.gar.corp.intel.com>
	<D4B999590D2ACC499FE6A1F7CF2D454A05A77060@PGSMSX103.gar.corp.intel.com>
To: "Cheah, Vincent Beng Keat" <vincent.beng.keat.cheah@intel.com>
X-Mailer: Apple Mail (2.3096.5)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>, "Chang,
	Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
Subject: Re: [meta-intel] "Crazy" Xorg memory usage after upgrading from Daisy to Fido
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
X-List-Received-Date: Tue, 24 Nov 2015 00:11:47 -0000
X-Groupsio-MsgNum: 27392
Content-Type: multipart/signed;
	boundary="Apple-Mail=_187764EF-A58C-4056-94F7-E257252C3EEC";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_187764EF-A58C-4056-94F7-E257252C3EEC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Vincent,

I=E2=80=99ve finally got back to being able to investigate this further.

I=E2=80=99ve now moved on to =E2=80=9Cjethro=E2=80=9D and I=E2=80=99m =
seeing exactly the same behaviour. I=E2=80=99ve tried with kernel =
versions 3.14.39, 3.19.5 and 4.1.8.

> On 10 Jun 2015, at 03:50, Cheah, Vincent Beng Keat =
<vincent.beng.keat.cheah@intel.com> wrote:
>=20
> Hi Chris,
>=20
> I don=E2=80=99t have any idea with regard to the issue that you are =
getting below. All the work that we are doing here so far is on CHV =
(yocto-kernel-3.19.5 standard/base branch).
>=20
> =46rom your statement below, it looks to me that you are upgrading =
meta-intel from Daisy to Fido branch which are using yocto-kernel-3.14 =
(meta-intel/isg/valleyisland BSP). I'm not sure if you are able to =
reproduce this with yocto-kernel-3.19.5 (standard/base branch) from the =
meta-intel common directory. Also, comparing Daisy branch against Fido, =
it seems like there are lot of changes in the user-space stacks, which =
I'm not sure could cause the issue below.
>=20
>=20
> Daisy 1.6.2
> 	Kernel 3.4, 3.10, 3.14 (Supportable common base)
> 	Xorg-server 1.15
> 	Wayland/Weston 1.4.0
> 	Xf86-video-intel 2.99.910
> 	Libdrm 2.4.52
> 	MESA 9.2.5
> 	Cairo 1.12.16
> 	libVA 1.3.1 (from meta-intel)
> 	Intel-VA-driver 1.3.2 (from meta-intel)
> 	GStreamer 1.2.3
> 	GStreamer-VAAPI 0.5.8 (from meta-intel)
>=20
>=20
> Dizzy 1.7.1
> 	Kernel 3.10, 3.14, 3.17 (Supportable common base)
> 	Xorg-server 1.15.1
> 	Wayland/Weston 1.5.0
> 	Xf86-video-intel 2.99.912
> 	Libdrm 2.4.54
> 	MESA 10.1.3
> 	Cairo 1.12.16
> 	libVA 1.3.1 (from meta-intel)
> 	Intel-VA-driver 1.3.2 (from meta-intel)
> 	GStreamer 1.4.1
> 	GStreamer-VAAPI 0.5.8 (from meta-intel)
>=20
>=20
> Fido 1.8
> 	Kernel 3.14, 3.19 (supportable comon base)
> 	Xorg-server 1.16.3
> 	Wayland/weston 1.6.0
> 	Xf86-video-intel 2.99.917
> 	Libdrm 2.4.59
> 	Mesa 10.4.4
> 	Cairo 1.12.18
> 	LibVA 1.5.0 (from meta-intel)
> 	Intel-VA-driver 1.5.0 (from meta-intel)
> 	Gstreamer 1.4.5
> 	Gstreamer-vaapi 0.5.10 (from meta-intel)
>=20
>=20
> ... Vincent
>=20
> -----Original Message-----
> From: Chang, Rebecca Swee Fun
> Sent: Wednesday, June 10, 2015 9:08 AM
> To: Cheah, Vincent Beng Keat
> Cc: meta-intel@yoctoproject.org; Chris Tapp; Yocto Project; Wold, =
Saul; 'Paul Eggleton'
> Subject: RE: [meta-intel] "Crazy" Xorg memory usage after upgrading =
from Daisy to Fido
>=20
> Hi Vincent,
>=20
> Can you help to comment on this issue mentioned by Chris?
> Thanks.
>=20
> Regards,
> Rebecca
>=20
>> -----Original Message-----
>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>> Sent: 09 June, 2015 12:15 AM
>> To: Chang, Rebecca Swee Fun
>> Cc: meta-intel@yoctoproject.org; Chris Tapp; Yocto Project; Wold, =
Saul
>> Subject: Re: [meta-intel] "Crazy" Xorg memory usage after upgrading
>> from Daisy to Fido
>>=20
>> Rebecca, is this something you or one of your colleagues would be =
able
>> to help with?
>>=20
>> Thanks,
>> Paul
>>=20
>> On Friday 05 June 2015 08:29:00 Chris Tapp wrote:
>>> I=E2=80=99ve got an application that I=E2=80=99ve had running nicely =
under Daisy for
>>> some time. As Daisy is now a bit old, I decided to move the
>>> application to
>> Fido.
>>> I=E2=80=99m using the meta-intel/isg/valleyisland BSP and also =
switched to
>>> using its Fido branch.
>>>=20
>>> The move only required a few minor changes and allowed me to drop a
>>> Daisy =E2=80=9Cupdates=E2=80=9D layer that I had been using for =
things like gstreamer-1.0.
>>>=20
>>> However, there is one behaviour which is killing me - I keep getting
>>> oom-killer events!
>>>=20
>>> The application is basically an OpenGL-ES 2.0 application that
>>> renders various bits of text, images and streams captured from a
>>> gstreamer pipeline at 60 Hz to a 1080 screen.
>>>=20
>>> Under Daisy this generally took just under 50% CPU and used a modest
>>> percentage of the 4 GB system memory - i.e. no where near running
>>> out and usage was just about static.
>>>=20
>>> Under Fido the CPU usage is about the same and the memory used by
>>> the application itself looks reasonable when compared to Daisy (and
>>> usage is static). However, the memory used by XOrg is far from
>>> constant or stable - it basically has a VSZ value cycling from about
>>> 630m to 2989m with the cycle period being in the order of 5 to 10
>>> seconds. Peaks in XOrg memory usage coincide with stutters in video
>>> playback within my app (audio is unaffected).
>>>=20
>>> Monitoring /proc/meminfo when this is going on shows that =
=E2=80=9CShmem=E2=80=9D
>>> usage is following the same pattern as the memory used by XOrg (i.e.
>>> Shmem usage is high at the same time). If the values are plotted on
>>> a graph they appear to show that Shmem usage grows linearly and then
>>> falls rapidly when nearly all the free memory has been exhausted,
>>> perhaps in response to a delayed garbage collection run.
>>>=20
>>> Does anyone have any ideas as to what I should be looking at to work
>>> out what=E2=80=99s going on?
>>>=20
>>> Are there any significant changes between XOrg under Daisy and Fido
>>> that could be causing this?
>>>=20
>>> Could this be related to the meta-intel video drivers?
>>>=20
>>> Any feedback / comments would be really appreciated.
>>>=20
>>> Thanks :-)
>>>=20
>>> --
>>>=20
>>> Chris Tapp
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>=20
>>> ----
>>> You can tell you're getting older when your car insurance gets real =
cheap!
>>=20
>> --
>>=20
>> Paul Eggleton
>> Intel Open Source Technology Centre

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_187764EF-A58C-4056-94F7-E257252C3EEC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWU6XZAAoJEAM2GeiJDBSG56oQAJCKR+NeVDo8227eXQUexgl9
Cyy7/++HSXW6dSg4n1gtEyivPiCqFxP5yK/4EO8UBeC9kzHkFwbdP4KRY4TVDb/K
YrYsQFfc0XSGBhDxEwWUOdhtF03Kar9OAWgGQtf2TmPZ7mo5GYULTerAeZz4FZND
aWKx9E7OU/UyJpUlDktA4qzX21Iioe90Q6/Vvh0OVthg4NRyGbthCocJKZcchBS6
SxyKVDWDvAZo9va5ZFcgrmrcv1PHUACYjU9Oe02x8fVakHRbavawSAl4bsuU3Yuv
AZaUOtbxivlkYS39PRfLWFrVmpKrfnQMg1DCovL7iOjyNPGQM2CH37rc2aCNAVa3
nwHmh07k6/1BzfywJ7ItdCRuq9M6zgKPRDHPn40WsD7Cj5+RWzNV38xaSc9BtXc6
t3PK0/N5+veFb3CYGaAih4rj41GrC6GxzDrMss7GI+piRdTftvH2S1dtLWmShdfs
lXEBNRkeenPpB5+B64ar0pV6FPcjnlivAd2AUw7ySW2Na8Fa/33YGg4EHxpBy2mX
+42ybhmP3b+hKQdoYnb3c+OoMTkQIhh8QIoJ8PLrdoE02H6BxJ3oks3UZo8QsQf6
RWbqkPva0SvTnPq/9DAGuodNvi2uL/F1zImdUHGTIeyUZO1RSV0xFclW4zy6qVI4
Baw/sAcKLyTte4pIdYbq
=76Xn
-----END PGP SIGNATURE-----

--Apple-Mail=_187764EF-A58C-4056-94F7-E257252C3EEC--
