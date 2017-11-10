Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBB2E00CE2; Fri, 10 Nov 2017 06:36:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E12E00AD7
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 06:36:37 -0800 (PST)
Received: by mail-wr0-f175.google.com with SMTP id j15so8771267wre.8
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 06:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1xc99CUquOWjTZJnsazH4bDfnZvOdi1WFrsLINq6AMs=;
	b=uYElU7Vp8ng32wJ0ja9IGW7dPPE8pB6UjUnuCblst/BxqrkPaL69QgXtI2wep67oEV
	WXI3L/gmsX0WDS3NodC9PgpqyvleTb6j6e5I/+IdNRKH2gbafJgC7K5xv4Yv1cnixfCz
	6Y1EpmH4MMLU7ieNoe32s2vf58AX8XUizctVX0fiT8Uszmlp6+Htluooh6foaHvhhVAZ
	DNv8R7tngMjdogn2I25o2U8CQPxRokgd5lWMdhF/sMgQWOrnDKZwnHcNbGLFh+ncWtrA
	DFKtrNV14ag6GRateF0hJi96edFnRNgqgZWEkwrkN8DBMuI+9g38yG/YQldVtfN190oA
	KErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1xc99CUquOWjTZJnsazH4bDfnZvOdi1WFrsLINq6AMs=;
	b=TNWWVuiZ0KhVKVedjxZFU001P/japuZAAH1wHua+FzmPkeF2JJEIt/IwxThn9a9Khc
	lDLd9XTxNIF7w/RQMbvHcelzDwVoU+ioZhl4K31IK6ysDooE39wip1USHd2EUPMW45lJ
	FA5LS/NrQuVpxTY4IRX/ItanHxDbLcNWfgw+PIoBh/wYjwV2vhlLb77K/aNGynefbCp9
	cKr5Q95DJcKfgeh8Tz0ShAAykRtJEWQS3fU52qsT4lcGoW72wpsZsPxOdlUYpqVKq10I
	IlPb22HXkf6PZGJ1+tC94+f0f/9BfzXeMVXUqbx0im1b2IvMv7BZyXJWrBmpPl2EgE9T
	VTYQ==
X-Gm-Message-State: AJaThX4rPDI6GcdUZmiUV0Ll5Vf1XUaO2E2HQ6cTOgKGrPOb76tlm43L
	1FLP0mZ7f5dNFO1lnMHJAxzQbF1Xf1ME1Na0PAllUQ==
X-Google-Smtp-Source: AGs4zMZTWTLK72U6U7/WME6vevAarugtmEDoMkV/V09t9DA+x/nJ0xJQfjfGGJUDlmSkBneUsfhRwkezOyWyMkZUC2s=
X-Received: by 10.223.165.67 with SMTP id j3mr458890wrb.271.1510324595885;
	Fri, 10 Nov 2017 06:36:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Fri, 10 Nov 2017 06:36:35 -0800 (PST)
In-Reply-To: <CAOT_U5bNfmk1AxT-vTvSvcPN1XT0g+XGvQ7rb2XS50Zo+wg9qQ@mail.gmail.com>
References: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
	<CAGAf8Lyy=3OeSZQEiEKiVDNmWwvMan9=P8t2nuDwvL3Jk=kMaw@mail.gmail.com>
	<CAOT_U5bNfmk1AxT-vTvSvcPN1XT0g+XGvQ7rb2XS50Zo+wg9qQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 10 Nov 2017 15:36:35 +0100
Message-ID: <CAGAf8LwRZ3rU8+yMV1Tn+MHOFKUbsHM4emFpRWE0S6-asK4snA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Using devtool for adding a systemd service
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
X-List-Received-Date: Fri, 10 Nov 2017 14:36:39 -0000
Content-Type: multipart/alternative; boundary="f403045f12be0889e6055da1d94e"

--f403045f12be0889e6055da1d94e
Content-Type: text/plain; charset="UTF-8"

Hello Alan,

I would admit that I did not understand the package you would like to use,
and what is the problem with it.

