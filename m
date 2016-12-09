Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10B47E00D3F; Fri,  9 Dec 2016 13:31:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.139.213.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm12-vm0.bullet.mail.bf1.yahoo.com
	(nm12-vm0.bullet.mail.bf1.yahoo.com [98.139.213.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FAEE00D12
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 13:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1481319052; bh=DxTiPKLnvm0aHP2dpb9ZUezf0lTCdKyuh3p/Gbj7esY=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=mlS1g6OOhdid2kSrgjMasP7aXMzAmSNNHLKtHAfrAo8yoPL7+5tmG7S9aiNW++VTTcU6mCsTvQMXU/1GWQgAUJfUn4v0tbdBu80z3jRyppevNf0kxRqCBFm6VZrrnzYXU/urlB/cMuC0ZR2MB/M+n49mi2pwKonFVFRMR+55pT7Yf3BTHLToS8xuPW6/r5CL0qdQrFXBuh7Uq4pHb3Jhz4dEv5AquOrUqj/qSNHSNexBNRPs8B6HrybYBzCIPYA0ww4LrzAD9NGbNHJ/L+J1cJwHjwvxGnfJ4JYHM4nlNzAgjoUOornx04SxrwNZEDb2B3A6koJ68UZPLkn9JobQxg==
Received: from [98.139.170.178] by nm12.bullet.mail.bf1.yahoo.com with NNFMP;
	09 Dec 2016 21:30:52 -0000
Received: from [98.139.212.226] by tm21.bullet.mail.bf1.yahoo.com with NNFMP;
	09 Dec 2016 21:30:52 -0000
Received: from [127.0.0.1] by omp1035.mail.bf1.yahoo.com with NNFMP;
	09 Dec 2016 21:30:52 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 459238.57683.bm@omp1035.mail.bf1.yahoo.com
X-YMail-OSG: bID_J1oVM1mC98POxbWGpD2PE7ZpUauMMcrFxj9peeVmzOJh10WKQjFEu7AVoe2
	mvwsYdS4aMfnz8PeS4w.WdVj.JT7uaJ4rEDUmSGG_lpzrp06sU8eV6KC7bX6Qhr6jGJPhF83K5hl
	skiU6Cb21hVS362akbPIqILH91CFjB5Vw8Tslxatx7nJUfnEWRMeLAjEngB9o2a9ddMLg_PaeQxg
	6Z.e9gglpydIOFzAemgZnx1dYaT.bB1Hamx.eAp7DGurKxLbP.MzjLz1qhbUHapxRpJQXBAFyJHP
	Jaj_YlwZFt.X4CoA1VK1IqbSDZ34XCOrq.ZJyH4osPN7DyyEVe52ooweQIpZXvl9um2.ZvEkDtQo
	xM2ynSGJ5XSC7kdYx7YWboAQbLY.paSBxiA_bARPCTID8GtTZn1nj2FsJAJhemlEsdb6Mkjy37xt
	po9pfT0MGwEdlR8WT5GlwNB9FfFy22wMaLLUj3Jm3hJtNVx3l6KSXVZxmx9z38TJ5UYmzW3Fix5_
	f2Hv.zp43.IrSo5.3HooRZrz6lH4lXek13ykXuNowP.jbFFQpq8_EdfH0QuqSiqo30dF9CSw6qUtk
Received: from jws400007.mail.bf2.yahoo.com by
	sendmailws135.mail.bf1.yahoo.com;
	Fri, 09 Dec 2016 21:30:52 +0000; 1481319052.018
Date: Fri, 9 Dec 2016 21:30:51 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1152624367.80527.1481319051755@mail.yahoo.com>
In-Reply-To: <mailman.57820.1481299410.15860.yocto@yoctoproject.org>
References: <mailman.57820.1481299410.15860.yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: Adding Fortran to Raspberrypi2
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
X-List-Received-Date: Fri, 09 Dec 2016 21:31:01 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_80526_512984870.1481319051750"

------=_Part_80526_512984870.1481319051750
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,=20
I tried building on the target RPi2B.The config.log and the steps that I di=
d are found at=20
https://gist.github.com/develone/bfa03e975f173a07b9fcb22a4d817df6
I tried reporting the bug but the acct creation is restricted.Let me know i=
f I can provide adding information,Thanks,
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Friday, December 9, 2016 9:04 AM, "yocto-request@yoctoproject.org" <=
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

=C2=A0 1. Adding Fortran to Raspberrypi2 (Edward Vidal)
=C2=A0 2. Re: Kernel config incremental modification not working.
=C2=A0 =C2=A0 =C2=A0 (Bruce Ashfield)
=C2=A0 3. Re: update mechanisms (Patrick Ohly)
=C2=A0 4. Re: update mechanisms (Stefano Babic)


----------------------------------------------------------------------

Message: 1
Date: Fri, 9 Dec 2016 13:28:35 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] Adding Fortran to Raspberrypi2
Message-ID: <405620911.1114427.1481290115720@mail.yahoo.com>
Content-Type: text/plain; charset=3D"utf-8"

Hi

Trying to add fortran to 6.2.0 branch morty for a Raspberrypi2

Step 1 modified meta/recipes-devtools/gcc/gcc-6.2.inc
-FORTRAN =3D ""
+FORTRAN =3D ",fortran"
bitbake core-image-sato created the image=20

Testing on target. I see fortran in the command gcc -v.

gcc -v --enable-languages=3Dc,c++,fortran gcc version 6.2.0 (GCC)

With the command ./configure for octave.
checking whether a usable Fortran compiler was found... no
configure: error: A Fortran compiler is required


Step 2 Checking the mailing list.
??? |Hi
??? |
??? |On Mon, 8 Feb 2016 08:19:53 +0000
??? |"Liubchynskyi, Stanislav (Nokia - PL/Wroclaw)" <stanislav.liubchynskyi=
 at nokia.com> wrote:
??? |
??? |> Hi,
??? |> I want to add fortran support to yocto build. I try different way wh=
itch describe in the ethernet but enyone does't work. I use fido branch and=
 gcc 4.9. Can you describe me step by step how to enable fortran in yocto o=
r where I can find work instruction.
??? |> Thanks for help.

??? |Fortran support in gcc is disabled by default, to enable it add the fo=
llowing line to your config, then build the libgfortran package.

??? |FORTRAN_forcevariable =3D ",fortran"

??? |>=20
??? |>=20
??? |>=20
??? |> Best regards,
??? |>=20
??? |> Stanislav Liubchynskyi
??? |> Software Developer, LFS, OPSW Wroclaw
??? |> Mobile Broadband, Nokia Networks>?=20

I added FORTRAN_forcevariable =3D ",fortran" to my config.? Still no fortra=
n.

I added libgfortran to variable IMAGE_INSTALL_append and I get the followin=
g error
?
ERROR: oe_runmake failed

../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/runt=
ime/backtrace.c:37:33: fatal error: backtrace-supported.h: No such file or =
directory
?#include "backtrace-supported.h"
???????????????????????????????? ^
compilation terminated.

Thanks in advance,

?Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20161209/64=
4f3ef0/attachment-0001.html>

------------------------------

Message: 2
Date: Fri, 9 Dec 2016 08:37:47 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: Bent Bisballe Nyeng <xbbn@mjolner.dk>, "yocto@yoctoproject.org"
=C2=A0=C2=A0=C2=A0 <yocto@yoctoproject.org>
Subject: Re: [yocto] Kernel config incremental modification not
=C2=A0=C2=A0=C2=A0 working.
Message-ID: <1f6d8fc5-2853-072f-72d5-785c5bd783f1@windriver.com>
Content-Type: text/plain; charset=3D"windows-1252"; format=3Dflowed

On 2016-12-09 02:25 AM, Bent Bisballe Nyeng wrote:
> On 12/08/2016 05:06 PM, Bruce Ashfield wrote:
>> On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:
>>> Hi list
>>>
>>> I am working on a project based on the iMX6UL-EVK using the meta-fsl-ar=
m
>>> layer for the kernel.
>>> In a local layer I have a bbappend recipe containing a patch for an
>>> extra kernel feature (a framebuffer device) in that kernel as well as a
>>> .cfg enabling said feature.
>>> The bbappend recipe is located in
>>> recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like this:
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>
>>> SRC_URI +=3D " \
>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-mxc-4.1.patch \
>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ST7789S.cfg \
>>> "
>>>
>>> KERNEL_DEVICETREE =3D "imx6ul-14x14-evk.dtb"
>>>
>>> The .cfg is located in recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg
>>> and looks like:
>>> CONFIG_FB_MXS_ST7789S_QVGA=3Dy
>>>
>>> The 0001-mxc-4.1.patch patch is correctly applied but the .cfg is eithe=
r
>>> ignored or overwritten by some later buyild step since the resulting
>>> .config after kernel compilation contains:
>>> # CONFIG_FB_MXS_ST7789S_QVGA is not set
>>>
>>> I have tried finding the script in the build/.../temp folder that takes
>>> care of the .cfg file patching but have not been able to find anything
>>> useful.
>>>
>>> Any hints as to where I should start looking for a solution?
>> Fragment processing using the kernel tools + auditing is only currently
>> available to kernel recipes that use the kernel-yocto bbclass. That
>> opt-in requirement was to ensure that existing recipes and workflows
>> weren't broken by the new features.
>>
>> Last time I checked, the meta-fsl* kernel recipes don't use the
>> kernel-yocto bbclass, so the fragment would be ignored.
>>
>> I'm taking the processing of fragments and making it universally
>> available in the upcoming 2.3 release, so what I just described
>> won't be an issue for much longer.
>>
>> In the mean time, you have a few options:
>>
>>=C2=A0 - in your bbappend, add "inherit kernel-yocto" and the processing
>>=C2=A0 =C2=A0 of fragments will be enabled (I can't say that I've tested
>>=C2=A0 =C2=A0 it against that recipe .. but the entire point of the new t=
asks
>>=C2=A0 =C2=A0 is that they are transparent/don't break existing worflows)
>>
>>=C2=A0 - carry a defconfig in your layer, and add it to the SRC_URI. That
>>=C2=A0 =C2=A0 defconfig would be the existing kernel recipe's defconfig +=
 your
>>=C2=A0 =C2=A0 options
>>
>>=C2=A0 - write a custom task that runs before configuration to add your
>>=C2=A0 =C2=A0 options (cat, merge, etc, etc).
>>
>> I wouldn't really suggest the custom task route, but it is a valid
>> option, so I put it in my list.
>>
>> The quickest is probably the defconfig option, and then the new
>> inherit. If you had issues with the inherit, I could lend a hand to
>> debug what is wrong .. since I'll run into it eventually with my
>> feature work for the 2.3 release.
> Hi Bruce
>
> Thanks for the reply.
>
> A quick test shows that the linux-fslc-imx recipe doesn't respond well
> to the 'inherit kernel-yocto' solution failing in the do_kernel_checkout
> task with a "Bad substitution" error message.
> So I think I will go with the defconfig solution until the release of 2.3=
.
> Any estimate of when 2.3 will be shipping? And do you know if this will
> by any chance include the upcoming 4.9 LTS kernel?

April 2017, and it will have the 4.9 kernel + 4.10 (unless 4.11 really
hurries along).

>
> If you would like some more info on the failing task I'll be happy to
> supply it.

If you put the configuration you are using (bblayers, MACHINE) in an
email and send it directly to me, I'll find time to poke at it, I'm
interested to understand why it failed.

bruce

>
> Thanks for your help :-)
>
> Kind regards
> Bent Bisballe Nyeng
>



------------------------------

Message: 3
Date: Fri, 09 Dec 2016 16:13:53 +0100
From: Patrick Ohly <patrick.ohly@intel.com>
To: Stefano Babic <sbabic@denx.de>, Kristian Amlie
=C2=A0=C2=A0=C2=A0 <kristian.amlie@mender.io>
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>,
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org, Andr? Draszik <git@andred.net>
Subject: Re: [yocto] update mechanisms
Message-ID: <1481296433.17535.170.camel@intel.com>
Content-Type: text/plain; charset=3D"UTF-8"

Hello everyone!

Thanks for contributing directly to the page. It's great to see this
done collaboratively.

On Tue, 2016-12-06 at 23:38 +0100, Stefano Babic wrote:
> Hi Philip,
>=20
> On 06/12/2016 19:45, Philip Balister wrote:
> > On 12/06/2016 06:11 AM, Lopez, Mariano wrote:
> >> I agree with you, that we need to have a section per project, the tabl=
e
> >> is too limiting.
> >=20
> > I just skimmed the page and the table format isn't working well with th=
e
> > length of the blocks of text.
> >=20
>=20
> Agree - I think it is better to have a section per project.

That always has been the goal, and I now updated the page accordingly. I
tried to summarize the key aspects of each mechanism in the table
itself. That's something that I haven't seen elsewhere and something
that the page can=C2=A0 I tried to be as fair and objective as possible,
please shout if I messed something up or you don't agree with my
summary.

In particular the "complexity" column is a bit subjective. Stefano, I
hope you don't mind that I did not quite buy the "easy to use"
characterization of swupdate ;-) For a system that is as flexible as
swupdate, I'd expect a more difficult learning curve and some need to
customize the system before using it, so I added a "(but requires
customization!?)" comment to that statement.

