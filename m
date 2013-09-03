Return-Path: <sean.liming@annabooks.com>
Received: from mail3c40.carrierzone.com (mail69c40.carrierzone.com
	[209.235.156.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1247AE00715
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 08:54:18 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail3c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r83FsBql021055; Tue, 3 Sep 2013 15:54:13 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "=?iso-8859-1?Q?'Eren_T=FCrkay'?=" <eren@hambedded.org>
References: <CAM1ZcoVgAgPYTrGzHVYcYt+qwhzqTHne9gjNhhWS75oD0HhFFg@mail.gmail.com>
	<000601cea807$0893e270$19bba750$@annabooks.com>
	<CAM1ZcoUuqJai9s3588RcG5+H-TAfWGo=Ua7zhzQQeEFLTt6FCg@mail.gmail.com>
	<001801cea865$56914f90$03b3eeb0$@annabooks.com>
	<20130903094758.GA70238@airo.local>
In-Reply-To: <20130903094758.GA70238@airo.local>
Date: Tue, 3 Sep 2013 08:54:10 -0700
Message-ID: <004101cea8bd$d5c70b80$81552280$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQDDmldSC4lseo3IDY0PJOgOATmbmwM1RjASAw9BQtQBLifXTwFxbi1Nm4Mk3kA=
X-CSC: 0
X-CHA: v=2.0 cv=f8v/8pOM c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=jeXnFUrUOPUA:10 a=_DgR7O7FQkkA:10 a=8nJEP1OIZ-IA:10 a=IjdlZ_XXAAAA:8
	a=Q2_vi_79zCsA:10 a=TdI1UJzWAAAA:8 a=iGHA9ds3AAAA:8 a=jU4qhlNgAAAA:8
	a=tlbzX-FDWbuvoBNeRcsA:9 a=wPNLvfGTeEIA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=-BaL3vmj3ssA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020202.52260626.01D3, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Cc: yocto@yoctoproject.org
Subject: Re: Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz
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
X-List-Received-Date: Tue, 03 Sep 2013 15:54:20 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

> -----Original Message-----
> From: Eren T=FCrkay [mailto:eren@hambedded.org]
> Sent: Tuesday, September 03, 2013 2:48 AM
> To: Sean Liming
> Cc: 'Katu Txakur'; yocto@yoctoproject.org
> Subject: Re: [yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz
>=20
> On Mon, Sep 02, 2013 at 10:20:41PM -0700, Sean Liming wrote:
> > It has been awhile since I looked this one up. I believe the =
installer
> > script is called init-install.sh under the /meta/recipes-core. If =
you
> > don't use a serial debug port with a terminal to catch the boot =
menu,
> > you will have to modify the syslinux.cfg file (or grub.cfg for EFI
> > boot) to run the install option rather than boot option.
>=20
> I believe that you do not have to edit syslinux.cfg for "boot" and
"install"
> option. "live" image type adds "boot" and "install" labels to =
syslinux.cfg
while
> creating the image. When you add "live" to IMAGE_FSTYPES, "image-
> live.bbclass" is run and it sets related labels.
>=20
> Regards,
> Eren
>=20
> --
>     . 73! DE TA1AET
>       http://linkedin.com/in/erenturkay


True, the live image adds these options already, but the default menu =
option
is set to 'boot'. If you don't have a serial console output setup and =
you
only have a VGA / HDMI monitor output, you would never see the menu. If =
you
know you're going to do an install, just edit the files to change the
default to 'install'.

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176