But I, from the back of my mind (somehow) understood that I need to query
the packages I know, and these packages are mandatory for any Linux.

The following I tried on the host system (which is Fedora 26), transcript
follows:
[root@192 build]# dnf install systemd
Last metadata expiration check: 3:27:32 ago on Fri 10 Nov 2017 11:54:19 AM
CET.
Package systemd-233-7.fc26.x86_64 is already installed, skipping.
Dependencies resolved.
Nothing to do.
Complete!
[root@192 build]# dnf install systemctl
Last metadata expiration check: 3:27:43 ago on Fri 10 Nov 2017 11:54:19 AM
CET.
No match for argument: systemctl
Error: Unable to find a match
[root@192 build]# which systemd-*
/usr/bin/which: no systemd-* in
(/home/user/YOCTO/oe_core_embedded/poky/scripts:/home/user/YOCTO/oe_core_embedded/poky/bitbake/bin:/usr/libexec/python2-sphinx:/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/user/.local/bin:/home/user/bin)
[root@192 build]# which systemd-
systemd-analyze                 systemd-detect-virt
 systemd-mount                   systemd-socket-activate
systemd-ask-password            systemd-escape
systemd-notify                  systemd-stdio-bridge
systemd-cat                     systemd-firstboot
 systemd-nspawn                  systemd-sysusers
systemd-cgls                    systemd-hwdb
systemd-path                    systemd-tmpfiles
systemd-cgtop                   systemd-inhibit
 systemd-resolve                 systemd-tty-ask-password-agent
systemd-delta                   systemd-machine-id-setup
systemd-run                     systemd-umount
[root@192 build]# which systemctl
/usr/bin/systemctl
[root@192 build]#

But, in contrary, using the target YOCTO, despite we have there two
packages:

*/meta/recipes-core/systemd/systemd*
*./meta/recipes-core/systemd/systemd-systemctl*

I do not see them presented in the final qemux86-64 build. I'll repeat (target
CLI transcript follows):
sh-4.4# uname -r
4.12.12-yocto-standard
sh-4.4# which systemd
sh-4.4# which systemctl
sh-4.4#

Maybe it is me... But I think somebody should look also to what I wrote,
since I am, maybe, after all, mistaken!?

I really hope I made it very clear.

Thank you,
Zoran Stojsavljevic