Kristian, I added a comment that Mender requires U-Boot. That is
correct, isn't it? I understand that this restriction allows you to
implement things like automatic rollback, but it's worth mentioning that
this comes with that limitation.


--=20
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.





------------------------------

Message: 4
Date: Fri, 9 Dec 2016 17:03:10 +0100
From: Stefano Babic <sbabic@denx.de>
To: Patrick Ohly <patrick.ohly@intel.com>, Stefano Babic
=C2=A0=C2=A0=C2=A0 <sbabic@denx.de>,=C2=A0=C2=A0=C2=A0 Kristian Amlie <kris=
tian.amlie@mender.io>
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>,
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org, Andr? Draszik <git@andred.net>
Subject: Re: [yocto] update mechanisms
Message-ID: <4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de>
Content-Type: text/plain; charset=3Dutf-8

Hi Patrick,

On 09/12/2016 16:13, Patrick Ohly wrote:
> Hello everyone!
>=20
> Thanks for contributing directly to the page. It's great to see this
> done collaboratively.
>=20
> On Tue, 2016-12-06 at 23:38 +0100, Stefano Babic wrote:
>> Hi Philip,
>>
>> On 06/12/2016 19:45, Philip Balister wrote:
>>> On 12/06/2016 06:11 AM, Lopez, Mariano wrote:
>>>> I agree with you, that we need to have a section per project, the tabl=
e
>>>> is too limiting.
>>>
>>> I just skimmed the page and the table format isn't working well with th=
e
>>> length of the blocks of text.
>>>
>>
>> Agree - I think it is better to have a section per project.
>=20
> That always has been the goal, and I now updated the page accordingly.

