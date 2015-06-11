Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86F4AE009F6; Thu, 11 Jun 2015 00:52:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71264E009C2;
	Thu, 11 Jun 2015 00:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=qbyFBq77icEGHFhVp9k+u1VRfSBeyzCsMl0qa5kEPps=; 
	b=evXqb9oiZ0SjiAx2rP6whprO04v0o79t+5Ut6zSVCCuLodQQHDpxKX/IcQnUmwhkT8jaTOeHF0PVoabFLXBZpqN679xt1lveO3XJU9muEbGYxEOcHtuYEyl1PdjF3+4FR5pjlYAbwN4FkagTxJFJyg31llGF4BN+3wKAXcWBIOw=;
Received: from durham.keylevel.com ([88.97.63.243]:5709
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.85) (envelope-from <opensource@keylevel.com>)
	id 1Z2xHX-001vfZ-GJ; Thu, 11 Jun 2015 08:52:19 +0100
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <D4B999590D2ACC499FE6A1F7CF2D454A05A77060@PGSMSX103.gar.corp.intel.com>
Date: Thu, 11 Jun 2015 08:52:02 +0100
Message-Id: <E93C211A-7165-4196-B0BB-79625A06B79F@keylevel.com>
References: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
	<2174669.LymzPMzo3U@peggleto-mobl.ger.corp.intel.com>
	<50B33AC5ED75F74F991980326F1C438D1905581B@PGSMSX103.gar.corp.intel.com>
	<D4B999590D2ACC499FE6A1F7CF2D454A05A77060@PGSMSX103.gar.corp.intel.com>
To: "Cheah, Vincent Beng Keat" <vincent.beng.keat.cheah@intel.com>
X-Mailer: Apple Mail (2.2098)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
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
X-List-Received-Date: Thu, 11 Jun 2015 07:52:26 -0000
X-Groupsio-MsgNum: 25143
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B857EAB2-89BA-4D95-B4FA-1CEF2CA729E0";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_B857EAB2-89BA-4D95-B4FA-1CEF2CA729E0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Vincent,

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

I=E2=80=99ve switch my build to use 3.19.5-yocto-standard by adding a =
preferred_version to my local.conf. This has changed the behaviour:

1) At startup XOrg is still using a lot of memory (%VSZ goes above 88%);
2) The application works much better, but still has a few minor stutters =
every now and then;
3) XOrg memory usage (%VSZ) cycles between about 25% and 88%;
4) After a while (does not appear to be deterministic) the XOrg memory =
usage drops to and stays at a %VSZ of 4%;
5) At this point the application works as it did under daisy.

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

I will have a go at down-versioning these to see if that makes any =
difference. I doubt GStreamer is the issue as I was already using 1.4.5 =
under daisy.

Thanks for the pointers :-)


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


--Apple-Mail=_B857EAB2-89BA-4D95-B4FA-1CEF2CA729E0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVeT4rAAoJEAM2GeiJDBSGZT4QANR/ZLaxCRyZTS/V5tnNmOIG
VrlI7DL2aCuq4/TFV9HLqzW3jtLbVpAaxamrXIaaQBhPQiym8UChazViKvpL+Y80
R/jUSSsskbgfoLGZQziXL4tUOMdveHNuwvVsNYLeKuJLR/dKzjds/CPDKHj+BuwM
O7YIgguM+9CsbUz1vSBfJ4f+1y1XFvtlNcl9Wrz086JNQ6UhYacqB8xH4Wle776o
hXD/ySJYFpfK7YXRNaY1ywB9dKINuBQqlUjSphtdW/F6J70zt8mLHJLnzUtZyrNj
TBRoM+0Sh0lEmrcZyaaYAt2RNpFkaZWwyXBnvj8+T2t0OgGNFZbUU62C/9SAiuxQ
1EFN4AnsH+zMAv75e9+wvXloHznR65pq0wIg6EnGnkW1M+0OQ7PRFJQAtQgecSbC
xb5waJq77kdaQruPh2FWRXgYCdIrYQxg2bi6uAs5Y4vRl1rrNKKth+MobMukJot1
IXZDA544KolWw0Ait2YiYdgnRi3BZXEBYrzt3L0/5Pkn2fPA1b7IyH1NMLJEpyt2
fTkQ1t9cXtmcdkhh3tE0VGSONrOcs4Kvi7OAeJl2D8RueQPWseIM6+PChfzftqnl
gcpQOZIlt9fppeOpcr4DzJ13FB/5av3R/aX/6Q8JNaJQ5Y8c4lmcKqnq7C+gT6kR
fH3+eV+hnedZD7GUQjqg
=Lasq
-----END PGP SIGNATURE-----

--Apple-Mail=_B857EAB2-89BA-4D95-B4FA-1CEF2CA729E0--