On Fri, Nov 10, 2017 at 1:23 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Hey Zoran,
> this doesn't really have anything to do with my question.
> Would suggest you to rephrase it to make it more clear.
>
> But we have there both packages??? We do, we do?!
>
> Do we really have problem here, YOCTO maintainers??? Please, could you
>> post sound and logical explanation for NOT having these services in the
>> default YOCTO?
>
>
> Also would suggest you perhaps reiterate on your question style a bit,
> it might result in more people responding.
>
> Be Well,
> Alan
>
>
> On Fri, Nov 10, 2017 at 12:41 PM, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> It is, after all, interesting question, you posted here, Alan!
>>
>> I did something else, very different than you - I did the following!
>>
>> [user@192 poky]$ pwd
>> /home/user/YOCTO/oe_core_embedded/poky
>> [user@192 poky]$ find . -name systemd*
>> ./scripts/lib/wic/canned-wks/systemd-bootdisk.wks
>> ./meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
>> ./build/tmp/sysroots-components/core2-64/at-spi2-core/usr/lib/systemd
>> ./build/tmp/sysroots-components/core2-64/rpm/usr/lib/rpm-plu
>> gins/systemd_inhibit.so
>> ./meta/lib/oeqa/runtime/cases/systemd.py
>> ./meta/classes/systemd.bbclass
>> ./meta/classes/systemd-boot.bbclass
>> ./meta/recipes-devtools/systemd-bootchart
>> ./meta/recipes-devtools/systemd-bootchart/systemd-bootchart_231.bb
>> ./meta/recipes-core/systemd
>> ./meta/recipes-core/systemd/systemd_234.bb
>> ./meta/recipes-core/systemd/systemd-machine-units_1.0.bb
>> ./meta/recipes-core/systemd/systemd-serialgetty
>> ./meta/recipes-core/systemd/systemd.inc
>> ./meta/recipes-core/systemd/systemd-boot_234.bb
>> ./meta/recipes-core/systemd/systemd-compat-units.bb
>> ./meta/recipes-core/systemd/systemd-systemctl-native.bb
>> ./meta/recipes-core/systemd/systemd
>> ./meta/recipes-core/systemd/systemd-systemctl
>> ./meta/recipes-core/systemd/systemd-serialgetty.bb
>> [user@192 poky]$
>>
>> But we have there both packages??? We do, we do?!
>>
>> *./meta/recipes-core/systemd/systemd*
>> *./meta/recipes-core/systemd/systemd-systemctl*
>>
>> So, systemd is still present as package in basic poky master tree:
>> ./meta/recipes-core/systemd/systemd
>> ./meta/recipes-core/systemd/systemd-systemctl
>>
>> And, here are the heads from tree posted from the qemux86-64 target
>> (/etc/build/):
>>
>> -----------------------
>> Build Configuration:  |
>> -----------------------
>> DISTRO = poky
>> DISTRO_VERSION = 2.4
>> -----------------------
>> Layer Revisions:      |
>> -----------------------
>> meta                  = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80
>> -- modified
>> meta-poky         = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
>> modified
>> meta-yocto-bsp = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
>> modified
>>
>> And, when I queried on the QEMU (qemux86-64) target both systemd and
>> systemctl, I get nothing (at all), which is VERY strange!?
>> Target CLI transcript follows:
>>
>> sh-4.4# uname -r
>> 4.12.12-yocto-standard
>> sh-4.4# which systemd
>> sh-4.4# which systemctl
>> sh-4.4#
>>
>> Do we really have problem here, YOCTO maintainers??? Please, could you
>> post sound and logical explanation for NOT having these services in the
>> default YOCTO?
>>
>> Thank you,
>> Zoran
>>
>> On Fri, Nov 10, 2017 at 11:07 AM, Alan Martinovic <
>> alan.martinovic@senic.com> wrote:
>>
>>> Hi,
>>> I need to add a systemd service that needs no additional sources
>>> compiled, but just needs an available command executed at boot.
>>>
>>> I've created a basis for the recipe in my layer:
>>>
>>> nrf52-usb-systemd/
>>> |-- files
>>> |   `-- btattach-nrf-acm.service
>>> `-- nrf52-usb-systemd.bb
>>>
>>>
>>> together with a recipe template (nrf52-usb-systemd.bb)
>>> for which I don't know if works yet.
>>>
>>>   SUMMARY = "Writes patterns to the fb device"
>>>   LICENSE = "MIT"
>>>   LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cf
>>> bcb788c80a0384361b4de20420"
>>>
>>>   inherit systemd
>>>
>>>   REQUIRED_DISTRO_FEATURES= "systemd"
>>>
>>>   SRC_URI = "file://btattach-nrf-acm.service"
>>>
>>>   do_install () {
>>>
>>>       install -m 0644 ${WORKDIR}/btattach-nrf-acm.service
>>> ${D}${sysconfdir}/systemd/system
>>>    }
>>>
>>>   NATIVE_SYSTEMD_SUPPORT = "1"
>>>   SYSTEMD_PACKAGES = "${PN}"
>>>   SYSTEMD_SERVICE_${PN} = "fb-draw.service"
>>>
>>>
>>> I'm not sure I got the install command right and
>>> if the service file is making it way to the proper location.
>>>
>>> Instead of building the whole image, flashing and checking
>>> it out, I would like to test how devtool could help here.
>>>
>>> I execute:
>>>
>>> devtool build nrf52-usb-systemd
>>>
>>> this results in a creation of a workspace with the sources files.
>>> What I am not seeing is a creation of a device sysroot which would
>>> show me that the do_install was correctly written.
>>>
>>> Given that the device sysroot directory on the host would be called
>>> "sysroot" was hoping to be able do confirm that the following took
>>> place
>>>
>>> ${D}${sysconfdir}/systemd/system -> .sysroot/etc/ssytemd/system
>>>
>>> and confirming there is a
>>>
>>> .sysroot/etc/ssytemd/system/btattach-nrf-acm.service
>>>
>>>
>>> Is this possible with devtool, or am I misinterpreting
>>> what it's purpose is?
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--f403045f12be0889e6055da1d94e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alan,<div><br></div><div>I would admit that I did no=
t understand the package you would like to use, and what is the problem wit=
h it.</div><div><br></div><div>But I, from the back of my mind (somehow) un=
derstood that I need to query the packages I know, and these packages are m=
andatory for any Linux.</div><div><br></div><div>The following I tried on t=
he host system (which is Fedora 26), transcript follows:</div><div><div>[ro=
ot@192 build]# dnf install systemd</div><div>Last metadata expiration check=
: 3:27:32 ago on Fri 10 Nov 2017 11:54:19 AM CET.</div><div>Package systemd=
-233-7.fc26.x86_64 is already installed, skipping.</div><div>Dependencies r=
esolved.</div><div>Nothing to do.</div><div>Complete!</div><div>[root@192 b=
uild]# dnf install systemctl</div><div>Last metadata expiration check: 3:27=
:43 ago on Fri 10 Nov 2017 11:54:19 AM CET.</div><div>No match for argument=
: systemctl</div><div>Error: Unable to find a match</div><div>[root@192 bui=
ld]# which systemd-*</div><div>/usr/bin/which: no systemd-* in (/home/user/=
YOCTO/oe_core_embedded/poky/scripts:/home/user/YOCTO/oe_core_embedded/poky/=
bitbake/bin:/usr/libexec/python2-sphinx:/usr/lib64/qt-3.3/bin:/usr/lib64/cc=
ache:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/user/.local/bi=
n:/home/user/bin)</div><div>[root@192 build]# which systemd-</div><div>syst=
emd-analyze=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sy=
stemd-detect-virt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0systemd-mo=
unt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sys=
temd-socket-activate</div><div>systemd-ask-password=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 systemd-escape=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 systemd-notify=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 systemd-stdio-bridge</div><div>systemd-cat=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0system=
d-firstboot=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0systemd-n=
spawn=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd=
-sysusers</div><div>systemd-cgls=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd-hwdb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd-path=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd-tmpfiles</div><div>system=
d-cgtop=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0systemd-inhibit=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0systemd-resolve=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0systemd-tty-ask-password-agent</div><div>systemd-delta=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0systemd-machine-=
id-setup=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd-run=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0systemd-umount</div><div>[r=
oot@192 build]# which systemctl</div><div>/usr/bin/systemctl</div><div>[roo=
t@192 build]#=C2=A0</div></div><div><br></div><div>But, in contrary, using =
the target YOCTO, despite we have there two packages:</div><div><div style=
=3D"font-size:12.8px"><b><i><u>/meta/recipes-core/systemd/sy<wbr>stemd<br><=
/u></i></b></div><div style=3D"font-size:12.8px"><b><i><u>./meta/recipes-co=
re/systemd/sy<wbr>stemd-systemctl</u></i></b></div></div><div style=3D"font=
-size:12.8px"><b><i><u><br></u></i></b></div><div style=3D"font-size:12.8px=
">I do not see them presented in the final qemux86-64 build. I&#39;ll repea=
t (t<span style=3D"font-size:12.8px">arget CLI transcript follows):</span><=
/div><div style=3D"font-size:12.8px"><div class=3D"gmail_extra" style=3D"fo=
nt-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4# uname -r</span></d=
iv><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"fon=
t-size:12.8px">4.12.12-yocto-standard</span></div><div class=3D"gmail_extra=
" style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4# which=
 systemd</span></div><div class=3D"gmail_extra" style=3D"font-size:12.8px">=