Page is really better now :-)

> I
> tried to summarize the key aspects of each mechanism in the table
> itself. That's something that I haven't seen elsewhere and something
> that the page can=C2=A0 I tried to be as fair and objective as possible,
> please shout if I messed something up or you don't agree with my
> summary.
>=20
> In particular the "complexity" column is a bit subjective. Stefano, I
> hope you don't mind that I did not quite buy the "easy to use"
> characterization of swupdate ;-)

No worry...and I have not written myself. It was inserted by Mariano, so
it looks like that swupdate at least for Mariano is "easy to use".
I think it is correct to point out that customization is required.

> For a system that is as flexible as
> swupdate, I'd expect a more difficult learning curve and some need to
> customize the system before using it, so I added a "(but requires
> customization!?)" comment to that statement.

Agree.

>=20
> Kristian, I added a comment that Mender requires U-Boot. That is
> correct, isn't it? I understand that this restriction allows you to
> implement things like automatic rollback, but it's worth mentioning that
> this comes with that limitation.

Best regards,
Stefano

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 75, Issue 37
*************************************


  =20

------=_Part_80526_512984870.1481319051750
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_ym19_1_1481313204344_25537=
"><span>Hi, <br></span></div><div id=3D"yui_3_16_0_ym19_1_1481313204344_257=
32"><span id=3D"yui_3_16_0_ym19_1_1481313204344_25731">I tried building on =
the target RPi2B.</span></div><div id=3D"yui_3_16_0_ym19_1_1481313204344_27=
519"><span>The config.log and the steps that I did are found at <br></span>=
</div><div id=3D"yui_3_16_0_ym19_1_1481313204344_27620" dir=3D"ltr"><span i=
d=3D"yui_3_16_0_ym19_1_1481313204344_27670"><a href=3D"https://gist.github.=
com/develone/bfa03e975f173a07b9fcb22a4d817df6" class=3D"" id=3D"yui_3_16_0_=
ym19_1_1481313204344_27669">https://gist.github.com/develone/bfa03e975f173a=
07b9fcb22a4d817df6</a></span></div><div id=3D"yui_3_16_0_ym19_1_14813132043=
44_27677"><br></div><div id=3D"yui_3_16_0_ym19_1_1481313204344_27782">I tri=
ed reporting the bug but the acct creation is restricted.</div><div id=3D"y=
ui_3_16_0_ym19_1_1481313204344_28077">Let me know if I can provide adding i=
nformation,</div><div>Thanks,<br></div><div id=3D"yui_3_16_0_ym19_1_1481313=
204344_25384">&nbsp;</div><div class=3D"signature" id=3D"yui_3_16_0_ym19_1_=
1481313204344_25576">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595=
-1613</div> <div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yahoo_=
quoted" style=3D"display: block;"> <div style=3D"font-family: HelveticaNeue=
, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 1=
6px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica,=
 Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"><fon=
t size=3D"2" face=3D"Arial"> On Friday, December 9, 2016 9:04 AM, "yocto-re=
quest@yoctoproject.org" &lt;yocto-request@yoctoproject.org&gt; wrote:<br></=
font></div>  <br><br> <div class=3D"y_msg_container">Send yocto mailing lis=
t submissions to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto@yoctoproj=
ect.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><=
br><br>To subscribe or unsubscribe via the World Wide Web, visit<br>&nbsp;&=
nbsp;&nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>or, via e=
mail, send a message with subject or body 'help' to<br>&nbsp;&nbsp;&nbsp; <=
a ymailto=3D"mailto:yocto-request@yoctoproject.org" href=3D"mailto:yocto-re=
quest@yoctoproject.org">yocto-request@yoctoproject.org</a><br><br>You can r=
each the person managing the list at<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"ma=
ilto:yocto-owner@yoctoproject.org" href=3D"mailto:yocto-owner@yoctoproject.=
org">yocto-owner@yoctoproject.org</a><br><br>When replying, please edit you=
r Subject line so it is more specific<br>than "Re: Contents of yocto digest=
..."<br><br><br>Today's Topics:<br><br>&nbsp;  1. Adding Fortran to Raspber=
rypi2 (Edward Vidal)<br>&nbsp;  2. Re: Kernel config incremental modificati=
on not working.<br>&nbsp; &nbsp; &nbsp; (Bruce Ashfield)<br>&nbsp;  3. Re: =
update mechanisms (Patrick Ohly)<br>&nbsp;  4. Re: update mechanisms (Stefa=
no Babic)<br><br><br>------------------------------------------------------=
----------------<br><br>Message: 1<br>Date: Fri, 9 Dec 2016 13:28:35 +0000 =
(UTC)<br>From: Edward Vidal &lt;<a ymailto=3D"mailto:develone@sbcglobal.net=
" href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a>&gt;<br>=
To: "<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoct=
oproject.org">yocto@yoctoproject.org</a>" &lt;<a ymailto=3D"mailto:yocto@yo=
ctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a>&gt;<br>Subject: [yocto] Adding Fortran to Raspberrypi2<br>Message-ID=
: &lt;<a ymailto=3D"mailto:405620911.1114427.1481290115720@mail.yahoo.com" =
href=3D"mailto:405620911.1114427.1481290115720@mail.yahoo.com">405620911.11=
14427.1481290115720@mail.yahoo.com</a>&gt;<br>Content-Type: text/plain; cha=
rset=3D"utf-8"<br><br>Hi<br><br>Trying to add fortran to 6.2.0 branch morty=
 for a Raspberrypi2<br><br>Step 1 modified meta/recipes-devtools/gcc/gcc-6.=