<span style=3D"font-size:12.8px">sh-4.4# which systemctl</span></div><div c=
lass=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12=
.8px">sh-4.4#</span><span style=3D"font-size:12.8px"><br></span></div><div>=
<span style=3D"font-size:12.8px"><br></span></div></div><div style=3D"font-=
size:12.8px">Maybe it is me... But I think somebody should look also to wha=
t I wrote, since I am, maybe, after all, mistaken!?</div><div style=3D"font=
-size:12.8px"><br></div><div style=3D"font-size:12.8px">I really hope I mad=
e it very clear.</div><div style=3D"font-size:12.8px"><br></div><div style=
=3D"font-size:12.8px">Thank you,</div><div style=3D"font-size:12.8px">Zoran=
 Stojsavljevic</div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Fri, Nov 10, 2017 at 1:23 PM, Alan Martinovic <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.ma=
rtinovic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr">Hey Zoran,<div>this doesn&#39;t really have anything to do=
 with my question.</div><div>Would suggest you to rephrase it to make it mo=
re clear.</div><span class=3D""><div><br></div><div><blockquote style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex" class=3D"gmail_quote">But we have there both packages??? We do, we do?=
!</blockquote></div></span><div><blockquote style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_=
quote">Do we really have problem here, YOCTO maintainers??? Please, could y=
ou post sound and logical explanation for NOT having these services in the =
default YOCTO?</blockquote></div><div><br></div><div>Also would suggest you=
 perhaps reiterate on your question style a bit,</div><div>it might result =