2.inc<br>-FORTRAN =3D ""<br>+FORTRAN =3D ",fortran"<br>bitbake core-image-s=
ato created the image <br><br>Testing on target. I see fortran in the comma=
nd gcc -v.<br><br>gcc -v --enable-languages=3Dc,c++,fortran gcc version 6.2=
.0 (GCC)<br><br>With the command ./configure for octave.<br>checking whethe=
r a usable Fortran compiler was found... no<br>configure: error: A Fortran =
compiler is required<br><br><br>Step 2 Checking the mailing list.<br>??? |H=
i<br>??? |<br>??? |On Mon, 8 Feb 2016 08:19:53 +0000<br>??? |"Liubchynskyi,=
 Stanislav (Nokia - PL/Wroclaw)" &lt;stanislav.liubchynskyi at nokia.com&gt=
; wrote:<br>??? |<br>??? |&gt; Hi,<br>??? |&gt; I want to add fortran suppo=
rt to yocto build. I try different way whitch describe in the ethernet but =
enyone does't work. I use fido branch and gcc 4.9. Can you describe me step=
 by step how to enable fortran in yocto or where I can find work instructio=
n.<br>??? |&gt; Thanks for help.<br><br>??? |Fortran support in gcc is disa=
bled by default, to enable it add the following line to your config, then b=
uild the libgfortran package.<br><br>??? |FORTRAN_forcevariable =3D ",fortr=
an"<br><br>??? |&gt; <br>??? |&gt; <br>??? |&gt; <br>??? |&gt; Best regards=
,<br>??? |&gt; <br>??? |&gt; Stanislav Liubchynskyi<br>??? |&gt; Software D=
eveloper, LFS, OPSW Wroclaw<br>??? |&gt; Mobile Broadband, Nokia Networks&g=
t;? <br><br>I added FORTRAN_forcevariable =3D ",fortran" to my config.? Sti=
ll no fortran.<br><br>I added libgfortran to variable IMAGE_INSTALL_append =
and I get the following error<br>?<br>ERROR: oe_runmake failed<br><br>../..=
/../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/runtime/b=
acktrace.c:37:33: fatal error: backtrace-supported.h: No such file or direc=
tory<br>?#include "backtrace-supported.h"<br>??????????????????????????????=
?? ^<br>compilation terminated.<br><br>Thanks in advance,<br><br>?Edward Vi=
dal Jr. e-mail <a ymailto=3D"mailto:develone@sbcglobal.net" href=3D"mailto:=
develone@sbcglobal.net">develone@sbcglobal.net</a> 915-595-1613<br>--------=
------ next part --------------<br>An HTML attachment was scrubbed...<br>UR=
L: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments=
/20161209/644f3ef0/attachment-0001.html" target=3D"_blank">http://lists.yoc=
toproject.org/pipermail/yocto/attachments/20161209/644f3ef0/attachment-0001=
.html</a>&gt;<br><br>------------------------------<br><br>Message: 2<br>Da=
te: Fri, 9 Dec 2016 08:37:47 -0500<br>From: Bruce Ashfield &lt;<a ymailto=
=3D"mailto:bruce.ashfield@windriver.com" href=3D"mailto:bruce.ashfield@wind=
river.com">bruce.ashfield@windriver.com</a>&gt;<br>To: Bent Bisballe Nyeng =
&lt;<a ymailto=3D"mailto:xbbn@mjolner.dk" href=3D"mailto:xbbn@mjolner.dk">x=
bbn@mjolner.dk</a>&gt;, "<a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>"<br>&nbsp;&nb=
sp;&nbsp; &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:y=
octo@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subject: Re: [yoct=
o] Kernel config incremental modification not<br>&nbsp;&nbsp;&nbsp; working=
.<br>Message-ID: &lt;<a ymailto=3D"mailto:1f6d8fc5-2853-072f-72d5-785c5bd78=
3f1@windriver.com" href=3D"mailto:1f6d8fc5-2853-072f-72d5-785c5bd783f1@wind=
river.com">1f6d8fc5-2853-072f-72d5-785c5bd783f1@windriver.com</a>&gt;<br>Co=
ntent-Type: text/plain; charset=3D"windows-1252"; format=3Dflowed<br><br>On=
 2016-12-09 02:25 AM, Bent Bisballe Nyeng wrote:<br>&gt; On 12/08/2016 05:0=