in more people responding.</div><div><br></div><div>Be Well,</div><div>Alan=
</div><div><br></div></div><div class=3D"HOEnZb"><div class=3D"h5"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Nov 10, 2017 at 1=
2:41 PM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.=
stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a=
><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>It is, after all, interesting question, you posted here, Alan!<div><br></d=
iv><div>I did something else, very different than you - I did the following=
!</div><div><br></div><div>[user@192 poky]$ pwd<br></div><div><div><div>/ho=
me/user/YOCTO/oe_core_embed<wbr>ded/poky</div><div>[user@192 poky]$ find . =
-name systemd*</div><div>./scripts/lib/wic/canned-wks/s<wbr>ystemd-bootdisk=
.wks</div><div>./meta-yocto-bsp/lib/oeqa/self<wbr>test/cases/systemd_boot.p=
y</div><div>./build/tmp/sysroots-component<wbr>s/core2-64/at-spi2-core/usr/=
li<wbr>b/systemd</div><div>./build/tmp/sysroots-component<wbr>s/core2-64/rp=
m/usr/lib/rpm-plu<wbr>gins/systemd_inhibit.so</div><div>./meta/lib/oeqa/run=
time/cases/<wbr>systemd.py</div><div>./meta/classes/systemd.bbclass</div><d=
iv>./meta/classes/<a href=3D"http://systemd-boot.bb" target=3D"_blank">syst=
emd-boot.bb</a><wbr>class</div><div>./meta/recipes-devtools/system<wbr>d-bo=
otchart</div><div>./meta/recipes-devtools/system<wbr>d-bootchart/<a href=3D=
"http://systemd-bootchart_231.bb" target=3D"_blank">systemd-bootchart_<wbr>=
231.bb</a></div><div>./meta/recipes-core/systemd</div><div>./meta/recipes-c=
ore/systemd/<a href=3D"http://systemd_234.bb" target=3D"_blank">sy<wbr>stem=
d_234.bb</a></div><div>./meta/recipes-core/systemd/<a href=3D"http://system=
d-machine-units_1.0.bb" target=3D"_blank">sy<wbr>stemd-machine-units_1.0.bb=
</a></div><div>./meta/recipes-core/systemd/sy<wbr>stemd-serialgetty</div><d=
iv>./meta/recipes-core/systemd/sy<wbr>stemd.inc</div><div>./meta/recipes-co=
re/systemd/<a href=3D"http://systemd-boot_234.bb" target=3D"_blank">sy<wbr>=
stemd-boot_234.bb</a></div><div>./meta/recipes-core/systemd/<a href=3D"http=
://systemd-compat-units.bb" target=3D"_blank">sy<wbr>stemd-compat-units.bb<=
/a></div><div>./meta/recipes-core/systemd/<a href=3D"http://systemd-systemc=
tl-native.bb" target=3D"_blank">sy<wbr>stemd-systemctl-native.bb</a></div><=
div>./meta/recipes-core/systemd/sy<wbr>stemd</div><div>./meta/recipes-core/=
systemd/sy<wbr>stemd-systemctl</div><div>./meta/recipes-core/systemd/<a hre=
f=3D"http://systemd-serialgetty.bb" target=3D"_blank">sy<wbr>stemd-serialge=
tty.bb</a></div><div>[user@192 poky]$=C2=A0</div></div><div><br></div><div>=
But we have there both packages??? We do, we do?!</div><div><b><i><u>./meta=
/recipes-core/systemd/sy<wbr>stemd<br></u></i></b></div><div><b><i><u>./met=
a/recipes-core/systemd/sy<wbr>stemd-systemctl</u></i></b></div><div><br></d=
iv></div><div>So, systemd is still present as package in basic poky master =
tree:</div><div>./meta/recipes-core/systemd/sy<wbr>stemd</div><div>./meta/r=
ecipes-core/systemd/sy<wbr>stemd-systemctl</div><div><br></div><div>And, he=
re are the heads from tree posted from the qemux86-64 target (/etc/build/):=
</div><div><br></div><div><div class=3D"gmail_extra" style=3D"font-size:12.=
8px"><span style=3D"font-size:12.8px">-----------------------</span><br sty=
le=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Build Configuratio=
n:=C2=A0 |</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12=
.8px">-----------------------</span><br style=3D"font-size:12.8px"><span st=
yle=3D"font-size:12.8px">DISTRO =3D poky</span><br style=3D"font-size:12.8p=
x"><span style=3D"font-size:12.8px">DISTRO_VERSION =3D 2.4</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">--------------------=
---</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">L=
ayer Revisions:=C2=A0 =C2=A0 =C2=A0 |</span><br style=3D"font-size:12.8px">=
<span style=3D"font-size:12.8px">-----------------------</span><br style=3D=
"font-size:12.8px"><span style=3D"font-size:12.8px">meta=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D rocko:65d23bd7986615fdfb0=
f1717<wbr>b615534a2a14ab80 -- modified</span><br></div><div class=3D"gmail_=
extra" style=3D"font-size:12.8px">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D rocko:<span style=3D"font-size:12.8px">65d23bd7986615fdfb0f1717<wbr>=
b615534a2a14ab80 -- modified</span></div><div class=3D"gmail_extra" style=
=3D"font-size:12.8px">meta-yocto-bsp =3D rocko:<span style=3D"font-size:12.=
8px">65d23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- modified</span></div>=
</div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"=
font-size:12.8px"><br></span></div><div class=3D"gmail_extra" style=3D"font=
-size:12.8px"><span style=3D"font-size:12.8px">And, when I queried on the Q=
EMU (qemux86-64) target both systemd and systemctl, I get nothing (at all),=
 which is VERY strange!?</span></div><div class=3D"gmail_extra" style=3D"fo=