6 PM, Bruce Ashfield wrote:<br>&gt;&gt; On 2016-12-08 09:06 AM, Bent Bisbal=
le Nyeng wrote:<br>&gt;&gt;&gt; Hi list<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; I a=
m working on a project based on the iMX6UL-EVK using the meta-fsl-arm<br>&g=
t;&gt;&gt; layer for the kernel.<br>&gt;&gt;&gt; In a local layer I have a =
bbappend recipe containing a patch for an<br>&gt;&gt;&gt; extra kernel feat=
ure (a framebuffer device) in that kernel as well as a<br>&gt;&gt;&gt; .cfg=
 enabling said feature.<br>&gt;&gt;&gt; The bbappend recipe is located in<b=
r>&gt;&gt;&gt; recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks lik=
e this:<br>&gt;&gt;&gt; FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"<br=
>&gt;&gt;&gt;<br>&gt;&gt;&gt; SRC_URI +=3D " \<br>&gt;&gt;&gt;&nbsp; &nbsp;=
 &nbsp; &nbsp;  file://0001-mxc-4.1.patch \<br>&gt;&gt;&gt;&nbsp; &nbsp; &n=
bsp; &nbsp;  file://ST7789S.cfg \<br>&gt;&gt;&gt; "<br>&gt;&gt;&gt;<br>&gt;=
&gt;&gt; KERNEL_DEVICETREE =3D "imx6ul-14x14-evk.dtb"<br>&gt;&gt;&gt;<br>&g=
t;&gt;&gt; The .cfg is located in recipes-kernel/linux/linux-fslc-imx/ST778=
9S.cfg<br>&gt;&gt;&gt; and looks like:<br>&gt;&gt;&gt; CONFIG_FB_MXS_ST7789=
S_QVGA=3Dy<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; The 0001-mxc-4.1.patch patch is =
correctly applied but the .cfg is either<br>&gt;&gt;&gt; ignored or overwri=
tten by some later buyild step since the resulting<br>&gt;&gt;&gt; .config =
after kernel compilation contains:<br>&gt;&gt;&gt; # CONFIG_FB_MXS_ST7789S_=
QVGA is not set<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; I have tried finding the sc=
ript in the build/.../temp folder that takes<br>&gt;&gt;&gt; care of the .c=
fg file patching but have not been able to find anything<br>&gt;&gt;&gt; us=
eful.<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; Any hints as to where I should start =
looking for a solution?<br>&gt;&gt; Fragment processing using the kernel to=
ols + auditing is only currently<br>&gt;&gt; available to kernel recipes th=
at use the kernel-yocto bbclass. That<br>&gt;&gt; opt-in requirement was to=
 ensure that existing recipes and workflows<br>&gt;&gt; weren't broken by t=
he new features.<br>&gt;&gt;<br>&gt;&gt; Last time I checked, the meta-fsl*=
 kernel recipes don't use the<br>&gt;&gt; kernel-yocto bbclass, so the frag=
ment would be ignored.<br>&gt;&gt;<br>&gt;&gt; I'm taking the processing of=
 fragments and making it universally<br>&gt;&gt; available in the upcoming =
2.3 release, so what I just described<br>&gt;&gt; won't be an issue for muc=
h longer.<br>&gt;&gt;<br>&gt;&gt; In the mean time, you have a few options:=
<br>&gt;&gt;<br>&gt;&gt;&nbsp;  - in your bbappend, add "inherit kernel-yoc=
to" and the processing<br>&gt;&gt;&nbsp; &nbsp;  of fragments will be enabl=
ed (I can't say that I've tested<br>&gt;&gt;&nbsp; &nbsp;  it against that =
recipe .. but the entire point of the new tasks<br>&gt;&gt;&nbsp; &nbsp;  i=
s that they are transparent/don't break existing worflows)<br>&gt;&gt;<br>&=
gt;&gt;&nbsp;  - carry a defconfig in your layer, and add it to the SRC_URI=
. That<br>&gt;&gt;&nbsp; &nbsp;  defconfig would be the existing kernel rec=
ipe's defconfig + your<br>&gt;&gt;&nbsp; &nbsp;  options<br>&gt;&gt;<br>&gt=
;&gt;&nbsp;  - write a custom task that runs before configuration to add yo=
ur<br>&gt;&gt;&nbsp; &nbsp;  options (cat, merge, etc, etc).<br>&gt;&gt;<br=
>&gt;&gt; I wouldn't really suggest the custom task route, but it is a vali=
d<br>&gt;&gt; option, so I put it in my list.<br>&gt;&gt;<br>&gt;&gt; The q=
uickest is probably the defconfig option, and then the new<br>&gt;&gt; inhe=
rit. If you had issues with the inherit, I could lend a hand to<br>&gt;&gt;=
 debug what is wrong .. since I'll run into it eventually with my<br>&gt;&g=
t; feature work for the 2.3 release.<br>&gt; Hi Bruce<br>&gt;<br>&gt; Thank=
s for the reply.<br>&gt;<br>&gt; A quick test shows that the linux-fslc-imx=
 recipe doesn't respond well<br>&gt; to the 'inherit kernel-yocto' solution=
 failing in the do_kernel_checkout<br>&gt; task with a "Bad substitution" e=
rror message.<br>&gt; So I think I will go with the defconfig solution unti=
l the release of 2.3.<br>&gt; Any estimate of when 2.3 will be shipping? An=
d do you know if this will<br>&gt; by any chance include the upcoming 4.9 L=
TS kernel?<br><br>April 2017, and it will have the 4.9 kernel + 4.10 (unles=
s 4.11 really<br>hurries along).<br><br>&gt;<br>&gt; If you would like some=
 more info on the failing task I'll be happy to<br>&gt; supply it.<br><br>I=
f you put the configuration you are using (bblayers, MACHINE) in an<br>emai=
l and send it directly to me, I'll find time to poke at it, I'm<br>interest=
ed to understand why it failed.<br><br>bruce<br><br>&gt;<br>&gt; Thanks for=
 your help :-)<br>&gt;<br>&gt; Kind regards<br>&gt; Bent Bisballe Nyeng<br>=