nt-size:12.8px"><span style=3D"font-size:12.8px">Target CLI transcript foll=
ows:</span><br></div><div class=3D"gmail_extra" style=3D"font-size:12.8px">=
<span style=3D"font-size:12.8px"><br></span></div><div class=3D"gmail_extra=
" style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4# uname=
 -r</span></div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span=
 style=3D"font-size:12.8px">4.12.12-yocto-standard</span></div><div class=
=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12.8px=
">sh-4.4# which systemd</span></div><div class=3D"gmail_extra" style=3D"fon=
t-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4# which systemctl</sp=
an></div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">sh-4.4#</span><span style=3D"font-size:12.8px"><br></=
span></div><div><br></div><div>Do we really have problem here, YOCTO mainta=
iners??? Please, could you post sound and logical explanation for NOT havin=
g these services in the default YOCTO?</div><div><br></div><div>Thank you,<=
/div><div>Zoran</div></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote"><div><div class=3D"m_-6204685263610868932h5">On Fri, Nov 10, 2017=
 at 11:07 AM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.=
martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</=
span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=
=3D"m_-6204685263610868932h5"><div dir=3D"ltr">Hi,<div>I need to add a syst=
emd service that needs no additional sources</div><div>compiled, but just n=
eeds an available command executed at boot.=C2=A0</div><div><br></div><div>=
I&#39;ve created a basis for the recipe in my layer:</div><div><br></div><d=
iv><div>nrf52-usb-systemd/</div><div>|-- files</div><div>|=C2=A0 =C2=A0`-- =
btattach-nrf-acm.service</div><div>`-- <a href=3D"http://nrf52-usb-systemd.=
bb" target=3D"_blank">nrf52-usb-systemd.bb</a></div></div><div><br></div><d=
iv><br></div><div>together with a recipe template (<a href=3D"http://nrf52-=
usb-systemd.bb" target=3D"_blank">nrf52-usb-systemd.bb</a>)</div><div> for =
which I don&#39;t know if works yet.</div><div><br></div><div><div>=C2=A0 S=
UMMARY =3D &quot;Writes patterns to the fb device&quot;</div><div>=C2=A0 LI=
CENSE =3D &quot;MIT&quot;</div><div>=C2=A0 LIC_FILES_CHKSUM =3D &quot;file:=
//COPYING.MIT;md5=3D3da9cf<wbr>bcb788c80a0384361b4de20420&quot;</div><div><=
br></div><div>=C2=A0 inherit systemd</div><div><br></div><div>=C2=A0 REQUIR=
ED_DISTRO_FEATURES=3D &quot;systemd&quot;</div><div><br></div><div>=C2=A0 S=
RC_URI =3D &quot;file://btattach-nrf-acm.servi<wbr>ce&quot;</div><div><br><=
/div><div>=C2=A0 do_install () {<br></div><div><br></div><div>=C2=A0 =C2=A0=
 =C2=A0 install -m 0644 ${WORKDIR}/<a href=3D"http://btattach-nrf-acm.se" t=
arget=3D"_blank">btattach-nrf-acm.se</a><wbr>rvice ${D}${sysconfdir}/system=
d/syst<wbr>em</div><div>=C2=A0 =C2=A0}</div><div><br></div><div>=C2=A0 NATI=
VE_SYSTEMD_SUPPORT =3D &quot;1&quot;</div><div>=C2=A0 SYSTEMD_PACKAGES =3D =
&quot;${PN}&quot;</div><div>=C2=A0 SYSTEMD_SERVICE_${PN} =3D &quot;fb-draw.=
service&quot;</div></div><div><br></div><div><br></div><div>I&#39;m not sur=
e I got the install command right and</div><div>if the service file is maki=
ng it way to the proper location.</div><div><br></div><div>Instead of build=
ing the whole image, flashing and checking=C2=A0</div><div>it out, I would =
like to test how devtool could help here.</div><div><br></div><div>I execut=
e:</div><div><br></div><div>devtool build nrf52-usb-systemd<br></div><div><=
br></div><div>this results in a creation of a workspace with the sources fi=
les.</div><div>What I am not seeing is a creation of a device sysroot which=
 would</div><div>show me that the do_install was correctly written.<br></di=
v><div><br></div><div>Given that the device sysroot directory on the host w=
ould be called</div><div>&quot;sysroot&quot; was hoping to be able do confi=
rm that the following took=C2=A0</div><div>place</div><div><br></div><div>$=
{D}${sysconfdir}/systemd/syst<wbr>em -&gt; .sysroot/etc/ssytemd/system<br><=
/div><div><br></div><div>and confirming there is a=C2=A0</div><div><br></di=
v><div>.sysroot/etc/ssytemd/system/bt<wbr>attach-nrf-acm.service</div><div>=
<br></div><div><br></div><div>Is this possible with devtool, or am I misint=
erpreting=C2=A0</div><div>what it&#39;s purpose is?</div><div><br></div></d=
iv>
<br></div></div><span class=3D"m_-6204685263610868932HOEnZb"><font color=3D=
"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--f403045f12be0889e6055da1d94e--