&gt;<br><br><br><br>------------------------------<br><br>Message: 3<br>Dat=
e: Fri, 09 Dec 2016 16:13:53 +0100<br>From: Patrick Ohly &lt;<a ymailto=3D"=
mailto:patrick.ohly@intel.com" href=3D"mailto:patrick.ohly@intel.com">patri=
ck.ohly@intel.com</a>&gt;<br>To: Stefano Babic &lt;<a ymailto=3D"mailto:sba=
bic@denx.de" href=3D"mailto:sbabic@denx.de">sbabic@denx.de</a>&gt;, Kristia=
n Amlie<br>&nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:kristian.amlie@mende=
r.io" href=3D"mailto:kristian.amlie@mender.io">kristian.amlie@mender.io</a>=
&gt;<br>Cc: "Lopez, Mariano" &lt;<a ymailto=3D"mailto:mariano.lopez@intel.c=
om" href=3D"mailto:mariano.lopez@intel.com">mariano.lopez@intel.com</a>&gt;=
,<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>, Andr? Draszi=
k &lt;<a ymailto=3D"mailto:git@andred.net" href=3D"mailto:git@andred.net">g=
it@andred.net</a>&gt;<br>Subject: Re: [yocto] update mechanisms<br>Message-=
ID: &lt;<a ymailto=3D"mailto:1481296433.17535.170.camel@intel.com" href=3D"=
mailto:1481296433.17535.170.camel@intel.com">1481296433.17535.170.camel@int=
el.com</a>&gt;<br>Content-Type: text/plain; charset=3D"UTF-8"<br><br>Hello =
everyone!<br><br>Thanks for contributing directly to the page. It's great t=
o see this<br>done collaboratively.<br><br>On Tue, 2016-12-06 at 23:38 +010=
0, Stefano Babic wrote:<br>&gt; Hi Philip,<br>&gt; <br>&gt; On 06/12/2016 1=
9:45, Philip Balister wrote:<br>&gt; &gt; On 12/06/2016 06:11 AM, Lopez, Ma=
riano wrote:<br>&gt; &gt;&gt; I agree with you, that we need to have a sect=
ion per project, the table<br>&gt; &gt;&gt; is too limiting.<br>&gt; &gt; <=
br>&gt; &gt; I just skimmed the page and the table format isn't working wel=
l with the<br>&gt; &gt; length of the blocks of text.<br>&gt; &gt; <br>&gt;=
 <br>&gt; Agree - I think it is better to have a section per project.<br><b=
r>That always has been the goal, and I now updated the page accordingly. I<=
br>tried to summarize the key aspects of each mechanism in the table<br>its=
elf. That's something that I haven't seen elsewhere and something<br>that t=
he page can&nbsp; I tried to be as fair and objective as possible,<br>pleas=
e shout if I messed something up or you don't agree with my<br>summary.<br>=
<br>In particular the "complexity" column is a bit subjective. Stefano, I<b=
r>hope you don't mind that I did not quite buy the "easy to use"<br>charact=
erization of swupdate ;-) For a system that is as flexible as<br>swupdate, =
I'd expect a more difficult learning curve and some need to<br>customize th=
e system before using it, so I added a "(but requires<br>customization!?)" =
comment to that statement.<br><br>Kristian, I added a comment that Mender r=
equires U-Boot. That is<br>correct, isn't it? I understand that this restri=
ction allows you to<br>implement things like automatic rollback, but it's w=
orth mentioning that<br>this comes with that limitation.<br><br><br>-- <br>=
Best Regards, Patrick Ohly<br><br>The content of this message is my persona=
l opinion only and although<br>I am an employee of Intel, the statements I =
make here in no way<br>represent Intel's position on the issue, nor am I au=
thorized to speak<br>on behalf of Intel on this matter.<br><br><br><br><br>=
<br>------------------------------<br><br>Message: 4<br>Date: Fri, 9 Dec 20=
16 17:03:10 +0100<br>From: Stefano Babic &lt;<a ymailto=3D"mailto:sbabic@de=
nx.de" href=3D"mailto:sbabic@denx.de">sbabic@denx.de</a>&gt;<br>To: Patrick=
 Ohly &lt;<a ymailto=3D"mailto:patrick.ohly@intel.com" href=3D"mailto:patri=
ck.ohly@intel.com">patrick.ohly@intel.com</a>&gt;, Stefano Babic<br>&nbsp;&=
nbsp;&nbsp; &lt;<a ymailto=3D"mailto:sbabic@denx.de" href=3D"mailto:sbabic@=
denx.de">sbabic@denx.de</a>&gt;,&nbsp;&nbsp;&nbsp; Kristian Amlie &lt;<a ym=
ailto=3D"mailto:kristian.amlie@mender.io" href=3D"mailto:kristian.amlie@men=
der.io">kristian.amlie@mender.io</a>&gt;<br>Cc: "Lopez, Mariano" &lt;<a yma=
ilto=3D"mailto:mariano.lopez@intel.com" href=3D"mailto:mariano.lopez@intel.=
com">mariano.lopez@intel.com</a>&gt;,<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"m=
ailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a>, Andr? Draszik &lt;<a ymailto=3D"mailto:git@andred.net=
" href=3D"mailto:git@andred.net">git@andred.net</a>&gt;<br>Subject: Re: [yo=
cto] update mechanisms<br>Message-ID: &lt;<a ymailto=3D"mailto:4515f6e0-a99=
b-09ae-e233-786ceed4847d@denx.de" href=3D"mailto:4515f6e0-a99b-09ae-e233-78=
6ceed4847d@denx.de">4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de</a>&gt;<br=
>Content-Type: text/plain; charset=3Dutf-8<br><br>Hi Patrick,<br><br>On 09/=
12/2016 16:13, Patrick Ohly wrote:<br>&gt; Hello everyone!<br>&gt; <br>&gt;=
 Thanks for contributing directly to the page. It's great to see this<br>&g=
t; done collaboratively.<br>&gt; <br>&gt; On Tue, 2016-12-06 at 23:38 +0100=
, Stefano Babic wrote:<br>&gt;&gt; Hi Philip,<br>&gt;&gt;<br>&gt;&gt; On 06=
/12/2016 19:45, Philip Balister wrote:<br>&gt;&gt;&gt; On 12/06/2016 06:11 =
AM, Lopez, Mariano wrote:<br>&gt;&gt;&gt;&gt; I agree with you, that we nee=
d to have a section per project, the table<br>&gt;&gt;&gt;&gt; is too limit=
ing.<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; I just skimmed the page and the table =
format isn't working well with the<br>&gt;&gt;&gt; length of the blocks of =
text.<br>&gt;&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; Agree - I think it is better =
to have a section per project.<br>&gt; <br>&gt; That always has been the go=
al, and I now updated the page accordingly.<br><br>Page is really better no=
w :-)<br><br>&gt; I<br>&gt; tried to summarize the key aspects of each mech=
anism in the table<br>&gt; itself. That's something that I haven't seen els=
ewhere and something<br>&gt; that the page can&nbsp; I tried to be as fair =
and objective as possible,<br>&gt; please shout if I messed something up or=
 you don't agree with my<br>&gt; summary.<br>&gt; <br>&gt; In particular th=
e "complexity" column is a bit subjective. Stefano, I<br>&gt; hope you don'=
t mind that I did not quite buy the "easy to use"<br>&gt; characterization =
of swupdate ;-)<br><br>No worry...and I have not written myself. It was ins=
erted by Mariano, so<br>it looks like that swupdate at least for Mariano is=
 "easy to use".<br>I think it is correct to point out that customization is=
 required.<br><br>&gt; For a system that is as flexible as<br>&gt; swupdate=
, I'd expect a more difficult learning curve and some need to<br>&gt; custo=
mize the system before using it, so I added a "(but requires<br>&gt; custom=
ization!?)" comment to that statement.<br><br>Agree.<br><br>&gt; <br>&gt; K=
ristian, I added a comment that Mender requires U-Boot. That is<br>&gt; cor=
rect, isn't it? I understand that this restriction allows you to<br>&gt; im=
plement things like automatic rollback, but it's worth mentioning that<br>&=
gt; this comes with that limitation.<br><br>Best regards,<br>Stefano<br><br=
>-- <br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>DENX =
Software Engineering GmbH,&nbsp; &nbsp; &nbsp; Managing Director: Wolfgang =
Denk<br>HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germa=
ny<br>Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: <a ymailto=3D"=
mailto:sbabic@denx.de" href=3D"mailto:sbabic@denx.de">sbabic@denx.de</a><br=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br><br>---=
---------------------------<br><br>-- <br>_________________________________=
______________<br>yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctopro=
ject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>=
<br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><br>End of yo=
cto Digest, Vol 75, Issue 37<br>*************************************<br><b=
r><br></div>  </div> </div>  </div></div></body></html>

------=_Part_80526_512984870.1481319051750--
